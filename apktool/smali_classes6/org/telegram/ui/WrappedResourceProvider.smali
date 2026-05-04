.class public Lorg/telegram/ui/WrappedResourceProvider;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;


# instance fields
.field resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field public sparseIntArray:Landroid/util/SparseIntArray;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/WrappedResourceProvider;->sparseIntArray:Landroid/util/SparseIntArray;

    .line 16
    iput-object p1, p0, Lorg/telegram/ui/WrappedResourceProvider;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 17
    invoke-virtual {p0}, Lorg/telegram/ui/WrappedResourceProvider;->appendColors()V

    return-void
.end method


# virtual methods
.method public appendColors()V
    .locals 0

    return-void
.end method

.method public applyServiceShaderMatrix(IIFF)V
    .locals 1

    .line 83
    iget-object v0, p0, Lorg/telegram/ui/WrappedResourceProvider;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    if-nez v0, :cond_0

    .line 84
    invoke-static {p1, p2, p3, p4}, Lorg/telegram/ui/ActionBar/Theme;->applyServiceShaderMatrix(IIFF)V

    return-void

    .line 86
    :cond_0
    invoke-interface {v0, p1, p2, p3, p4}, Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;->applyServiceShaderMatrix(IIFF)V

    return-void
.end method

.method public getAnimatedEmojiColorFilter()Landroid/graphics/ColorFilter;
    .locals 1

    .line 92
    iget-object v0, p0, Lorg/telegram/ui/WrappedResourceProvider;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 93
    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getAnimatedEmojiColorFilter(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Landroid/graphics/ColorFilter;

    move-result-object v0

    return-object v0

    .line 95
    :cond_0
    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;->getAnimatedEmojiColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v0

    return-object v0
.end method

.method public getColor(I)I
    .locals 1

    .line 26
    iget-object v0, p0, Lorg/telegram/ui/WrappedResourceProvider;->sparseIntArray:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_0

    .line 28
    iget-object p1, p0, Lorg/telegram/ui/WrappedResourceProvider;->sparseIntArray:Landroid/util/SparseIntArray;

    invoke-virtual {p1, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result p1

    return p1

    .line 30
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/WrappedResourceProvider;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    if-nez v0, :cond_1

    .line 31
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p1

    return p1

    .line 33
    :cond_1
    invoke-interface {v0, p1}, Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;->getColor(I)I

    move-result p1

    return p1
.end method

.method public getColorOrDefault(I)I
    .locals 1

    .line 38
    iget-object v0, p0, Lorg/telegram/ui/WrappedResourceProvider;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    if-nez v0, :cond_0

    .line 39
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p1

    return p1

    .line 41
    :cond_0
    invoke-interface {v0, p1}, Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;->getColorOrDefault(I)I

    move-result p1

    return p1
.end method

.method public getCurrentColor(I)I
    .locals 1

    .line 46
    iget-object v0, p0, Lorg/telegram/ui/WrappedResourceProvider;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    if-nez v0, :cond_0

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p1

    return p1

    .line 47
    :cond_0
    invoke-interface {v0, p1}, Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;->getCurrentColor(I)I

    move-result p1

    return p1
.end method

.method public getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 59
    iget-object v0, p0, Lorg/telegram/ui/WrappedResourceProvider;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    if-nez v0, :cond_0

    .line 60
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getThemeDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    .line 62
    :cond_0
    invoke-interface {v0, p1}, Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public getPaint(Ljava/lang/String;)Landroid/graphics/Paint;
    .locals 1

    .line 67
    iget-object v0, p0, Lorg/telegram/ui/WrappedResourceProvider;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    if-nez v0, :cond_0

    .line 68
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getThemePaint(Ljava/lang/String;)Landroid/graphics/Paint;

    move-result-object p1

    return-object p1

    .line 70
    :cond_0
    invoke-interface {v0, p1}, Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;->getPaint(Ljava/lang/String;)Landroid/graphics/Paint;

    move-result-object p1

    return-object p1
.end method

.method public hasGradientService()Z
    .locals 1

    .line 75
    iget-object v0, p0, Lorg/telegram/ui/WrappedResourceProvider;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    if-nez v0, :cond_0

    .line 76
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->hasGradientService()Z

    move-result v0

    return v0

    .line 78
    :cond_0
    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;->hasGradientService()Z

    move-result v0

    return v0
.end method

.method public synthetic isDark()Z
    .locals 1

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider$-CC;->$default$isDark(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Z

    move-result v0

    return v0
.end method

.method public setAnimatedColor(II)V
    .locals 1

    .line 52
    iget-object v0, p0, Lorg/telegram/ui/WrappedResourceProvider;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    if-eqz v0, :cond_0

    .line 53
    invoke-interface {v0, p1, p2}, Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;->setAnimatedColor(II)V

    :cond_0
    return-void
.end method
