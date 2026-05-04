.class public Lorg/telegram/ui/Cells/CheckBoxCell$CollapseButton;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Cells/CheckBoxCell;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CollapseButton"
.end annotation


# instance fields
.field private final collapsedArrow:Landroid/view/View;

.field private iconView:Landroid/widget/ImageView;

.field private final textView:Lorg/telegram/ui/Components/AnimatedTextView;

.field final synthetic this$0:Lorg/telegram/ui/Cells/CheckBoxCell;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Cells/CheckBoxCell;Landroid/content/Context;I)V
    .locals 11

    .line 631
    iput-object p1, p0, Lorg/telegram/ui/Cells/CheckBoxCell$CollapseButton;->this$0:Lorg/telegram/ui/Cells/CheckBoxCell;

    .line 632
    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 634
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-static {p1, v0}, Lorg/telegram/ui/Cells/CheckBoxCell;->-$$Nest$mgetThemedColor(Lorg/telegram/ui/Cells/CheckBoxCell;I)I

    move-result v0

    if-eqz p3, :cond_0

    .line 637
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/Cells/CheckBoxCell$CollapseButton;->iconView:Landroid/widget/ImageView;

    .line 638
    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v0, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 639
    iget-object v1, p0, Lorg/telegram/ui/Cells/CheckBoxCell$CollapseButton;->iconView:Landroid/widget/ImageView;

    invoke-virtual {v1, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 642
    :cond_0
    new-instance p3, Lorg/telegram/ui/Components/AnimatedTextView;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p3, p2, v1, v2, v1}, Lorg/telegram/ui/Components/AnimatedTextView;-><init>(Landroid/content/Context;ZZZ)V

    iput-object p3, p0, Lorg/telegram/ui/Cells/CheckBoxCell$CollapseButton;->textView:Lorg/telegram/ui/Components/AnimatedTextView;

    const/high16 v3, 0x41500000    # 13.0f

    .line 643
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p3, v3}, Lorg/telegram/ui/Components/AnimatedTextView;->setTextSize(F)V

    .line 644
    invoke-virtual {p3, v0}, Lorg/telegram/ui/Components/AnimatedTextView;->setTextColor(I)V

    .line 645
    invoke-virtual {p3, v1}, Lorg/telegram/ui/Components/AnimatedTextView;->setIncludeFontPadding(Z)V

    .line 646
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {p3, v3}, Lorg/telegram/ui/Components/AnimatedTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 648
    new-instance v3, Landroid/view/View;

    invoke-direct {v3, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lorg/telegram/ui/Cells/CheckBoxCell$CollapseButton;->collapsedArrow:Landroid/view/View;

    .line 649
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v4, Lorg/telegram/messenger/R$drawable;->arrow_more:I

    invoke-virtual {p2, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 650
    new-instance v4, Landroid/graphics/PorterDuffColorFilter;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v0, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p2, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 651
    invoke-virtual {v3, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 653
    sget-boolean p2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/16 v0, 0xb

    if-eqz p2, :cond_2

    const/4 v9, 0x3

    const/4 v10, 0x0

    const/16 v4, 0x10

    const/16 v5, 0x10

    const/16 v6, 0x10

    const/16 v7, 0xb

    const/4 v8, 0x0

    .line 654
    invoke-static/range {v4 .. v10}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p0, v3, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 655
    iget-object p2, p0, Lorg/telegram/ui/Cells/CheckBoxCell$CollapseButton;->iconView:Landroid/widget/ImageView;

    if-nez p2, :cond_1

    :goto_0
    move v8, v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x3

    goto :goto_0

    :goto_1
    const/4 v9, 0x0

    const/4 v3, -0x2

    const/16 v4, 0x10

    const/16 v5, 0x10

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v3 .. v9}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p0, p3, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 656
    iget-object p2, p0, Lorg/telegram/ui/Cells/CheckBoxCell$CollapseButton;->iconView:Landroid/widget/ImageView;

    if-eqz p2, :cond_5

    const/16 v8, 0xb

    const/4 v9, 0x0

    const/16 v3, 0x10

    const/16 v4, 0x10

    const/16 v5, 0x10

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 657
    invoke-static/range {v3 .. v9}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p3

    invoke-virtual {p0, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_3

    .line 660
    :cond_2
    iget-object p2, p0, Lorg/telegram/ui/Cells/CheckBoxCell$CollapseButton;->iconView:Landroid/widget/ImageView;

    if-eqz p2, :cond_3

    const/4 v9, 0x3

    const/4 v10, 0x0

    const/16 v4, 0x10

    const/16 v5, 0x10

    const/16 v6, 0x10

    const/16 v7, 0xb

    const/4 v8, 0x0

    .line 661
    invoke-static/range {v4 .. v10}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {p0, p2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 663
    :cond_3
    iget-object p2, p0, Lorg/telegram/ui/Cells/CheckBoxCell$CollapseButton;->iconView:Landroid/widget/ImageView;

    if-nez p2, :cond_4

    move v7, v0

    goto :goto_2

    :cond_4
    move v7, v1

    :goto_2
    const/4 v9, 0x3

    const/4 v10, 0x0

    const/4 v4, -0x2

    const/16 v5, 0x10

    const/16 v6, 0x10

    const/4 v8, 0x0

    invoke-static/range {v4 .. v10}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p0, p3, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v9, 0xb

    const/16 v4, 0x10

    const/4 v7, 0x0

    .line 664
    invoke-static/range {v4 .. v10}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p0, v3, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 667
    :cond_5
    :goto_3
    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    invoke-static {p1, p2}, Lorg/telegram/ui/Cells/CheckBoxCell;->-$$Nest$mgetThemedColor(Lorg/telegram/ui/Cells/CheckBoxCell;I)I

    move-result p1

    const/16 p2, 0x10

    invoke-static {p1, p2, p2}, Lorg/telegram/ui/ActionBar/Theme;->createRadSelectorDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 668
    invoke-virtual {p0, v2}, Landroid/view/View;->setClickable(Z)V

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 1

    const/high16 p2, 0x42000000    # 32.0f

    .line 673
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void
.end method

.method public set(ZLjava/lang/CharSequence;)V
    .locals 2

    .line 677
    iget-object v0, p0, Lorg/telegram/ui/Cells/CheckBoxCell$CollapseButton;->textView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedTextView;->cancelAnimation()V

    .line 678
    iget-object v0, p0, Lorg/telegram/ui/Cells/CheckBoxCell$CollapseButton;->textView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {v0, p2}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 679
    iget-object p2, p0, Lorg/telegram/ui/Cells/CheckBoxCell$CollapseButton;->collapsedArrow:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 680
    iget-object p2, p0, Lorg/telegram/ui/Cells/CheckBoxCell$CollapseButton;->collapsedArrow:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/high16 p1, 0x43340000    # 180.0f

    :goto_0
    invoke-virtual {p2, p1}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0x154

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    sget-object p2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method
