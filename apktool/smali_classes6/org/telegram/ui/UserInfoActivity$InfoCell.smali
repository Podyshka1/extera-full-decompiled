.class Lorg/telegram/ui/UserInfoActivity$InfoCell;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/UserInfoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InfoCell"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/UserInfoActivity$InfoCell$Factory;
    }
.end annotation


# instance fields
.field private accent:Z

.field private final icon2View:Landroid/widget/ImageView;

.field private final iconView:Landroid/widget/ImageView;

.field private final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private final subtitleView:Landroid/widget/TextView;

.field private final textLayout:Landroid/widget/LinearLayout;

.field private final titleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 13

    .line 760
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 761
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 763
    iput-object p2, p0, Lorg/telegram/ui/UserInfoActivity$InfoCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 765
    new-instance p2, Landroid/widget/ImageView;

    invoke-direct {p2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lorg/telegram/ui/UserInfoActivity$InfoCell;->iconView:Landroid/widget/ImageView;

    .line 766
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const/16 v7, 0xc

    const/4 v8, 0x0

    const/16 v2, 0x28

    const/16 v3, 0x28

    const/16 v4, 0x13

    const/16 v5, 0xc

    const/4 v6, 0x0

    .line 767
    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {p0, p2, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 769
    new-instance p2, Landroid/widget/LinearLayout;

    invoke-direct {p2, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lorg/telegram/ui/UserInfoActivity$InfoCell;->textLayout:Landroid/widget/LinearLayout;

    const/4 v2, 0x1

    .line 770
    invoke-virtual {p2, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/high16 v3, 0x41200000    # 10.0f

    .line 771
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {p2, v0, v4, v0, v3}, Landroid/view/View;->setPadding(IIII)V

    const/16 v11, 0x20

    const/4 v12, 0x0

    const/4 v5, 0x0

    const/4 v6, -0x2

    const/high16 v7, 0x3f800000    # 1.0f

    const/16 v8, 0x17

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 772
    invoke-static/range {v5 .. v12}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 774
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/UserInfoActivity$InfoCell;->titleView:Landroid/widget/TextView;

    const/high16 v3, 0x41800000    # 16.0f

    .line 775
    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    const/4 v4, -0x1

    const/4 v5, -0x2

    const/4 v6, 0x7

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 776
    invoke-static/range {v4 .. v10}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {p2, v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 778
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/UserInfoActivity$InfoCell;->subtitleView:Landroid/widget/TextView;

    const/high16 v3, 0x41500000    # 13.0f

    .line 779
    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v7, 0x0

    const v8, 0x408a8f5c    # 4.33f

    .line 780
    invoke-static/range {v4 .. v10}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {p2, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 782
    new-instance p2, Landroid/widget/ImageView;

    invoke-direct {p2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lorg/telegram/ui/UserInfoActivity$InfoCell;->icon2View:Landroid/widget/ImageView;

    .line 783
    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const/16 v7, 0xc

    const/4 v8, 0x0

    const/16 v2, 0x28

    const/16 v3, 0x28

    const/16 v4, 0x15

    const/16 v5, 0xc

    const/4 v6, 0x0

    .line 784
    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private updateColors()V
    .locals 5

    .line 796
    iget-object v0, p0, Lorg/telegram/ui/UserInfoActivity$InfoCell;->iconView:Landroid/widget/ImageView;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    iget-boolean v2, p0, Lorg/telegram/ui/UserInfoActivity$InfoCell;->accent:Z

    if-eqz v2, :cond_0

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueText:I

    goto :goto_0

    :cond_0
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/UserInfoActivity$InfoCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 797
    iget-object v0, p0, Lorg/telegram/ui/UserInfoActivity$InfoCell;->icon2View:Landroid/widget/ImageView;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    iget-boolean v2, p0, Lorg/telegram/ui/UserInfoActivity$InfoCell;->accent:Z

    if-eqz v2, :cond_1

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueText:I

    goto :goto_1

    :cond_1
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    :goto_1
    iget-object v4, p0, Lorg/telegram/ui/UserInfoActivity$InfoCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v2, v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 798
    iget-object v0, p0, Lorg/telegram/ui/UserInfoActivity$InfoCell;->titleView:Landroid/widget/TextView;

    iget-boolean v1, p0, Lorg/telegram/ui/UserInfoActivity$InfoCell;->accent:Z

    if-eqz v1, :cond_2

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueText:I

    goto :goto_2

    :cond_2
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    :goto_2
    iget-object v2, p0, Lorg/telegram/ui/UserInfoActivity$InfoCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 799
    iget-object v0, p0, Lorg/telegram/ui/UserInfoActivity$InfoCell;->subtitleView:Landroid/widget/TextView;

    iget-boolean v1, p0, Lorg/telegram/ui/UserInfoActivity$InfoCell;->accent:Z

    if-eqz v1, :cond_3

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueText:I

    goto :goto_3

    :cond_3
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText:I

    :goto_3
    iget-object v2, p0, Lorg/telegram/ui/UserInfoActivity$InfoCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 1

    .line 790
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 789
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void
.end method

.method public set(ILjava/lang/CharSequence;Ljava/lang/CharSequence;ZI)V
    .locals 1

    .line 803
    iput-boolean p4, p0, Lorg/telegram/ui/UserInfoActivity$InfoCell;->accent:Z

    .line 804
    iget-object p4, p0, Lorg/telegram/ui/UserInfoActivity$InfoCell;->iconView:Landroid/widget/ImageView;

    invoke-virtual {p4, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    const/16 p1, 0x8

    const/4 p4, 0x0

    if-eqz p5, :cond_0

    .line 806
    iget-object v0, p0, Lorg/telegram/ui/UserInfoActivity$InfoCell;->icon2View:Landroid/widget/ImageView;

    invoke-virtual {v0, p4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 807
    iget-object v0, p0, Lorg/telegram/ui/UserInfoActivity$InfoCell;->icon2View:Landroid/widget/ImageView;

    invoke-virtual {v0, p5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 809
    :cond_0
    iget-object p5, p0, Lorg/telegram/ui/UserInfoActivity$InfoCell;->icon2View:Landroid/widget/ImageView;

    invoke-virtual {p5, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 811
    :goto_0
    iget-object p5, p0, Lorg/telegram/ui/UserInfoActivity$InfoCell;->titleView:Landroid/widget/TextView;

    invoke-virtual {p5, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 812
    iget-object p2, p0, Lorg/telegram/ui/UserInfoActivity$InfoCell;->subtitleView:Landroid/widget/TextView;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 813
    iget-object p2, p0, Lorg/telegram/ui/UserInfoActivity$InfoCell;->subtitleView:Landroid/widget/TextView;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p5

    if-eqz p5, :cond_1

    goto :goto_1

    :cond_1
    move p1, p4

    :goto_1
    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    .line 814
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/high16 p1, 0x41700000    # 15.0f

    goto :goto_2

    :cond_2
    const/high16 p1, 0x41200000    # 10.0f

    :goto_2
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    .line 815
    iget-object p2, p0, Lorg/telegram/ui/UserInfoActivity$InfoCell;->textLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p2, p4, p1, p4, p1}, Landroid/view/View;->setPadding(IIII)V

    .line 816
    invoke-direct {p0}, Lorg/telegram/ui/UserInfoActivity$InfoCell;->updateColors()V

    return-void
.end method
