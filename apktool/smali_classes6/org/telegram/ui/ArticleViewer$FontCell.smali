.class public Lorg/telegram/ui/ArticleViewer$FontCell;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ArticleViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FontCell"
.end annotation


# instance fields
.field private radioButton:Lorg/telegram/ui/Components/RadioButton;

.field private textView:Landroid/widget/TextView;

.field final synthetic this$0:Lorg/telegram/ui/ArticleViewer;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;)V
    .locals 12

    .line 677
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$FontCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    .line 678
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 680
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ArticleViewer;->getThemedColor(I)I

    move-result v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 682
    new-instance v0, Lorg/telegram/ui/Components/RadioButton;

    invoke-direct {v0, p2}, Lorg/telegram/ui/Components/RadioButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer$FontCell;->radioButton:Lorg/telegram/ui/Components/RadioButton;

    const/high16 v1, 0x41a00000    # 20.0f

    .line 683
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RadioButton;->setSize(I)V

    .line 684
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$FontCell;->radioButton:Lorg/telegram/ui/Components/RadioButton;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogRadioBackground:I

    invoke-virtual {p1, v1}, Lorg/telegram/ui/ArticleViewer;->getThemedColor(I)I

    move-result v1

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_dialogRadioBackgroundChecked:I

    invoke-virtual {p1, v2}, Lorg/telegram/ui/ArticleViewer;->getThemedColor(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/RadioButton;->setColor(II)V

    .line 685
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$FontCell;->radioButton:Lorg/telegram/ui/Components/RadioButton;

    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/4 v2, 0x3

    const/4 v3, 0x5

    if-eqz v1, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    or-int/lit8 v7, v4, 0x30

    const/16 v4, 0x16

    const/4 v5, 0x0

    if-eqz v1, :cond_1

    move v6, v5

    goto :goto_1

    :cond_1
    move v6, v4

    :goto_1
    int-to-float v8, v6

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    move v4, v5

    :goto_2
    int-to-float v10, v4

    const/4 v11, 0x0

    const/16 v5, 0x16

    const/high16 v6, 0x41b00000    # 22.0f

    const/high16 v9, 0x41500000    # 13.0f

    invoke-static/range {v5 .. v11}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 687
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer$FontCell;->textView:Landroid/widget/TextView;

    .line 688
    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ArticleViewer;->getThemedColor(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 689
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$FontCell;->textView:Landroid/widget/TextView;

    const/high16 p2, 0x41800000    # 16.0f

    const/4 v0, 0x1

    invoke-virtual {p1, v0, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 690
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$FontCell;->textView:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setLines(I)V

    .line 691
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$FontCell;->textView:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 692
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$FontCell;->textView:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 693
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$FontCell;->textView:Landroid/widget/TextView;

    sget-boolean p2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz p2, :cond_3

    move p2, v3

    goto :goto_3

    :cond_3
    move p2, v2

    :goto_3
    or-int/lit8 p2, p2, 0x10

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setGravity(I)V

    .line 694
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$FontCell;->textView:Landroid/widget/TextView;

    sget-boolean p2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz p2, :cond_4

    move v2, v3

    :cond_4
    or-int/lit8 v5, v2, 0x30

    const/16 v0, 0x3e

    const/16 v1, 0x11

    if-eqz p2, :cond_5

    move v2, v1

    goto :goto_4

    :cond_5
    move v2, v0

    :goto_4
    int-to-float v6, v2

    if-eqz p2, :cond_6

    goto :goto_5

    :cond_6
    move v0, v1

    :goto_5
    int-to-float v8, v0

    const/4 v9, 0x0

    const/4 v3, -0x1

    const/high16 v4, -0x40800000    # -1.0f

    const/4 v7, 0x0

    invoke-static/range {v3 .. v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    .line 715
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 716
    const-class v0, Lorg/telegram/ui/Components/RadioButton;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 717
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$FontCell;->radioButton:Lorg/telegram/ui/Components/RadioButton;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RadioButton;->isChecked()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    const/4 v0, 0x1

    .line 718
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 699
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 p2, 0x40000000    # 2.0f

    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    const/high16 v0, 0x42400000    # 48.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public select(ZZ)V
    .locals 1

    .line 703
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$FontCell;->radioButton:Lorg/telegram/ui/Components/RadioButton;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Components/RadioButton;->setChecked(ZZ)V

    return-void
.end method

.method public setTextAndTypeface(Ljava/lang/String;Landroid/graphics/Typeface;)V
    .locals 1

    .line 707
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$FontCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 708
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$FontCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 709
    invoke-virtual {p0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 710
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
