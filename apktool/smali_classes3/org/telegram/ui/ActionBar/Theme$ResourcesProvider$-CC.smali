.class public abstract synthetic Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider$-CC;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static $default$applyServiceShaderMatrix(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;IIFF)V
    .locals 0

    .line 3015
    invoke-static {p1, p2, p3, p4}, Lorg/telegram/ui/ActionBar/Theme;->applyServiceShaderMatrix(IIFF)V

    return-void
.end method

.method public static $default$getAnimatedEmojiColorFilter(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Landroid/graphics/ColorFilter;
    .locals 0

    .line 3019
    sget-object p0, Lorg/telegram/ui/ActionBar/Theme;->chat_animatedEmojiTextColorFilter:Landroid/graphics/PorterDuffColorFilter;

    return-object p0
.end method

.method public static $default$getColorOrDefault(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;I)I
    .locals 0

    .line 2987
    invoke-interface {p0, p1}, Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;->getColor(I)I

    move-result p0

    return p0
.end method

.method public static $default$getCurrentColor(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;I)I
    .locals 0

    .line 2991
    invoke-interface {p0, p1}, Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;->getColor(I)I

    move-result p0

    return p0
.end method

.method public static $default$getDrawable(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 2997
    const/4 p0, 0x0

    return-object p0
.end method

.method public static $default$getPaint(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Ljava/lang/String;)Landroid/graphics/Paint;
    .locals 0

    .line 3001
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getThemePaint(Ljava/lang/String;)Landroid/graphics/Paint;

    move-result-object p0

    return-object p0
.end method

.method public static $default$hasGradientService(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Z
    .locals 0

    .line 3005
    const/4 p0, 0x0

    return p0
.end method

.method public static $default$isDark(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Z
    .locals 0

    .line 3011
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->isCurrentThemeDark()Z

    move-result p0

    return p0
.end method

.method public static $default$setAnimatedColor(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;II)V
    .locals 0

    .line 2994
    return-void
.end method
