.class public Lorg/telegram/ui/ProfileActivity$ShowDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/ActionBar/SimpleTextView$PressableDrawable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ProfileActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ShowDrawable"
.end annotation


# instance fields
.field private alpha:F

.field private alpha2:F

.field public final backgroundPaint:Landroid/graphics/Paint;

.field private final bounce:Lorg/telegram/ui/Components/ButtonBounce;

.field private pressed:Z

.field private textColor:I

.field public final textDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

.field private translationX:F

.field private view:Landroid/view/View;


# direct methods
.method static bridge synthetic -$$Nest$fgetview(Lorg/telegram/ui/ProfileActivity$ShowDrawable;)Landroid/view/View;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ProfileActivity$ShowDrawable;->view:Landroid/view/View;

    return-object p0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .line 16574
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 16571
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/ProfileActivity$ShowDrawable;->backgroundPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x3f800000    # 1.0f

    .line 16641
    iput v1, p0, Lorg/telegram/ui/ProfileActivity$ShowDrawable;->alpha:F

    iput v1, p0, Lorg/telegram/ui/ProfileActivity$ShowDrawable;->alpha2:F

    .line 16680
    new-instance v1, Lorg/telegram/ui/ProfileActivity$ShowDrawable$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/telegram/ui/ProfileActivity$ShowDrawable$2;-><init>(Lorg/telegram/ui/ProfileActivity$ShowDrawable;Landroid/view/View;)V

    iput-object v1, p0, Lorg/telegram/ui/ProfileActivity$ShowDrawable;->bounce:Lorg/telegram/ui/Components/ButtonBounce;

    .line 16575
    new-instance v1, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-direct {v1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/ProfileActivity$ShowDrawable;->textDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    .line 16576
    new-instance v2, Lorg/telegram/ui/ProfileActivity$ShowDrawable$1;

    invoke-direct {v2, p0}, Lorg/telegram/ui/ProfileActivity$ShowDrawable$1;-><init>(Lorg/telegram/ui/ProfileActivity$ShowDrawable;)V

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 16592
    invoke-virtual {v1, p1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setText(Ljava/lang/CharSequence;)V

    const/high16 p1, 0x41300000    # 11.0f

    .line 16593
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v1, p1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setTextSize(F)V

    const/16 p1, 0x11

    .line 16594
    invoke-virtual {v1, p1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setGravity(I)V

    const/high16 p1, 0x1f000000

    .line 16595
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 16623
    iget v0, p0, Lorg/telegram/ui/ProfileActivity$ShowDrawable;->alpha:F

    iget v1, p0, Lorg/telegram/ui/ProfileActivity$ShowDrawable;->alpha2:F

    mul-float/2addr v0, v1

    const/4 v1, 0x0

    cmpg-float v2, v0, v1

    if-gtz v2, :cond_0

    return-void

    .line 16625
    :cond_0
    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 16626
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 16627
    iget v3, p0, Lorg/telegram/ui/ProfileActivity$ShowDrawable;->translationX:F

    invoke-virtual {p1, v3, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 16628
    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$ShowDrawable;->bounce:Lorg/telegram/ui/Components/ButtonBounce;

    const v3, 0x3dcccccd    # 0.1f

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/ButtonBounce;->getScale(F)F

    move-result v1

    .line 16629
    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    invoke-virtual {p1, v1, v1, v3, v4}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 16630
    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$ShowDrawable;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getAlpha()I

    move-result v1

    .line 16631
    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity$ShowDrawable;->backgroundPaint:Landroid/graphics/Paint;

    int-to-float v4, v1

    mul-float/2addr v4, v0

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    const/high16 v3, 0x41a00000    # 20.0f

    .line 16632
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    iget-object v5, p0, Lorg/telegram/ui/ProfileActivity$ShowDrawable;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v4, v3, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 16633
    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity$ShowDrawable;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 16634
    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$ShowDrawable;->textDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    iget v3, p0, Lorg/telegram/ui/ProfileActivity$ShowDrawable;->textColor:I

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setTextColor(I)V

    .line 16635
    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$ShowDrawable;->textDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    const/high16 v3, 0x437f0000    # 255.0f

    mul-float/2addr v0, v3

    float-to-int v0, v0

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setAlpha(I)V

    .line 16636
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ShowDrawable;->textDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    iget v1, v2, Landroid/graphics/RectF;->left:F

    float-to-int v1, v1

    iget v3, v2, Landroid/graphics/RectF;->top:F

    float-to-int v3, v3

    iget v4, v2, Landroid/graphics/RectF;->right:F

    float-to-int v4, v4

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    float-to-int v2, v2

    invoke-virtual {v0, v1, v3, v4, v2}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setBounds(IIII)V

    .line 16637
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ShowDrawable;->textDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 16638
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public getAlpha()I
    .locals 2

    .line 16645
    iget v0, p0, Lorg/telegram/ui/ProfileActivity$ShowDrawable;->alpha:F

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    const v0, 0x418aa3d7    # 17.33f

    .line 16671
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 2

    .line 16666
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ShowDrawable;->textDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->getAnimateToWidth()F

    move-result v0

    const/high16 v1, 0x41300000    # 11.0f

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

    .line 16650
    iput p1, p0, Lorg/telegram/ui/ProfileActivity$ShowDrawable;->alpha:F

    .line 16651
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setAlpha2(F)V
    .locals 0

    .line 16655
    iput p1, p0, Lorg/telegram/ui/ProfileActivity$ShowDrawable;->alpha2:F

    .line 16656
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1

    .line 16601
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ShowDrawable;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 16602
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ShowDrawable;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 16603
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method

.method public setPressed(Z)V
    .locals 1

    .line 16689
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ShowDrawable;->bounce:Lorg/telegram/ui/Components/ButtonBounce;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/ButtonBounce;->setPressed(Z)V

    .line 16690
    iput-boolean p1, p0, Lorg/telegram/ui/ProfileActivity$ShowDrawable;->pressed:Z

    return-void
.end method

.method public setTextColor(I)V
    .locals 1

    .line 16608
    iget v0, p0, Lorg/telegram/ui/ProfileActivity$ShowDrawable;->textColor:I

    if-eq v0, p1, :cond_0

    .line 16609
    iput p1, p0, Lorg/telegram/ui/ProfileActivity$ShowDrawable;->textColor:I

    .line 16610
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 0

    .line 16701
    iput-object p1, p0, Lorg/telegram/ui/ProfileActivity$ShowDrawable;->view:Landroid/view/View;

    return-void
.end method
