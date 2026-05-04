.class public Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ActionBar/Theme;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ThemeAccent"
.end annotation


# instance fields
.field public accentColor:I

.field public accentColor2:I

.field public account:I

.field public backgroundGradientOverrideColor1:J

.field public backgroundGradientOverrideColor2:J

.field public backgroundGradientOverrideColor3:J

.field public backgroundOverrideColor:J

.field public backgroundRotation:I

.field public id:I

.field public info:Lorg/telegram/tgnet/TLRPC$TL_theme;

.field public isDefault:Z

.field public myMessagesAccentColor:I

.field public myMessagesAnimated:Z

.field public myMessagesGradientAccentColor1:I

.field public myMessagesGradientAccentColor2:I

.field public myMessagesGradientAccentColor3:I

.field public overrideWallpaper:Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;

.field public parentTheme:Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

.field public pattern:Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

.field public patternIntensity:F

.field public patternMotion:Z

.field public patternSlug:Ljava/lang/String;

.field private tempHSV:[F

.field public uploadedFile:Lorg/telegram/tgnet/TLRPC$InputFile;

.field public uploadedThumb:Lorg/telegram/tgnet/TLRPC$InputFile;

.field public uploadingFile:Ljava/lang/String;

.field public uploadingThumb:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1419
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x2d

    .line 1401
    iput v0, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundRotation:I

    .line 1402
    const-string v0, ""

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->patternSlug:Ljava/lang/String;

    const/4 v0, 0x3

    .line 1799
    new-array v0, v0, [F

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->tempHSV:[F

    return-void
.end method

.method private varargs averageColor(Landroid/util/SparseIntArray;[I)I
    .locals 8

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    move v3, v2

    move v4, v3

    move v5, v4

    .line 1879
    :goto_0
    array-length v6, p2

    if-ge v1, v6, :cond_1

    .line 1880
    aget v6, p2, v1

    invoke-virtual {p1, v6}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v6

    if-gez v6, :cond_0

    goto :goto_1

    .line 1884
    :cond_0
    :try_start_0
    aget v6, p2, v1

    invoke-virtual {p1, v6}, Landroid/util/SparseIntArray;->get(I)I

    move-result v6

    .line 1885
    invoke-static {v6}, Landroid/graphics/Color;->red(I)I

    move-result v7

    add-int/2addr v3, v7

    .line 1886
    invoke-static {v6}, Landroid/graphics/Color;->green(I)I

    move-result v7

    add-int/2addr v4, v7

    .line 1887
    invoke-static {v6}, Landroid/graphics/Color;->blue(I)I

    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr v5, v6

    add-int/lit8 v2, v2, 0x1

    :catch_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-nez v2, :cond_2

    return v0

    .line 1895
    :cond_2
    div-int/2addr v3, v2

    div-int/2addr v4, v2

    div-int/2addr v5, v2

    const/16 p1, 0xff

    invoke-static {p1, v3, v4, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    return p1
.end method

.method private bubbleSelectedOverlay(II)I
    .locals 5

    .line 1806
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->tempHSV:[F

    invoke-static {p2, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 1807
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->tempHSV:[F

    const/4 v0, 0x0

    aget v1, p2, v0

    .line 1808
    invoke-static {p1, p2}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 1809
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->tempHSV:[F

    const/4 p2, 0x1

    aget v2, p1, p2

    const/4 v3, 0x0

    cmpg-float v4, v2, v3

    if-gtz v4, :cond_0

    .line 1810
    aput v1, p1, v0

    :cond_0
    const v0, 0x3f19999a    # 0.6f

    add-float/2addr v2, v0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1812
    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v3, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    aput v1, p1, p2

    .line 1813
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->tempHSV:[F

    const/4 p2, 0x2

    aget v1, p1, p2

    const v2, 0x3d4ccccd    # 0.05f

    sub-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    aput v0, p1, p2

    const/16 p1, 0x1e

    .line 1814
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->tempHSV:[F

    invoke-static {p1, p2}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result p1

    return p1
.end method

.method private codeBackground(IZ)I
    .locals 6

    .line 1845
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->tempHSV:[F

    invoke-static {p1, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    const/4 p1, 0x1

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    .line 1849
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->tempHSV:[F

    aget v3, p2, p1

    const v4, 0x3da3d70a    # 0.08f

    sub-float/2addr v3, v4

    invoke-static {v3, v0, v2}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v0

    aput v0, p2, p1

    .line 1850
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->tempHSV:[F

    const p2, 0x3cf5c28f    # 0.03f

    aput p2, p1, v1

    const/16 p1, 0x40

    goto :goto_2

    .line 1852
    :cond_0
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->tempHSV:[F

    aget v3, p2, p1

    cmpg-float v4, v3, v2

    if-lez v4, :cond_2

    aget v4, p2, v1

    cmpl-float v5, v4, v0

    if-gez v5, :cond_2

    cmpg-float v4, v4, v2

    if-gtz v4, :cond_1

    goto :goto_0

    :cond_1
    const v4, 0x3e8f5c29    # 0.28f

    add-float/2addr v3, v4

    .line 1855
    invoke-static {v0, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    aput v3, p2, p1

    .line 1856
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->tempHSV:[F

    aget p2, p1, v1

    const v3, -0x42333333    # -0.1f

    add-float/2addr p2, v3

    invoke-static {v0, p2}, Ljava/lang/Math;->min(FF)F

    move-result p2

    invoke-static {v2, p2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    aput p2, p1, v1

    goto :goto_1

    .line 1853
    :cond_2
    :goto_0
    aget p1, p2, v1

    const v3, -0x41b33333    # -0.2f

    add-float/2addr p1, v3

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {v2, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    aput p1, p2, v1

    :goto_1
    const/16 p1, 0x20

    .line 1859
    :goto_2
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->tempHSV:[F

    invoke-static {p1, p2}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result p1

    return p1
.end method

.method private getHue(I)F
    .locals 1

    .line 1802
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->tempHSV:[F

    invoke-static {p1, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 1803
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->tempHSV:[F

    const/4 v0, 0x0

    aget p1, p1, v0

    return p1
.end method

.method private linkSelectionBackground(IIZ)I
    .locals 4

    const/high16 v0, 0x3e800000    # 0.25f

    .line 1839
    invoke-static {p1, p2, v0}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result p1

    iget-object p2, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->tempHSV:[F

    invoke-static {p1, p2}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 1840
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->tempHSV:[F

    const/4 p2, 0x1

    aget v0, p1, p2

    const v1, 0x3dcccccd    # 0.1f

    sub-float/2addr v0, v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/4 v3, 0x0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    aput v0, p1, p2

    .line 1841
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->tempHSV:[F

    const/4 p2, 0x2

    aget v0, p1, p2

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    add-float/2addr v0, v1

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result p3

    invoke-static {v3, p3}, Ljava/lang/Math;->max(FF)F

    move-result p3

    aput p3, p1, p2

    const/16 p1, 0x33

    .line 1842
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->tempHSV:[F

    invoke-static {p1, p2}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result p1

    return p1
.end method

.method private locationPlaceholderColor(FIZ)I
    .locals 6

    if-eqz p3, :cond_0

    const p1, 0x1effffff

    return p1

    .line 1865
    :cond_0
    iget-object p3, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->tempHSV:[F

    invoke-static {p2, p3}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 1866
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->tempHSV:[F

    const/4 p3, 0x1

    aget v0, p2, p3

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/high16 v4, 0x3f800000    # 1.0f

    if-lez v0, :cond_2

    aget v0, p2, v3

    cmpl-float v5, v0, v4

    if-gez v5, :cond_2

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1

    goto :goto_0

    .line 1870
    :cond_1
    aget p1, p2, v2

    const v0, 0x3e6147ae    # 0.22f

    add-float/2addr p1, v0

    invoke-static {p1, v1, v4}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result p1

    aput p1, p2, v2

    .line 1871
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->tempHSV:[F

    aget p2, p1, p3

    const v0, 0x3eb33333    # 0.35f

    sub-float/2addr p2, v0

    invoke-static {p2, v1, v4}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result p2

    aput p2, p1, p3

    goto :goto_1

    .line 1867
    :cond_2
    :goto_0
    aput p1, p2, v2

    const p1, 0x3e4ccccd    # 0.2f

    .line 1868
    aput p1, p2, p3

    .line 1873
    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->tempHSV:[F

    aget p2, p1, v3

    const p3, 0x3f266666    # 0.65f

    sub-float/2addr p2, p3

    invoke-static {p2, v1, v4}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result p2

    aput p2, p1, v3

    const/16 p1, 0x5a

    .line 1874
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->tempHSV:[F

    invoke-static {p1, p2}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result p1

    return p1
.end method

.method private textSelectionBackground(ZII)I
    .locals 5

    .line 1817
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->tempHSV:[F

    invoke-static {p3, p1}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 1818
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->tempHSV:[F

    const/4 p3, 0x0

    aget v0, p1, p3

    .line 1819
    invoke-static {p2, p1}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 1820
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->tempHSV:[F

    const/4 p2, 0x1

    aget v1, p1, p2

    const/4 v2, 0x0

    cmpg-float v3, v1, v2

    if-lez v3, :cond_0

    aget v3, p1, p3

    const/high16 v4, 0x42340000    # 45.0f

    cmpl-float v4, v3, v4

    if-lez v4, :cond_1

    const/high16 v4, 0x42aa0000    # 85.0f

    cmpg-float v3, v3, v4

    if-gez v3, :cond_1

    .line 1821
    :cond_0
    aput v0, p1, p3

    :cond_1
    const/4 p3, 0x2

    .line 1823
    aget v0, p1, p3

    const v3, 0x3f59999a    # 0.85f

    cmpl-float v0, v0, v3

    if-lez v0, :cond_2

    const/high16 v0, 0x3e800000    # 0.25f

    goto :goto_0

    :cond_2
    const v0, 0x3ee66666    # 0.45f

    :goto_0
    add-float/2addr v1, v0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    aput v1, p1, p2

    .line 1824
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->tempHSV:[F

    aget p2, p1, p3

    const v1, 0x3e19999a    # 0.15f

    sub-float/2addr p2, v1

    invoke-static {v0, p2}, Ljava/lang/Math;->min(FF)F

    move-result p2

    invoke-static {v2, p2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    aput p2, p1, p3

    const/16 p1, 0x50

    .line 1825
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->tempHSV:[F

    invoke-static {p1, p2}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result p1

    return p1
.end method

.method private textSelectionHandle(II)I
    .locals 7

    .line 1828
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->tempHSV:[F

    invoke-static {p2, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 1829
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->tempHSV:[F

    const/4 v0, 0x0

    aget v1, p2, v0

    .line 1830
    invoke-static {p1, p2}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 1831
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->tempHSV:[F

    const/4 v2, 0x1

    aget v3, p2, v2

    const/4 v4, 0x0

    cmpg-float v5, v3, v4

    if-lez v5, :cond_0

    aget v5, p2, v0

    const/high16 v6, 0x42340000    # 45.0f

    cmpl-float v6, v5, v6

    if-lez v6, :cond_1

    const/high16 v6, 0x42aa0000    # 85.0f

    cmpg-float v5, v5, v6

    if-gez v5, :cond_1

    .line 1832
    :cond_0
    aput v1, p2, v0

    :cond_1
    const v0, 0x3f19999a    # 0.6f

    add-float/2addr v3, v0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1834
    invoke-static {v0, v3}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v4, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    aput v1, p2, v2

    .line 1835
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->tempHSV:[F

    const/4 v1, 0x2

    aget v2, p2, v1

    const v3, 0x3f333333    # 0.7f

    cmpl-float v3, v2, v3

    if-lez v3, :cond_2

    const/high16 v3, 0x3e800000    # 0.25f

    goto :goto_0

    :cond_2
    const/high16 v3, 0x3e000000    # 0.125f

    :goto_0
    sub-float/2addr v2, v3

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v4, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    aput v0, p2, v1

    const/16 p2, 0xff

    .line 1836
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->tempHSV:[F

    invoke-static {p2, v0}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result p2

    invoke-static {p1, p2}, Lorg/telegram/ui/ActionBar/Theme;->blendOver(II)I

    move-result p1

    return p1
.end method


# virtual methods
.method public fillAccentColors(Landroid/util/SparseIntArray;Landroid/util/SparseIntArray;)Z
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v3, 0x1

    .line 1454
    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getTempHsv(I)[F

    move-result-object v4

    const/4 v5, 0x2

    .line 1455
    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getTempHsv(I)[F

    move-result-object v6

    .line 1457
    iget-object v7, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->parentTheme:Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    iget v7, v7, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->accentBaseColor:I

    invoke-static {v7, v4}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 1458
    iget v7, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->accentColor:I

    invoke-static {v7, v6}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 1459
    iget-object v7, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->parentTheme:Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    invoke-virtual {v7}, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->isDark()Z

    move-result v7

    .line 1461
    iget v8, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->accentColor:I

    iget-object v9, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->parentTheme:Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    iget v9, v9, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->accentBaseColor:I

    const/4 v10, -0x1

    const/4 v11, 0x0

    if-ne v8, v9, :cond_0

    iget v8, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->accentColor2:I

    if-eqz v8, :cond_5

    :cond_0
    move v8, v11

    .line 1462
    :goto_0
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->-$$Nest$sfgetdefaultColors()[I

    move-result-object v9

    array-length v9, v9

    if-ge v8, v9, :cond_5

    .line 1464
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->-$$Nest$sfgetthemeAccentExclusionKeys()Ljava/util/HashSet;

    move-result-object v9

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    goto :goto_2

    .line 1467
    :cond_1
    invoke-virtual {v1, v8}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v9

    if-gez v9, :cond_3

    .line 1470
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->-$$Nest$sfgetfallbackKeys()Landroid/util/SparseIntArray;

    move-result-object v9

    invoke-virtual {v9, v8, v10}, Landroid/util/SparseIntArray;->get(II)I

    move-result v9

    if-ltz v9, :cond_2

    .line 1471
    invoke-virtual {v1, v9}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v9

    if-ltz v9, :cond_2

    goto :goto_2

    .line 1474
    :cond_2
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->-$$Nest$sfgetdefaultColors()[I

    move-result-object v9

    aget v9, v9, v8

    goto :goto_1

    .line 1476
    :cond_3
    invoke-virtual {v1, v9}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v9

    .line 1478
    :goto_1
    invoke-static {v4, v6, v9, v7, v9}, Lorg/telegram/ui/ActionBar/Theme;->changeColorAccent([F[FIZI)I

    move-result v12

    if-eq v12, v9, :cond_4

    .line 1480
    invoke-virtual {v2, v8, v12}, Landroid/util/SparseIntArray;->put(II)V

    :cond_4
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 1484
    :cond_5
    iget v8, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesAccentColor:I

    const v9, 0x3f347ae1    # 0.705f

    if-nez v8, :cond_7

    .line 1485
    iget v12, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->accentColor:I

    if-eqz v12, :cond_6

    goto :goto_3

    :cond_6
    move/from16 v16, v5

    goto/16 :goto_7

    :cond_7
    :goto_3
    iget v12, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesGradientAccentColor1:I

    if-eqz v12, :cond_6

    if-eqz v8, :cond_8

    goto :goto_4

    .line 1486
    :cond_8
    iget v8, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->accentColor:I

    .line 1487
    :goto_4
    sget v12, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outBubble:I

    invoke-virtual {v1, v12}, Landroid/util/SparseIntArray;->get(I)I

    move-result v13

    if-nez v13, :cond_9

    .line 1489
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->-$$Nest$sfgetdefaultColors()[I

    move-result-object v13

    aget v13, v13, v12

    .line 1491
    :cond_9
    invoke-static {v4, v6, v13, v7, v13}, Lorg/telegram/ui/ActionBar/Theme;->changeColorAccent([F[FIZI)I

    move-result v12

    .line 1492
    invoke-static {v8, v12}, Lorg/telegram/messenger/AndroidUtilities;->getColorDistance(II)I

    move-result v12

    .line 1493
    iget v14, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesGradientAccentColor1:I

    invoke-static {v8, v14}, Lorg/telegram/messenger/AndroidUtilities;->getColorDistance(II)I

    move-result v14

    .line 1496
    iget v15, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesGradientAccentColor2:I

    if-eqz v15, :cond_c

    .line 1497
    iget v15, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesAccentColor:I

    move/from16 v16, v5

    iget v5, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesGradientAccentColor1:I

    invoke-static {v15, v5}, Lorg/telegram/messenger/AndroidUtilities;->getAverageColor(II)I

    move-result v5

    .line 1498
    iget v15, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesGradientAccentColor2:I

    invoke-static {v5, v15}, Lorg/telegram/messenger/AndroidUtilities;->getAverageColor(II)I

    move-result v5

    .line 1499
    iget v15, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesGradientAccentColor3:I

    if-eqz v15, :cond_a

    .line 1500
    invoke-static {v5, v15}, Lorg/telegram/messenger/AndroidUtilities;->getAverageColor(II)I

    move-result v5

    .line 1502
    :cond_a
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->computePerceivedBrightness(I)F

    move-result v5

    cmpl-float v5, v5, v9

    if-lez v5, :cond_b

    move v5, v3

    goto :goto_5

    :cond_b
    move v5, v11

    goto :goto_5

    :cond_c
    move/from16 v16, v5

    .line 1504
    iget v5, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesAccentColor:I

    iget v15, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesGradientAccentColor1:I

    invoke-static {v5, v15}, Lorg/telegram/ui/ActionBar/Theme;->-$$Nest$smuseBlackText(II)Z

    move-result v5

    :goto_5
    if-eqz v5, :cond_d

    const v5, 0x88b8

    if-gt v12, v5, :cond_d

    if-gt v14, v5, :cond_d

    move v5, v3

    goto :goto_6

    :cond_d
    move v5, v11

    .line 1509
    :goto_6
    invoke-static {v4, v13, v8}, Lorg/telegram/ui/ActionBar/Theme;->-$$Nest$smgetAccentColor([FII)I

    move-result v8

    goto :goto_8

    :goto_7
    move v5, v11

    :goto_8
    if-eqz v8, :cond_10

    .line 1511
    iget-object v12, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->parentTheme:Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    iget v12, v12, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->accentBaseColor:I

    if-eqz v12, :cond_e

    if-ne v8, v12, :cond_f

    :cond_e
    iget v12, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->accentColor:I

    if-eqz v12, :cond_10

    if-eq v12, v8, :cond_10

    :cond_f
    move v12, v3

    goto :goto_9

    :cond_10
    move v12, v11

    :goto_9
    if-nez v12, :cond_11

    .line 1512
    iget v13, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->accentColor2:I

    if-eqz v13, :cond_1a

    .line 1513
    :cond_11
    iget v13, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->accentColor2:I

    if-eqz v13, :cond_12

    .line 1514
    invoke-static {v13, v6}, Landroid/graphics/Color;->colorToHSV(I[F)V

    goto :goto_a

    .line 1516
    :cond_12
    invoke-static {v8, v6}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 1519
    :goto_a
    sget v13, Lorg/telegram/ui/ActionBar/Theme;->myMessagesStartIndex:I

    :goto_b
    sget v14, Lorg/telegram/ui/ActionBar/Theme;->myMessagesEndIndex:I

    if-ge v13, v14, :cond_16

    .line 1520
    invoke-virtual {v1, v13}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v14

    if-gez v14, :cond_14

    .line 1523
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->-$$Nest$sfgetfallbackKeys()Landroid/util/SparseIntArray;

    move-result-object v14

    invoke-virtual {v14, v13, v10}, Landroid/util/SparseIntArray;->get(II)I

    move-result v14

    if-ltz v14, :cond_13

    .line 1524
    invoke-virtual {v1, v14, v10}, Landroid/util/SparseIntArray;->get(II)I

    move-result v14

    if-ltz v14, :cond_13

    goto :goto_d

    .line 1527
    :cond_13
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->-$$Nest$sfgetdefaultColors()[I

    move-result-object v14

    aget v14, v14, v13

    goto :goto_c

    .line 1529
    :cond_14
    invoke-virtual {v1, v14}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v14

    .line 1531
    :goto_c
    invoke-static {v4, v6, v14, v7, v14}, Lorg/telegram/ui/ActionBar/Theme;->changeColorAccent([F[FIZI)I

    move-result v15

    if-eq v15, v14, :cond_15

    .line 1533
    invoke-virtual {v2, v13, v15}, Landroid/util/SparseIntArray;->put(II)V

    :cond_15
    :goto_d
    add-int/lit8 v13, v13, 0x1

    goto :goto_b

    :cond_16
    if-eqz v12, :cond_1a

    .line 1538
    invoke-static {v8, v6}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 1539
    sget v8, Lorg/telegram/ui/ActionBar/Theme;->myMessagesBubblesStartIndex:I

    :goto_e
    sget v12, Lorg/telegram/ui/ActionBar/Theme;->myMessagesBubblesEndIndex:I

    if-ge v8, v12, :cond_1a

    .line 1540
    invoke-virtual {v1, v8}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v12

    if-gez v12, :cond_18

    .line 1543
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->-$$Nest$sfgetfallbackKeys()Landroid/util/SparseIntArray;

    move-result-object v12

    invoke-virtual {v12, v8, v10}, Landroid/util/SparseIntArray;->get(II)I

    move-result v12

    if-ltz v12, :cond_17

    .line 1544
    invoke-virtual {v1, v12, v10}, Landroid/util/SparseIntArray;->get(II)I

    move-result v12

    if-ltz v12, :cond_17

    goto :goto_10

    .line 1547
    :cond_17
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->-$$Nest$sfgetdefaultColors()[I

    move-result-object v12

    aget v12, v12, v8

    goto :goto_f

    .line 1549
    :cond_18
    invoke-virtual {v1, v12}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v12

    .line 1551
    :goto_f
    invoke-static {v4, v6, v12, v7, v12}, Lorg/telegram/ui/ActionBar/Theme;->changeColorAccent([F[FIZI)I

    move-result v13

    if-eq v13, v12, :cond_19

    .line 1553
    invoke-virtual {v2, v8, v13}, Landroid/util/SparseIntArray;->put(II)V

    :cond_19
    :goto_10
    add-int/lit8 v8, v8, 0x1

    goto :goto_e

    :cond_1a
    if-nez v5, :cond_20

    .line 1559
    iget v1, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesGradientAccentColor1:I

    if-eqz v1, :cond_20

    .line 1564
    iget v4, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesGradientAccentColor2:I

    if-eqz v4, :cond_1d

    .line 1565
    iget v4, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesAccentColor:I

    invoke-static {v4, v1}, Lorg/telegram/messenger/AndroidUtilities;->getAverageColor(II)I

    move-result v1

    .line 1566
    iget v4, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesGradientAccentColor2:I

    invoke-static {v1, v4}, Lorg/telegram/messenger/AndroidUtilities;->getAverageColor(II)I

    move-result v1

    .line 1567
    iget v4, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesGradientAccentColor3:I

    if-eqz v4, :cond_1b

    .line 1568
    invoke-static {v1, v4}, Lorg/telegram/messenger/AndroidUtilities;->getAverageColor(II)I

    move-result v1

    .line 1570
    :cond_1b
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->computePerceivedBrightness(I)F

    move-result v1

    cmpl-float v1, v1, v9

    if-lez v1, :cond_1c

    move v1, v3

    goto :goto_11

    :cond_1c
    move v1, v11

    goto :goto_11

    .line 1572
    :cond_1d
    iget v4, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesAccentColor:I

    invoke-static {v4, v1}, Lorg/telegram/ui/ActionBar/Theme;->-$$Nest$smuseBlackText(II)Z

    move-result v1

    :goto_11
    if-eqz v1, :cond_1e

    const v1, -0xdededf

    const v4, -0xaaaaab

    const/high16 v6, 0x4d000000    # 1.3421773E8f

    goto :goto_12

    :cond_1e
    const v4, -0x111112

    const v6, 0x4dffffff    # 5.3687088E8f

    move v1, v10

    .line 1584
    :goto_12
    iget v8, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->accentColor2:I

    if-nez v8, :cond_1f

    .line 1585
    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outAudioProgress:I

    invoke-virtual {v2, v8, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1586
    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outAudioSelectedProgress:I

    invoke-virtual {v2, v8, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1587
    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outAudioSeekbar:I

    invoke-virtual {v2, v8, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1588
    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outAudioCacheSeekbar:I

    invoke-virtual {v2, v8, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1589
    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outAudioSeekbarSelected:I

    invoke-virtual {v2, v8, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1590
    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outAudioSeekbarFill:I

    invoke-virtual {v2, v8, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1592
    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outVoiceSeekbar:I

    invoke-virtual {v2, v8, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1593
    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outVoiceSeekbarSelected:I

    invoke-virtual {v2, v8, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1594
    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outVoiceSeekbarFill:I

    invoke-virtual {v2, v6, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1596
    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messageLinkOut:I

    invoke-virtual {v2, v6, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1597
    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outForwardedNameText:I

    invoke-virtual {v2, v6, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1598
    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outViaBotNameText:I

    invoke-virtual {v2, v6, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1599
    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outReplyLine:I

    invoke-virtual {v2, v6, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1600
    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outReplyLine2:I

    invoke-virtual {v2, v6, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1601
    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outReplyNameText:I

    invoke-virtual {v2, v6, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1603
    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outPreviewLine:I

    invoke-virtual {v2, v6, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1604
    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outSiteNameText:I

    invoke-virtual {v2, v6, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1605
    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outInstant:I

    invoke-virtual {v2, v6, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1606
    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outInstantSelected:I

    invoke-virtual {v2, v6, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1607
    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outPreviewInstantText:I

    invoke-virtual {v2, v6, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1609
    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outViews:I

    invoke-virtual {v2, v6, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1610
    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outViewsSelected:I

    invoke-virtual {v2, v6, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1612
    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outAudioTitleText:I

    invoke-virtual {v2, v6, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1613
    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outFileNameText:I

    invoke-virtual {v2, v6, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1614
    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outContactNameText:I

    invoke-virtual {v2, v6, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1616
    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outAudioPerformerText:I

    invoke-virtual {v2, v6, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1617
    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outAudioPerformerSelectedText:I

    invoke-virtual {v2, v6, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1619
    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outSentCheck:I

    invoke-virtual {v2, v6, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1620
    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outSentCheckSelected:I

    invoke-virtual {v2, v6, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1622
    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outSentCheckRead:I

    invoke-virtual {v2, v6, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1623
    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outSentCheckReadSelected:I

    invoke-virtual {v2, v6, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1625
    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outSentClock:I

    invoke-virtual {v2, v6, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1626
    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outSentClockSelected:I

    invoke-virtual {v2, v6, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1628
    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outMenu:I

    invoke-virtual {v2, v6, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1629
    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outMenuSelected:I

    invoke-virtual {v2, v6, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1631
    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outTimeText:I

    invoke-virtual {v2, v6, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1632
    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outTimeSelectedText:I

    invoke-virtual {v2, v6, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1634
    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outAudioDurationText:I

    invoke-virtual {v2, v6, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1635
    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outAudioDurationSelectedText:I

    invoke-virtual {v2, v6, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1637
    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outContactPhoneText:I

    invoke-virtual {v2, v6, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1638
    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outContactPhoneSelectedText:I

    invoke-virtual {v2, v6, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1640
    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outFileInfoText:I

    invoke-virtual {v2, v6, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1641
    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outFileInfoSelectedText:I

    invoke-virtual {v2, v6, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1643
    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outVenueInfoText:I

    invoke-virtual {v2, v6, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1644
    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outVenueInfoSelectedText:I

    invoke-virtual {v2, v6, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1647
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outLoader:I

    invoke-virtual {v2, v4, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1648
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outLoaderSelected:I

    invoke-virtual {v2, v4, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1649
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outFileProgress:I

    iget v6, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesAccentColor:I

    invoke-virtual {v2, v4, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1650
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outFileProgressSelected:I

    iget v6, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesAccentColor:I

    invoke-virtual {v2, v4, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1651
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outMediaIcon:I

    iget v6, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesAccentColor:I

    invoke-virtual {v2, v4, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1652
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outMediaIconSelected:I

    iget v6, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesAccentColor:I

    invoke-virtual {v2, v4, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1655
    :cond_1f
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outReplyMessageText:I

    invoke-virtual {v2, v4, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1656
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outReplyMediaMessageText:I

    invoke-virtual {v2, v4, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1657
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outReplyMediaMessageSelectedText:I

    invoke-virtual {v2, v4, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1658
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messageTextOut:I

    invoke-virtual {v2, v4, v1}, Landroid/util/SparseIntArray;->put(II)V

    :cond_20
    if-eqz v5, :cond_22

    .line 1662
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outLoader:I

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v4

    if-ltz v4, :cond_21

    .line 1663
    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    goto :goto_13

    :cond_21
    move v1, v11

    .line 1665
    :goto_13
    invoke-static {v10, v1}, Lorg/telegram/messenger/AndroidUtilities;->getColorDistance(II)I

    move-result v1

    const/16 v4, 0x1388

    if-ge v1, v4, :cond_22

    move v5, v11

    .line 1669
    :cond_22
    iget v1, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesAccentColor:I

    if-eqz v1, :cond_24

    iget v4, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesGradientAccentColor1:I

    if-eqz v4, :cond_24

    .line 1670
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outBubble:I

    invoke-virtual {v2, v4, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1671
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outBubbleGradient1:I

    iget v4, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesGradientAccentColor1:I

    invoke-virtual {v2, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1672
    iget v1, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesGradientAccentColor2:I

    if-eqz v1, :cond_23

    .line 1673
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outBubbleGradient2:I

    invoke-virtual {v2, v4, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1674
    iget v1, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesGradientAccentColor3:I

    if-eqz v1, :cond_23

    .line 1675
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outBubbleGradient3:I

    invoke-virtual {v2, v4, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1678
    :cond_23
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outBubbleGradientAnimated:I

    iget-boolean v4, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesAnimated:Z

    invoke-virtual {v2, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1680
    :cond_24
    iget-wide v8, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundOverrideColor:J

    long-to-int v1, v8

    const-wide/16 v12, 0x0

    if-eqz v1, :cond_25

    .line 1682
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_chat_wallpaper:I

    invoke-virtual {v2, v4, v1}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_14

    :cond_25
    cmp-long v1, v8, v12

    if-eqz v1, :cond_26

    .line 1684
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_wallpaper:I

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 1686
    :cond_26
    :goto_14
    iget-wide v8, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundGradientOverrideColor1:J

    long-to-int v1, v8

    if-eqz v1, :cond_27

    .line 1688
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_chat_wallpaper_gradient_to1:I

    invoke-virtual {v2, v4, v1}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_15

    :cond_27
    cmp-long v1, v8, v12

    if-eqz v1, :cond_28

    .line 1690
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_wallpaper_gradient_to1:I

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 1692
    :cond_28
    :goto_15
    iget-wide v8, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundGradientOverrideColor2:J

    long-to-int v1, v8

    if-eqz v1, :cond_29

    .line 1694
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_chat_wallpaper_gradient_to2:I

    invoke-virtual {v2, v4, v1}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_16

    :cond_29
    cmp-long v1, v8, v12

    if-eqz v1, :cond_2a

    .line 1696
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_wallpaper_gradient_to2:I

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 1698
    :cond_2a
    :goto_16
    iget-wide v8, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundGradientOverrideColor3:J

    long-to-int v1, v8

    if-eqz v1, :cond_2b

    .line 1700
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_chat_wallpaper_gradient_to3:I

    invoke-virtual {v2, v4, v1}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_17

    :cond_2b
    cmp-long v1, v8, v12

    if-eqz v1, :cond_2c

    .line 1702
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_wallpaper_gradient_to3:I

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 1704
    :cond_2c
    :goto_17
    iget v1, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundRotation:I

    const/16 v4, 0x2d

    if-eq v1, v4, :cond_2d

    .line 1705
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_chat_wallpaper_gradient_rotation:I

    invoke-virtual {v2, v4, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1708
    :cond_2d
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outBubble:I

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v4

    if-nez v4, :cond_2e

    .line 1710
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v4

    .line 1712
    :cond_2e
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inBubble:I

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v6

    if-nez v6, :cond_2f

    .line 1714
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v6

    .line 1718
    :cond_2f
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->info:Lorg/telegram/tgnet/TLRPC$TL_theme;

    if-eqz v1, :cond_32

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_theme;->emoticon:Ljava/lang/String;

    if-eqz v1, :cond_32

    if-nez v7, :cond_32

    .line 1719
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_selectedBackground:I

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 1720
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_wallpaper_gradient_to1:I

    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_chat_wallpaper_gradient_to2:I

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_chat_wallpaper_gradient_to3:I

    filled-new-array {v1, v8, v9}, [I

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->averageColor(Landroid/util/SparseIntArray;[I)I

    move-result v1

    if-nez v1, :cond_30

    .line 1722
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_wallpaper:I

    filled-new-array {v1}, [I

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->averageColor(Landroid/util/SparseIntArray;[I)I

    move-result v1

    :cond_30
    if-nez v1, :cond_31

    .line 1725
    iget v1, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->accentColor:I

    .line 1728
    :cond_31
    invoke-direct {v0, v4, v1}, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->bubbleSelectedOverlay(II)I

    move-result v1

    .line 1729
    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outBubbleSelectedOverlay:I

    invoke-virtual {v2, v8, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1730
    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outBubbleGradientSelectedOverlay:I

    invoke-virtual {v2, v8, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1731
    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outBubbleSelected:I

    invoke-static {v4, v1}, Lorg/telegram/ui/ActionBar/Theme;->blendOver(II)I

    move-result v1

    invoke-virtual {v2, v8, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1733
    iget v1, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->accentColor:I

    invoke-direct {v0, v6, v1}, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->bubbleSelectedOverlay(II)I

    move-result v1

    .line 1734
    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inBubbleSelectedOverlay:I

    invoke-virtual {v2, v8, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1735
    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inBubbleSelected:I

    invoke-static {v6, v1}, Lorg/telegram/ui/ActionBar/Theme;->blendOver(II)I

    move-result v1

    invoke-virtual {v2, v8, v1}, Landroid/util/SparseIntArray;->put(II)V

    :cond_32
    if-nez v7, :cond_33

    .line 1739
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inTextSelectionHighlight:I

    iget v8, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->accentColor:I

    invoke-direct {v0, v11, v6, v8}, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->textSelectionBackground(ZII)I

    move-result v8

    invoke-virtual {v2, v1, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 1740
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outTextSelectionHighlight:I

    iget v8, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->accentColor:I

    invoke-direct {v0, v3, v4, v8}, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->textSelectionBackground(ZII)I

    move-result v8

    invoke-virtual {v2, v1, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 1741
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outTextSelectionCursor:I

    iget v8, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->accentColor:I

    invoke-direct {v0, v4, v8}, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->textSelectionHandle(II)I

    move-result v8

    invoke-virtual {v2, v1, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 1744
    :cond_33
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueText:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->getHue(I)F

    move-result v1

    .line 1745
    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outBubbleLocationPlaceholder:I

    invoke-direct {v0, v1, v4, v7}, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->locationPlaceholderColor(FIZ)I

    move-result v9

    invoke-virtual {v2, v8, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 1746
    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inBubbleLocationPlaceholder:I

    invoke-direct {v0, v1, v6, v7}, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->locationPlaceholderColor(FIZ)I

    move-result v1

    invoke-virtual {v2, v8, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1748
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messageLinkIn:I

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v8

    if-nez v8, :cond_34

    .line 1750
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v8

    .line 1752
    :cond_34
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messageLinkOut:I

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v9

    if-nez v9, :cond_35

    .line 1754
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v9

    .line 1756
    :cond_35
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_linkSelectBackground:I

    invoke-direct {v0, v8, v6, v7}, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->linkSelectionBackground(IIZ)I

    move-result v6

    invoke-virtual {v2, v1, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1757
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outLinkSelectBackground:I

    invoke-direct {v0, v9, v4, v7}, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->linkSelectionBackground(IIZ)I

    move-result v6

    invoke-virtual {v2, v1, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1759
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuBackground:I

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v6

    if-nez v6, :cond_36

    .line 1761
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v6

    .line 1763
    :cond_36
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuSeparator:I

    .line 1764
    invoke-static {v6}, Landroid/graphics/Color;->alpha(I)I

    move-result v8

    .line 1765
    invoke-static {v6}, Landroid/graphics/Color;->red(I)I

    move-result v9

    add-int/lit8 v9, v9, -0xa

    invoke-static {v11, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 1766
    invoke-static {v6}, Landroid/graphics/Color;->green(I)I

    move-result v10

    add-int/lit8 v10, v10, -0xa

    invoke-static {v11, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 1767
    invoke-static {v6}, Landroid/graphics/Color;->blue(I)I

    move-result v6

    add-int/lit8 v6, v6, -0xa

    invoke-static {v11, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 1763
    invoke-static {v8, v9, v10, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    invoke-virtual {v2, v1, v6}, Landroid/util/SparseIntArray;->put(II)V

    if-eqz v7, :cond_37

    .line 1770
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outBubbleGradient1:I

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v6

    if-eqz v6, :cond_37

    .line 1771
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outBubbleGradient2:I

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outBubbleGradient3:I

    filled-new-array {v1, v4, v6}, [I

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->averageColor(Landroid/util/SparseIntArray;[I)I

    move-result v1

    .line 1772
    iget-object v4, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->tempHSV:[F

    invoke-static {v1, v4}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 1773
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->tempHSV:[F

    aget v4, v1, v3

    const v6, 0x3dcccccd    # 0.1f

    add-float/2addr v4, v6

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    invoke-static {v4, v6, v7}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v4

    aput v4, v1, v3

    .line 1774
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->tempHSV:[F

    aget v4, v1, v16

    const v8, 0x3f4ccccd    # 0.8f

    sub-float/2addr v4, v8

    invoke-static {v4, v6, v7}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v4

    aput v4, v1, v16

    .line 1775
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outCodeBackground:I

    const/16 v4, 0x40

    iget-object v6, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->tempHSV:[F

    invoke-static {v4, v6}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result v4

    invoke-virtual {v2, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_18

    .line 1777
    :cond_37
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outCodeBackground:I

    invoke-direct {v0, v4, v7}, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->codeBackground(IZ)I

    move-result v4

    invoke-virtual {v2, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    :goto_18
    xor-int/lit8 v1, v5, 0x1

    return v1
.end method

.method public getPathToWallpaper()Ljava/io/File;
    .locals 10

    .line 1899
    iget v0, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->id:I

    const/16 v1, 0x64

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    if-ge v0, v1, :cond_1

    .line 1900
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->patternSlug:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/File;

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getFilesDirFixed()Ljava/io/File;

    move-result-object v1

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object v7, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->parentTheme:Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    invoke-virtual {v7}, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->getKey()Ljava/lang/String;

    move-result-object v7

    iget v8, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->id:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget-object v9, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->patternSlug:Ljava/lang/String;

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v7, v5, v4

    aput-object v8, v5, v3

    aput-object v9, v5, v2

    const-string v2, "%s_%d_%s_v5.jpg"

    invoke-static {v6, v2, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0

    :cond_0
    return-object v6

    .line 1902
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->patternSlug:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/io/File;

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getFilesDirFixed()Ljava/io/File;

    move-result-object v1

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object v7, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->parentTheme:Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    invoke-virtual {v7}, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->getKey()Ljava/lang/String;

    move-result-object v7

    iget v8, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->id:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget-object v9, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->patternSlug:Ljava/lang/String;

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v7, v5, v4

    aput-object v8, v5, v3

    aput-object v9, v5, v2

    const-string v2, "%s_%d_%s_v8_debug.jpg"

    invoke-static {v6, v2, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0

    :cond_2
    return-object v6
.end method

.method public resetAccentColorsForMyMessagesGiftThemeLight(Landroid/util/SparseIntArray;)V
    .locals 2

    .line 1784
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->myMessagesBubblesStartIndex:I

    :goto_0
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->myMessagesBubblesEndIndex:I

    if-ge v0, v1, :cond_0

    .line 1785
    invoke-virtual {p1, v0}, Landroid/util/SparseIntArray;->delete(I)V

    .line 1786
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->-$$Nest$sfgetdefaultColors()[I

    move-result-object v1

    aget v1, v1, v0

    invoke-virtual {p1, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1788
    :cond_0
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->myMessagesStartIndex:I

    :goto_1
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->myMessagesEndIndex:I

    if-ge v0, v1, :cond_1

    .line 1789
    invoke-virtual {p1, v0}, Landroid/util/SparseIntArray;->delete(I)V

    .line 1790
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->-$$Nest$sfgetdefaultColors()[I

    move-result-object v1

    aget v1, v1, v0

    invoke-virtual {p1, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1792
    :cond_1
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->myMessages2StartIndex:I

    :goto_2
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->myMessages2EndIndex:I

    if-ge v0, v1, :cond_2

    .line 1793
    invoke-virtual {p1, v0}, Landroid/util/SparseIntArray;->delete(I)V

    .line 1794
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->-$$Nest$sfgetdefaultColors()[I

    move-result-object v1

    aget v1, v1, v0

    invoke-virtual {p1, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public saveToFile()Ljava/io/File;
    .locals 17

    move-object/from16 v1, p0

    .line 1907
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getSharingDirectory()Ljava/io/File;

    move-result-object v0

    .line 1908
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 1909
    new-instance v2, Ljava/io/File;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object v4, v1, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->parentTheme:Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->getKey()Ljava/lang/String;

    move-result-object v4

    iget v5, v1, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x2

    new-array v7, v6, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v4, v7, v8

    const/4 v4, 0x1

    aput-object v5, v7, v4

    const-string v5, "%s_%d.attheme"

    invoke-static {v3, v5, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1911
    iget-object v0, v1, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->parentTheme:Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->assetName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v3, v0, v3}, Lorg/telegram/ui/ActionBar/Theme;->getThemeFileValues(Ljava/io/File;Ljava/lang/String;[Ljava/lang/String;)Landroid/util/SparseIntArray;

    move-result-object v0

    .line 1912
    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clone()Landroid/util/SparseIntArray;

    move-result-object v5

    .line 1913
    invoke-virtual {v1, v0, v5}, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->fillAccentColors(Landroid/util/SparseIntArray;Landroid/util/SparseIntArray;)Z

    .line 1917
    iget-object v0, v1, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->patternSlug:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 1918
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1919
    iget-boolean v7, v1, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->patternMotion:Z

    if-eqz v7, :cond_0

    .line 1920
    const-string v7, "motion"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1922
    :cond_0
    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_chat_wallpaper:I

    invoke-virtual {v5, v7}, Landroid/util/SparseIntArray;->get(I)I

    move-result v7

    if-nez v7, :cond_1

    const/4 v7, -0x1

    .line 1926
    :cond_1
    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_chat_wallpaper_gradient_to1:I

    invoke-virtual {v5, v9}, Landroid/util/SparseIntArray;->get(I)I

    move-result v9

    if-nez v9, :cond_2

    move v9, v8

    .line 1930
    :cond_2
    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_chat_wallpaper_gradient_to2:I

    invoke-virtual {v5, v10}, Landroid/util/SparseIntArray;->get(I)I

    move-result v10

    if-nez v10, :cond_3

    move v10, v8

    .line 1934
    :cond_3
    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_chat_wallpaper_gradient_to3:I

    invoke-virtual {v5, v11}, Landroid/util/SparseIntArray;->get(I)I

    move-result v11

    if-nez v11, :cond_4

    move v11, v8

    .line 1938
    :cond_4
    sget v12, Lorg/telegram/ui/ActionBar/Theme;->key_chat_wallpaper_gradient_rotation:I

    invoke-virtual {v5, v12}, Landroid/util/SparseIntArray;->get(I)I

    move-result v12

    if-nez v12, :cond_5

    const/16 v12, 0x2d

    :cond_5
    shr-int/lit8 v13, v7, 0x10

    int-to-byte v13, v13

    and-int/lit16 v13, v13, 0xff

    .line 1942
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    shr-int/lit8 v14, v7, 0x8

    int-to-byte v14, v14

    and-int/lit16 v14, v14, 0xff

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    and-int/lit16 v7, v7, 0xff

    int-to-byte v7, v7

    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    const/4 v15, 0x3

    new-array v3, v15, [Ljava/lang/Object;

    aput-object v13, v3, v8

    aput-object v14, v3, v4

    aput-object v7, v3, v6

    const-string v7, "%02x%02x%02x"

    invoke-static {v7, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    if-eqz v9, :cond_6

    shr-int/lit8 v13, v9, 0x10

    int-to-byte v13, v13

    and-int/lit16 v13, v13, 0xff

    .line 1943
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    shr-int/lit8 v14, v9, 0x8

    int-to-byte v14, v14

    and-int/lit16 v14, v14, 0xff

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    and-int/lit16 v9, v9, 0xff

    int-to-byte v9, v9

    invoke-static {v9}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v9

    move/from16 v16, v4

    new-array v4, v15, [Ljava/lang/Object;

    aput-object v13, v4, v8

    aput-object v14, v4, v16

    aput-object v9, v4, v6

    invoke-static {v7, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_6
    move/from16 v16, v4

    const/4 v4, 0x0

    :goto_0
    if-eqz v10, :cond_7

    shr-int/lit8 v9, v10, 0x10

    int-to-byte v9, v9

    and-int/lit16 v9, v9, 0xff

    .line 1944
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    shr-int/lit8 v13, v10, 0x8

    int-to-byte v13, v13

    and-int/lit16 v13, v13, 0xff

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    and-int/lit16 v10, v10, 0xff

    int-to-byte v10, v10

    invoke-static {v10}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v10

    new-array v14, v15, [Ljava/lang/Object;

    aput-object v9, v14, v8

    aput-object v13, v14, v16

    aput-object v10, v14, v6

    invoke-static {v7, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    goto :goto_1

    :cond_7
    const/4 v9, 0x0

    :goto_1
    if-eqz v11, :cond_8

    shr-int/lit8 v10, v11, 0x10

    int-to-byte v10, v10

    and-int/lit16 v10, v10, 0xff

    .line 1945
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    shr-int/lit8 v13, v11, 0x8

    int-to-byte v13, v13

    and-int/lit16 v13, v13, 0xff

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    and-int/lit16 v11, v11, 0xff

    int-to-byte v11, v11

    invoke-static {v11}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v11

    new-array v14, v15, [Ljava/lang/Object;

    aput-object v10, v14, v8

    aput-object v13, v14, v16

    aput-object v11, v14, v6

    invoke-static {v7, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    :cond_8
    const/4 v6, 0x0

    :goto_2
    if-eqz v4, :cond_a

    if-eqz v9, :cond_a

    .line 1947
    const-string/jumbo v7, "~"

    if-eqz v6, :cond_9

    .line 1948
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    .line 1950
    :cond_9
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    :cond_a
    if-eqz v4, :cond_b

    .line 1953
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "-"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1954
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "&rotation="

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1956
    :cond_b
    :goto_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "https://attheme.org?slug="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->patternSlug:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "&intensity="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->patternIntensity:F

    const/high16 v7, 0x42c80000    # 100.0f

    mul-float/2addr v6, v7

    float-to-int v6, v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "&bg_color="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1957
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_d

    .line 1958
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "&mode="

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_4

    :cond_c
    const/4 v3, 0x0

    .line 1962
    :cond_d
    :goto_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1963
    :goto_5
    invoke-virtual {v5}, Landroid/util/SparseIntArray;->size()I

    move-result v4

    const-string v6, "\n"

    if-ge v8, v4, :cond_10

    .line 1964
    invoke-virtual {v5, v8}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v4

    .line 1965
    invoke-virtual {v5, v8}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v7

    if-eqz v3, :cond_e

    .line 1967
    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_chat_wallpaper:I

    if-eq v9, v4, :cond_f

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_chat_wallpaper_gradient_to1:I

    if-eq v9, v4, :cond_f

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_chat_wallpaper_gradient_to2:I

    if-eq v9, v4, :cond_f

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_chat_wallpaper_gradient_to3:I

    if-ne v9, v4, :cond_e

    goto :goto_6

    .line 1971
    :cond_e
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_f
    :goto_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 1975
    :cond_10
    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1976
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->getStringBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 1977
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 1978
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "WLS="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->getStringBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_7

    :catchall_0
    move-exception v0

    move-object v2, v0

    move-object v3, v4

    goto :goto_a

    :catch_0
    move-exception v0

    move-object v3, v4

    goto :goto_8

    .line 1985
    :cond_11
    :goto_7
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    return-object v2

    :catch_1
    move-exception v0

    .line 1988
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_9

    :catchall_1
    move-exception v0

    move-object v2, v0

    const/4 v3, 0x0

    goto :goto_a

    :catch_2
    move-exception v0

    const/4 v3, 0x0

    .line 1981
    :goto_8
    :try_start_3
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v3, :cond_12

    .line 1985
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :cond_12
    :goto_9
    return-object v2

    :catchall_2
    move-exception v0

    move-object v2, v0

    :goto_a
    if-eqz v3, :cond_13

    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_b

    :catch_3
    move-exception v0

    .line 1988
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1990
    :cond_13
    :goto_b
    throw v2
.end method
