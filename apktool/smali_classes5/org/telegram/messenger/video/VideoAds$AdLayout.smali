.class public Lorg/telegram/messenger/video/VideoAds$AdLayout;
.super Lorg/telegram/ui/Components/Bulletin$ButtonLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/video/VideoAds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AdLayout"
.end annotation


# instance fields
.field public final buttonView:Landroid/widget/ImageView;

.field public final imageView:Lorg/telegram/ui/Components/BackupImageView;

.field private final linearLayout:Landroid/widget/LinearLayout;

.field public final subtitleTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

.field public final titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 10

    .line 796
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/Bulletin$ButtonLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 797
    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_undo_background:I

    invoke-virtual {p0, p2}, Lorg/telegram/ui/Components/Bulletin$Layout;->getThemedColor(I)I

    move-result p2

    invoke-virtual {p0, p2}, Lorg/telegram/ui/Components/Bulletin$Layout;->setBackground(I)V

    .line 799
    new-instance p2, Lorg/telegram/ui/Components/BackupImageView;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lorg/telegram/messenger/video/VideoAds$AdLayout;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    const/high16 v0, 0x42400000    # 48.0f

    .line 800
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/BackupImageView;->setRoundRadius(I)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/high16 v1, 0x42100000    # 36.0f

    const/high16 v2, 0x42100000    # 36.0f

    const v3, 0x800013

    const/high16 v4, 0x41100000    # 9.0f

    const/4 v5, 0x0

    .line 801
    invoke-static/range {v1 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrameRelatively(FFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 803
    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_undo_infoColor:I

    invoke-virtual {p0, p2}, Lorg/telegram/ui/Components/Bulletin$Layout;->getThemedColor(I)I

    move-result p2

    .line 804
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_undo_cancelColor:I

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/Bulletin$Layout;->getThemedColor(I)I

    move-result v0

    .line 806
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/messenger/video/VideoAds$AdLayout;->linearLayout:Landroid/widget/LinearLayout;

    const/4 v2, 0x1

    .line 807
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/high16 v8, 0x42580000    # 54.0f

    const/high16 v9, 0x41000000    # 8.0f

    const/high16 v3, -0x40000000    # -2.0f

    const/high16 v4, -0x40000000    # -2.0f

    const v5, 0x800013

    const/high16 v6, 0x42500000    # 52.0f

    const/high16 v7, 0x41000000    # 8.0f

    .line 808
    invoke-static/range {v3 .. v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrameRelatively(FFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 810
    new-instance v3, Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-direct {v3, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lorg/telegram/messenger/video/VideoAds$AdLayout;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/high16 v4, 0x40800000    # 4.0f

    .line 811
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    const/4 v7, 0x0

    invoke-virtual {v3, v5, v7, v6, v7}, Landroid/view/View;->setPadding(IIII)V

    .line 812
    invoke-virtual {v3, p2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    const/16 v5, 0xe

    .line 813
    invoke-virtual {v3, v5}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextSize(I)V

    .line 814
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 815
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 817
    new-instance v3, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-direct {v3, p1}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lorg/telegram/messenger/video/VideoAds$AdLayout;->subtitleTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    .line 818
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-virtual {v3, v5, v7, v4, v7}, Landroid/view/View;->setPadding(IIII)V

    .line 819
    invoke-virtual {v3, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 820
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setLinkTextColor(I)V

    .line 821
    sget-object p2, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-virtual {v3, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/high16 p2, 0x41500000    # 13.0f

    .line 822
    invoke-virtual {v3, v2, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 823
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 825
    new-instance p2, Landroid/widget/ImageView;

    invoke-direct {p2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lorg/telegram/messenger/video/VideoAds$AdLayout;->buttonView:Landroid/widget/ImageView;

    .line 826
    sget-object p1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 827
    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButton:I

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/Bulletin$Layout;->getThemedColor(I)I

    move-result p1

    const v0, 0x3e19999a    # 0.15f

    invoke-static {p1, v0}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result p1

    const/4 v0, 0x7

    invoke-static {p1, v0}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/high16 v5, 0x41300000    # 11.0f

    const/4 v6, 0x0

    const/high16 v0, 0x42000000    # 32.0f

    const/high16 v1, 0x42000000    # 32.0f

    const v2, 0x800015

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 828
    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrameRelatively(FFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public getAccessibilityText()Ljava/lang/CharSequence;
    .locals 2

    .line 839
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/telegram/messenger/video/VideoAds$AdLayout;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ".\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/telegram/messenger/video/VideoAds$AdLayout;->subtitleTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hideImage()V
    .locals 8

    .line 843
    iget-object v0, p0, Lorg/telegram/messenger/video/VideoAds$AdLayout;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 844
    iget-object v0, p0, Lorg/telegram/messenger/video/VideoAds$AdLayout;->linearLayout:Landroid/widget/LinearLayout;

    const/high16 v6, 0x42580000    # 54.0f

    const/high16 v7, 0x41000000    # 8.0f

    const/high16 v1, -0x40000000    # -2.0f

    const/high16 v2, -0x40000000    # -2.0f

    const v3, 0x800013

    const/high16 v4, 0x41200000    # 10.0f

    const/high16 v5, 0x41000000    # 8.0f

    invoke-static/range {v1 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrameRelatively(FFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method protected onShow()V
    .locals 0

    .line 833
    invoke-super {p0}, Lorg/telegram/ui/Components/Bulletin$Layout;->onShow()V

    return-void
.end method
