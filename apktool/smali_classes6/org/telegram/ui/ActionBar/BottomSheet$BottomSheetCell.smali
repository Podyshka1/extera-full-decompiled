.class public Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ActionBar/BottomSheet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BottomSheetCell"
.end annotation


# instance fields
.field private checked:Z

.field currentType:I

.field private imageView:Landroid/widget/ImageView;

.field private imageView2:Landroid/widget/ImageView;

.field public isSelected:Z

.field private final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private textView:Lorg/telegram/ui/Components/AnimatedEmojiSpan$TextViewEmojis;


# direct methods
.method static bridge synthetic -$$Nest$fgetimageView(Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;)Landroid/widget/ImageView;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->imageView:Landroid/widget/ImageView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettextView(Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;)Lorg/telegram/ui/Components/AnimatedEmojiSpan$TextViewEmojis;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->textView:Lorg/telegram/ui/Components/AnimatedEmojiSpan$TextViewEmojis;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    const/4 v0, 0x0

    .line 997
    invoke-direct {p0, p1, p2, v0}, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 8

    .line 1001
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 1117
    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->isSelected:Z

    .line 1002
    iput-object p3, p0, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 1004
    iput p2, p0, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->currentType:I

    .line 1005
    sget v1, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->CELL_TYPE_CALL:I

    if-eq p2, v1, :cond_0

    .line 1006
    invoke-static {v0, p3}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1010
    :cond_0
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->imageView:Landroid/widget/ImageView;

    .line 1011
    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1012
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->imageView:Landroid/widget/ImageView;

    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_dialogIcon:I

    invoke-virtual {p0, v4}, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->getThemedColor(I)I

    move-result v4

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1013
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->imageView:Landroid/widget/ImageView;

    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/4 v4, 0x3

    const/4 v5, 0x5

    if-eqz v3, :cond_1

    move v3, v5

    goto :goto_0

    :cond_1
    move v3, v4

    :goto_0
    or-int/lit8 v3, v3, 0x10

    const/16 v6, 0x38

    const/16 v7, 0x30

    invoke-static {v6, v7, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1015
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->imageView2:Landroid/widget/ImageView;

    .line 1016
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1017
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->imageView2:Landroid/widget/ImageView;

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_radioBackgroundChecked:I

    invoke-static {v3, p3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p3

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, p3, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1018
    iget-object p3, p0, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->imageView2:Landroid/widget/ImageView;

    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v1, :cond_2

    move v1, v4

    goto :goto_1

    :cond_2
    move v1, v5

    :goto_1
    or-int/lit8 v1, v1, 0x10

    invoke-static {v6, v7, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, p3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1020
    new-instance p3, Lorg/telegram/ui/Components/AnimatedEmojiSpan$TextViewEmojis;

    invoke-direct {p3, p1}, Lorg/telegram/ui/Components/AnimatedEmojiSpan$TextViewEmojis;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->textView:Lorg/telegram/ui/Components/AnimatedEmojiSpan$TextViewEmojis;

    const/4 p1, 0x1

    .line 1021
    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setLines(I)V

    .line 1022
    iget-object p3, p0, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->textView:Lorg/telegram/ui/Components/AnimatedEmojiSpan$TextViewEmojis;

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 1023
    iget-object p3, p0, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->textView:Lorg/telegram/ui/Components/AnimatedEmojiSpan$TextViewEmojis;

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setGravity(I)V

    .line 1024
    iget-object p3, p0, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->textView:Lorg/telegram/ui/Components/AnimatedEmojiSpan$TextViewEmojis;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    if-eqz p2, :cond_6

    .line 1025
    sget p3, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->CELL_TYPE_CALL:I

    if-ne p2, p3, :cond_3

    goto/16 :goto_2

    :cond_3
    const/high16 p3, 0x41600000    # 14.0f

    const/16 v1, 0x11

    if-ne p2, p1, :cond_4

    .line 1030
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->textView:Lorg/telegram/ui/Components/AnimatedEmojiSpan$TextViewEmojis;

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 1031
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->textView:Lorg/telegram/ui/Components/AnimatedEmojiSpan$TextViewEmojis;

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlack:I

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->getThemedColor(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1032
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->textView:Lorg/telegram/ui/Components/AnimatedEmojiSpan$TextViewEmojis;

    invoke-virtual {p2, p1, p3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1033
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->textView:Lorg/telegram/ui/Components/AnimatedEmojiSpan$TextViewEmojis;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1034
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->textView:Lorg/telegram/ui/Components/AnimatedEmojiSpan$TextViewEmojis;

    const/4 p2, -0x1

    const/high16 p3, -0x40800000    # -1.0f

    invoke-static {p2, p3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_4
    const/4 v2, 0x2

    if-ne p2, v2, :cond_5

    .line 1036
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->textView:Lorg/telegram/ui/Components/AnimatedEmojiSpan$TextViewEmojis;

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 1037
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->textView:Lorg/telegram/ui/Components/AnimatedEmojiSpan$TextViewEmojis;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_buttonText:I

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->getThemedColor(I)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1038
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->textView:Lorg/telegram/ui/Components/AnimatedEmojiSpan$TextViewEmojis;

    invoke-virtual {p2, p1, p3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1039
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->textView:Lorg/telegram/ui/Components/AnimatedEmojiSpan$TextViewEmojis;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1040
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->textView:Lorg/telegram/ui/Components/AnimatedEmojiSpan$TextViewEmojis;

    sget p3, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButton:I

    invoke-virtual {p0, p3}, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->getThemedColor(I)I

    move-result p3

    new-array p1, p1, [F

    const/high16 v1, 0x40c00000    # 6.0f

    aput v1, p1, v0

    invoke-static {p3, p1}, Lorg/telegram/ui/ActionBar/Theme$AdaptiveRipple;->filledRect(I[F)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1041
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->textView:Lorg/telegram/ui/Components/AnimatedEmojiSpan$TextViewEmojis;

    const/high16 v5, 0x41800000    # 16.0f

    const/high16 v6, 0x41800000    # 16.0f

    const/4 v0, -0x1

    const/high16 v1, -0x40800000    # -1.0f

    const/4 v2, 0x0

    const/high16 v3, 0x41800000    # 16.0f

    const/high16 v4, 0x41800000    # 16.0f

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_5
    return-void

    .line 1026
    :cond_6
    :goto_2
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->textView:Lorg/telegram/ui/Components/AnimatedEmojiSpan$TextViewEmojis;

    sget p3, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlack:I

    invoke-virtual {p0, p3}, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->getThemedColor(I)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1027
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->textView:Lorg/telegram/ui/Components/AnimatedEmojiSpan$TextViewEmojis;

    const/high16 p3, 0x41800000    # 16.0f

    invoke-virtual {p2, p1, p3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1028
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->textView:Lorg/telegram/ui/Components/AnimatedEmojiSpan$TextViewEmojis;

    sget-boolean p2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz p2, :cond_7

    move v4, v5

    :cond_7
    or-int/lit8 p2, v4, 0x10

    const/4 p3, -0x2

    invoke-static {p3, p3, p2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public getImageView()Landroid/widget/ImageView;
    .locals 1

    .line 1110
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->imageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getTextView()Lorg/telegram/ui/Components/AnimatedEmojiSpan$TextViewEmojis;
    .locals 1

    .line 1106
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->textView:Lorg/telegram/ui/Components/AnimatedEmojiSpan$TextViewEmojis;

    return-object v0
.end method

.method protected getThemedColor(I)I
    .locals 1

    .line 1114
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p1, v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    return p1
.end method

.method public isChecked()Z
    .locals 1

    .line 1102
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->checked:Z

    return v0
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    .line 1121
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1122
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->isSelected:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 1123
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSelected(Z)V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 1047
    iget p2, p0, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->currentType:I

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    const/16 v0, 0x50

    goto :goto_0

    :cond_0
    const/16 v0, 0x30

    :goto_0
    const/high16 v1, 0x40000000    # 2.0f

    if-nez p2, :cond_1

    .line 1049
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {p1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    :cond_1
    int-to-float p2, v0

    .line 1051
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    invoke-static {p2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public setChecked(Z)V
    .locals 1

    .line 1098
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->imageView2:Landroid/widget/ImageView;

    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->checked:Z

    if-eqz p1, :cond_0

    sget p1, Lorg/telegram/messenger/R$drawable;->checkbig:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public setGravity(I)V
    .locals 1

    .line 1063
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->textView:Lorg/telegram/ui/Components/AnimatedEmojiSpan$TextViewEmojis;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setGravity(I)V

    return-void
.end method

.method public setIconColor(I)V
    .locals 3

    .line 1059
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->imageView:Landroid/widget/ImageView;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, p1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method public setTextAndIcon(Ljava/lang/CharSequence;I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1067
    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->setTextAndIcon(Ljava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Z)V

    return-void
.end method

.method public setTextAndIcon(Ljava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Z)V
    .locals 2

    .line 1075
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->textView:Lorg/telegram/ui/Components/AnimatedEmojiSpan$TextViewEmojis;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 p1, 0x41800000    # 16.0f

    const/high16 v0, 0x41a80000    # 21.0f

    const/4 v1, 0x0

    if-nez p2, :cond_3

    if-eqz p3, :cond_0

    goto :goto_1

    .line 1091
    :cond_0
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->imageView:Landroid/widget/ImageView;

    const/4 p3, 0x4

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1092
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->textView:Lorg/telegram/ui/Components/AnimatedEmojiSpan$TextViewEmojis;

    if-eqz p4, :cond_1

    move p3, v0

    goto :goto_0

    :cond_1
    move p3, p1

    :goto_0
    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p3

    if-eqz p4, :cond_2

    move p1, v0

    :cond_2
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    invoke-virtual {p2, p3, v1, p1, v1}, Landroid/view/View;->setPadding(IIII)V

    return-void

    :cond_3
    :goto_1
    if-eqz p3, :cond_4

    .line 1078
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->imageView:Landroid/widget/ImageView;

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 1080
    :cond_4
    iget-object p3, p0, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->imageView:Landroid/widget/ImageView;

    invoke-virtual {p3, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1082
    :goto_2
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->imageView:Landroid/widget/ImageView;

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    const/high16 p2, 0x42900000    # 72.0f

    if-eqz p4, :cond_9

    .line 1084
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->textView:Lorg/telegram/ui/Components/AnimatedEmojiSpan$TextViewEmojis;

    sget-boolean p3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz p3, :cond_5

    move p3, v0

    goto :goto_3

    :cond_5
    move p3, p2

    :goto_3
    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p3

    sget-boolean p4, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz p4, :cond_6

    move v0, p2

    :cond_6
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    invoke-virtual {p1, p3, v1, p2, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 1085
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->imageView:Landroid/widget/ImageView;

    sget-boolean p2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/high16 p3, 0x40a00000    # 5.0f

    if-eqz p2, :cond_7

    move p2, v1

    goto :goto_4

    :cond_7
    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    :goto_4
    sget-boolean p4, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz p4, :cond_8

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p3

    goto :goto_5

    :cond_8
    const/4 p3, 0x5

    :goto_5
    invoke-virtual {p1, p2, v1, p3, v1}, Landroid/view/View;->setPadding(IIII)V

    return-void

    .line 1087
    :cond_9
    iget-object p3, p0, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->textView:Lorg/telegram/ui/Components/AnimatedEmojiSpan$TextViewEmojis;

    sget-boolean p4, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz p4, :cond_a

    move p4, p1

    goto :goto_6

    :cond_a
    move p4, p2

    :goto_6
    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p4

    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_b

    move p1, p2

    :cond_b
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    invoke-virtual {p3, p4, v1, p1, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 1088
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->imageView:Landroid/widget/ImageView;

    invoke-virtual {p1, v1, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method public setTextAndIcon(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V
    .locals 1

    const/4 v0, 0x0

    .line 1071
    invoke-virtual {p0, p1, v0, p2, v0}, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->setTextAndIcon(Ljava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Z)V

    return-void
.end method

.method public setTextColor(I)V
    .locals 1

    .line 1055
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->textView:Lorg/telegram/ui/Components/AnimatedEmojiSpan$TextViewEmojis;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method
