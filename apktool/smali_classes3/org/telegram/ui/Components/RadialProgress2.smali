.class public Lorg/telegram/ui/Components/RadialProgress2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# instance fields
.field private backgroundStroke:I

.field private circleCheckProgress:F

.field private circleColor:I

.field private circleColorKey:I

.field private circleCrossfadeColorKey:I

.field private circleCrossfadeColorProgress:F

.field private circleMiniPaint:Landroid/graphics/Paint;

.field public circlePaint:Landroid/graphics/Paint;

.field private circlePressedColor:I

.field private circlePressedColorKey:I

.field private circleRadius:I

.field private drawBackground:Z

.field private drawMiniIcon:Z

.field public iconColor:I

.field public iconColorKey:I

.field private iconPressedColor:I

.field private iconPressedColorKey:I

.field public iconScale:F

.field private indeterminateDrawable:Lcom/google/android/material/progressindicator/IndeterminateDrawable;

.field private indicatorColor:I

.field private indicatorPressedColor:I

.field private invertColors:Z

.field private isPressed:Z

.field private isPressedMini:Z

.field private lastMainProgressLevel:I

.field private lastMiniProgressLevel:I

.field private maxIconSize:I

.field public mediaActionDrawable:Lorg/telegram/ui/Components/MediaActionDrawable;

.field private miniDrawBitmap:Landroid/graphics/Bitmap;

.field private miniDrawCanvas:Landroid/graphics/Canvas;

.field private miniIconScale:F

.field private miniIndeterminateDrawable:Lcom/google/android/material/progressindicator/IndeterminateDrawable;

.field private miniMediaActionDrawable:Lorg/telegram/ui/Components/MediaActionDrawable;

.field private miniProgressBackgroundPaint:Landroid/graphics/Paint;

.field private miniProgressDrawable:Lcom/google/android/material/progressindicator/DeterminateDrawable;

.field private miniProgressSpec:Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;

.field private needDrawBackground:Z

.field private overlayImageAlpha:F

.field public overlayImageView:Lorg/telegram/messenger/ImageReceiver;

.field private overlayPaint:Landroid/graphics/Paint;

.field private overrideAlpha:F

.field public overrideCircleAlpha:F

.field private parent:Landroid/view/View;

.field private progressColor:I

.field private progressDrawable:Lcom/google/android/material/progressindicator/DeterminateDrawable;

.field public progressRect:Landroid/graphics/RectF;

.field private progressSpec:Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;

.field private resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field protected style:I

.field private trackColor:I

.field private trackPressedColor:I

.field private waveAmplitude:I


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    .line 116
    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/Components/RadialProgress2;-><init>(Landroid/view/View;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 4

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/RadialProgress2;->progressRect:Landroid/graphics/RectF;

    const/4 v0, -0x1

    .line 53
    iput v0, p0, Lorg/telegram/ui/Components/RadialProgress2;->progressColor:I

    .line 56
    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lorg/telegram/ui/Components/RadialProgress2;->overlayPaint:Landroid/graphics/Paint;

    .line 57
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lorg/telegram/ui/Components/RadialProgress2;->circlePaint:Landroid/graphics/Paint;

    .line 58
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lorg/telegram/ui/Components/RadialProgress2;->circleMiniPaint:Landroid/graphics/Paint;

    .line 71
    iput-boolean v2, p0, Lorg/telegram/ui/Components/RadialProgress2;->needDrawBackground:Z

    const/4 v1, 0x0

    .line 72
    iput-boolean v1, p0, Lorg/telegram/ui/Components/RadialProgress2;->invertColors:Z

    .line 73
    iput v0, p0, Lorg/telegram/ui/Components/RadialProgress2;->lastMainProgressLevel:I

    .line 74
    iput v0, p0, Lorg/telegram/ui/Components/RadialProgress2;->lastMiniProgressLevel:I

    .line 76
    iput v0, p0, Lorg/telegram/ui/Components/RadialProgress2;->indicatorColor:I

    .line 77
    iput v0, p0, Lorg/telegram/ui/Components/RadialProgress2;->indicatorPressedColor:I

    .line 78
    iput v0, p0, Lorg/telegram/ui/Components/RadialProgress2;->trackColor:I

    .line 79
    iput v0, p0, Lorg/telegram/ui/Components/RadialProgress2;->trackPressedColor:I

    const/high16 v3, 0x3f800000    # 1.0f

    .line 81
    iput v3, p0, Lorg/telegram/ui/Components/RadialProgress2;->miniIconScale:F

    .line 86
    iput v0, p0, Lorg/telegram/ui/Components/RadialProgress2;->circleColorKey:I

    .line 87
    iput v0, p0, Lorg/telegram/ui/Components/RadialProgress2;->circleCrossfadeColorKey:I

    .line 89
    iput v3, p0, Lorg/telegram/ui/Components/RadialProgress2;->circleCheckProgress:F

    .line 90
    iput v0, p0, Lorg/telegram/ui/Components/RadialProgress2;->circlePressedColorKey:I

    .line 91
    iput v0, p0, Lorg/telegram/ui/Components/RadialProgress2;->iconColorKey:I

    .line 92
    iput v0, p0, Lorg/telegram/ui/Components/RadialProgress2;->iconPressedColorKey:I

    .line 97
    iput v3, p0, Lorg/telegram/ui/Components/RadialProgress2;->overrideCircleAlpha:F

    .line 101
    iput-boolean v2, p0, Lorg/telegram/ui/Components/RadialProgress2;->drawBackground:Z

    .line 106
    iput v3, p0, Lorg/telegram/ui/Components/RadialProgress2;->overrideAlpha:F

    .line 109
    iput v3, p0, Lorg/telegram/ui/Components/RadialProgress2;->overlayImageAlpha:F

    .line 111
    iput v3, p0, Lorg/telegram/ui/Components/RadialProgress2;->iconScale:F

    .line 120
    iput-object p2, p0, Lorg/telegram/ui/Components/RadialProgress2;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 121
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lorg/telegram/ui/Components/RadialProgress2;->miniProgressBackgroundPaint:Landroid/graphics/Paint;

    .line 123
    iput-object p1, p0, Lorg/telegram/ui/Components/RadialProgress2;->parent:Landroid/view/View;

    .line 125
    new-instance p2, Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {p2, p1}, Lorg/telegram/messenger/ImageReceiver;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lorg/telegram/ui/Components/RadialProgress2;->overlayImageView:Lorg/telegram/messenger/ImageReceiver;

    .line 126
    invoke-virtual {p2, v2}, Lorg/telegram/messenger/ImageReceiver;->setInvalidateAll(Z)V

    .line 128
    new-instance p2, Lorg/telegram/ui/Components/MediaActionDrawable;

    invoke-direct {p2}, Lorg/telegram/ui/Components/MediaActionDrawable;-><init>()V

    iput-object p2, p0, Lorg/telegram/ui/Components/RadialProgress2;->mediaActionDrawable:Lorg/telegram/ui/Components/MediaActionDrawable;

    .line 129
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lorg/telegram/ui/Components/RadialProgress2$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Components/RadialProgress2$$ExternalSyntheticLambda0;-><init>(Landroid/view/View;)V

    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/MediaActionDrawable;->setDelegate(Lorg/telegram/ui/Components/MediaActionDrawable$MediaActionDrawableDelegate;)V

    .line 131
    new-instance p2, Lorg/telegram/ui/Components/MediaActionDrawable;

    invoke-direct {p2}, Lorg/telegram/ui/Components/MediaActionDrawable;-><init>()V

    iput-object p2, p0, Lorg/telegram/ui/Components/RadialProgress2;->miniMediaActionDrawable:Lorg/telegram/ui/Components/MediaActionDrawable;

    .line 132
    new-instance v0, Lorg/telegram/ui/Components/RadialProgress2$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Components/RadialProgress2$$ExternalSyntheticLambda0;-><init>(Landroid/view/View;)V

    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/MediaActionDrawable;->setDelegate(Lorg/telegram/ui/Components/MediaActionDrawable$MediaActionDrawableDelegate;)V

    .line 133
    iget-object p1, p0, Lorg/telegram/ui/Components/RadialProgress2;->miniMediaActionDrawable:Lorg/telegram/ui/Components/MediaActionDrawable;

    invoke-virtual {p1, v2}, Lorg/telegram/ui/Components/MediaActionDrawable;->setMini(Z)V

    .line 134
    iget-object p1, p0, Lorg/telegram/ui/Components/RadialProgress2;->miniMediaActionDrawable:Lorg/telegram/ui/Components/MediaActionDrawable;

    const/4 p2, 0x4

    invoke-virtual {p1, p2, v1}, Lorg/telegram/ui/Components/MediaActionDrawable;->setIcon(IZ)Z

    const/high16 p1, 0x41b00000    # 22.0f

    .line 136
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/RadialProgress2;->circleRadius:I

    .line 137
    iget-object p2, p0, Lorg/telegram/ui/Components/RadialProgress2;->overlayImageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {p2, p1}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    .line 139
    iget-object p1, p0, Lorg/telegram/ui/Components/RadialProgress2;->overlayPaint:Landroid/graphics/Paint;

    const/high16 p2, 0x64000000

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method private getThemedColor(I)I
    .locals 1

    .line 986
    iget-object v0, p0, Lorg/telegram/ui/Components/RadialProgress2;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p1, v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    return p1
.end method

.method private getTrackAlpha()I
    .locals 2

    .line 320
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->isCurrentThemeDark()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x3e4ccccd    # 0.2f

    goto :goto_0

    :cond_0
    const v0, 0x3e19999a    # 0.15f

    .line 321
    :goto_0
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->isCurrentThemeMonet()Z

    move-result v1

    if-eqz v1, :cond_1

    const/high16 v1, 0x3e000000    # 0.125f

    add-float/2addr v0, v1

    :cond_1
    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private getWaveScale(II)F
    .locals 2

    .line 975
    invoke-static {p1}, Lorg/telegram/ui/Components/RadialProgress2;->iconIsCancel(I)Z

    move-result p1

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v0

    .line 976
    :goto_0
    invoke-static {p2}, Lorg/telegram/ui/Components/RadialProgress2;->iconIsCancel(I)Z

    move-result p2

    if-eqz p2, :cond_1

    move v0, v1

    :cond_1
    sub-float/2addr p1, v0

    .line 978
    iget-object p2, p0, Lorg/telegram/ui/Components/RadialProgress2;->mediaActionDrawable:Lorg/telegram/ui/Components/MediaActionDrawable;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/MediaActionDrawable;->getTransitionProgress()F

    move-result p2

    mul-float/2addr p1, p2

    add-float/2addr v0, p1

    return v0
.end method

.method private static iconIsCancel(I)Z
    .locals 1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/16 v0, 0xe

    if-eq p0, v0, :cond_1

    const/16 v0, 0xc

    if-eq p0, v0, :cond_1

    const/16 v0, 0xd

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private initMdcDrawables(Landroid/content/Context;)V
    .locals 6

    .line 208
    new-instance v0, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/RadialProgress2;->progressSpec:Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;

    .line 209
    new-instance v0, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;

    invoke-direct {v0, p1, v1}, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/RadialProgress2;->miniProgressSpec:Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;

    .line 211
    iget-object v1, p0, Lorg/telegram/ui/Components/RadialProgress2;->progressSpec:Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;

    const/4 v2, 0x1

    iput v2, v1, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->hideAnimationBehavior:I

    const/4 v3, 0x2

    .line 212
    iput v3, v1, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->showAnimationBehavior:I

    .line 214
    iput v2, v0, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->hideAnimationBehavior:I

    .line 215
    iput v3, v0, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->showAnimationBehavior:I

    .line 217
    iget v0, p0, Lorg/telegram/ui/Components/RadialProgress2;->circleRadius:I

    mul-int/2addr v0, v3

    const/high16 v1, 0x40400000    # 3.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    const/high16 v5, 0x40800000    # 4.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-virtual {p0, v0, v2, v4, v5}, Lorg/telegram/ui/Components/RadialProgress2;->setSpecValues(IIII)V

    const/high16 v0, 0x41c00000    # 24.0f

    .line 218
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/telegram/ui/Components/RadialProgress2;->setMiniSpecValues(IIII)V

    .line 220
    iget-object v0, p0, Lorg/telegram/ui/Components/RadialProgress2;->progressSpec:Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;

    invoke-static {p1, v0}, Lcom/google/android/material/progressindicator/DeterminateDrawable;->createCircularDrawable(Landroid/content/Context;Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;)Lcom/google/android/material/progressindicator/DeterminateDrawable;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/RadialProgress2;->progressDrawable:Lcom/google/android/material/progressindicator/DeterminateDrawable;

    .line 221
    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 222
    iget-object v0, p0, Lorg/telegram/ui/Components/RadialProgress2;->progressDrawable:Lcom/google/android/material/progressindicator/DeterminateDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1}, Lcom/google/android/material/progressindicator/DeterminateDrawable;->setVisible(ZZZ)Z

    .line 224
    iget-object v0, p0, Lorg/telegram/ui/Components/RadialProgress2;->progressSpec:Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;

    invoke-static {p1, v0}, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->createCircularDrawable(Landroid/content/Context;Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;)Lcom/google/android/material/progressindicator/IndeterminateDrawable;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/RadialProgress2;->indeterminateDrawable:Lcom/google/android/material/progressindicator/IndeterminateDrawable;

    .line 225
    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 226
    iget-object v0, p0, Lorg/telegram/ui/Components/RadialProgress2;->indeterminateDrawable:Lcom/google/android/material/progressindicator/IndeterminateDrawable;

    invoke-virtual {v0, v1, v1, v1}, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->setVisible(ZZZ)Z

    .line 228
    iget-object v0, p0, Lorg/telegram/ui/Components/RadialProgress2;->miniProgressSpec:Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;

    invoke-static {p1, v0}, Lcom/google/android/material/progressindicator/DeterminateDrawable;->createCircularDrawable(Landroid/content/Context;Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;)Lcom/google/android/material/progressindicator/DeterminateDrawable;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/RadialProgress2;->miniProgressDrawable:Lcom/google/android/material/progressindicator/DeterminateDrawable;

    .line 229
    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 230
    iget-object v0, p0, Lorg/telegram/ui/Components/RadialProgress2;->miniProgressDrawable:Lcom/google/android/material/progressindicator/DeterminateDrawable;

    invoke-virtual {v0, v1, v1, v1}, Lcom/google/android/material/progressindicator/DeterminateDrawable;->setVisible(ZZZ)Z

    .line 232
    iget-object v0, p0, Lorg/telegram/ui/Components/RadialProgress2;->miniProgressSpec:Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;

    invoke-static {p1, v0}, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->createCircularDrawable(Landroid/content/Context;Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;)Lcom/google/android/material/progressindicator/IndeterminateDrawable;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/RadialProgress2;->miniIndeterminateDrawable:Lcom/google/android/material/progressindicator/IndeterminateDrawable;

    .line 233
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 234
    iget-object p1, p0, Lorg/telegram/ui/Components/RadialProgress2;->miniIndeterminateDrawable:Lcom/google/android/material/progressindicator/IndeterminateDrawable;

    invoke-virtual {p1, v1, v1, v1}, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->setVisible(ZZZ)Z

    .line 236
    invoke-direct {p0}, Lorg/telegram/ui/Components/RadialProgress2;->updateM3Colors()V

    return-void
