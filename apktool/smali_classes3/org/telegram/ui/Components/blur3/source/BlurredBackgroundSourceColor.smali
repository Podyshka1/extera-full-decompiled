.class public Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceColor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSource;


# instance fields
.field private final paint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceColor;->paint:Landroid/graphics/Paint;

    return-void
.end method


# virtual methods
.method public createDrawable()Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;
    .locals 1

    .line 12
    new-instance v0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawableSource;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawableSource;-><init>(Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSource;)V

    return-object v0
.end method

.method public synthetic dispatchOnDrawablesRelativePositionChange()V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSource$-CC;->$default$dispatchOnDrawablesRelativePositionChange(Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSource;)V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;FFFF)V
    .locals 6

    .line 27
    iget-object v5, p0, Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceColor;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public getColor()I
    .locals 1

    .line 22
    iget-object v0, p0, Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceColor;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method public setColor(I)V
    .locals 1

    .line 18
    iget-object v0, p0, Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceColor;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method
