.class public Lorg/telegram/messenger/video/VideoAds$AdOptionsDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/video/VideoAds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AdOptionsDrawable"
.end annotation


# instance fields
.field private alpha:F

.field public final backgroundPaint:Landroid/graphics/Paint;

.field public final color:I

.field public final icon:Landroid/graphics/drawable/Drawable;

.field public final text:Lorg/telegram/ui/Components/Text;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 4

    .line 585
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 581
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/messenger/video/VideoAds$AdOptionsDrawable;->backgroundPaint:Landroid/graphics/Paint;

    .line 582
    new-instance v0, Lorg/telegram/ui/Components/Text;

    sget v1, Lorg/telegram/messenger/R$string;->SponsoredMessageAd:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/high16 v2, 0x41300000    # 11.0f

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/telegram/ui/Components/Text;-><init>(Ljava/lang/CharSequence;FLandroid/graphics/Typeface;)V

    iput-object v0, p0, Lorg/telegram/messenger/video/VideoAds$AdOptionsDrawable;->text:Lorg/telegram/ui/Components/Text;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 605
    iput v0, p0, Lorg/telegram/messenger/video/VideoAds$AdOptionsDrawable;->alpha:F

    .line 586
    iput p2, p0, Lorg/telegram/messenger/video/VideoAds$AdOptionsDrawable;->color:I

    .line 587
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/R$drawable;->ic_ab_other:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/messenger/video/VideoAds$AdOptionsDrawable;->icon:Landroid/graphics/drawable/Drawable;

    .line 588
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, p2, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 10

    .line 593
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 594
    iget v1, v0, Landroid/graphics/RectF;->left:F

    const/high16 v2, 0x40800000    # 4.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 595
    iget-object v1, p0, Lorg/telegram/messenger/video/VideoAds$AdOptionsDrawable;->backgroundPaint:Landroid/graphics/Paint;

    iget v2, p0, Lorg/telegram/messenger/video/VideoAds$AdOptionsDrawable;->color:I

    const v3, 0x3e4ccccd    # 0.2f

    iget v4, p0, Lorg/telegram/messenger/video/VideoAds$AdOptionsDrawable;->alpha:F

    mul-float/2addr v4, v3

    invoke-static {v2, v4}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 596
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v2

    iget-object v3, p0, Lorg/telegram/messenger/video/VideoAds$AdOptionsDrawable;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 598
    iget-object v4, p0, Lorg/telegram/messenger/video/VideoAds$AdOptionsDrawable;->text:Lorg/telegram/ui/Components/Text;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    const/high16 v2, 0x40a00000    # 5.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    add-float v6, v1, v2

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v7

    iget v8, p0, Lorg/telegram/messenger/video/VideoAds$AdOptionsDrawable;->color:I

    iget v9, p0, Lorg/telegram/messenger/video/VideoAds$AdOptionsDrawable;->alpha:F

    move-object v5, p1

    invoke-virtual/range {v4 .. v9}, Lorg/telegram/ui/Components/Text;->draw(Landroid/graphics/Canvas;FFIF)V

    .line 600
    iget-object p1, p0, Lorg/telegram/messenger/video/VideoAds$AdOptionsDrawable;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->right:I

    const v1, 0x414fd70a    # 12.99f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    const v2, 0x40b547ae    # 5.665f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int/2addr v1, v3

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->right:I

    const v4, 0x3fd47ae1    # 1.66f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int/2addr v4, v2

    invoke-virtual {p1, v0, v1, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 601
    iget-object p1, p0, Lorg/telegram/messenger/video/VideoAds$AdOptionsDrawable;->icon:Landroid/graphics/drawable/Drawable;

    const/high16 v0, 0x437f0000    # 255.0f

    iget v1, p0, Lorg/telegram/messenger/video/VideoAds$AdOptionsDrawable;->alpha:F

    mul-float/2addr v1, v0

    float-to-int v0, v1

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 602
    iget-object p1, p0, Lorg/telegram/messenger/video/VideoAds$AdOptionsDrawable;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v5}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    const/high16 v0, 0x41800000    # 16.0f

    .line 618
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 2

    const/high16 v0, 0x40800000    # 4.0f

    .line 623
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lorg/telegram/messenger/video/VideoAds$AdOptionsDrawable;->text:Lorg/telegram/ui/Components/Text;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Text;->getWidth()F

    move-result v1

    add-float/2addr v0, v1

    const/high16 v1, 0x41900000    # 18.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x2

    return v0
.end method

.method public setAlpha(I)V
    .locals 1

    int-to-float p1, p1

    const/high16 v0, 0x437f0000    # 255.0f

    div-float/2addr p1, v0

    .line 608
    iput p1, p0, Lorg/telegram/messenger/video/VideoAds$AdOptionsDrawable;->alpha:F

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method