.end method

.method private invalidateParent()V
    .locals 6

    const/high16 v0, 0x40000000    # 2.0f

    .line 560
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    .line 561
    iget-object v1, p0, Lorg/telegram/ui/Components/RadialProgress2;->parent:Landroid/view/View;

    iget-object v2, p0, Lorg/telegram/ui/Components/RadialProgress2;->progressRect:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->left:F

    float-to-int v3, v3

    sub-int/2addr v3, v0

    iget v4, v2, Landroid/graphics/RectF;->top:F

    float-to-int v4, v4

    sub-int/2addr v4, v0

    iget v5, v2, Landroid/graphics/RectF;->right:F

    float-to-int v5, v5

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v5, v0

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    float-to-int v2, v2

    add-int/2addr v2, v0

    invoke-virtual {v1, v3, v4, v5, v2}, Landroid/view/View;->invalidate(IIII)V

    return-void
.end method

.method private updateM3Colors()V
    .locals 13

    .line 240
    invoke-virtual {p0}, Lorg/telegram/ui/Components/RadialProgress2;->isMaterial3Style()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_d

    .line 242
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/RadialProgress2;->progressSpec:Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eqz v0, :cond_13

    .line 246
    iget-boolean v0, p0, Lorg/telegram/ui/Components/RadialProgress2;->isPressed:Z

    if-eqz v0, :cond_3

    .line 247
    iget v0, p0, Lorg/telegram/ui/Components/RadialProgress2;->iconPressedColorKey:I

    if-ltz v0, :cond_1

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/RadialProgress2;->getThemedColor(I)I

    move-result v0

    goto :goto_0

    :cond_1
    iget v0, p0, Lorg/telegram/ui/Components/RadialProgress2;->iconPressedColor:I

    .line 248
    :goto_0
    iget v3, p0, Lorg/telegram/ui/Components/RadialProgress2;->circlePressedColorKey:I

    if-ltz v3, :cond_2

    invoke-direct {p0, v3}, Lorg/telegram/ui/Components/RadialProgress2;->getThemedColor(I)I

    move-result v3

    goto :goto_2

    :cond_2
    iget v3, p0, Lorg/telegram/ui/Components/RadialProgress2;->circlePressedColor:I

    goto :goto_2

    .line 250
    :cond_3
    iget v0, p0, Lorg/telegram/ui/Components/RadialProgress2;->iconColorKey:I

    if-ltz v0, :cond_4

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/RadialProgress2;->getThemedColor(I)I

    move-result v0

    goto :goto_1

    :cond_4
    iget v0, p0, Lorg/telegram/ui/Components/RadialProgress2;->iconColor:I

    .line 251
    :goto_1
    iget v3, p0, Lorg/telegram/ui/Components/RadialProgress2;->circleColorKey:I

    if-ltz v3, :cond_5

    invoke-direct {p0, v3}, Lorg/telegram/ui/Components/RadialProgress2;->getThemedColor(I)I

    move-result v3

    goto :goto_2

    :cond_5
    iget v3, p0, Lorg/telegram/ui/Components/RadialProgress2;->circleColor:I

    .line 254
    :goto_2
    iget-object v4, p0, Lorg/telegram/ui/Components/RadialProgress2;->overlayImageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v4}, Lorg/telegram/messenger/ImageReceiver;->hasBitmapImage()Z

    move-result v4

    const/high16 v5, 0x3f800000    # 1.0f

    if-eqz v4, :cond_7

    .line 255
    iget-object v4, p0, Lorg/telegram/ui/Components/RadialProgress2;->overlayImageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v4}, Lorg/telegram/messenger/ImageReceiver;->getCurrentAlpha()F

    move-result v4

    cmpl-float v6, v4, v5

    if-ltz v6, :cond_6

    move v0, v2

    goto :goto_3

    .line 259
    :cond_6
    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v6

    .line 260
    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v7

    .line 261
    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v8

    .line 262
    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    rsub-int v9, v6, 0xff

    int-to-float v9, v9

    mul-float/2addr v9, v4

    float-to-int v9, v9

    rsub-int v10, v7, 0xff

    int-to-float v10, v10

    mul-float/2addr v10, v4

    float-to-int v10, v10

    rsub-int v11, v8, 0xff

    int-to-float v11, v11

    mul-float/2addr v11, v4

    float-to-int v11, v11

    rsub-int v12, v0, 0xff

    int-to-float v12, v12

    mul-float/2addr v12, v4

    float-to-int v4, v12

    add-int/2addr v0, v4

    add-int/2addr v6, v9

    add-int/2addr v7, v10

    add-int/2addr v8, v11

    .line 268
    invoke-static {v0, v6, v7, v8}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    .line 272
    :cond_7
    :goto_3
    iget-boolean v4, p0, Lorg/telegram/ui/Components/RadialProgress2;->isPressed:Z

    if-eqz v4, :cond_8

    iget v4, p0, Lorg/telegram/ui/Components/RadialProgress2;->indicatorPressedColor:I

    if-eq v4, v2, :cond_8

    :goto_4
    move v0, v4

    goto :goto_5

    :cond_8
    iget v4, p0, Lorg/telegram/ui/Components/RadialProgress2;->indicatorColor:I

    if-eq v4, v2, :cond_9

    goto :goto_4

    .line 274
    :cond_9
    :goto_5
    iget-object v4, p0, Lorg/telegram/ui/Components/RadialProgress2;->overlayImageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v4}, Lorg/telegram/messenger/ImageReceiver;->hasBitmapImage()Z

    move-result v4

    if-eqz v4, :cond_a

    iget-object v4, p0, Lorg/telegram/ui/Components/RadialProgress2;->overlayImageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v4}, Lorg/telegram/messenger/ImageReceiver;->getCurrentAlpha()F

    move-result v4

    cmpl-float v4, v4, v5

    if-gez v4, :cond_c

    .line 275
    :cond_a
    iget-boolean v4, p0, Lorg/telegram/ui/Components/RadialProgress2;->drawBackground:Z

    if-eqz v4, :cond_c

    invoke-virtual {p0}, Lorg/telegram/ui/Components/RadialProgress2;->isMaterial3Style()Z

    move-result v4

    if-eqz v4, :cond_b

    iget-boolean v4, p0, Lorg/telegram/ui/Components/RadialProgress2;->needDrawBackground:Z

    if-eqz v4, :cond_c

    :cond_b
    const/4 v4, 0x1

    goto :goto_6

    :cond_c
    move v4, v1

    .line 277
    :goto_6
    iget-boolean v5, p0, Lorg/telegram/ui/Components/RadialProgress2;->invertColors:Z

    if-eqz v5, :cond_d

    if-nez v4, :cond_d

    goto :goto_7

    :cond_d
    move v3, v0

    .line 281
    :goto_7
    iget-boolean v0, p0, Lorg/telegram/ui/Components/RadialProgress2;->isPressed:Z

    if-eqz v0, :cond_e

    iget v0, p0, Lorg/telegram/ui/Components/RadialProgress2;->trackPressedColor:I

    if-eq v0, v2, :cond_e

    goto :goto_8

    :cond_e
    iget v0, p0, Lorg/telegram/ui/Components/RadialProgress2;->trackColor:I

    if-eq v0, v2, :cond_f

    goto :goto_8

    :cond_f
    invoke-direct {p0}, Lorg/telegram/ui/Components/RadialProgress2;->getTrackAlpha()I

    move-result v0

    invoke-static {v3, v0}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v0

    .line 283
    :goto_8
    iget-object v4, p0, Lorg/telegram/ui/Components/RadialProgress2;->progressSpec:Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;

    iget-object v5, v4, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->indicatorColors:[I

    array-length v6, v5

    if-eqz v6, :cond_10

    aget v5, v5, v1

    if-eq v5, v3, :cond_12

    .line 284
    :cond_10
    filled-new-array {v3}, [I

    move-result-object v5

    iput-object v5, v4, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->indicatorColors:[I

    .line 286
    new-instance v4, Landroid/graphics/PorterDuffColorFilter;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v3, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 287
    iget-object v3, p0, Lorg/telegram/ui/Components/RadialProgress2;->indeterminateDrawable:Lcom/google/android/material/progressindicator/IndeterminateDrawable;

    if-eqz v3, :cond_11

    .line 288
    invoke-virtual {v3, v4}, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 290
    :cond_11
    iget-object v3, p0, Lorg/telegram/ui/Components/RadialProgress2;->progressDrawable:Lcom/google/android/material/progressindicator/DeterminateDrawable;

    if-eqz v3, :cond_12

    .line 291
    invoke-virtual {v3, v4}, Lcom/google/android/material/progressindicator/DeterminateDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 294
    :cond_12
    iget-object v3, p0, Lorg/telegram/ui/Components/RadialProgress2;->progressSpec:Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;

    iget v4, v3, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->trackColor:I

    if-eq v4, v0, :cond_13

    .line 295
    iput v0, v3, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->trackColor:I

    .line 299
    :cond_13
    iget-object v0, p0, Lorg/telegram/ui/Components/RadialProgress2;->miniProgressSpec:Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;

    if-eqz v0, :cond_1d

    .line 301
    iget-boolean v0, p0, Lorg/telegram/ui/Components/RadialProgress2;->isPressedMini:Z

    if-eqz v0, :cond_15

    iget v0, p0, Lorg/telegram/ui/Components/RadialProgress2;->circleCrossfadeColorKey:I

    if-gez v0, :cond_15

    .line 302
    iget v0, p0, Lorg/telegram/ui/Components/RadialProgress2;->iconPressedColorKey:I

    if-ltz v0, :cond_14

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/RadialProgress2;->getThemedColor(I)I

    move-result v0

    goto :goto_9

    :cond_14
    iget v0, p0, Lorg/telegram/ui/Components/RadialProgress2;->iconPressedColor:I

    goto :goto_9

    .line 304
    :cond_15
    iget v0, p0, Lorg/telegram/ui/Components/RadialProgress2;->iconColorKey:I

    if-ltz v0, :cond_16

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/RadialProgress2;->getThemedColor(I)I

    move-result v0

    goto :goto_9

    :cond_16
    iget v0, p0, Lorg/telegram/ui/Components/RadialProgress2;->iconColor:I

    .line 307
    :goto_9
    iget-boolean v3, p0, Lorg/telegram/ui/Components/RadialProgress2;->isPressedMini:Z

    if-eqz v3, :cond_17

    iget v4, p0, Lorg/telegram/ui/Components/RadialProgress2;->indicatorPressedColor:I

    if-eq v4, v2, :cond_17

    :goto_a
    move v0, v4

    goto :goto_b

    :cond_17
    iget v4, p0, Lorg/telegram/ui/Components/RadialProgress2;->indicatorColor:I

    if-eq v4, v2, :cond_18

    goto :goto_a

    :cond_18
    :goto_b
    if-eqz v3, :cond_19

    .line 308
    iget v3, p0, Lorg/telegram/ui/Components/RadialProgress2;->trackPressedColor:I

    if-eq v3, v2, :cond_19

    goto :goto_c

    :cond_19
    iget v3, p0, Lorg/telegram/ui/Components/RadialProgress2;->trackColor:I

    if-eq v3, v2, :cond_1a

    goto :goto_c

    :cond_1a
    invoke-direct {p0}, Lorg/telegram/ui/Components/RadialProgress2;->getTrackAlpha()I

    move-result v2

    invoke-static {v0, v2}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v3

    .line 310
    :goto_c
    iget-object v2, p0, Lorg/telegram/ui/Components/RadialProgress2;->miniProgressSpec:Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;

    iget-object v4, v2, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->indicatorColors:[I

    array-length v5, v4

    if-eqz v5, :cond_1b

    aget v1, v4, v1

    if-eq v1, v0, :cond_1c

    .line 311
    :cond_1b
    filled-new-array {v0}, [I

    move-result-object v0

    iput-object v0, v2, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->indicatorColors:[I

    .line 313
    :cond_1c
    iget v0, v2, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->trackColor:I

    if-eq v0, v3, :cond_1d

    .line 314
    iput v3, v2, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->trackColor:I

    :cond_1d
    :goto_d
    return-void
.end method

.method private static validateVisibleDrawables(FILcom/google/android/material/progressindicator/DeterminateDrawable;Lcom/google/android/material/progressindicator/IndeterminateDrawable;Z)V
    .locals 3

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p0, v0

    const/4 v1, 0x0

    if-gez v0, :cond_4

    .line 534
    invoke-static {p1}, Lorg/telegram/ui/Components/RadialProgress2;->iconIsCancel(I)Z

    move-result v0

    const v2, 0x3d23d70a    # 0.04f

    if-nez v0, :cond_0

    cmpl-float v0, p0, v2

    if-lez v0, :cond_4

    const/4 v0, 0x2

    if-ne p1, v0, :cond_4

    :cond_0
    cmpg-float p0, p0, v2

    const/4 p1, 0x1

    if-gtz p0, :cond_2

    .line 537
    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result p0

    if-nez p0, :cond_1

    .line 538
    invoke-virtual {p3, p1, p1, p1}, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->setVisible(ZZZ)Z

    .line 539
    :cond_1
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result p0

    if-eqz p0, :cond_6

    .line 540
    invoke-virtual {p2, v1, v1, p4}, Lcom/google/android/material/progressindicator/DeterminateDrawable;->setVisible(ZZZ)Z

    return-void

    .line 542
    :cond_2
    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result p0

    if-eqz p0, :cond_3

    .line 543
    invoke-virtual {p3, v1, v1, v1}, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->setVisible(ZZZ)Z

    .line 544
    :cond_3
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result p0

    if-nez p0, :cond_6

    .line 545
    invoke-virtual {p2, p1, v1, v1}, Lcom/google/android/material/progressindicator/DeterminateDrawable;->setVisible(ZZZ)Z

    return-void

    .line 548
    :cond_4
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result p0

    if-eqz p0, :cond_5

    .line 549
    invoke-virtual {p2, v1, v1, p4}, Lcom/google/android/material/progressindicator/DeterminateDrawable;->setVisible(ZZZ)Z

    .line 550
    :cond_5
    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result p0

    if-eqz p0, :cond_6

    .line 551
    invoke-virtual {p3, v1, v1, p4}, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->setVisible(ZZZ)Z

    :cond_6
    return-void
.end method

.method private static validateVisibleDrawables(IIFLcom/google/android/material/progressindicator/DeterminateDrawable;Lcom/google/android/material/progressindicator/IndeterminateDrawable;Z)V
    .locals 3

    .line 596
    invoke-static {p0}, Lorg/telegram/ui/Components/RadialProgress2;->iconIsCancel(I)Z

    move-result v0

    const v1, 0x3d23d70a    # 0.04f

    const/4 v2, 0x0

    if-nez v0, :cond_2

    cmpl-float v0, p2, v1

    if-lez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p2, v0

    if-gez v0, :cond_0

    invoke-static {p1}, Lorg/telegram/ui/Components/RadialProgress2;->iconIsCancel(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    if-ne p0, p1, :cond_0

    goto :goto_0

    .line 604
    :cond_0
    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 605
    invoke-virtual {p3, v2, v2, p5}, Lcom/google/android/material/progressindicator/DeterminateDrawable;->setVisible(ZZZ)Z

    .line 606
    :cond_1
    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result p0

    if-eqz p0, :cond_5

    .line 607
    invoke-virtual {p4, v2, v2, p5}, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->setVisible(ZZZ)Z

    return-void

    :cond_2
    :goto_0
    cmpg-float p0, p2, v1

    const/4 p1, 0x1

    if-gtz p0, :cond_3

    move p0, p1

    goto :goto_1

    :cond_3
    move p0, v2

    .line 599
    :goto_1
    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result p2

    if-ne p2, p0, :cond_4

    xor-int/lit8 p2, p0, 0x1

    .line 600
    invoke-virtual {p3, p2, v2, v2}, Lcom/google/android/material/progressindicator/DeterminateDrawable;->setVisible(ZZZ)Z

    .line 601
    :cond_4
    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result p2

    if-eq p2, p0, :cond_5

    .line 602
    invoke-virtual {p4, p0, p1, p0}, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->setVisible(ZZZ)Z

    :cond_5
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 22
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 675
    iget-object v2, v0, Lorg/telegram/ui/Components/RadialProgress2;->mediaActionDrawable:Lorg/telegram/ui/Components/MediaActionDrawable;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/MediaActionDrawable;->getCurrentIcon()I

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x4

    if-ne v2, v4, :cond_0

    iget-object v2, v0, Lorg/telegram/ui/Components/RadialProgress2;->mediaActionDrawable:Lorg/telegram/ui/Components/MediaActionDrawable;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/MediaActionDrawable;->getTransitionProgress()F

    move-result v2

    cmpl-float v2, v2, v3

    if-gez v2, :cond_47

    :cond_0
    iget-object v2, v0, Lorg/telegram/ui/Components/RadialProgress2;->progressRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_22

    .line 679
    :cond_1
    iget-object v2, v0, Lorg/telegram/ui/Components/RadialProgress2;->mediaActionDrawable:Lorg/telegram/ui/Components/MediaActionDrawable;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/MediaActionDrawable;->getCurrentIcon()I

    move-result v2

    .line 680
    iget-object v5, v0, Lorg/telegram/ui/Components/RadialProgress2;->mediaActionDrawable:Lorg/telegram/ui/Components/MediaActionDrawable;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/MediaActionDrawable;->getPreviousIcon()I

    move-result v5

    .line 683
    iget v6, v0, Lorg/telegram/ui/Components/RadialProgress2;->backgroundStroke:I

    const/4 v7, 0x3

    if-eqz v6, :cond_4

    if-ne v2, v7, :cond_2

    .line 685
    iget-object v6, v0, Lorg/telegram/ui/Components/RadialProgress2;->mediaActionDrawable:Lorg/telegram/ui/Components/MediaActionDrawable;

    invoke-virtual {v6}, Lorg/telegram/ui/Components/MediaActionDrawable;->getTransitionProgress()F

    move-result v6

    :goto_0
    sub-float v6, v3, v6

    goto :goto_2

    :cond_2
    if-ne v5, v7, :cond_3

    .line 687
    iget-object v6, v0, Lorg/telegram/ui/Components/RadialProgress2;->mediaActionDrawable:Lorg/telegram/ui/Components/MediaActionDrawable;

    invoke-virtual {v6}, Lorg/telegram/ui/Components/MediaActionDrawable;->getTransitionProgress()F

    move-result v6

    goto :goto_2

    :cond_3
    :goto_1
    move v6, v3

    goto :goto_2

    :cond_4
    if-eq v2, v7, :cond_5

    const/4 v6, 0x6

    if-eq v2, v6, :cond_5

    const/16 v6, 0xa

    if-eq v2, v6, :cond_5

    const/16 v6, 0x8

    if-eq v2, v6, :cond_5

    if-nez v2, :cond_6

    :cond_5
    if-ne v5, v4, :cond_6

    .line 692
    iget-object v6, v0, Lorg/telegram/ui/Components/RadialProgress2;->mediaActionDrawable:Lorg/telegram/ui/Components/MediaActionDrawable;

    invoke-virtual {v6}, Lorg/telegram/ui/Components/MediaActionDrawable;->getTransitionProgress()F

    move-result v6

    goto :goto_2

    :cond_6
    if-eq v2, v4, :cond_7

    goto :goto_1

    .line 694
    :cond_7
    iget-object v6, v0, Lorg/telegram/ui/Components/RadialProgress2;->mediaActionDrawable:Lorg/telegram/ui/Components/MediaActionDrawable;

    invoke-virtual {v6}, Lorg/telegram/ui/Components/MediaActionDrawable;->getTransitionProgress()F

    move-result v6

    goto :goto_0

    .line 697
    :goto_2
    iget-boolean v7, v0, Lorg/telegram/ui/Components/RadialProgress2;->isPressedMini:Z

    if-eqz v7, :cond_a

    iget v7, v0, Lorg/telegram/ui/Components/RadialProgress2;->circleCrossfadeColorKey:I

    if-gez v7, :cond_a

    .line 698
    iget v7, v0, Lorg/telegram/ui/Components/RadialProgress2;->iconPressedColorKey:I

    if-ltz v7, :cond_8

    .line 699
    iget-object v8, v0, Lorg/telegram/ui/Components/RadialProgress2;->miniMediaActionDrawable:Lorg/telegram/ui/Components/MediaActionDrawable;

    invoke-direct {v0, v7}, Lorg/telegram/ui/Components/RadialProgress2;->getThemedColor(I)I

    move-result v7

    invoke-virtual {v8, v7}, Lorg/telegram/ui/Components/MediaActionDrawable;->setColor(I)V

    goto :goto_3

    .line 701
    :cond_8
    iget-object v7, v0, Lorg/telegram/ui/Components/RadialProgress2;->miniMediaActionDrawable:Lorg/telegram/ui/Components/MediaActionDrawable;

    iget v8, v0, Lorg/telegram/ui/Components/RadialProgress2;->iconPressedColor:I

    invoke-virtual {v7, v8}, Lorg/telegram/ui/Components/MediaActionDrawable;->setColor(I)V

    .line 703
    :goto_3
    iget v7, v0, Lorg/telegram/ui/Components/RadialProgress2;->circlePressedColorKey:I

    if-ltz v7, :cond_9

    .line 704
    iget-object v8, v0, Lorg/telegram/ui/Components/RadialProgress2;->circleMiniPaint:Landroid/graphics/Paint;

    invoke-direct {v0, v7}, Lorg/telegram/ui/Components/RadialProgress2;->getThemedColor(I)I

    move-result v7

    invoke-virtual {v8, v7}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_5

    .line 706
    :cond_9
    iget-object v7, v0, Lorg/telegram/ui/Components/RadialProgress2;->circleMiniPaint:Landroid/graphics/Paint;

    iget v8, v0, Lorg/telegram/ui/Components/RadialProgress2;->circlePressedColor:I

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_5

    .line 709
    :cond_a
    iget v7, v0, Lorg/telegram/ui/Components/RadialProgress2;->iconColorKey:I

    if-ltz v7, :cond_b

    .line 710
    iget-object v8, v0, Lorg/telegram/ui/Components/RadialProgress2;->miniMediaActionDrawable:Lorg/telegram/ui/Components/MediaActionDrawable;

    invoke-direct {v0, v7}, Lorg/telegram/ui/Components/RadialProgress2;->getThemedColor(I)I

    move-result v7

    invoke-virtual {v8, v7}, Lorg/telegram/ui/Components/MediaActionDrawable;->setColor(I)V

    goto :goto_4

    .line 712
    :cond_b
    iget-object v7, v0, Lorg/telegram/ui/Components/RadialProgress2;->miniMediaActionDrawable:Lorg/telegram/ui/Components/MediaActionDrawable;

    iget v8, v0, Lorg/telegram/ui/Components/RadialProgress2;->iconColor:I

    invoke-virtual {v7, v8}, Lorg/telegram/ui/Components/MediaActionDrawable;->setColor(I)V

    .line 714
    :goto_4
    iget v7, v0, Lorg/telegram/ui/Components/RadialProgress2;->circleColorKey:I

    if-ltz v7, :cond_d

    .line 715
    iget v8, v0, Lorg/telegram/ui/Components/RadialProgress2;->circleCrossfadeColorKey:I

    if-ltz v8, :cond_c

    .line 716
    iget-object v8, v0, Lorg/telegram/ui/Components/RadialProgress2;->circleMiniPaint:Landroid/graphics/Paint;

    invoke-direct {v0, v7}, Lorg/telegram/ui/Components/RadialProgress2;->getThemedColor(I)I

    move-result v7

    iget v9, v0, Lorg/telegram/ui/Components/RadialProgress2;->circleCrossfadeColorKey:I

    invoke-direct {v0, v9}, Lorg/telegram/ui/Components/RadialProgress2;->getThemedColor(I)I

    move-result v9

    iget v10, v0, Lorg/telegram/ui/Components/RadialProgress2;->circleCrossfadeColorProgress:F

    iget v11, v0, Lorg/telegram/ui/Components/RadialProgress2;->circleCheckProgress:F

    invoke-static {v7, v9, v10, v11}, Lorg/telegram/messenger/AndroidUtilities;->getOffsetColor(IIFF)I

    move-result v7

    invoke-virtual {v8, v7}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_5

    .line 718
    :cond_c
    iget-object v8, v0, Lorg/telegram/ui/Components/RadialProgress2;->circleMiniPaint:Landroid/graphics/Paint;

    invoke-direct {v0, v7}, Lorg/telegram/ui/Components/RadialProgress2;->getThemedColor(I)I

    move-result v7

    invoke-virtual {v8, v7}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_5

    .line 721
    :cond_d
    iget-object v7, v0, Lorg/telegram/ui/Components/RadialProgress2;->circleMiniPaint:Landroid/graphics/Paint;

    iget v8, v0, Lorg/telegram/ui/Components/RadialProgress2;->circleColor:I

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 726
    :goto_5
    iget-boolean v7, v0, Lorg/telegram/ui/Components/RadialProgress2;->isPressed:Z

    if-eqz v7, :cond_10

    .line 727
    iget v7, v0, Lorg/telegram/ui/Components/RadialProgress2;->iconPressedColorKey:I

    if-ltz v7, :cond_e

    .line 728
    iget-object v8, v0, Lorg/telegram/ui/Components/RadialProgress2;->mediaActionDrawable:Lorg/telegram/ui/Components/MediaActionDrawable;

    invoke-direct {v0, v7}, Lorg/telegram/ui/Components/RadialProgress2;->getThemedColor(I)I

    move-result v7

    invoke-virtual {v8, v7}, Lorg/telegram/ui/Components/MediaActionDrawable;->setColor(I)V

    .line 729
    iget-object v8, v0, Lorg/telegram/ui/Components/RadialProgress2;->mediaActionDrawable:Lorg/telegram/ui/Components/MediaActionDrawable;

    iget v9, v0, Lorg/telegram/ui/Components/RadialProgress2;->circlePressedColorKey:I

    invoke-direct {v0, v9}, Lorg/telegram/ui/Components/RadialProgress2;->getThemedColor(I)I

    move-result v9

    invoke-virtual {v8, v9}, Lorg/telegram/ui/Components/MediaActionDrawable;->setBackColor(I)V

    goto :goto_6

    .line 731
    :cond_e
    iget-object v7, v0, Lorg/telegram/ui/Components/RadialProgress2;->mediaActionDrawable:Lorg/telegram/ui/Components/MediaActionDrawable;

    iget v8, v0, Lorg/telegram/ui/Components/RadialProgress2;->iconPressedColor:I

    invoke-virtual {v7, v8}, Lorg/telegram/ui/Components/MediaActionDrawable;->setColor(I)V

    .line 732
    iget-object v7, v0, Lorg/telegram/ui/Components/RadialProgress2;->mediaActionDrawable:Lorg/telegram/ui/Components/MediaActionDrawable;

    iget v9, v0, Lorg/telegram/ui/Components/RadialProgress2;->circlePressedColor:I

    invoke-virtual {v7, v9}, Lorg/telegram/ui/Components/MediaActionDrawable;->setBackColor(I)V

    move v7, v8

    .line 734
    :goto_6
    iget v8, v0, Lorg/telegram/ui/Components/RadialProgress2;->circlePressedColorKey:I

    if-ltz v8, :cond_f

    .line 735
    iget-object v9, v0, Lorg/telegram/ui/Components/RadialProgress2;->circlePaint:Landroid/graphics/Paint;

    invoke-direct {v0, v8}, Lorg/telegram/ui/Components/RadialProgress2;->getThemedColor(I)I

    move-result v8

    invoke-virtual {v9, v8}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_8

    .line 737
    :cond_f
    iget-object v8, v0, Lorg/telegram/ui/Components/RadialProgress2;->circlePaint:Landroid/graphics/Paint;

    iget v9, v0, Lorg/telegram/ui/Components/RadialProgress2;->circlePressedColor:I

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_8

    .line 740
    :cond_10
    iget v7, v0, Lorg/telegram/ui/Components/RadialProgress2;->iconColorKey:I

    if-ltz v7, :cond_11

    .line 741
    iget-object v8, v0, Lorg/telegram/ui/Components/RadialProgress2;->mediaActionDrawable:Lorg/telegram/ui/Components/MediaActionDrawable;

    invoke-direct {v0, v7}, Lorg/telegram/ui/Components/RadialProgress2;->getThemedColor(I)I

    move-result v7

    invoke-virtual {v8, v7}, Lorg/telegram/ui/Components/MediaActionDrawable;->setColor(I)V

    .line 742
    iget-object v8, v0, Lorg/telegram/ui/Components/RadialProgress2;->mediaActionDrawable:Lorg/telegram/ui/Components/MediaActionDrawable;

    iget v9, v0, Lorg/telegram/ui/Components/RadialProgress2;->circleColorKey:I

    invoke-direct {v0, v9}, Lorg/telegram/ui/Components/RadialProgress2;->getThemedColor(I)I

    move-result v9

    invoke-virtual {v8, v9}, Lorg/telegram/ui/Components/MediaActionDrawable;->setBackColor(I)V

    goto :goto_7

    .line 744
    :cond_11
    iget-object v7, v0, Lorg/telegram/ui/Components/RadialProgress2;->mediaActionDrawable:Lorg/telegram/ui/Components/MediaActionDrawable;

    iget v8, v0, Lorg/telegram/ui/Components/RadialProgress2;->iconColor:I

    invoke-virtual {v7, v8}, Lorg/telegram/ui/Components/MediaActionDrawable;->setColor(I)V

    .line 745
    iget-object v7, v0, Lorg/telegram/ui/Components/RadialProgress2;->mediaActionDrawable:Lorg/telegram/ui/Components/MediaActionDrawable;

    iget v9, v0, Lorg/telegram/ui/Components/RadialProgress2;->circleColor:I

    invoke-virtual {v7, v9}, Lorg/telegram/ui/Components/MediaActionDrawable;->setBackColor(I)V

    move v7, v8

    .line 747
    :goto_7
    iget v8, v0, Lorg/telegram/ui/Components/RadialProgress2;->circleColorKey:I

    if-ltz v8, :cond_12

    .line 748
    iget-object v9, v0, Lorg/telegram/ui/Components/RadialProgress2;->circlePaint:Landroid/graphics/Paint;

    invoke-direct {v0, v8}, Lorg/telegram/ui/Components/RadialProgress2;->getThemedColor(I)I

    move-result v8

    invoke-virtual {v9, v8}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_8

    .line 750
    :cond_12
    iget-object v8, v0, Lorg/telegram/ui/Components/RadialProgress2;->circlePaint:Landroid/graphics/Paint;

    iget v9, v0, Lorg/telegram/ui/Components/RadialProgress2;->circleColor:I

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 754
    :goto_8
    iget-boolean v8, v0, Lorg/telegram/ui/Components/RadialProgress2;->drawMiniIcon:Z

    const/4 v9, 0x0

    if-nez v8, :cond_13

    iget v8, v0, Lorg/telegram/ui/Components/RadialProgress2;->circleCrossfadeColorKey:I

    if-ltz v8, :cond_14

    :cond_13
    iget-object v8, v0, Lorg/telegram/ui/Components/RadialProgress2;->miniDrawCanvas:Landroid/graphics/Canvas;

    if-eqz v8, :cond_14

    .line 755
    iget-object v8, v0, Lorg/telegram/ui/Components/RadialProgress2;->miniDrawBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v8, v9}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 758
    :cond_14
    iget-object v8, v0, Lorg/telegram/ui/Components/RadialProgress2;->circlePaint:Landroid/graphics/Paint;

    invoke-virtual {v8}, Landroid/graphics/Paint;->getAlpha()I

    move-result v8

    .line 759
    iget-object v10, v0, Lorg/telegram/ui/Components/RadialProgress2;->circlePaint:Landroid/graphics/Paint;

    int-to-float v8, v8

    mul-float/2addr v8, v6

    iget v11, v0, Lorg/telegram/ui/Components/RadialProgress2;->overrideAlpha:F

    mul-float/2addr v8, v11

    iget v11, v0, Lorg/telegram/ui/Components/RadialProgress2;->overrideCircleAlpha:F

    mul-float/2addr v8, v11

    float-to-int v8, v8

    invoke-virtual {v10, v8}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 760
    iget-object v8, v0, Lorg/telegram/ui/Components/RadialProgress2;->circleMiniPaint:Landroid/graphics/Paint;

    invoke-virtual {v8}, Landroid/graphics/Paint;->getAlpha()I

    move-result v8

    .line 761
    iget-object v10, v0, Lorg/telegram/ui/Components/RadialProgress2;->circleMiniPaint:Landroid/graphics/Paint;

    int-to-float v8, v8

    mul-float/2addr v8, v6

    iget v11, v0, Lorg/telegram/ui/Components/RadialProgress2;->overrideAlpha:F

    mul-float/2addr v8, v11

    float-to-int v8, v8

    invoke-virtual {v10, v8}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 766
    iget-boolean v8, v0, Lorg/telegram/ui/Components/RadialProgress2;->drawMiniIcon:Z

    if-nez v8, :cond_15

    iget v8, v0, Lorg/telegram/ui/Components/RadialProgress2;->circleCrossfadeColorKey:I

    if-ltz v8, :cond_16

    :cond_15
    iget-object v8, v0, Lorg/telegram/ui/Components/RadialProgress2;->miniDrawCanvas:Landroid/graphics/Canvas;

    if-eqz v8, :cond_16

    .line 767
    iget-object v8, v0, Lorg/telegram/ui/Components/RadialProgress2;->progressRect:Landroid/graphics/RectF;

    invoke-virtual {v8}, Landroid/graphics/RectF;->width()F

    move-result v8

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v8, v10

    float-to-double v11, v8

    invoke-static {v11, v12}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v11

    double-to-int v8, v11

    .line 768
    iget-object v11, v0, Lorg/telegram/ui/Components/RadialProgress2;->progressRect:Landroid/graphics/RectF;

    invoke-virtual {v11}, Landroid/graphics/RectF;->height()F

    move-result v11

    div-float/2addr v11, v10

    float-to-double v10, v11

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v10, v10

    goto :goto_9

    .line 770
    :cond_16
    iget-object v8, v0, Lorg/telegram/ui/Components/RadialProgress2;->progressRect:Landroid/graphics/RectF;

    invoke-virtual {v8}, Landroid/graphics/RectF;->centerX()F

    move-result v8

    float-to-int v8, v8

    .line 771
    iget-object v10, v0, Lorg/telegram/ui/Components/RadialProgress2;->progressRect:Landroid/graphics/RectF;

    invoke-virtual {v10}, Landroid/graphics/RectF;->centerY()F

    move-result v10

    float-to-int v10, v10

    .line 774
    :goto_9
    iget-object v11, v0, Lorg/telegram/ui/Components/RadialProgress2;->overlayImageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v11}, Lorg/telegram/messenger/ImageReceiver;->hasBitmapImage()Z

    move-result v11

    if-eqz v11, :cond_18

    .line 775
    iget-object v11, v0, Lorg/telegram/ui/Components/RadialProgress2;->overlayImageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v11}, Lorg/telegram/messenger/ImageReceiver;->getCurrentAlpha()F

    move-result v11

    .line 776
    iget-object v14, v0, Lorg/telegram/ui/Components/RadialProgress2;->overlayPaint:Landroid/graphics/Paint;

    const/high16 v15, 0x42c80000    # 100.0f

    mul-float/2addr v15, v11

    mul-float/2addr v15, v6

    move/from16 v16, v3

    iget v3, v0, Lorg/telegram/ui/Components/RadialProgress2;->overrideAlpha:F

    mul-float/2addr v15, v3

    float-to-int v3, v15

    invoke-virtual {v14, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    cmpl-float v3, v11, v16

    if-ltz v3, :cond_17

    const/4 v3, -0x1

    const/16 v17, 0x2

    goto :goto_a

    .line 782
    :cond_17
    invoke-static {v7}, Landroid/graphics/Color;->red(I)I

    move-result v3

    .line 783
    invoke-static {v7}, Landroid/graphics/Color;->green(I)I

    move-result v14

    .line 784
    invoke-static {v7}, Landroid/graphics/Color;->blue(I)I

    move-result v15

    .line 785
    invoke-static {v7}, Landroid/graphics/Color;->alpha(I)I

    move-result v7

    rsub-int v9, v3, 0xff

    int-to-float v9, v9

    mul-float/2addr v9, v11

    float-to-int v9, v9

    rsub-int v13, v14, 0xff

    int-to-float v13, v13

    mul-float/2addr v13, v11

    float-to-int v13, v13

    const/16 v17, 0x2

    rsub-int v12, v15, 0xff

    int-to-float v12, v12

    mul-float/2addr v12, v11

    float-to-int v12, v12

    rsub-int v4, v7, 0xff

    int-to-float v4, v4

    mul-float/2addr v4, v11

    float-to-int v4, v4

    add-int/2addr v7, v4

    add-int/2addr v3, v9

    add-int/2addr v14, v13

    add-int/2addr v15, v12

    .line 791
    invoke-static {v7, v3, v14, v15}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    const/4 v9, 0x1

    .line 793
    :goto_a
    iget-object v4, v0, Lorg/telegram/ui/Components/RadialProgress2;->mediaActionDrawable:Lorg/telegram/ui/Components/MediaActionDrawable;

    invoke-virtual {v4, v3}, Lorg/telegram/ui/Components/MediaActionDrawable;->setColor(I)V

    .line 795
    iget-object v3, v0, Lorg/telegram/ui/Components/RadialProgress2;->overlayImageView:Lorg/telegram/messenger/ImageReceiver;

    iget v4, v0, Lorg/telegram/ui/Components/RadialProgress2;->circleRadius:I

    sub-int v7, v8, v4

    int-to-float v7, v7

    sub-int v11, v10, v4

    int-to-float v11, v11

    mul-int/lit8 v12, v4, 0x2

    int-to-float v12, v12

    mul-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {v3, v7, v11, v12, v4}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(FFFF)V

    goto :goto_b

    :cond_18
    move/from16 v16, v3

    const/16 v17, 0x2

    const/4 v9, 0x1

    .line 799
    :goto_b
    iget-object v3, v0, Lorg/telegram/ui/Components/RadialProgress2;->miniDrawCanvas:Landroid/graphics/Canvas;

    if-eqz v3, :cond_19

    iget v7, v0, Lorg/telegram/ui/Components/RadialProgress2;->circleCrossfadeColorKey:I

    if-ltz v7, :cond_19

    iget v7, v0, Lorg/telegram/ui/Components/RadialProgress2;->circleCheckProgress:F

    cmpl-float v7, v7, v16

    if-eqz v7, :cond_19

    .line 800
    invoke-virtual {v3}, Landroid/graphics/Canvas;->save()I

    move-result v3

    .line 801
    iget v7, v0, Lorg/telegram/ui/Components/RadialProgress2;->circleCheckProgress:F

    sub-float v7, v16, v7

    const v11, 0x3dcccccd    # 0.1f

    mul-float/2addr v7, v11

    sub-float v7, v16, v7

    .line 802
    iget-object v11, v0, Lorg/telegram/ui/Components/RadialProgress2;->miniDrawCanvas:Landroid/graphics/Canvas;

    int-to-float v12, v8

    int-to-float v13, v10

    invoke-virtual {v11, v7, v7, v12, v13}, Landroid/graphics/Canvas;->scale(FFFF)V

    goto :goto_c

    :cond_19
    const/high16 v3, -0x80000000

    :goto_c
    if-eqz v9, :cond_1b

    .line 805
    iget-boolean v7, v0, Lorg/telegram/ui/Components/RadialProgress2;->drawBackground:Z

    if-eqz v7, :cond_1b

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RadialProgress2;->isMaterial3Style()Z

    move-result v7

    if-eqz v7, :cond_1a

    iget-boolean v7, v0, Lorg/telegram/ui/Components/RadialProgress2;->needDrawBackground:Z

    if-eqz v7, :cond_1b

    :cond_1a
    const/4 v7, 0x1

    goto :goto_d

    :cond_1b
    const/4 v7, 0x0

    :goto_d
    const/4 v9, 0x0

    if-eqz v7, :cond_20

    .line 808
    iget-boolean v11, v0, Lorg/telegram/ui/Components/RadialProgress2;->drawMiniIcon:Z

    if-nez v11, :cond_1d

    iget v11, v0, Lorg/telegram/ui/Components/RadialProgress2;->circleCrossfadeColorKey:I

    if-ltz v11, :cond_1c

    goto :goto_e

    :cond_1c
    const/4 v11, 0x4

    goto :goto_f

    :cond_1d
    :goto_e
    iget-object v11, v0, Lorg/telegram/ui/Components/RadialProgress2;->miniDrawCanvas:Landroid/graphics/Canvas;

    if-eqz v11, :cond_1c

    int-to-float v12, v8

    int-to-float v13, v10

    .line 809
    iget v14, v0, Lorg/telegram/ui/Components/RadialProgress2;->circleRadius:I

    int-to-float v14, v14

    iget-object v15, v0, Lorg/telegram/ui/Components/RadialProgress2;->circlePaint:Landroid/graphics/Paint;

    invoke-virtual {v11, v12, v13, v14, v15}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_10

    :goto_f
    if-ne v2, v11, :cond_1e

    cmpl-float v11, v6, v9

    if-eqz v11, :cond_20

    .line 812
    :cond_1e
    iget v11, v0, Lorg/telegram/ui/Components/RadialProgress2;->backgroundStroke:I

    if-eqz v11, :cond_1f

    int-to-float v11, v8

    int-to-float v12, v10

    .line 813
    iget v13, v0, Lorg/telegram/ui/Components/RadialProgress2;->circleRadius:I

    const/high16 v14, 0x40600000    # 3.5f

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    sub-int/2addr v13, v14

    int-to-float v13, v13

    iget-object v14, v0, Lorg/telegram/ui/Components/RadialProgress2;->circlePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v11, v12, v13, v14}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_10

    :cond_1f
    int-to-float v11, v8

    int-to-float v12, v10

    .line 815
    iget v13, v0, Lorg/telegram/ui/Components/RadialProgress2;->circleRadius:I

    int-to-float v13, v13

    iget-object v14, v0, Lorg/telegram/ui/Components/RadialProgress2;->circlePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v11, v12, v13, v14}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 821
    :cond_20
    :goto_10
    iget-object v11, v0, Lorg/telegram/ui/Components/RadialProgress2;->overlayImageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v11}, Lorg/telegram/messenger/ImageReceiver;->hasBitmapImage()Z

    move-result v11

    if-eqz v11, :cond_23

    .line 822
    iget-object v11, v0, Lorg/telegram/ui/Components/RadialProgress2;->overlayImageView:Lorg/telegram/messenger/ImageReceiver;

    iget v12, v0, Lorg/telegram/ui/Components/RadialProgress2;->overrideAlpha:F

    mul-float/2addr v12, v6

    iget v13, v0, Lorg/telegram/ui/Components/RadialProgress2;->overlayImageAlpha:F

    mul-float/2addr v12, v13

    invoke-virtual {v11, v12}, Lorg/telegram/messenger/ImageReceiver;->setAlpha(F)V

    .line 824
    iget-boolean v11, v0, Lorg/telegram/ui/Components/RadialProgress2;->drawMiniIcon:Z

    if-nez v11, :cond_21

    iget v11, v0, Lorg/telegram/ui/Components/RadialProgress2;->circleCrossfadeColorKey:I

    if-ltz v11, :cond_22

    :cond_21
    iget-object v11, v0, Lorg/telegram/ui/Components/RadialProgress2;->miniDrawCanvas:Landroid/graphics/Canvas;

    if-eqz v11, :cond_22

    .line 825
    iget-object v12, v0, Lorg/telegram/ui/Components/RadialProgress2;->overlayImageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v12, v11}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    .line 826
    iget-object v11, v0, Lorg/telegram/ui/Components/RadialProgress2;->miniDrawCanvas:Landroid/graphics/Canvas;

    int-to-float v12, v8

    int-to-float v13, v10

    iget v14, v0, Lorg/telegram/ui/Components/RadialProgress2;->circleRadius:I

    int-to-float v14, v14

    iget-object v15, v0, Lorg/telegram/ui/Components/RadialProgress2;->overlayPaint:Landroid/graphics/Paint;

    invoke-virtual {v11, v12, v13, v14, v15}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_11

    .line 828
    :cond_22
    iget-object v11, v0, Lorg/telegram/ui/Components/RadialProgress2;->overlayImageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v11, v1}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    int-to-float v11, v8

    int-to-float v12, v10

    .line 829
    iget v13, v0, Lorg/telegram/ui/Components/RadialProgress2;->circleRadius:I

    int-to-float v13, v13

    iget-object v14, v0, Lorg/telegram/ui/Components/RadialProgress2;->overlayPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v11, v12, v13, v14}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 833
    :cond_23
    :goto_11
    iget v11, v0, Lorg/telegram/ui/Components/RadialProgress2;->circleRadius:I

    .line 834
    iget v12, v0, Lorg/telegram/ui/Components/RadialProgress2;->maxIconSize:I

    if-lez v12, :cond_24

    if-le v11, v12, :cond_24

    move v11, v12

    .line 837
    :cond_24
    iget v12, v0, Lorg/telegram/ui/Components/RadialProgress2;->iconScale:F

    cmpl-float v12, v12, v16

    if-eqz v12, :cond_25

    .line 838
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 839
    iget v12, v0, Lorg/telegram/ui/Components/RadialProgress2;->iconScale:F

    int-to-float v13, v8

    int-to-float v14, v10

    invoke-virtual {v1, v12, v12, v13, v14}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 842
    :cond_25
    iget-object v12, v0, Lorg/telegram/ui/Components/RadialProgress2;->mediaActionDrawable:Lorg/telegram/ui/Components/MediaActionDrawable;

    sub-int v13, v8, v11

    sub-int v14, v10, v11

    add-int/2addr v8, v11

    add-int/2addr v10, v11

    invoke-virtual {v12, v13, v14, v8, v10}, Lorg/telegram/ui/Components/MediaActionDrawable;->setBounds(IIII)V

    .line 843
    iget-object v11, v0, Lorg/telegram/ui/Components/RadialProgress2;->mediaActionDrawable:Lorg/telegram/ui/Components/MediaActionDrawable;

    iget-object v12, v0, Lorg/telegram/ui/Components/RadialProgress2;->overlayImageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v12}, Lorg/telegram/messenger/ImageReceiver;->hasBitmapImage()Z

    move-result v12

    invoke-virtual {v11, v12}, Lorg/telegram/ui/Components/MediaActionDrawable;->setHasOverlayImage(Z)V

    .line 845
    iget-boolean v11, v0, Lorg/telegram/ui/Components/RadialProgress2;->drawMiniIcon:Z

    if-nez v11, :cond_26

    iget v11, v0, Lorg/telegram/ui/Components/RadialProgress2;->circleCrossfadeColorKey:I

    if-ltz v11, :cond_27

    :cond_26
    iget-object v11, v0, Lorg/telegram/ui/Components/RadialProgress2;->miniDrawCanvas:Landroid/graphics/Canvas;

    if-eqz v11, :cond_27

    goto :goto_12

    :cond_27
    move-object v11, v1

    .line 847
    :goto_12
    sget-boolean v12, Lcom/exteragram/messenger/ExteraConfig;->newLoadingStyle:Z

    if-eqz v12, :cond_28

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RadialProgress2;->isMaterial3Style()Z

    move-result v12

    if-eqz v12, :cond_28

    const/4 v12, 0x1

    goto :goto_13

    :cond_28
    const/4 v12, 0x0

    .line 848
    :goto_13
    invoke-virtual {v0}, Lorg/telegram/ui/Components/RadialProgress2;->getProgress()F

    move-result v15

    move/from16 v18, v9

    .line 849
    iget-object v9, v0, Lorg/telegram/ui/Components/RadialProgress2;->miniMediaActionDrawable:Lorg/telegram/ui/Components/MediaActionDrawable;

    invoke-virtual {v9}, Lorg/telegram/ui/Components/MediaActionDrawable;->getCurrentIcon()I

    move-result v9

    const v19, 0x3d23d70a    # 0.04f

    if-eqz v12, :cond_2d

    .line 850
    iget-boolean v12, v0, Lorg/telegram/ui/Components/RadialProgress2;->drawMiniIcon:Z

    if-nez v12, :cond_29

    invoke-static {v2}, Lorg/telegram/ui/Components/RadialProgress2;->iconIsCancel(I)Z

    move-result v12

    if-nez v12, :cond_2c

    :cond_29
    iget-boolean v12, v0, Lorg/telegram/ui/Components/RadialProgress2;->drawMiniIcon:Z

    if-eqz v12, :cond_2a

    invoke-static {v9}, Lorg/telegram/ui/Components/RadialProgress2;->iconIsCancel(I)Z

    move-result v12

    if-nez v12, :cond_2c

    :cond_2a
    cmpl-float v12, v15, v19

    if-lez v12, :cond_2d

    cmpg-float v12, v15, v16

    if-gez v12, :cond_2d

    iget-boolean v12, v0, Lorg/telegram/ui/Components/RadialProgress2;->drawMiniIcon:Z

    move/from16 v4, v17

    if-eqz v12, :cond_2b

    if-eq v9, v4, :cond_2c

    :cond_2b
    if-nez v12, :cond_2d

    if-ne v2, v4, :cond_2d

    :cond_2c
    const/4 v4, 0x1

    goto :goto_14

    :cond_2d
    const/4 v4, 0x0

    .line 851
    :goto_14
    iget-boolean v9, v0, Lorg/telegram/ui/Components/RadialProgress2;->drawMiniIcon:Z

    if-nez v9, :cond_2e

    iget-object v9, v0, Lorg/telegram/ui/Components/RadialProgress2;->indeterminateDrawable:Lcom/google/android/material/progressindicator/IndeterminateDrawable;

    if-eqz v9, :cond_2e

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v9

    if-nez v9, :cond_2f

    :cond_2e
    iget-boolean v9, v0, Lorg/telegram/ui/Components/RadialProgress2;->drawMiniIcon:Z

    if-eqz v9, :cond_30

    iget-object v9, v0, Lorg/telegram/ui/Components/RadialProgress2;->miniIndeterminateDrawable:Lcom/google/android/material/progressindicator/IndeterminateDrawable;

    if-eqz v9, :cond_30

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v9

    if-eqz v9, :cond_30

    :cond_2f
    const/4 v9, 0x1

    goto :goto_15

    :cond_30
    const/4 v9, 0x0

    :goto_15
    if-eqz v4, :cond_36

    const/high16 v20, 0x437f0000    # 255.0f

    .line 853
    iget-boolean v12, v0, Lorg/telegram/ui/Components/RadialProgress2;->drawMiniIcon:Z

    if-nez v12, :cond_35

    .line 854
    invoke-direct {v0}, Lorg/telegram/ui/Components/RadialProgress2;->updateM3Colors()V

    .line 856
    iget v12, v0, Lorg/telegram/ui/Components/RadialProgress2;->style:I

    move/from16 v21, v4

    const/4 v4, 0x2

    if-ne v12, v4, :cond_32

    .line 857
    iget-object v12, v0, Lorg/telegram/ui/Components/RadialProgress2;->progressSpec:Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;

    if-eqz v7, :cond_31

    const/4 v2, 0x0

    goto :goto_16

    :cond_31
    iget v7, v0, Lorg/telegram/ui/Components/RadialProgress2;->waveAmplitude:I

    int-to-float v7, v7

    invoke-direct {v0, v2, v5}, Lorg/telegram/ui/Components/RadialProgress2;->getWaveScale(II)F

    move-result v2

    mul-float/2addr v7, v2

    float-to-int v2, v7

    :goto_16
    iput v2, v12, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->waveAmplitude:I

    :cond_32
    mul-float v6, v6, v20

    .line 860
    iget v2, v0, Lorg/telegram/ui/Components/RadialProgress2;->overrideAlpha:F

    mul-float/2addr v6, v2

    float-to-int v2, v6

    cmpg-float v5, v15, v19

    if-gtz v5, :cond_33

    if-nez v9, :cond_33

    .line 862
    iget-object v5, v0, Lorg/telegram/ui/Components/RadialProgress2;->indeterminateDrawable:Lcom/google/android/material/progressindicator/IndeterminateDrawable;

    const/4 v6, 0x1

    invoke-virtual {v5, v6, v6, v6}, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->setVisible(ZZZ)Z

    goto :goto_17

    :cond_33
    move v6, v9

    :goto_17
    if-nez v6, :cond_34

    .line 866
    iget-object v5, v0, Lorg/telegram/ui/Components/RadialProgress2;->progressDrawable:Lcom/google/android/material/progressindicator/DeterminateDrawable;

    invoke-virtual {v5, v13, v14, v8, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 867
    iget-object v5, v0, Lorg/telegram/ui/Components/RadialProgress2;->progressDrawable:Lcom/google/android/material/progressindicator/DeterminateDrawable;

    invoke-virtual {v5, v2}, Lcom/google/android/material/progressindicator/DeterminateDrawable;->setAlpha(I)V

    .line 868
    iget-object v2, v0, Lorg/telegram/ui/Components/RadialProgress2;->progressDrawable:Lcom/google/android/material/progressindicator/DeterminateDrawable;

    invoke-virtual {v2, v11}, Lcom/google/android/material/progressindicator/DeterminateDrawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_18

    .line 870
    :cond_34
    iget-object v5, v0, Lorg/telegram/ui/Components/RadialProgress2;->indeterminateDrawable:Lcom/google/android/material/progressindicator/IndeterminateDrawable;

    invoke-virtual {v5, v13, v14, v8, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 871
    iget-object v5, v0, Lorg/telegram/ui/Components/RadialProgress2;->indeterminateDrawable:Lcom/google/android/material/progressindicator/IndeterminateDrawable;

    invoke-virtual {v5, v2}, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->setAlpha(I)V

    .line 872
    iget-object v2, v0, Lorg/telegram/ui/Components/RadialProgress2;->indeterminateDrawable:Lcom/google/android/material/progressindicator/IndeterminateDrawable;

    invoke-virtual {v2, v11}, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_18

    :cond_35
    move/from16 v21, v4

    const/4 v4, 0x2

    goto :goto_18

    :cond_36
    move/from16 v21, v4

    const/4 v4, 0x2

    const/high16 v20, 0x437f0000    # 255.0f

    .line 876
    :goto_18
    iget-boolean v2, v0, Lorg/telegram/ui/Components/RadialProgress2;->drawMiniIcon:Z

    if-nez v2, :cond_38

    iget v2, v0, Lorg/telegram/ui/Components/RadialProgress2;->circleCrossfadeColorKey:I

    if-ltz v2, :cond_37

    goto :goto_1a

    .line 883
    :cond_37
    iget-object v2, v0, Lorg/telegram/ui/Components/RadialProgress2;->mediaActionDrawable:Lorg/telegram/ui/Components/MediaActionDrawable;

    iget v5, v0, Lorg/telegram/ui/Components/RadialProgress2;->overrideAlpha:F

    invoke-virtual {v2, v5}, Lorg/telegram/ui/Components/MediaActionDrawable;->setOverrideAlpha(F)V

    .line 884
    iget-object v2, v0, Lorg/telegram/ui/Components/RadialProgress2;->mediaActionDrawable:Lorg/telegram/ui/Components/MediaActionDrawable;

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/MediaActionDrawable;->draw(Landroid/graphics/Canvas;)V

    :goto_19
    const/high16 v2, -0x80000000

    goto :goto_1b

    .line 877
    :cond_38
    :goto_1a
    iget-object v2, v0, Lorg/telegram/ui/Components/RadialProgress2;->miniDrawCanvas:Landroid/graphics/Canvas;

    if-eqz v2, :cond_39

    .line 878
    iget-object v5, v0, Lorg/telegram/ui/Components/RadialProgress2;->mediaActionDrawable:Lorg/telegram/ui/Components/MediaActionDrawable;

    invoke-virtual {v5, v2}, Lorg/telegram/ui/Components/MediaActionDrawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_19

    .line 880
    :cond_39
    iget-object v2, v0, Lorg/telegram/ui/Components/RadialProgress2;->mediaActionDrawable:Lorg/telegram/ui/Components/MediaActionDrawable;

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/MediaActionDrawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_19

    :goto_1b
    if-eq v3, v2, :cond_3a

    .line 887
    iget-object v2, v0, Lorg/telegram/ui/Components/RadialProgress2;->miniDrawCanvas:Landroid/graphics/Canvas;

    if-eqz v2, :cond_3a

    .line 888
    invoke-virtual {v2, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 891
    :cond_3a
    iget-boolean v2, v0, Lorg/telegram/ui/Components/RadialProgress2;->drawMiniIcon:Z

    if-nez v2, :cond_3b

    iget v2, v0, Lorg/telegram/ui/Components/RadialProgress2;->circleCrossfadeColorKey:I

    if-ltz v2, :cond_46

    .line 896
    :cond_3b
    iget-object v2, v0, Lorg/telegram/ui/Components/RadialProgress2;->progressRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    const/high16 v3, 0x42300000    # 44.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    sget v3, Lorg/telegram/messenger/AndroidUtilities;->density:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_3c

    .line 899
    iget-object v2, v0, Lorg/telegram/ui/Components/RadialProgress2;->progressRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    const/16 v3, 0x10

    int-to-float v3, v3

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v2, v4

    .line 900
    iget-object v4, v0, Lorg/telegram/ui/Components/RadialProgress2;->progressRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v4, v3

    const/16 v3, 0x14

    const/4 v12, 0x0

    goto :goto_1c

    .line 904
    :cond_3c
    iget-object v2, v0, Lorg/telegram/ui/Components/RadialProgress2;->progressRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    const/high16 v3, 0x41900000    # 18.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v2, v5

    .line 905
    iget-object v5, v0, Lorg/telegram/ui/Components/RadialProgress2;->progressRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v3, v5

    const/16 v5, 0x16

    move v12, v4

    move v4, v3

    move v3, v5

    .line 907
    :goto_1c
    div-int/lit8 v5, v3, 0x2

    .line 910
    iget-boolean v6, v0, Lorg/telegram/ui/Components/RadialProgress2;->drawMiniIcon:Z

    if-eqz v6, :cond_3e

    .line 911
    iget-object v6, v0, Lorg/telegram/ui/Components/RadialProgress2;->miniMediaActionDrawable:Lorg/telegram/ui/Components/MediaActionDrawable;

    invoke-virtual {v6}, Lorg/telegram/ui/Components/MediaActionDrawable;->getCurrentIcon()I

    move-result v6

    const/4 v11, 0x4

    if-eq v6, v11, :cond_3d

    move/from16 v6, v16

    goto :goto_1d

    :cond_3d
    iget-object v6, v0, Lorg/telegram/ui/Components/RadialProgress2;->miniMediaActionDrawable:Lorg/telegram/ui/Components/MediaActionDrawable;

    invoke-virtual {v6}, Lorg/telegram/ui/Components/MediaActionDrawable;->getTransitionProgress()F

    move-result v6

    sub-float v6, v16, v6

    :goto_1d
    cmpl-float v7, v6, v18

    if-nez v7, :cond_3f

    const/4 v7, 0x0

    .line 913
    iput-boolean v7, v0, Lorg/telegram/ui/Components/RadialProgress2;->drawMiniIcon:Z

    goto :goto_1e

    :cond_3e
    move/from16 v6, v16

    .line 919
    :cond_3f
    :goto_1e
    iget-object v7, v0, Lorg/telegram/ui/Components/RadialProgress2;->miniDrawCanvas:Landroid/graphics/Canvas;

    const/high16 v8, 0x41400000    # 12.0f

    if-eqz v7, :cond_40

    add-int/lit8 v3, v3, 0x12

    add-int/2addr v3, v12

    int-to-float v3, v3

    .line 920
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    add-int/lit8 v10, v5, 0x1

    int-to-float v10, v10

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    int-to-float v10, v10

    mul-float/2addr v10, v6

    iget v11, v0, Lorg/telegram/ui/Components/RadialProgress2;->miniIconScale:F

    mul-float/2addr v10, v11

    sget-object v11, Lorg/telegram/ui/ActionBar/Theme;->checkboxSquare_eraserPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v9, v3, v10, v11}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_1f

    .line 922
    :cond_40
    iget-object v3, v0, Lorg/telegram/ui/Components/RadialProgress2;->miniProgressBackgroundPaint:Landroid/graphics/Paint;

    iget v7, v0, Lorg/telegram/ui/Components/RadialProgress2;->progressColor:I

    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 923
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    iget-object v7, v0, Lorg/telegram/ui/Components/RadialProgress2;->miniProgressBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v4, v3, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 926
    :goto_1f
    iget-object v3, v0, Lorg/telegram/ui/Components/RadialProgress2;->miniDrawCanvas:Landroid/graphics/Canvas;

    if-eqz v3, :cond_41

    .line 927
    iget-object v3, v0, Lorg/telegram/ui/Components/RadialProgress2;->miniDrawBitmap:Landroid/graphics/Bitmap;

    iget-object v7, v0, Lorg/telegram/ui/Components/RadialProgress2;->progressRect:Landroid/graphics/RectF;

    iget v9, v7, Landroid/graphics/RectF;->left:F

    float-to-int v9, v9

    int-to-float v9, v9

    iget v7, v7, Landroid/graphics/RectF;->top:F

    float-to-int v7, v7

    int-to-float v7, v7

    const/4 v10, 0x0

    invoke-virtual {v1, v3, v9, v7, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 931
    :cond_41
    iget v3, v0, Lorg/telegram/ui/Components/RadialProgress2;->miniIconScale:F

    cmpg-float v3, v3, v16

    if-gez v3, :cond_42

    .line 932
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    move-result v3

    .line 933
    iget v7, v0, Lorg/telegram/ui/Components/RadialProgress2;->miniIconScale:F

    invoke-virtual {v1, v7, v7, v2, v4}, Landroid/graphics/Canvas;->scale(FFFF)V

    goto :goto_20

    :cond_42
    const/high16 v3, -0x80000000

    :goto_20
    int-to-float v5, v5

    .line 936
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v6

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    iget v10, v0, Lorg/telegram/ui/Components/RadialProgress2;->circleCheckProgress:F

    sub-float v10, v16, v10

    mul-float/2addr v9, v10

    add-float/2addr v7, v9

    iget-object v9, v0, Lorg/telegram/ui/Components/RadialProgress2;->circleMiniPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v4, v7, v9}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 938
    iget-boolean v7, v0, Lorg/telegram/ui/Components/RadialProgress2;->drawMiniIcon:Z

    if-eqz v7, :cond_45

    .line 939
    iget-object v7, v0, Lorg/telegram/ui/Components/RadialProgress2;->miniMediaActionDrawable:Lorg/telegram/ui/Components/MediaActionDrawable;

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v9, v6

    sub-float v9, v2, v9

    float-to-int v9, v9

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    int-to-float v10, v10

    mul-float/2addr v10, v6

    sub-float v10, v4, v10

    float-to-int v10, v10

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    int-to-float v11, v11

    mul-float/2addr v11, v6

    add-float/2addr v11, v2

    float-to-int v11, v11

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v6

    add-float/2addr v5, v4

    float-to-int v5, v5

    invoke-virtual {v7, v9, v10, v11, v5}, Lorg/telegram/ui/Components/MediaActionDrawable;->setBounds(IIII)V

    if-eqz v21, :cond_44

    .line 942
    invoke-direct {v0}, Lorg/telegram/ui/Components/RadialProgress2;->updateM3Colors()V

    .line 944
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    cmpg-float v7, v15, v19

    if-gtz v7, :cond_43

    .line 946
    iget-object v7, v0, Lorg/telegram/ui/Components/RadialProgress2;->miniIndeterminateDrawable:Lcom/google/android/material/progressindicator/IndeterminateDrawable;

    int-to-float v5, v5

    mul-float/2addr v5, v6

    sub-float v8, v2, v5

    float-to-int v8, v8

    sub-float v9, v4, v5

    float-to-int v9, v9

    add-float/2addr v2, v5

    float-to-int v2, v2

    add-float/2addr v4, v5

    float-to-int v4, v4

    invoke-virtual {v7, v8, v9, v2, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 947
    iget-object v2, v0, Lorg/telegram/ui/Components/RadialProgress2;->miniIndeterminateDrawable:Lcom/google/android/material/progressindicator/IndeterminateDrawable;

    mul-float v6, v6, v20

    float-to-int v4, v6

    invoke-virtual {v2, v4}, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->setAlpha(I)V

    .line 948
    iget-object v2, v0, Lorg/telegram/ui/Components/RadialProgress2;->miniIndeterminateDrawable:Lcom/google/android/material/progressindicator/IndeterminateDrawable;

    invoke-virtual {v2, v1}, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_21

    .line 950
    :cond_43
    iget-object v7, v0, Lorg/telegram/ui/Components/RadialProgress2;->miniProgressDrawable:Lcom/google/android/material/progressindicator/DeterminateDrawable;

    int-to-float v5, v5

    mul-float/2addr v5, v6

    sub-float v8, v2, v5

    float-to-int v8, v8

    sub-float v9, v4, v5

    float-to-int v9, v9

    add-float/2addr v2, v5

    float-to-int v2, v2

    add-float/2addr v4, v5

    float-to-int v4, v4

    invoke-virtual {v7, v8, v9, v2, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 951
    iget-object v2, v0, Lorg/telegram/ui/Components/RadialProgress2;->miniProgressDrawable:Lcom/google/android/material/progressindicator/DeterminateDrawable;

    mul-float v6, v6, v20

    float-to-int v4, v6

    invoke-virtual {v2, v4}, Lcom/google/android/material/progressindicator/DeterminateDrawable;->setAlpha(I)V

    .line 952
    iget-object v2, v0, Lorg/telegram/ui/Components/RadialProgress2;->miniProgressDrawable:Lcom/google/android/material/progressindicator/DeterminateDrawable;

    invoke-virtual {v2, v1}, Lcom/google/android/material/progressindicator/DeterminateDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 956
    :cond_44
    :goto_21
    iget-object v2, v0, Lorg/telegram/ui/Components/RadialProgress2;->miniMediaActionDrawable:Lorg/telegram/ui/Components/MediaActionDrawable;

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/MediaActionDrawable;->draw(Landroid/graphics/Canvas;)V

    :cond_45
    const/high16 v2, -0x80000000

    if-eq v3, v2, :cond_46

    .line 959
    invoke-virtual {v1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 962
    :cond_46
    iget v2, v0, Lorg/telegram/ui/Components/RadialProgress2;->iconScale:F

    cmpl-float v2, v2, v16

    if-eqz v2, :cond_47

    .line 963
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    :cond_47
    :goto_22
    return-void
.end method

.method public getCircleColorKey()I
    .locals 1

    .line 982
    iget v0, p0, Lorg/telegram/ui/Components/RadialProgress2;->circleColorKey:I

    return v0
.end method

.method public getIcon()I
    .locals 1

    .line 565
    iget-object v0, p0, Lorg/telegram/ui/Components/RadialProgress2;->mediaActionDrawable:Lorg/telegram/ui/Components/MediaActionDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/MediaActionDrawable;->getCurrentIcon()I

    move-result v0

    return v0
.end method

.method public getMiniIcon()I
    .locals 1

    .line 569
    iget-object v0, p0, Lorg/telegram/ui/Components/RadialProgress2;->miniMediaActionDrawable:Lorg/telegram/ui/Components/MediaActionDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/MediaActionDrawable;->getCurrentIcon()I

    move-result v0

    return v0
.end method

.method public getOverrideAlpha()F
    .locals 1

    .line 670
    iget v0, p0, Lorg/telegram/ui/Components/RadialProgress2;->overrideAlpha:F

    return v0
.end method

.method public getProgress()F
    .locals 1

    .line 556
    iget-boolean v0, p0, Lorg/telegram/ui/Components/RadialProgress2;->drawMiniIcon:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/RadialProgress2;->miniMediaActionDrawable:Lorg/telegram/ui/Components/MediaActionDrawable;

    :goto_0
    invoke-virtual {v0}, Lorg/telegram/ui/Components/MediaActionDrawable;->getProgress()F

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/RadialProgress2;->mediaActionDrawable:Lorg/telegram/ui/Components/MediaActionDrawable;

    goto :goto_0
.end method

.method public getProgressRect()Landroid/graphics/RectF;
    .locals 1

    .line 494
    iget-object v0, p0, Lorg/telegram/ui/Components/RadialProgress2;->progressRect:Landroid/graphics/RectF;

    return-object v0
.end method

.method public getRadius()I
    .locals 1

    .line 403
    iget v0, p0, Lorg/telegram/ui/Components/RadialProgress2;->circleRadius:I

    return v0
.end method

.method public getStyle()I
    .locals 1
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 176
    iget v0, p0, Lorg/telegram/ui/Components/RadialProgress2;->style:I

    return v0
.end method

.method public getTransitionProgress()F
    .locals 1

    .line 998
    iget-boolean v0, p0, Lorg/telegram/ui/Components/RadialProgress2;->drawMiniIcon:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/RadialProgress2;->miniMediaActionDrawable:Lorg/telegram/ui/Components/MediaActionDrawable;

    :goto_0
    invoke-virtual {v0}, Lorg/telegram/ui/Components/MediaActionDrawable;->getTransitionProgress()F

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/RadialProgress2;->mediaActionDrawable:Lorg/telegram/ui/Components/MediaActionDrawable;

    goto :goto_0
.end method

.method public initMiniIcons()V
    .locals 3

    .line 641
    iget-object v0, p0, Lorg/telegram/ui/Components/RadialProgress2;->miniDrawBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    const/high16 v0, 0x42400000    # 48.0f

    .line 643
    :try_start_0
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v0, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/RadialProgress2;->miniDrawBitmap:Landroid/graphics/Bitmap;

    .line 644
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lorg/telegram/ui/Components/RadialProgress2;->miniDrawBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/RadialProgress2;->miniDrawCanvas:Landroid/graphics/Canvas;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1003
    invoke-direct {p0}, Lorg/telegram/ui/Components/RadialProgress2;->invalidateParent()V

    return-void
.end method

.method public isInvertColors()Z
    .locals 1
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 376
    iget-boolean v0, p0, Lorg/telegram/ui/Components/RadialProgress2;->invertColors:Z

    return v0
.end method

.method public isMaterial3Style()Z
    .locals 3

    .line 180
    iget v0, p0, Lorg/telegram/ui/Components/RadialProgress2;->style:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    return v1
.end method

.method public isNeedDrawBackground()Z
    .locals 1
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 367
    iget-boolean v0, p0, Lorg/telegram/ui/Components/RadialProgress2;->needDrawBackground:Z

    return v0
.end method

.method public onAttachedToWindow()V
    .locals 1

    .line 432
    iget-object v0, p0, Lorg/telegram/ui/Components/RadialProgress2;->overlayImageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onAttachedToWindow()Z

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 436
    iget-object v0, p0, Lorg/telegram/ui/Components/RadialProgress2;->overlayImageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onDetachedFromWindow()V

    return-void
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 1

    .line 1008
    iget-object v0, p0, Lorg/telegram/ui/Components/RadialProgress2;->parent:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1009
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/view/View;->scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V

    :cond_0
    return-void
.end method

.method public setAsMini()V
    .locals 2
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 385
    iget-object v0, p0, Lorg/telegram/ui/Components/RadialProgress2;->mediaActionDrawable:Lorg/telegram/ui/Components/MediaActionDrawable;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/MediaActionDrawable;->setMini(Z)V

    return-void
.end method

.method public setBackgroundDrawable(Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;)V
    .locals 1

    .line 407
    iget-object v0, p0, Lorg/telegram/ui/Components/RadialProgress2;->mediaActionDrawable:Lorg/telegram/ui/Components/MediaActionDrawable;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/MediaActionDrawable;->setBackgroundDrawable(Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;)V

    .line 408
    iget-object v0, p0, Lorg/telegram/ui/Components/RadialProgress2;->miniMediaActionDrawable:Lorg/telegram/ui/Components/MediaActionDrawable;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/MediaActionDrawable;->setBackgroundDrawable(Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;)V

    return-void
.end method

.method public setBackgroundGradientDrawable(Landroid/graphics/LinearGradient;)V
    .locals 1
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 413
    iget-object v0, p0, Lorg/telegram/ui/Components/RadialProgress2;->mediaActionDrawable:Lorg/telegram/ui/Components/MediaActionDrawable;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/MediaActionDrawable;->setBackgroundGradientDrawable(Landroid/graphics/LinearGradient;)V

    .line 414
    iget-object v0, p0, Lorg/telegram/ui/Components/RadialProgress2;->miniMediaActionDrawable:Lorg/telegram/ui/Components/MediaActionDrawable;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/MediaActionDrawable;->setBackgroundGradientDrawable(Landroid/graphics/LinearGradient;)V

    return-void
.end method

.method public setCircleCrossfadeColor(IFF)V
    .locals 0

    .line 472
    iput p1, p0, Lorg/telegram/ui/Components/RadialProgress2;->circleCrossfadeColorKey:I

    .line 473
    iput p2, p0, Lorg/telegram/ui/Components/RadialProgress2;->circleCrossfadeColorProgress:F

    .line 474
    iput p3, p0, Lorg/telegram/ui/Components/RadialProgress2;->circleCheckProgress:F

    const/high16 p2, 0x3f800000    # 1.0f

    .line 475
    iput p2, p0, Lorg/telegram/ui/Components/RadialProgress2;->miniIconScale:F

    if-ltz p1, :cond_0

    .line 477
    invoke-virtual {p0}, Lorg/telegram/ui/Components/RadialProgress2;->initMiniIcons()V

    :cond_0
    return-void
.end method

.method public setCircleRadius(I)V
    .locals 1
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 390
    iput p1, p0, Lorg/telegram/ui/Components/RadialProgress2;->circleRadius:I

    .line 391
    iget-object v0, p0, Lorg/telegram/ui/Components/RadialProgress2;->overlayImageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    .line 392
    invoke-virtual {p0}, Lorg/telegram/ui/Components/RadialProgress2;->isMaterial3Style()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/RadialProgress2;->progressSpec:Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;

    iget v0, p0, Lorg/telegram/ui/Components/RadialProgress2;->circleRadius:I

    mul-int/lit8 v0, v0, 0x2

    iput v0, p1, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;->indicatorSize:I

    :cond_0
    return-void
.end method

.method public setColorKeys(IIII)V
    .locals 0

    .line 440
    iput p1, p0, Lorg/telegram/ui/Components/RadialProgress2;->circleColorKey:I

    .line 441
    iput p2, p0, Lorg/telegram/ui/Components/RadialProgress2;->circlePressedColorKey:I

    .line 442
    iput p3, p0, Lorg/telegram/ui/Components/RadialProgress2;->iconColorKey:I

    .line 443
    iput p4, p0, Lorg/telegram/ui/Components/RadialProgress2;->iconPressedColorKey:I

    return-void
.end method

.method public setColors(IIII)V
    .locals 0
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 461
    iput p1, p0, Lorg/telegram/ui/Components/RadialProgress2;->circleColor:I

    .line 462
    iput p2, p0, Lorg/telegram/ui/Components/RadialProgress2;->circlePressedColor:I

    .line 463
    iput p3, p0, Lorg/telegram/ui/Components/RadialProgress2;->iconColor:I

    .line 464
    iput p4, p0, Lorg/telegram/ui/Components/RadialProgress2;->iconPressedColor:I

    const/4 p1, -0x1

    .line 465
    iput p1, p0, Lorg/telegram/ui/Components/RadialProgress2;->circleColorKey:I

    .line 466
    iput p1, p0, Lorg/telegram/ui/Components/RadialProgress2;->circlePressedColorKey:I

    .line 467
    iput p1, p0, Lorg/telegram/ui/Components/RadialProgress2;->iconColorKey:I

    .line 468
    iput p1, p0, Lorg/telegram/ui/Components/RadialProgress2;->iconPressedColorKey:I

    return-void
.end method

.method public setDrawBackground(Z)V
    .locals 0

    .line 482
    iput-boolean p1, p0, Lorg/telegram/ui/Components/RadialProgress2;->drawBackground:Z

    return-void
.end method

.method public setIcon(IZZ)V
    .locals 6
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 574
    iget-object v0, p0, Lorg/telegram/ui/Components/RadialProgress2;->mediaActionDrawable:Lorg/telegram/ui/Components/MediaActionDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/MediaActionDrawable;->getCurrentIcon()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz p2, :cond_1

    if-eqz v0, :cond_1

    return-void

    .line 579
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/Components/RadialProgress2;->isMaterial3Style()Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lorg/telegram/ui/Components/RadialProgress2;->mediaActionDrawable:Lorg/telegram/ui/Components/MediaActionDrawable;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/MediaActionDrawable;->getProgress()F

    move-result p2

    const v3, 0x3f7fbe77    # 0.999f

    cmpl-float p2, p2, v3

    if-lez p2, :cond_2

    invoke-static {p1}, Lorg/telegram/ui/Components/RadialProgress2;->iconIsCancel(I)Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 p2, 0x0

    .line 580
    invoke-virtual {p0, p2, v1, v2}, Lorg/telegram/ui/Components/RadialProgress2;->setProgress(FZZ)V

    .line 582
    :cond_2
    invoke-virtual {p0}, Lorg/telegram/ui/Components/RadialProgress2;->isMaterial3Style()Z

    move-result p2

    if-eqz p2, :cond_3

    if-nez v0, :cond_3

    .line 583
    invoke-direct {p0}, Lorg/telegram/ui/Components/RadialProgress2;->updateM3Colors()V

    .line 584
    iget-object p2, p0, Lorg/telegram/ui/Components/RadialProgress2;->mediaActionDrawable:Lorg/telegram/ui/Components/MediaActionDrawable;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/MediaActionDrawable;->getCurrentIcon()I

    move-result v1

    invoke-virtual {p0}, Lorg/telegram/ui/Components/RadialProgress2;->getProgress()F

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/Components/RadialProgress2;->progressDrawable:Lcom/google/android/material/progressindicator/DeterminateDrawable;

    iget-object v4, p0, Lorg/telegram/ui/Components/RadialProgress2;->indeterminateDrawable:Lcom/google/android/material/progressindicator/IndeterminateDrawable;

    move v0, p1

    move v5, p3

    invoke-static/range {v0 .. v5}, Lorg/telegram/ui/Components/RadialProgress2;->validateVisibleDrawables(IIFLcom/google/android/material/progressindicator/DeterminateDrawable;Lcom/google/android/material/progressindicator/IndeterminateDrawable;Z)V

    goto :goto_1

    :cond_3
    move v0, p1

    move v5, p3

    .line 587
    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/Components/RadialProgress2;->mediaActionDrawable:Lorg/telegram/ui/Components/MediaActionDrawable;

    invoke-virtual {p1, v0, v5}, Lorg/telegram/ui/Components/MediaActionDrawable;->setIcon(IZ)Z

    if-nez v5, :cond_4

    .line 589
    iget-object p1, p0, Lorg/telegram/ui/Components/RadialProgress2;->parent:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void

    .line 591
    :cond_4
    invoke-direct {p0}, Lorg/telegram/ui/Components/RadialProgress2;->invalidateParent()V

    return-void
.end method

.method public setImageOverlay(Ljava/lang/String;)V
    .locals 7

    .line 428
    iget-object v0, p0, Lorg/telegram/ui/Components/RadialProgress2;->overlayImageView:Lorg/telegram/messenger/ImageReceiver;

    if-eqz p1, :cond_0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget v2, p0, Lorg/telegram/ui/Components/RadialProgress2;->circleRadius:I

    const/4 v3, 0x2

    mul-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v4, p0, Lorg/telegram/ui/Components/RadialProgress2;->circleRadius:I

    mul-int/2addr v4, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v3, v5

    const/4 v2, 0x1

    aput-object v4, v3, v2

    const-string v2, "%d_%d"

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    move-object v2, v1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :goto_1
    const/4 v4, 0x0

    const-wide/16 v5, -0x1

    const/4 v3, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/messenger/ImageReceiver;->setImage(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;J)V

    return-void
.end method

.method public setImageOverlay(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/Object;)V
    .locals 10

    .line 418
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget v1, p0, Lorg/telegram/ui/Components/RadialProgress2;->circleRadius:I

    const/4 v2, 0x2

    mul-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v3, p0, Lorg/telegram/ui/Components/RadialProgress2;->circleRadius:I

    mul-int/2addr v3, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v2, v4

    const/4 v1, 0x1

    aput-object v3, v2, v1

    const-string v1, "%d_%d"

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 419
    iget-object v3, p0, Lorg/telegram/ui/Components/RadialProgress2;->overlayImageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-static {p1, p2}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v4

    const/4 v7, 0x0

    const/4 v9, 0x1

    const/4 v6, 0x0

    move-object v8, p3

    invoke-virtual/range {v3 .. v9}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;I)V

    return-void
.end method

.method public setImageOverlay(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/Object;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 423
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget v3, v0, Lorg/telegram/ui/Components/RadialProgress2;->circleRadius:I

    const/4 v4, 0x2

    mul-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v5, v0, Lorg/telegram/ui/Components/RadialProgress2;->circleRadius:I

    mul-int/2addr v5, v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v3, v4, v6

    const/4 v3, 0x1

    aput-object v5, v4, v3

    const-string v3, "%d_%d"

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 424
    iget-object v5, v0, Lorg/telegram/ui/Components/RadialProgress2;->overlayImageView:Lorg/telegram/messenger/ImageReceiver;

    const/4 v2, 0x0

    move-object/from16 v3, p3

    if-nez v1, :cond_0

    move-object v6, v2

    goto :goto_0

    :cond_0
    invoke-static {v1, v3}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v1

    move-object v6, v1

    :goto_0
    if-nez p2, :cond_1

    :goto_1
    move-object v8, v2

    goto :goto_2

    :cond_1
    invoke-static/range {p2 .. p3}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v2

    goto :goto_1

    :goto_2
    const/4 v13, 0x0

    const/4 v15, 0x1

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    move-object v9, v7

    move-object/from16 v14, p4

    invoke-virtual/range {v5 .. v15}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    return-void
.end method

.method public setInvertColors(Z)V
    .locals 0

    .line 371
    iput-boolean p1, p0, Lorg/telegram/ui/Components/RadialProgress2;->invertColors:Z

    return-void
.end method

.method public setM3Colors(II)V
    .locals 0
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 456
    invoke-virtual {p0, p1, p1, p2, p2}, Lorg/telegram/ui/Components/RadialProgress2;->setM3Colors(IIII)V

    return-void
.end method

.method public setM3Colors(IIII)V
    .locals 0
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 448
    iput p1, p0, Lorg/telegram/ui/Components/RadialProgress2;->indicatorColor:I

    .line 449
    iput p2, p0, Lorg/telegram/ui/Components/RadialProgress2;->indicatorPressedColor:I

    .line 450
    iput p3, p0, Lorg/telegram/ui/Components/RadialProgress2;->trackColor:I

    .line 451
    iput p4, p0, Lorg/telegram/ui/Components/RadialProgress2;->trackPressedColor:I

    return-void
.end method

.method public setMaxIconSize(I)V
    .locals 0

    .line 990
    iput p1, p0, Lorg/telegram/ui/Components/RadialProgress2;->maxIconSize:I

    return-void
.end method

.method public setMiniIcon(IZZ)V
    .locals 10

    const/4 v0, 0x2

    const/4 v1, 0x4

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    if-eq p1, v1, :cond_0

    goto :goto_1

    .line 620
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/RadialProgress2;->miniMediaActionDrawable:Lorg/telegram/ui/Components/MediaActionDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/MediaActionDrawable;->getCurrentIcon()I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne p1, v0, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    if-eqz p2, :cond_2

    if-eqz v0, :cond_2

    :goto_1
    return-void

    .line 624
    :cond_2
    iget-boolean p2, p0, Lorg/telegram/ui/Components/RadialProgress2;->drawMiniIcon:Z

    if-eqz p2, :cond_3

    invoke-virtual {p0}, Lorg/telegram/ui/Components/RadialProgress2;->isMaterial3Style()Z

    move-result p2

    if-eqz p2, :cond_3

    if-nez v0, :cond_3

    .line 625
    invoke-direct {p0}, Lorg/telegram/ui/Components/RadialProgress2;->updateM3Colors()V

    .line 626
    iget-object p2, p0, Lorg/telegram/ui/Components/RadialProgress2;->miniMediaActionDrawable:Lorg/telegram/ui/Components/MediaActionDrawable;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/MediaActionDrawable;->getCurrentIcon()I

    move-result v5

    invoke-virtual {p0}, Lorg/telegram/ui/Components/RadialProgress2;->getProgress()F

    move-result v6

    iget-object v7, p0, Lorg/telegram/ui/Components/RadialProgress2;->miniProgressDrawable:Lcom/google/android/material/progressindicator/DeterminateDrawable;

    iget-object v8, p0, Lorg/telegram/ui/Components/RadialProgress2;->miniIndeterminateDrawable:Lcom/google/android/material/progressindicator/IndeterminateDrawable;

    move v4, p1

    move v9, p3

    invoke-static/range {v4 .. v9}, Lorg/telegram/ui/Components/RadialProgress2;->validateVisibleDrawables(IIFLcom/google/android/material/progressindicator/DeterminateDrawable;Lcom/google/android/material/progressindicator/IndeterminateDrawable;Z)V

    goto :goto_2

    :cond_3
    move v4, p1

    move v9, p3

    .line 628
    :goto_2
    iget-object p1, p0, Lorg/telegram/ui/Components/RadialProgress2;->miniMediaActionDrawable:Lorg/telegram/ui/Components/MediaActionDrawable;

    invoke-virtual {p1, v4, v9}, Lorg/telegram/ui/Components/MediaActionDrawable;->setIcon(IZ)Z

    if-ne v4, v1, :cond_4

    .line 629
    iget-object p1, p0, Lorg/telegram/ui/Components/RadialProgress2;->miniMediaActionDrawable:Lorg/telegram/ui/Components/MediaActionDrawable;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/MediaActionDrawable;->getTransitionProgress()F

    move-result p1

    const/high16 p2, 0x3f800000    # 1.0f

    cmpg-float p1, p1, p2

    if-gez p1, :cond_5

    :cond_4
    move v2, v3

    :cond_5
    iput-boolean v2, p0, Lorg/telegram/ui/Components/RadialProgress2;->drawMiniIcon:Z

    if-eqz v2, :cond_6

    .line 631
    invoke-virtual {p0}, Lorg/telegram/ui/Components/RadialProgress2;->initMiniIcons()V

    :cond_6
    if-nez v9, :cond_7

    .line 634
    iget-object p1, p0, Lorg/telegram/ui/Components/RadialProgress2;->parent:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void

    .line 636
    :cond_7
    invoke-direct {p0}, Lorg/telegram/ui/Components/RadialProgress2;->invalidateParent()V

    return-void
.end method

.method public setMiniIconScale(F)V
    .locals 0

    .line 612
    iput p1, p0, Lorg/telegram/ui/Components/RadialProgress2;->miniIconScale:F

    return-void
.end method

.method public setMiniProgressBackgroundColor(I)V
    .locals 1

    .line 502
    iget-object v0, p0, Lorg/telegram/ui/Components/RadialProgress2;->miniProgressBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setMiniSpecValues(IIII)V
    .locals 1
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 197
    invoke-virtual {p0}, Lorg/telegram/ui/Components/RadialProgress2;->isMaterial3Style()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 199
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/RadialProgress2;->miniProgressSpec:Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;

    iput p1, v0, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;->indicatorSize:I

    .line 200
    iput p2, v0, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->trackThickness:I

    .line 201
    iput p3, v0, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->trackCornerRadius:I

    const/4 p1, 0x1

    .line 202
    iput-boolean p1, v0, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->useRelativeTrackCornerRadius:Z

    const/high16 p1, 0x3f000000    # 0.5f

    .line 203
    iput p1, v0, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->trackCornerRadiusFraction:F

    .line 204
    iput p4, v0, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->indicatorTrackGapSize:I

    return-void
.end method

.method public setNeedDrawBackground(Z)V
    .locals 0

    .line 362
    iput-boolean p1, p0, Lorg/telegram/ui/Components/RadialProgress2;->needDrawBackground:Z

    return-void
.end method

.method public setOverlayImageAlpha(F)V
    .locals 0

    .line 994
    iput p1, p0, Lorg/telegram/ui/Components/RadialProgress2;->overlayImageAlpha:F

    return-void
.end method

.method public setOverrideAlpha(F)V
    .locals 0

    .line 666
    iput p1, p0, Lorg/telegram/ui/Components/RadialProgress2;->overrideAlpha:F

    return-void
.end method

.method public setPressed(ZZ)V
    .locals 0

    if-eqz p2, :cond_0

    .line 657
    iput-boolean p1, p0, Lorg/telegram/ui/Components/RadialProgress2;->isPressedMini:Z

    goto :goto_0

    .line 659
    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/Components/RadialProgress2;->isPressed:Z

    .line 661
    :goto_0
    invoke-direct {p0}, Lorg/telegram/ui/Components/RadialProgress2;->updateM3Colors()V

    .line 662
    invoke-direct {p0}, Lorg/telegram/ui/Components/RadialProgress2;->invalidateParent()V

    return-void
.end method

.method public setProgress(FZ)V
    .locals 1

    const/4 v0, 0x0

    .line 506
    invoke-virtual {p0, p1, p2, v0}, Lorg/telegram/ui/Components/RadialProgress2;->setProgress(FZZ)V

    return-void
.end method

.method public setProgress(FZZ)V
    .locals 3

    if-nez p3, :cond_0

    .line 510
    invoke-virtual {p0}, Lorg/telegram/ui/Components/RadialProgress2;->isMaterial3Style()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/RadialProgress2;->getProgress()F

    move-result v1

    cmpl-float v0, v1, v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    if-nez p3, :cond_1

    .line 511
    invoke-virtual {p0}, Lorg/telegram/ui/Components/RadialProgress2;->getProgress()F

    move-result p3

    cmpl-float p3, p1, p3

    if-nez p3, :cond_1

    :goto_0
    return-void

    :cond_1
    const p3, 0x461c4000    # 10000.0f

    mul-float/2addr p3, p1

    float-to-int p3, p3

    .line 514
    iget-boolean v0, p0, Lorg/telegram/ui/Components/RadialProgress2;->drawMiniIcon:Z

    if-eqz v0, :cond_3

    .line 515
    iget-object v0, p0, Lorg/telegram/ui/Components/RadialProgress2;->miniMediaActionDrawable:Lorg/telegram/ui/Components/MediaActionDrawable;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Components/MediaActionDrawable;->setProgress(FZ)V

    .line 516
    invoke-virtual {p0}, Lorg/telegram/ui/Components/RadialProgress2;->isMaterial3Style()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 517
    iget-object v0, p0, Lorg/telegram/ui/Components/RadialProgress2;->miniProgressDrawable:Lcom/google/android/material/progressindicator/DeterminateDrawable;

    invoke-virtual {v0, p3}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 518
    invoke-direct {p0}, Lorg/telegram/ui/Components/RadialProgress2;->updateM3Colors()V

    .line 519
    invoke-virtual {p0}, Lorg/telegram/ui/Components/RadialProgress2;->getMiniIcon()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/RadialProgress2;->miniProgressDrawable:Lcom/google/android/material/progressindicator/DeterminateDrawable;

    iget-object v2, p0, Lorg/telegram/ui/Components/RadialProgress2;->miniIndeterminateDrawable:Lcom/google/android/material/progressindicator/IndeterminateDrawable;

    invoke-static {p1, v0, v1, v2, p2}, Lorg/telegram/ui/Components/RadialProgress2;->validateVisibleDrawables(FILcom/google/android/material/progressindicator/DeterminateDrawable;Lcom/google/android/material/progressindicator/IndeterminateDrawable;Z)V

    .line 521
    :cond_2
    iput p3, p0, Lorg/telegram/ui/Components/RadialProgress2;->lastMiniProgressLevel:I

    return-void

    .line 523
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/RadialProgress2;->mediaActionDrawable:Lorg/telegram/ui/Components/MediaActionDrawable;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Components/MediaActionDrawable;->setProgress(FZ)V

    .line 524
    invoke-virtual {p0}, Lorg/telegram/ui/Components/RadialProgress2;->isMaterial3Style()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 525
    iget-object v0, p0, Lorg/telegram/ui/Components/RadialProgress2;->progressDrawable:Lcom/google/android/material/progressindicator/DeterminateDrawable;

    invoke-virtual {v0, p3}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 526
    invoke-direct {p0}, Lorg/telegram/ui/Components/RadialProgress2;->updateM3Colors()V

    .line 527
    invoke-virtual {p0}, Lorg/telegram/ui/Components/RadialProgress2;->getIcon()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/RadialProgress2;->progressDrawable:Lcom/google/android/material/progressindicator/DeterminateDrawable;

    iget-object v2, p0, Lorg/telegram/ui/Components/RadialProgress2;->indeterminateDrawable:Lcom/google/android/material/progressindicator/IndeterminateDrawable;

    invoke-static {p1, v0, v1, v2, p2}, Lorg/telegram/ui/Components/RadialProgress2;->validateVisibleDrawables(FILcom/google/android/material/progressindicator/DeterminateDrawable;Lcom/google/android/material/progressindicator/IndeterminateDrawable;Z)V

    .line 529
    :cond_4
    iput p3, p0, Lorg/telegram/ui/Components/RadialProgress2;->lastMainProgressLevel:I

    return-void
.end method

.method public setProgressColor(I)V
    .locals 0

    .line 498
    iput p1, p0, Lorg/telegram/ui/Components/RadialProgress2;->progressColor:I

    return-void
.end method

.method public setProgressRect(FFFF)V
    .locals 1

    .line 490
    iget-object v0, p0, Lorg/telegram/ui/Components/RadialProgress2;->progressRect:Landroid/graphics/RectF;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method public setProgressRect(IIII)V
    .locals 1

    .line 486
    iget-object v0, p0, Lorg/telegram/ui/Components/RadialProgress2;->progressRect:Landroid/graphics/RectF;

    int-to-float p1, p1

    int-to-float p2, p2

    int-to-float p3, p3

    int-to-float p4, p4

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method public setResourcesProvider(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 0

    .line 380
    iput-object p1, p0, Lorg/telegram/ui/Components/RadialProgress2;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-void
.end method

.method public setSpecValues(IIII)V
    .locals 1
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 185
    invoke-virtual {p0}, Lorg/telegram/ui/Components/RadialProgress2;->isMaterial3Style()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 187
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/RadialProgress2;->progressSpec:Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;

    iput p1, v0, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;->indicatorSize:I

    .line 188
    iput p2, v0, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->trackThickness:I

    .line 189
    iput p3, v0, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->trackCornerRadius:I

    const/4 p1, 0x1

    .line 190
    iput-boolean p1, v0, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->useRelativeTrackCornerRadius:Z

    const/high16 p1, 0x3f000000    # 0.5f

    .line 191
    iput p1, v0, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->trackCornerRadiusFraction:F

    .line 192
    iput p4, v0, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->indicatorTrackGapSize:I

    return-void
.end method

.method public setStyle(I)V
    .locals 5
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 144
    sget-boolean v0, Lcom/exteragram/messenger/ExteraConfig;->newLoadingStyle:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    move p1, v1

    .line 147
    :cond_0
    iget v0, p0, Lorg/telegram/ui/Components/RadialProgress2;->style:I

    if-ne v0, p1, :cond_1

    goto :goto_0

    .line 149
    :cond_1
    iput p1, p0, Lorg/telegram/ui/Components/RadialProgress2;->style:I

    const/4 v0, 0x1

    if-nez p1, :cond_2

    .line 151
    iget-object p1, p0, Lorg/telegram/ui/Components/RadialProgress2;->mediaActionDrawable:Lorg/telegram/ui/Components/MediaActionDrawable;

    iput-boolean v0, p1, Lorg/telegram/ui/Components/MediaActionDrawable;->drawProgressCircle:Z

    .line 152
    iget-object p1, p0, Lorg/telegram/ui/Components/RadialProgress2;->miniMediaActionDrawable:Lorg/telegram/ui/Components/MediaActionDrawable;

    iput-boolean v0, p1, Lorg/telegram/ui/Components/MediaActionDrawable;->drawProgressCircle:Z

    const/4 p1, 0x0

    .line 153
    iput-object p1, p0, Lorg/telegram/ui/Components/RadialProgress2;->progressDrawable:Lcom/google/android/material/progressindicator/DeterminateDrawable;

    .line 154
    iput-object p1, p0, Lorg/telegram/ui/Components/RadialProgress2;->indeterminateDrawable:Lcom/google/android/material/progressindicator/IndeterminateDrawable;

    .line 155
    iput-object p1, p0, Lorg/telegram/ui/Components/RadialProgress2;->miniProgressDrawable:Lcom/google/android/material/progressindicator/DeterminateDrawable;

    .line 156
    iput-object p1, p0, Lorg/telegram/ui/Components/RadialProgress2;->miniIndeterminateDrawable:Lcom/google/android/material/progressindicator/IndeterminateDrawable;

    .line 157
    iput-object p1, p0, Lorg/telegram/ui/Components/RadialProgress2;->progressSpec:Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;

    .line 158
    iput-object p1, p0, Lorg/telegram/ui/Components/RadialProgress2;->miniProgressSpec:Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;

    return-void

    :cond_2
    const/4 v2, 0x2

    if-eq p1, v0, :cond_4

    if-ne p1, v2, :cond_3

    goto :goto_1

    :cond_3
    :goto_0
    return-void

    .line 160
    :cond_4
    :goto_1
    iget-object v3, p0, Lorg/telegram/ui/Components/RadialProgress2;->mediaActionDrawable:Lorg/telegram/ui/Components/MediaActionDrawable;

    iput-boolean v1, v3, Lorg/telegram/ui/Components/MediaActionDrawable;->drawProgressCircle:Z

    .line 161
    iget-object v3, p0, Lorg/telegram/ui/Components/RadialProgress2;->miniMediaActionDrawable:Lorg/telegram/ui/Components/MediaActionDrawable;

    iput-boolean v1, v3, Lorg/telegram/ui/Components/MediaActionDrawable;->drawProgressCircle:Z

    .line 163
    iget-object v3, p0, Lorg/telegram/ui/Components/RadialProgress2;->parent:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/telegram/ui/Components/RadialProgress2;->initMdcDrawables(Landroid/content/Context;)V

    .line 164
    iget v3, p0, Lorg/telegram/ui/Components/RadialProgress2;->lastMainProgressLevel:I

    if-ltz v3, :cond_5

    .line 165
    iget-object v4, p0, Lorg/telegram/ui/Components/RadialProgress2;->progressDrawable:Lcom/google/android/material/progressindicator/DeterminateDrawable;

    invoke-virtual {v4, v3}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 167
    :cond_5
    iget v3, p0, Lorg/telegram/ui/Components/RadialProgress2;->lastMiniProgressLevel:I

    if-ltz v3, :cond_6

    .line 168
    iget-object v4, p0, Lorg/telegram/ui/Components/RadialProgress2;->miniProgressDrawable:Lcom/google/android/material/progressindicator/DeterminateDrawable;

    invoke-virtual {v4, v3}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    :cond_6
    if-ne p1, v2, :cond_7

    move v1, v0

    .line 170
    :cond_7
    invoke-virtual {p0, v1}, Lorg/telegram/ui/Components/RadialProgress2;->setWavy(Z)V

    return-void
.end method

.method public setWavy(Z)V
    .locals 3
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 329
    iget v0, p0, Lorg/telegram/ui/Components/RadialProgress2;->style:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 332
    iget-object p1, p0, Lorg/telegram/ui/Components/RadialProgress2;->miniProgressSpec:Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;

    iput v0, p1, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;->indicatorInset:I

    .line 333
    iget-object p1, p0, Lorg/telegram/ui/Components/RadialProgress2;->progressSpec:Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;

    iput v0, p1, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;->indicatorInset:I

    const/high16 p1, 0x41700000    # 15.0f

    .line 334
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    const v0, 0x3fcccccd    # 1.6f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    const/high16 v1, 0x40a00000    # 5.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    const v2, 0x3d4ccccd    # 0.05f

    invoke-virtual {p0, p1, v0, v1, v2}, Lorg/telegram/ui/Components/RadialProgress2;->setWavyValues(IIIF)V

    return-void

    .line 336
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/RadialProgress2;->progressSpec:Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;

    const/high16 v1, 0x40800000    # 4.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    iput v2, p1, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;->indicatorInset:I

    .line 337
    iget-object p1, p0, Lorg/telegram/ui/Components/RadialProgress2;->miniProgressSpec:Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    iput v1, p1, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;->indicatorInset:I

    const/high16 p1, 0x3f800000    # 1.0f

    .line 338
    invoke-virtual {p0, v0, v0, v0, p1}, Lorg/telegram/ui/Components/RadialProgress2;->setWavyValues(IIIF)V

    return-void
.end method

.method public setWavyValues(IIIF)V
    .locals 2

    .line 343
    iget v0, p0, Lorg/telegram/ui/Components/RadialProgress2;->style:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    return-void

    .line 345
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/RadialProgress2;->progressSpec:Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;

    iput p1, v0, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->wavelengthDeterminate:I

    .line 346
    iput p1, v0, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->wavelengthIndeterminate:I

    .line 347
    iput p2, p0, Lorg/telegram/ui/Components/RadialProgress2;->waveAmplitude:I

    iput p2, v0, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->waveAmplitude:I

    .line 348
    iput p3, v0, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->waveSpeed:I

    .line 349
    iput p4, v0, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->waveAmplitudeRampProgressMin:F

    .line 358
    invoke-direct {p0}, Lorg/telegram/ui/Components/RadialProgress2;->invalidateParent()V

    return-void
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 1

    .line 1015
    iget-object v0, p0, Lorg/telegram/ui/Components/RadialProgress2;->parent:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1016
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
