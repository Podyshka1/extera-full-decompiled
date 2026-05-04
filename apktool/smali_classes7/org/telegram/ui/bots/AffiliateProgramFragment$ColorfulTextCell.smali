.class public Lorg/telegram/ui/bots/AffiliateProgramFragment$ColorfulTextCell;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/bots/AffiliateProgramFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ColorfulTextCell"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/bots/AffiliateProgramFragment$ColorfulTextCell$Factory;
    }
.end annotation


# instance fields
.field private final arrowView:Landroid/widget/ImageView;

.field private final imageView:Landroid/widget/ImageView;

.field private final imageViewLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

.field private final percentView:Landroid/widget/TextView;

.field private final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private final textLayout:Landroid/widget/LinearLayout;

.field private final textLayoutLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

.field private final textView:Landroid/widget/TextView;

.field private final titleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 647
    invoke-direct/range {p0 .. p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 648
    iput-object v2, v0, Lorg/telegram/ui/bots/AffiliateProgramFragment$ColorfulTextCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 650
    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/bots/AffiliateProgramFragment$ColorfulTextCell;->imageView:Landroid/widget/ImageView;

    .line 651
    new-instance v4, Landroid/graphics/PorterDuffColorFilter;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    const/4 v6, -0x1

    invoke-direct {v4, v6, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 652
    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v7, 0x1c

    const/high16 v8, 0x41e00000    # 28.0f

    const/16 v9, 0x33

    const/high16 v10, 0x41880000    # 17.0f

    const v11, 0x416547ae    # 14.33f

    .line 653
    invoke-static/range {v7 .. v13}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v7

    iput-object v7, v0, Lorg/telegram/ui/bots/AffiliateProgramFragment$ColorfulTextCell;->imageViewLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0, v3, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 655
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/bots/AffiliateProgramFragment$ColorfulTextCell;->textLayout:Landroid/widget/LinearLayout;

    const/4 v7, 0x1

    .line 656
    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/high16 v13, 0x42200000    # 40.0f

    const v14, 0x410a8f5c    # 8.66f

    const/4 v8, -0x1

    const/high16 v9, -0x40000000    # -2.0f

    const/16 v10, 0x37

    const/high16 v11, 0x42780000    # 62.0f

    const/high16 v12, 0x41200000    # 10.0f

    .line 657
    invoke-static/range {v8 .. v14}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v8

    iput-object v8, v0, Lorg/telegram/ui/bots/AffiliateProgramFragment$ColorfulTextCell;->textLayoutLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0, v3, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 659
    new-instance v8, Landroid/widget/TextView;

    invoke-direct {v8, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v8, v0, Lorg/telegram/ui/bots/AffiliateProgramFragment$ColorfulTextCell;->titleView:Landroid/widget/TextView;

    .line 660
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/high16 v9, 0x41700000    # 15.0f

    .line 661
    invoke-virtual {v8, v7, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 662
    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-static {v9, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/4 v10, -0x1

    const/4 v11, -0x2

    const/16 v12, 0x37

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 663
    invoke-static/range {v10 .. v16}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 665
    new-instance v8, Landroid/widget/TextView;

    invoke-direct {v8, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v8, v0, Lorg/telegram/ui/bots/AffiliateProgramFragment$ColorfulTextCell;->textView:Landroid/widget/TextView;

    const/high16 v9, 0x41600000    # 14.0f

    .line 666
    invoke-virtual {v8, v7, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 667
    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText2:I

    invoke-static {v9, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v14, 0x3

    .line 668
    invoke-static/range {v10 .. v16}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 670
    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/bots/AffiliateProgramFragment$ColorfulTextCell;->arrowView:Landroid/widget/ImageView;

    .line 671
    new-instance v8, Landroid/graphics/PorterDuffColorFilter;

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_switchTrack:I

    invoke-static {v9, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v9

    invoke-direct {v8, v9, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 672
    sget v5, Lorg/telegram/messenger/R$drawable;->msg_arrowright:I

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 673
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const/high16 v13, 0x41200000    # 10.0f

    const/4 v14, 0x0

    const/16 v8, 0x18

    const/high16 v9, 0x41c00000    # 24.0f

    const/16 v10, 0x15

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 674
    invoke-static/range {v8 .. v14}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 676
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/bots/AffiliateProgramFragment$ColorfulTextCell;->percentView:Landroid/widget/TextView;

    .line 677
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v1, 0x40800000    # 4.0f

    .line 678
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_color_green:I

    invoke-static {v5, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    invoke-static {v4, v2}, Lorg/telegram/ui/ActionBar/Theme;->createRoundRectDrawable(II)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/high16 v2, 0x41500000    # 13.0f

    .line 679
    invoke-virtual {v3, v7, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 680
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/high16 v2, 0x40a00000    # 5.0f

    .line 681
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    const/4 v4, 0x0

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {v3, v2, v4, v1, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    const/16 v1, 0x11

    .line 682
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setGravity(I)V

    const/16 v1, 0x8

    .line 683
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    const v9, 0x420d51ec    # 35.33f

    const/4 v10, 0x0

    const/4 v4, -0x2

    const/high16 v5, 0x41900000    # 18.0f

    const/16 v6, 0x15

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 684
    invoke-static/range {v4 .. v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 1

    .line 725
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public set(IILjava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 2

    .line 688
    iget-object v0, p0, Lorg/telegram/ui/bots/AffiliateProgramFragment$ColorfulTextCell;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 689
    iget-object p2, p0, Lorg/telegram/ui/bots/AffiliateProgramFragment$ColorfulTextCell;->imageView:Landroid/widget/ImageView;

    const/high16 v0, 0x41100000    # 9.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-static {v0, p1}, Lorg/telegram/ui/ActionBar/Theme;->createRoundRectDrawable(II)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 691
    iget-object p1, p0, Lorg/telegram/ui/bots/AffiliateProgramFragment$ColorfulTextCell;->titleView:Landroid/widget/TextView;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 692
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    const/high16 v0, 0x41200000    # 10.0f

    if-eqz p1, :cond_0

    .line 693
    iget-object p1, p0, Lorg/telegram/ui/bots/AffiliateProgramFragment$ColorfulTextCell;->imageViewLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p4

    iput p4, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 694
    iget-object p1, p0, Lorg/telegram/ui/bots/AffiliateProgramFragment$ColorfulTextCell;->imageViewLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p4

    iput p4, p1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 695
    iget-object p1, p0, Lorg/telegram/ui/bots/AffiliateProgramFragment$ColorfulTextCell;->titleView:Landroid/widget/TextView;

    const/4 p4, 0x0

    invoke-virtual {p1, p4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 696
    iget-object p1, p0, Lorg/telegram/ui/bots/AffiliateProgramFragment$ColorfulTextCell;->titleView:Landroid/widget/TextView;

    const/high16 p4, 0x41800000    # 16.0f

    invoke-virtual {p1, p2, p4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 697
    iget-object p1, p0, Lorg/telegram/ui/bots/AffiliateProgramFragment$ColorfulTextCell;->textLayoutLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    iput p3, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 698
    iput p3, p1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    const/16 p2, 0x17

    .line 699
    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 700
    iget-object p1, p0, Lorg/telegram/ui/bots/AffiliateProgramFragment$ColorfulTextCell;->textView:Landroid/widget/TextView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 702
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/bots/AffiliateProgramFragment$ColorfulTextCell;->imageViewLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    const v1, 0x416547ae    # 14.33f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 703
    iget-object p1, p0, Lorg/telegram/ui/bots/AffiliateProgramFragment$ColorfulTextCell;->imageViewLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 704
    iget-object p1, p0, Lorg/telegram/ui/bots/AffiliateProgramFragment$ColorfulTextCell;->titleView:Landroid/widget/TextView;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 705
    iget-object p1, p0, Lorg/telegram/ui/bots/AffiliateProgramFragment$ColorfulTextCell;->titleView:Landroid/widget/TextView;

    const/high16 v1, 0x41700000    # 15.0f

    invoke-virtual {p1, p2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 706
    iget-object p1, p0, Lorg/telegram/ui/bots/AffiliateProgramFragment$ColorfulTextCell;->textLayoutLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 707
    iget-object p1, p0, Lorg/telegram/ui/bots/AffiliateProgramFragment$ColorfulTextCell;->textLayoutLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    const p2, 0x410a8f5c    # 8.66f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 708
    iget-object p1, p0, Lorg/telegram/ui/bots/AffiliateProgramFragment$ColorfulTextCell;->textLayoutLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    const/16 p2, 0x37

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 709
    iget-object p1, p0, Lorg/telegram/ui/bots/AffiliateProgramFragment$ColorfulTextCell;->textView:Landroid/widget/TextView;

    invoke-virtual {p1, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 710
    iget-object p1, p0, Lorg/telegram/ui/bots/AffiliateProgramFragment$ColorfulTextCell;->textView:Landroid/widget/TextView;

    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public setPercent(Ljava/lang/CharSequence;)V
    .locals 2

    .line 715
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 716
    iget-object p1, p0, Lorg/telegram/ui/bots/AffiliateProgramFragment$ColorfulTextCell;->percentView:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 718
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/bots/AffiliateProgramFragment$ColorfulTextCell;->percentView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 719
    iget-object v0, p0, Lorg/telegram/ui/bots/AffiliateProgramFragment$ColorfulTextCell;->percentView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
