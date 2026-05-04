.class public Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundColorProviderThemed;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundColorProvider;


# instance fields
.field private alpha:F

.field private backgroundColor:I

.field private final backgroundColorId:I

.field private final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private shadowColor:I

.field private strokeColorBottom:I

.field private strokeColorTop:I


# direct methods
.method public constructor <init>(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;I)V
    .locals 1

    const/high16 v0, 0x40000

    .line 16
    invoke-static {v0}, Lorg/telegram/messenger/LiteMode;->isEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x3f59999a    # 0.85f

    goto :goto_0

    :cond_0
    const v0, 0x3f428f5c    # 0.76f

    :goto_0
    invoke-direct {p0, p1, p2, v0}, Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundColorProviderThemed;-><init>(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;IF)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;IF)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundColorProviderThemed;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 21
    iput p2, p0, Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundColorProviderThemed;->backgroundColorId:I

    .line 22
    iput p3, p0, Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundColorProviderThemed;->alpha:F

    .line 24
    invoke-virtual {p0}, Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundColorProviderThemed;->updateColors()V

    return-void
.end method


# virtual methods
.method public getBackgroundColor()I
    .locals 1

    .line 61
    iget v0, p0, Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundColorProviderThemed;->backgroundColor:I

    return v0
.end method

.method public getShadowColor()I
    .locals 1

    .line 56
    iget v0, p0, Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundColorProviderThemed;->shadowColor:I

    return v0
.end method

.method public getStrokeColorBottom()I
    .locals 1

    .line 71
    iget v0, p0, Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundColorProviderThemed;->strokeColorBottom:I

    return v0
.end method

.method public synthetic getStrokeColorFull()I
    .locals 1

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundColorProvider$-CC;->$default$getStrokeColorFull(Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundColorProvider;)I

    move-result v0

    return v0
.end method

.method public getStrokeColorTop()I
    .locals 1

    .line 66
    iget v0, p0, Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundColorProviderThemed;->strokeColorTop:I

    return v0
.end method

.method public isDark()Z
    .locals 2

    .line 35
    iget v0, p0, Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundColorProviderThemed;->backgroundColorId:I

    iget-object v1, p0, Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundColorProviderThemed;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v0

    .line 36
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->computePerceivedBrightness(I)F

    move-result v0

    const v1, 0x3f389375    # 0.721f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public updateColors()V
    .locals 2

    .line 40
    iget v0, p0, Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundColorProviderThemed;->backgroundColorId:I

    iget-object v1, p0, Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundColorProviderThemed;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v0

    .line 41
    iget v1, p0, Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundColorProviderThemed;->alpha:F

    invoke-static {v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundColorProviderThemed;->backgroundColor:I

    .line 43
    invoke-virtual {p0}, Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundColorProviderThemed;->isDark()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x28ffffff

    .line 44
    iput v0, p0, Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundColorProviderThemed;->strokeColorTop:I

    const v0, 0x14ffffff

    .line 45
    iput v0, p0, Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundColorProviderThemed;->strokeColorBottom:I

    const/4 v0, 0x0

    .line 46
    iput v0, p0, Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundColorProviderThemed;->shadowColor:I

    return-void

    :cond_0
    const/4 v0, -0x1

    .line 48
    iput v0, p0, Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundColorProviderThemed;->strokeColorTop:I

    .line 49
    iput v0, p0, Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundColorProviderThemed;->strokeColorBottom:I

    const/high16 v0, 0x20000000

    .line 50
    iput v0, p0, Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundColorProviderThemed;->shadowColor:I

    return-void
.end method
