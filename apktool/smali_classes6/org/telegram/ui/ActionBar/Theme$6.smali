.class Lorg/telegram/ui/ActionBar/Theme$6;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ActionBar/Theme;->createOutlineCircleDrawable(III)Landroid/graphics/drawable/Drawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final paint:Landroid/graphics/Paint;

.field final synthetic val$color:I

.field final synthetic val$size:I

.field final synthetic val$strokeWidth:I


# direct methods
.method constructor <init>(III)V
    .locals 1

    .line 5325
    iput p1, p0, Lorg/telegram/ui/ActionBar/Theme$6;->val$strokeWidth:I

    iput p2, p0, Lorg/telegram/ui/ActionBar/Theme$6;->val$color:I

    iput p3, p0, Lorg/telegram/ui/ActionBar/Theme$6;->val$size:I

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 5326
    new-instance p3, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p3, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p3, p0, Lorg/telegram/ui/ActionBar/Theme$6;->paint:Landroid/graphics/Paint;

    .line 5327
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    int-to-float p1, p1

    .line 5328
    invoke-virtual {p3, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 5329
    invoke-virtual {p3, p2}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 5333
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 5334
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    int-to-float v0, v0

    iget v2, p0, Lorg/telegram/ui/ActionBar/Theme$6;->val$size:I

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    iget-object v3, p0, Lorg/telegram/ui/ActionBar/Theme$6;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 2

    .line 5354
    iget v0, p0, Lorg/telegram/ui/ActionBar/Theme$6;->val$size:I

    iget v1, p0, Lorg/telegram/ui/ActionBar/Theme$6;->val$strokeWidth:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 2

    .line 5350
    iget v0, p0, Lorg/telegram/ui/ActionBar/Theme$6;->val$size:I

    iget v1, p0, Lorg/telegram/ui/ActionBar/Theme$6;->val$strokeWidth:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x2

    return v0
.end method

.method public setAlpha(I)V
    .locals 1

    .line 5338
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/Theme$6;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 5342
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/Theme$6;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method
