.class public Lorg/telegram/ui/Components/FragmentFloatingButton;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lme/vkryl/android/animator/FactorAnimator$Target;


# instance fields
.field private final ANIMATOR_ID_BUTTON_VISIBLE:I

.field private final ANIMATOR_ID_PROGRESS_VISIBLE:I

.field private additionalContentViews:Ljava/util/ArrayList;

.field private additionalTranslationY:F

.field private final animatorButtonVisible:Lme/vkryl/android/animator/BoolAnimator;

.field private final animatorProgressVisible:Lme/vkryl/android/animator/BoolAnimator;

.field private iBlur3Background:Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;

.field private iBlur3ColorProviderTabs:Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundColorProviderThemed;

.field private iBlur3SourceColor:Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceColor;

.field public final imageView:Lorg/telegram/ui/Components/RLottieImageView;

.field private internalTranslationY:F

.field private final isSubButton:Z

.field public final progressView:Lorg/telegram/ui/Components/RadialProgressView;

.field private final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private setTranslationInternal:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 1

    const/4 v0, 0x0

    .line 56
    invoke-direct {p0, p1, p2, v0}, Lorg/telegram/ui/Components/FragmentFloatingButton;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Z)V
    .locals 9

    .line 60
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 39
    iput v0, p0, Lorg/telegram/ui/Components/FragmentFloatingButton;->ANIMATOR_ID_BUTTON_VISIBLE:I

    const/4 v1, 0x1

    .line 40
    iput v1, p0, Lorg/telegram/ui/Components/FragmentFloatingButton;->ANIMATOR_ID_PROGRESS_VISIBLE:I

    .line 42
    new-instance v2, Lme/vkryl/android/animator/BoolAnimator;

    sget-object v5, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const-wide/16 v6, 0x17c

    const/4 v8, 0x1

    const/4 v3, 0x0

    move-object v4, p0

    invoke-direct/range {v2 .. v8}, Lme/vkryl/android/animator/BoolAnimator;-><init>(ILme/vkryl/android/animator/FactorAnimator$Target;Landroid/view/animation/Interpolator;JZ)V

    iput-object v2, v4, Lorg/telegram/ui/Components/FragmentFloatingButton;->animatorButtonVisible:Lme/vkryl/android/animator/BoolAnimator;

    .line 45
    new-instance v3, Lme/vkryl/android/animator/BoolAnimator;

    const/4 v4, 0x1

    const-wide/16 v7, 0x17c

    move-object v6, v5

    move-object v5, p0

    invoke-direct/range {v3 .. v8}, Lme/vkryl/android/animator/BoolAnimator;-><init>(ILme/vkryl/android/animator/FactorAnimator$Target;Landroid/view/animation/Interpolator;J)V

    move-object v4, v5

    iput-object v3, v4, Lorg/telegram/ui/Components/FragmentFloatingButton;->animatorProgressVisible:Lme/vkryl/android/animator/BoolAnimator;

    .line 62
    iput-object p2, v4, Lorg/telegram/ui/Components/FragmentFloatingButton;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 63
    iput-boolean p3, v4, Lorg/telegram/ui/Components/FragmentFloatingButton;->isSubButton:Z

    .line 65
    new-instance p2, Lorg/telegram/ui/Components/RLottieImageView;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/RLottieImageView;-><init>(Landroid/content/Context;)V

    iput-object p2, v4, Lorg/telegram/ui/Components/FragmentFloatingButton;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    .line 66
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const/4 v1, -0x1

    const/high16 v2, -0x40800000    # -1.0f

    .line 67
    invoke-static {v1, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {p0, p2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 69
    new-instance p2, Lorg/telegram/ui/Components/RadialProgressView;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/RadialProgressView;-><init>(Landroid/content/Context;)V

    iput-object p2, v4, Lorg/telegram/ui/Components/FragmentFloatingButton;->progressView:Lorg/telegram/ui/Components/RadialProgressView;

    const/high16 p1, 0x41900000    # 18.0f

    .line 70
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {p2, v3}, Lorg/telegram/ui/Components/RadialProgressView;->setSize(I)V

    const/high16 v3, 0x40000000    # 2.0f

    .line 71
    invoke-virtual {p2, v3}, Lorg/telegram/ui/Components/RadialProgressView;->setStrokeWidth(F)V

    .line 72
    invoke-static {v1, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, p2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v1, 0x0

    .line 73
    invoke-static {p2, v1}, Lorg/telegram/ui/Components/FragmentFloatingButton;->setAnimatedVisibility(Landroid/view/View;F)V

    .line 75
    invoke-static {p0}, Lorg/telegram/ui/Components/ScaleStateListAnimator;->apply(Landroid/view/View;)V

    if-nez p3, :cond_1

    .line 78
    sget-boolean p2, Lcom/exteragram/messenger/ExteraConfig;->squareFab:Z

    if-eqz p2, :cond_0

    const/high16 p2, 0x41600000    # 14.0f

    .line 79
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    int-to-float p2, p2

    invoke-static {v0, p2}, Lorg/telegram/messenger/utils/ViewOutlineProviderImpl;->boundsWithPaddingRoundRect(IF)Landroid/view/ViewOutlineProvider;

    move-result-object p2

    goto :goto_0

    .line 80
    :cond_0
    sget-object p2, Lorg/telegram/messenger/utils/ViewOutlineProviderImpl;->BOUNDS_OVAL:Landroid/view/ViewOutlineProvider;

    .line 77
    :goto_0
    invoke-virtual {p0, p2}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    const/high16 p2, 0x3f000000    # 0.5f

    .line 82
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result p2

    invoke-virtual {p0, p2}, Landroid/view/View;->setTranslationZ(F)V

    :cond_1
    if-eqz p3, :cond_3

    .line 86
    new-instance p2, Lorg/telegram/ui/Components/FragmentFloatingButton$1;

    const/4 p3, 0x0

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    invoke-direct {p2, p0, p3, v0}, Lorg/telegram/ui/Components/FragmentFloatingButton$1;-><init>(Lorg/telegram/ui/Components/FragmentFloatingButton;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;I)V

    iput-object p2, v4, Lorg/telegram/ui/Components/FragmentFloatingButton;->iBlur3ColorProviderTabs:Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundColorProviderThemed;

    .line 102
    new-instance p2, Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceColor;

    invoke-direct {p2}, Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceColor;-><init>()V

    iput-object p2, v4, Lorg/telegram/ui/Components/FragmentFloatingButton;->iBlur3SourceColor:Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceColor;

    .line 103
    invoke-virtual {p2}, Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceColor;->createDrawable()Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;

    move-result-object p2

    iput-object p2, v4, Lorg/telegram/ui/Components/FragmentFloatingButton;->iBlur3Background:Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;

    .line 104
    iget-object p3, v4, Lorg/telegram/ui/Components/FragmentFloatingButton;->iBlur3ColorProviderTabs:Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundColorProviderThemed;

    invoke-virtual {p2, p3}, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->setColorProvider(Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundColorProvider;)Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;

    .line 105
    iget-object p2, v4, Lorg/telegram/ui/Components/FragmentFloatingButton;->iBlur3Background:Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;

    const p3, 0x3ecccccd    # 0.4f

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v0

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result p3

    invoke-virtual {p2, v0, p3}, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->setStrokeWidth(FF)V

    .line 106
    iget-object p2, v4, Lorg/telegram/ui/Components/FragmentFloatingButton;->iBlur3Background:Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;

    sget-boolean p3, Lcom/exteragram/messenger/ExteraConfig;->squareFab:Z

    if-eqz p3, :cond_2

    const/high16 p1, 0x41200000    # 10.0f

    :cond_2
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->setRadius(F)Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;

    .line 107
    iget-object p1, v4, Lorg/telegram/ui/Components/FragmentFloatingButton;->iBlur3Background:Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;

    const p2, 0x40b51eb8    # 5.66f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->setPadding(I)Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;

    .line 110
    :cond_3
    invoke-virtual {p0}, Lorg/telegram/ui/Components/FragmentFloatingButton;->updateColors()V

    return-void
.end method

.method public static createDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;
    .locals 8

    .line 192
    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :cond_0
    const/4 v0, 0x5

    :goto_0
    or-int/lit8 v3, v0, 0x50

    const/high16 v6, 0x41a00000    # 20.0f

    const/high16 v7, 0x41600000    # 14.0f

    const/16 v1, 0x30

    const/high16 v2, 0x42400000    # 48.0f

    const/high16 v4, 0x41a00000    # 20.0f

    const/4 v5, 0x0

    .line 191
    invoke-static/range {v1 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public static createDefaultLayoutParamsBig()Landroid/widget/FrameLayout$LayoutParams;
    .locals 8

    .line 199
    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :cond_0
    const/4 v0, 0x5

    :goto_0
    or-int/lit8 v3, v0, 0x50

    const/high16 v6, 0x41a00000    # 20.0f

    const/high16 v7, 0x41600000    # 14.0f

    const/16 v1, 0x38

    const/high16 v2, 0x42600000    # 56.0f

    const/high16 v4, 0x41a00000    # 20.0f

    const/4 v5, 0x0

    .line 198
    invoke-static/range {v1 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public static createSubButtonLayoutParams()Landroid/widget/FrameLayout$LayoutParams;
    .locals 8

    .line 186
    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :cond_0
    const/4 v0, 0x5

    :goto_0
    or-int/lit8 v3, v0, 0x50

    const/high16 v6, 0x41a00000    # 20.0f

    const/high16 v7, 0x41600000    # 14.0f

    const/16 v1, 0x30

    const/high16 v2, 0x42400000    # 48.0f

    const/high16 v4, 0x41a00000    # 20.0f

    const/4 v5, 0x0

    .line 185
    invoke-static/range {v1 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method private setAdditionalTranslationY(F)V
    .locals 1

    .line 208
    iget v0, p0, Lorg/telegram/ui/Components/FragmentFloatingButton;->additionalTranslationY:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 209
    iput-boolean v0, p0, Lorg/telegram/ui/Components/FragmentFloatingButton;->setTranslationInternal:Z

    .line 210
    iget v0, p0, Lorg/telegram/ui/Components/FragmentFloatingButton;->internalTranslationY:F

    add-float/2addr v0, p1

    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    const/4 v0, 0x0

    .line 211
    iput-boolean v0, p0, Lorg/telegram/ui/Components/FragmentFloatingButton;->setTranslationInternal:Z

    .line 212
    iput p1, p0, Lorg/telegram/ui/Components/FragmentFloatingButton;->additionalTranslationY:F

    :cond_0
    return-void
.end method

.method public static setAnimatedVisibility(Landroid/view/View;F)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    .line 264
    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    const v0, 0x3ecccccd    # 0.4f

    const/high16 v1, 0x3f800000    # 1.0f

    .line 265
    invoke-static {v0, v1, p1}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v2

    invoke-virtual {p0, v2}, Landroid/view/View;->setScaleX(F)V

    .line 266
    invoke-static {v0, v1, p1}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setScaleY(F)V

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/16 p1, 0x8

    .line 267
    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public addAdditionalView(Landroid/view/View;)V
    .locals 2

    .line 252
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentFloatingButton;->additionalContentViews:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 253
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/FragmentFloatingButton;->additionalContentViews:Ljava/util/ArrayList;

    .line 255
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentFloatingButton;->additionalContentViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 256
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentFloatingButton;->animatorProgressVisible:Lme/vkryl/android/animator/BoolAnimator;

    invoke-virtual {v0}, Lme/vkryl/android/animator/BoolAnimator;->getFloatValue()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, v0

    invoke-static {p1, v1}, Lorg/telegram/ui/Components/FragmentFloatingButton;->setAnimatedVisibility(Landroid/view/View;F)V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 226
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentFloatingButton;->iBlur3Background:Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;

    if-eqz v0, :cond_0

    .line 227
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 229
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public getButtonVisible()Z
    .locals 1

    .line 122
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentFloatingButton;->animatorButtonVisible:Lme/vkryl/android/animator/BoolAnimator;

    invoke-virtual {v0}, Lme/vkryl/android/animator/BoolAnimator;->getValue()Z

    move-result v0

    return v0
.end method

.method public getProgressVisible()Z
    .locals 1

    .line 126
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentFloatingButton;->animatorProgressVisible:Lme/vkryl/android/animator/BoolAnimator;

    invoke-virtual {v0}, Lme/vkryl/android/animator/BoolAnimator;->getValue()Z

    move-result v0

    return v0
.end method

.method public getTranslationY()F
    .locals 1

    .line 244
    iget-boolean v0, p0, Lorg/telegram/ui/Components/FragmentFloatingButton;->setTranslationInternal:Z

    if-eqz v0, :cond_0

    .line 245
    invoke-super {p0}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v0

    return v0

    .line 248
    :cond_0
    iget v0, p0, Lorg/telegram/ui/Components/FragmentFloatingButton;->internalTranslationY:F

    return v0
.end method

.method public synthetic onFactorChangeFinished(IFLme/vkryl/android/animator/FactorAnimator;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lme/vkryl/android/animator/FactorAnimator$Target$-CC;->$default$onFactorChangeFinished(Lme/vkryl/android/animator/FactorAnimator$Target;IFLme/vkryl/android/animator/FactorAnimator;)V

    return-void
.end method

.method public onFactorChanged(IFFLme/vkryl/android/animator/FactorAnimator;)V
    .locals 1

    const/high16 p3, 0x3f800000    # 1.0f

    const/4 p4, 0x0

    const/4 v0, 0x1

    if-nez p1, :cond_2

    .line 132
    invoke-static {p0, p2}, Lorg/telegram/ui/Components/FragmentFloatingButton;->setAnimatedVisibility(Landroid/view/View;F)V

    const p1, 0x3f7d70a4    # 0.99f

    cmpl-float p1, p2, p1

    if-ltz p1, :cond_0

    move p4, v0

    .line 133
    :cond_0
    invoke-virtual {p0, p4}, Landroid/view/View;->setClickable(Z)V

    .line 134
    iget-boolean p1, p0, Lorg/telegram/ui/Components/FragmentFloatingButton;->isSubButton:Z

    if-eqz p1, :cond_1

    const/high16 p1, 0x42800000    # 64.0f

    goto :goto_0

    :cond_1
    const/high16 p1, 0x42200000    # 40.0f

    :goto_0
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    int-to-float p1, p1

    sub-float/2addr p3, p2

    mul-float/2addr p1, p3

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/FragmentFloatingButton;->setAdditionalTranslationY(F)V

    return-void

    :cond_2
    if-ne p1, v0, :cond_3

    .line 136
    iget-object p1, p0, Lorg/telegram/ui/Components/FragmentFloatingButton;->progressView:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-static {p1, p2}, Lorg/telegram/ui/Components/FragmentFloatingButton;->setAnimatedVisibility(Landroid/view/View;F)V

    .line 137
    iget-object p1, p0, Lorg/telegram/ui/Components/FragmentFloatingButton;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    sub-float/2addr p3, p2

    invoke-static {p1, p3}, Lorg/telegram/ui/Components/FragmentFloatingButton;->setAnimatedVisibility(Landroid/view/View;F)V

    .line 138
    iget-object p1, p0, Lorg/telegram/ui/Components/FragmentFloatingButton;->additionalContentViews:Ljava/util/ArrayList;

    if-eqz p1, :cond_3

    .line 139
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    :goto_1
    if-ge p4, p2, :cond_3

    invoke-virtual {p1, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    add-int/lit8 p4, p4, 0x1

    check-cast v0, Landroid/view/View;

    .line 140
    invoke-static {v0, p3}, Lorg/telegram/ui/Components/FragmentFloatingButton;->setAnimatedVisibility(Landroid/view/View;F)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 218
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 219
    iget-object p3, p0, Lorg/telegram/ui/Components/FragmentFloatingButton;->iBlur3Background:Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;

    if-eqz p3, :cond_0

    const/4 p4, 0x0

    .line 220
    invoke-virtual {p3, p4, p4, p1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_0
    return-void
.end method

.method public setAnimation(II)V
    .locals 1

    .line 147
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentFloatingButton;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v0, p1, p2, p2}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(III)V

    return-void
.end method

.method public setButtonVisible(ZZ)V
    .locals 1

    .line 118
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentFloatingButton;->animatorButtonVisible:Lme/vkryl/android/animator/BoolAnimator;

    invoke-virtual {v0, p1, p2}, Lme/vkryl/android/animator/BoolAnimator;->setValue(ZZ)V

    return-void
.end method

.method public setImageResource(I)V
    .locals 1

    .line 151
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentFloatingButton;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/RLottieImageView;->setImageResource(I)V

    return-void
.end method

.method public setProgressVisible(ZZ)V
    .locals 1

    .line 114
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentFloatingButton;->animatorProgressVisible:Lme/vkryl/android/animator/BoolAnimator;

    invoke-virtual {v0, p1, p2}, Lme/vkryl/android/animator/BoolAnimator;->setValue(ZZ)V

    return-void
.end method

.method public setTranslationY(F)V
    .locals 1

    .line 234
    iget v0, p0, Lorg/telegram/ui/Components/FragmentFloatingButton;->internalTranslationY:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 235
    iput-boolean v0, p0, Lorg/telegram/ui/Components/FragmentFloatingButton;->setTranslationInternal:Z

    .line 236
    iget v0, p0, Lorg/telegram/ui/Components/FragmentFloatingButton;->additionalTranslationY:F

    add-float/2addr v0, p1

    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    const/4 v0, 0x0

    .line 237
    iput-boolean v0, p0, Lorg/telegram/ui/Components/FragmentFloatingButton;->setTranslationInternal:Z

    .line 238
    iput p1, p0, Lorg/telegram/ui/Components/FragmentFloatingButton;->internalTranslationY:F

    :cond_0
    return-void
.end method

.method public updateColors()V
    .locals 4

    .line 159
    iget-boolean v0, p0, Lorg/telegram/ui/Components/FragmentFloatingButton;->isSubButton:Z

    if-eqz v0, :cond_1

    .line 160
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentFloatingButton;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultIcon:I

    iget-object v2, p0, Lorg/telegram/ui/Components/FragmentFloatingButton;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v2, v3}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 161
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentFloatingButton;->progressView:Lorg/telegram/ui/Components/RadialProgressView;

    iget-object v2, p0, Lorg/telegram/ui/Components/FragmentFloatingButton;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RadialProgressView;->setProgressColor(I)V

    .line 163
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentFloatingButton;->iBlur3SourceColor:Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceColor;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceColor;->setColor(I)V

    .line 164
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentFloatingButton;->iBlur3ColorProviderTabs:Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundColorProviderThemed;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundColorProviderThemed;->updateColors()V

    .line 165
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentFloatingButton;->iBlur3Background:Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->updateColors()V

    .line 166
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 168
    sget-boolean v0, Lcom/exteragram/messenger/ExteraConfig;->squareFab:Z

    if-eqz v0, :cond_0

    const/high16 v0, 0x41200000    # 10.0f

    goto :goto_0

    :cond_0
    const/high16 v0, 0x41900000    # 18.0f

    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    .line 169
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    iget-object v2, p0, Lorg/telegram/ui/Components/FragmentFloatingButton;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    int-to-float v0, v0

    const/high16 v2, 0x40c00000    # 6.0f

    .line 170
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-static {v1, v0, v2}, Lorg/telegram/ui/ActionBar/Theme;->createInsetRoundRectDrawable(IFI)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 172
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentFloatingButton;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chats_actionIcon:I

    iget-object v2, p0, Lorg/telegram/ui/Components/FragmentFloatingButton;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v2, v3}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 173
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentFloatingButton;->progressView:Lorg/telegram/ui/Components/RadialProgressView;

    iget-object v2, p0, Lorg/telegram/ui/Components/FragmentFloatingButton;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RadialProgressView;->setProgressColor(I)V

    .line 174
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButton:I

    iget-object v1, p0, Lorg/telegram/ui/Components/FragmentFloatingButton;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 176
    invoke-static {v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v0

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButtonPressed:I

    iget-object v2, p0, Lorg/telegram/ui/Components/FragmentFloatingButton;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 177
    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    const/16 v2, 0x30

    .line 174
    invoke-static {v2, v0, v1}, Lcom/exteragram/messenger/utils/ui/UIUtil;->createFabBackground(III)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
