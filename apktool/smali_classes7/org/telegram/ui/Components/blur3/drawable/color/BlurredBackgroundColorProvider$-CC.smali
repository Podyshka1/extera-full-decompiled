.class public abstract synthetic Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundColorProvider$-CC;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static $default$getStrokeColorFull(Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundColorProvider;)I
    .locals 0

    .line 15
    sget p0, Lorg/telegram/ui/ActionBar/Theme;->key_divider:I

    invoke-static {p0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p0

    return p0
.end method
