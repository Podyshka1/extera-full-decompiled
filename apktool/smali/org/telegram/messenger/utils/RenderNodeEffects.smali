.class public abstract Lorg/telegram/messenger/utils/RenderNodeEffects;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static saturationUpX2Effect:Landroid/graphics/RenderEffect;


# direct methods
.method public static getSaturationX2RenderEffect()Landroid/graphics/RenderEffect;
    .locals 2

    .line 17
    sget-object v0, Lorg/telegram/messenger/utils/RenderNodeEffects;->saturationUpX2Effect:Landroid/graphics/RenderEffect;

    if-nez v0, :cond_0

    .line 18
    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    const/high16 v1, 0x40000000    # 2.0f

    .line 19
    invoke-virtual {v0, v1}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    .line 20
    new-instance v1, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v1, v0}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-static {v1}, Landroid/graphics/RenderEffect;->createColorFilterEffect(Landroid/graphics/ColorFilter;)Landroid/graphics/RenderEffect;

    move-result-object v0

    sput-object v0, Lorg/telegram/messenger/utils/RenderNodeEffects;->saturationUpX2Effect:Landroid/graphics/RenderEffect;

    .line 23
    :cond_0
    sget-object v0, Lorg/telegram/messenger/utils/RenderNodeEffects;->saturationUpX2Effect:Landroid/graphics/RenderEffect;

    return-object v0
.end method
