.class public Lorg/telegram/ui/web/WebBrowserSettings$WebsiteView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/web/WebBrowserSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WebsiteView"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/web/WebBrowserSettings$WebsiteView$Factory;
    }
.end annotation


# instance fields
.field private domains:Ljava/util/ArrayList;

.field public final imageView:Landroid/widget/ImageView;

.field private needDivider:Z

.field public final optionsView:Landroid/widget/ImageView;

.field public final subtitleView:Landroid/widget/TextView;

.field public final titleView:Landroid/widget/TextView;


# direct methods
.method static bridge synthetic -$$Nest$fgetdomains(Lorg/telegram/ui/web/WebBrowserSettings$WebsiteView;)Ljava/util/ArrayList;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/web/WebBrowserSettings$WebsiteView;->domains:Ljava/util/ArrayList;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 10

    .line 554
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 556
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/web/WebBrowserSettings$WebsiteView;->imageView:Landroid/widget/ImageView;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v1, 0x1c

    const/high16 v2, 0x41e00000    # 28.0f

    const/16 v3, 0x13

    const/high16 v4, 0x41900000    # 18.0f

    const/4 v5, 0x0

    .line 557
    invoke-static/range {v1 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 559
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/web/WebBrowserSettings$WebsiteView;->titleView:Landroid/widget/TextView;

    .line 560
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v1, 0x41800000    # 16.0f

    const/4 v2, 0x1

    .line 561
    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 562
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 563
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 564
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const/high16 v8, 0x42580000    # 54.0f

    const/4 v9, 0x0

    const/4 v3, -0x1

    const/high16 v4, -0x40000000    # -2.0f

    const/16 v5, 0x37

    const/high16 v6, 0x42880000    # 68.0f

    const/high16 v7, 0x40e00000    # 7.0f

    .line 565
    invoke-static/range {v3 .. v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {p0, v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 567
    new-instance v0, Lorg/telegram/ui/web/WebBrowserSettings$WebsiteView$1;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/web/WebBrowserSettings$WebsiteView$1;-><init>(Lorg/telegram/ui/web/WebBrowserSettings$WebsiteView;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/web/WebBrowserSettings$WebsiteView;->subtitleView:Landroid/widget/TextView;

    .line 574
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v3, 0x41500000    # 13.0f

    .line 575
    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 576
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 577
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const/4 v1, 0x0

    .line 578
    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotX(F)V

    const/high16 v7, 0x42580000    # 54.0f

    const/4 v8, 0x0

    const/4 v2, -0x1

    const/high16 v3, -0x40000000    # -2.0f

    const/16 v4, 0x37

    const/high16 v5, 0x42880000    # 68.0f

    const/high16 v6, 0x41f00000    # 30.0f

    .line 579
    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 581
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/web/WebBrowserSettings$WebsiteView;->optionsView:Landroid/widget/ImageView;

    .line 582
    sget-object p1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 583
    sget p1, Lorg/telegram/messenger/R$drawable;->ic_ab_other:I

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 584
    new-instance p1, Landroid/graphics/PorterDuffColorFilter;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayIcon:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p1, v1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    const/high16 v8, 0x41900000    # 18.0f

    const/16 v3, 0x20

    const/high16 v4, 0x42000000    # 32.0f

    const/16 v5, 0x15

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 585
    invoke-static/range {v3 .. v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 646
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    const/high16 v0, 0x42800000    # 64.0f

    .line 647
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v2, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v3, v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v4, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v5, v0

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 653
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 p2, 0x40000000    # 2.0f

    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    const/high16 v0, 0x42600000    # 56.0f

    .line 654
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 652
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public set(Ljava/lang/CharSequence;Ljava/util/ArrayList;Landroid/graphics/Bitmap;Z)V
    .locals 6

    .line 596
    iget-object v0, p0, Lorg/telegram/ui/web/WebBrowserSettings$WebsiteView;->titleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 597
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 598
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Ljava/lang/String;

    .line 599
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 600
    const-string v5, ", "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 602
    :cond_0
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 604
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/web/WebBrowserSettings$WebsiteView;->subtitleView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 605
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 606
    iget-object v0, p0, Lorg/telegram/ui/web/WebBrowserSettings$WebsiteView;->subtitleView:Landroid/widget/TextView;

    const/high16 v1, 0x41600000    # 14.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 607
    iget-object v0, p0, Lorg/telegram/ui/web/WebBrowserSettings$WebsiteView;->subtitleView:Landroid/widget/TextView;

    const v1, 0x3fa66666    # 1.3f

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 608
    iget-object v0, p0, Lorg/telegram/ui/web/WebBrowserSettings$WebsiteView;->subtitleView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    goto :goto_1

    .line 610
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/web/WebBrowserSettings$WebsiteView;->subtitleView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 611
    iget-object v0, p0, Lorg/telegram/ui/web/WebBrowserSettings$WebsiteView;->subtitleView:Landroid/widget/TextView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 612
    iget-object v0, p0, Lorg/telegram/ui/web/WebBrowserSettings$WebsiteView;->subtitleView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    .line 614
    :goto_1
    iput-object p2, p0, Lorg/telegram/ui/web/WebBrowserSettings$WebsiteView;->domains:Ljava/util/ArrayList;

    .line 615
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_3

    :cond_4
    :goto_2
    const-string p1, ""

    :cond_5
    :goto_3
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    if-eqz p3, :cond_6

    .line 617
    iget-object p1, p0, Lorg/telegram/ui/web/WebBrowserSettings$WebsiteView;->imageView:Landroid/widget/ImageView;

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_4

    .line 619
    :cond_6
    new-instance p2, Lorg/telegram/ui/Components/CombinedDrawable;

    const/high16 p3, 0x40c00000    # 6.0f

    .line 620
    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p3

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    const v1, 0x3dcccccd    # 0.1f

    invoke-static {v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v0

    invoke-static {p3, v0}, Lorg/telegram/ui/ActionBar/Theme;->createRoundRectDrawable(II)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object p3

    new-instance v0, Lorg/telegram/ui/web/WebBrowserSettings$WebsiteView$2;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/web/WebBrowserSettings$WebsiteView$2;-><init>(Lorg/telegram/ui/web/WebBrowserSettings$WebsiteView;Ljava/lang/String;)V

    invoke-direct {p2, p3, v0}, Lorg/telegram/ui/Components/CombinedDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    const/high16 p1, 0x41e00000    # 28.0f

    .line 637
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p3

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    invoke-virtual {p2, p3, p1}, Lorg/telegram/ui/Components/CombinedDrawable;->setCustomSize(II)V

    .line 638
    iget-object p1, p0, Lorg/telegram/ui/web/WebBrowserSettings$WebsiteView;->imageView:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 640
    :goto_4
    iget-boolean p1, p0, Lorg/telegram/ui/web/WebBrowserSettings$WebsiteView;->needDivider:Z

    if-eq p1, p4, :cond_7

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 641
    :cond_7
    iput-boolean p4, p0, Lorg/telegram/ui/web/WebBrowserSettings$WebsiteView;->needDivider:Z

    xor-int/lit8 p1, p4, 0x1

    invoke-virtual {p0, p1}, Landroid/view/View;->setWillNotDraw(Z)V

    return-void
.end method
