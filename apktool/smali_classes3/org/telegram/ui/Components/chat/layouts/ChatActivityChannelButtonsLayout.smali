.class public abstract Lorg/telegram/ui/Components/chat/layouts/ChatActivityChannelButtonsLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lme/vkryl/android/animator/FactorAnimator$Target;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/chat/layouts/ChatActivityChannelButtonsLayout$ButtonHolder;,
        Lorg/telegram/ui/Components/chat/layouts/ChatActivityChannelButtonsLayout$OnButtonFullyVisibleListener;,
        Lorg/telegram/ui/Components/chat/layouts/ChatActivityChannelButtonsLayout$OnButtonsTotalWidthChanged;
    }
.end annotation


# static fields
.field private static final buttonIcons:[I

.field private static final buttonsOrderLeft:[I

.field private static final buttonsOrderRight:[I

.field private static final tmpRect:Landroid/graphics/RectF;


# instance fields
.field private accentColor:I

.field private final animatorCenterAccentBackground:Lme/vkryl/android/animator/BoolAnimator;

.field private final backgroundAccentPaint:Landroid/graphics/Paint;

.field private final blurredBackgroundDrawableViewFactory:Lorg/telegram/ui/Components/blur3/BlurredBackgroundDrawableViewFactory;

.field private final buttonHolders:[Lorg/telegram/ui/Components/chat/layouts/ChatActivityChannelButtonsLayout$ButtonHolder;

.field private final colorProvider:Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundColorProvider;

.field private final container:Landroid/widget/FrameLayout;

.field private final onButtonFullyVisible:[Lorg/telegram/ui/Components/chat/layouts/ChatActivityChannelButtonsLayout$OnButtonFullyVisibleListener;

.field private onButtonsTotalWidthChanged:Lorg/telegram/ui/Components/chat/layouts/ChatActivityChannelButtonsLayout$OnButtonsTotalWidthChanged;

.field private final onClickListeners:[Landroid/view/View$OnClickListener;

.field private final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private totalVisibilityFactor:F

.field private totalWidthLeft:F

.field private totalWidthRight:F


# direct methods
.method public static synthetic $r8$lambda$R7l9GSFMR0N3pbVNbgxasrX3pGI(Lorg/telegram/ui/Components/chat/layouts/ChatActivityChannelButtonsLayout;ILandroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/chat/layouts/ChatActivityChannelButtonsLayout;->lambda$showButton$0(ILandroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 46
    sget v0, Lorg/telegram/messenger/R$drawable;->msg_search:I

    sget v1, Lorg/telegram/messenger/R$drawable;->input_gift_s:I

    sget v2, Lorg/telegram/messenger/R$drawable;->input_message:I

    sget v3, Lorg/telegram/messenger/R$drawable;->msg_help:I

    filled-new-array {v0, v1, v2, v3}, [I

    move-result-object v0

    sput-object v0, Lorg/telegram/ui/Components/chat/layouts/ChatActivityChannelButtonsLayout;->buttonIcons:[I

    const/4 v0, 0x0

    .line 52
    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lorg/telegram/ui/Components/chat/layouts/ChatActivityChannelButtonsLayout;->buttonsOrderLeft:[I

    const/4 v0, 0x2

    const/4 v1, 0x3

    const/4 v2, 0x1

    .line 55
    filled-new-array {v2, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lorg/telegram/ui/Components/chat/layouts/ChatActivityChannelButtonsLayout;->buttonsOrderRight:[I

    .line 331
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    sput-object v0, Lorg/telegram/ui/Components/chat/layouts/ChatActivityChannelButtonsLayout;->tmpRect:Landroid/graphics/RectF;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundColorProvider;Lorg/telegram/ui/Components/blur3/BlurredBackgroundDrawableViewFactory;)V
    .locals 7

    .line 69
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x4

    .line 40
    new-array v1, v0, [Lorg/telegram/ui/Components/chat/layouts/ChatActivityChannelButtonsLayout$ButtonHolder;

    iput-object v1, p0, Lorg/telegram/ui/Components/chat/layouts/ChatActivityChannelButtonsLayout;->buttonHolders:[Lorg/telegram/ui/Components/chat/layouts/ChatActivityChannelButtonsLayout$ButtonHolder;

    .line 41
    new-array v1, v0, [Landroid/view/View$OnClickListener;

    iput-object v1, p0, Lorg/telegram/ui/Components/chat/layouts/ChatActivityChannelButtonsLayout;->onClickListeners:[Landroid/view/View$OnClickListener;

    .line 42
    new-array v0, v0, [Lorg/telegram/ui/Components/chat/layouts/ChatActivityChannelButtonsLayout$OnButtonFullyVisibleListener;

    iput-object v0, p0, Lorg/telegram/ui/Components/chat/layouts/ChatActivityChannelButtonsLayout;->onButtonFullyVisible:[Lorg/telegram/ui/Components/chat/layouts/ChatActivityChannelButtonsLayout$OnButtonFullyVisibleListener;

    .line 167
    new-instance v1, Lme/vkryl/android/animator/BoolAnimator;

    sget-object v4, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const-wide/16 v5, 0x140

    const/16 v2, 0x63

    move-object v3, p0

    invoke-direct/range {v1 .. v6}, Lme/vkryl/android/animator/BoolAnimator;-><init>(ILme/vkryl/android/animator/FactorAnimator$Target;Landroid/view/animation/Interpolator;J)V

    iput-object v1, v3, Lorg/telegram/ui/Components/chat/layouts/ChatActivityChannelButtonsLayout;->animatorCenterAccentBackground:Lme/vkryl/android/animator/BoolAnimator;

    .line 332
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, v3, Lorg/telegram/ui/Components/chat/layouts/ChatActivityChannelButtonsLayout;->backgroundAccentPaint:Landroid/graphics/Paint;

    const/4 v0, 0x0

    .line 356
    iput v0, v3, Lorg/telegram/ui/Components/chat/layouts/ChatActivityChannelButtonsLayout;->accentColor:I

    .line 70
    iput-object p4, v3, Lorg/telegram/ui/Components/chat/layouts/ChatActivityChannelButtonsLayout;->blurredBackgroundDrawableViewFactory:Lorg/telegram/ui/Components/blur3/BlurredBackgroundDrawableViewFactory;

    .line 71
    iput-object p3, v3, Lorg/telegram/ui/Components/chat/layouts/ChatActivityChannelButtonsLayout;->colorProvider:Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundColorProvider;

    .line 72
    iput-object p2, v3, Lorg/telegram/ui/Components/chat/layouts/ChatActivityChannelButtonsLayout;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 74
    new-instance p2, Landroid/widget/FrameLayout;

    invoke-direct {p2, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p2, v3, Lorg/telegram/ui/Components/chat/layouts/ChatActivityChannelButtonsLayout;->container:Landroid/widget/FrameLayout;

    .line 75
    invoke-virtual {p2, v1}, Landroid/view/View;->setClipToOutline(Z)V

    .line 76
    new-instance p1, Lorg/telegram/ui/Components/chat/layouts/ChatActivityChannelButtonsLayout$1;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/chat/layouts/ChatActivityChannelButtonsLayout$1;-><init>(Lorg/telegram/ui/Components/chat/layouts/ChatActivityChannelButtonsLayout;)V

    invoke-virtual {p2, p1}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    const/16 p1, 0x30

    const/16 p3, 0x10

    const/4 p4, -0x1

    .line 82
    invoke-static {p4, p1, p3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private checkButtonsPositionsAndVisibility()V
    .locals 11

    const/4 v0, 0x0

    .line 260
    iput v0, p0, Lorg/telegram/ui/Components/chat/layouts/ChatActivityChannelButtonsLayout;->totalWidthLeft:F

    .line 261
    iput v0, p0, Lorg/telegram/ui/Components/chat/layouts/ChatActivityChannelButtonsLayout;->totalWidthRight:F

    .line 263
    iget-object v1, p0, Lorg/telegram/ui/Components/chat/layouts/ChatActivityChannelButtonsLayout;->buttonHolders:[Lorg/telegram/ui/Components/chat/layouts/ChatActivityChannelButtonsLayout$ButtonHolder;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    const/high16 v5, 0x3f800000    # 1.0f

    if-ge v4, v2, :cond_2

    aget-object v6, v1, v4

    if-nez v6, :cond_0

    goto :goto_2

    .line 268
    :cond_0
    iget-object v7, v6, Lorg/telegram/ui/Components/chat/layouts/ChatActivityChannelButtonsLayout$ButtonHolder;->visibilityAnimator:Lme/vkryl/android/animator/BoolAnimator;

    invoke-virtual {v7}, Lme/vkryl/android/animator/BoolAnimator;->getFloatValue()F

    move-result v7

    iget v8, p0, Lorg/telegram/ui/Components/chat/layouts/ChatActivityChannelButtonsLayout;->totalVisibilityFactor:F

    mul-float/2addr v7, v8

    .line 269
    iget-object v8, v6, Lorg/telegram/ui/Components/chat/layouts/ChatActivityChannelButtonsLayout$ButtonHolder;->button:Lorg/telegram/ui/Components/chat/buttons/ChatActivityBlurredRoundButton;

    cmpl-float v9, v7, v0

    if-lez v9, :cond_1

    move v9, v3

    goto :goto_1

    :cond_1
    const/16 v9, 0x8

    :goto_1
    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 270
    iget-object v8, v6, Lorg/telegram/ui/Components/chat/layouts/ChatActivityChannelButtonsLayout$ButtonHolder;->button:Lorg/telegram/ui/Components/chat/buttons/ChatActivityBlurredRoundButton;

    invoke-virtual {v8, v7}, Landroid/view/View;->setAlpha(F)V

    .line 271
    iget-object v8, v6, Lorg/telegram/ui/Components/chat/layouts/ChatActivityChannelButtonsLayout$ButtonHolder;->button:Lorg/telegram/ui/Components/chat/buttons/ChatActivityBlurredRoundButton;

    const v9, 0x3ecccccd    # 0.4f

    invoke-static {v9, v5, v7}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v10

    invoke-virtual {v8, v10}, Landroid/view/View;->setScaleX(F)V

    .line 272
    iget-object v6, v6, Lorg/telegram/ui/Components/chat/layouts/ChatActivityChannelButtonsLayout$ButtonHolder;->button:Lorg/telegram/ui/Components/chat/buttons/ChatActivityBlurredRoundButton;

    invoke-static {v9, v5, v7}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v5

    invoke-virtual {v6, v5}, Landroid/view/View;->setScaleY(F)V

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    const/high16 v0, 0x40400000    # 3.0f

    .line 275
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    .line 277
    sget-object v1, Lorg/telegram/ui/Components/chat/layouts/ChatActivityChannelButtonsLayout;->buttonsOrderLeft:[I

    array-length v2, v1

    move v4, v3

    :goto_3
    const/high16 v6, 0x42680000    # 58.0f

    if-ge v4, v2, :cond_4

    aget v7, v1, v4

    .line 278
    iget-object v8, p0, Lorg/telegram/ui/Components/chat/layouts/ChatActivityChannelButtonsLayout;->buttonHolders:[Lorg/telegram/ui/Components/chat/layouts/ChatActivityChannelButtonsLayout$ButtonHolder;

    aget-object v7, v8, v7

    if-nez v7, :cond_3

    goto :goto_4

    .line 283
    :cond_3
    iget-object v8, v7, Lorg/telegram/ui/Components/chat/layouts/ChatActivityChannelButtonsLayout$ButtonHolder;->visibilityAnimator:Lme/vkryl/android/animator/BoolAnimator;

    invoke-virtual {v8}, Lme/vkryl/android/animator/BoolAnimator;->getFloatValue()F

    move-result v8

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v8, v6

    .line 284
    iget-object v6, v7, Lorg/telegram/ui/Components/chat/layouts/ChatActivityChannelButtonsLayout$ButtonHolder;->button:Lorg/telegram/ui/Components/chat/buttons/ChatActivityBlurredRoundButton;

    int-to-float v7, v0

    iget v9, p0, Lorg/telegram/ui/Components/chat/layouts/ChatActivityChannelButtonsLayout;->totalWidthLeft:F

    add-float/2addr v7, v9

    invoke-virtual {v6, v7}, Landroid/view/View;->setTranslationX(F)V

    .line 285
    iget v6, p0, Lorg/telegram/ui/Components/chat/layouts/ChatActivityChannelButtonsLayout;->totalWidthLeft:F

    add-float/2addr v6, v8

    iput v6, p0, Lorg/telegram/ui/Components/chat/layouts/ChatActivityChannelButtonsLayout;->totalWidthLeft:F

    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 288
    :cond_4
    sget-object v1, Lorg/telegram/ui/Components/chat/layouts/ChatActivityChannelButtonsLayout;->buttonsOrderRight:[I

    array-length v2, v1

    move v4, v3

    :goto_5
    if-ge v4, v2, :cond_6

    aget v7, v1, v4

    .line 289
    iget-object v8, p0, Lorg/telegram/ui/Components/chat/layouts/ChatActivityChannelButtonsLayout;->buttonHolders:[Lorg/telegram/ui/Components/chat/layouts/ChatActivityChannelButtonsLayout$ButtonHolder;

    aget-object v7, v8, v7

    if-nez v7, :cond_5

    goto :goto_6

    .line 294
    :cond_5
    iget-object v8, v7, Lorg/telegram/ui/Components/chat/layouts/ChatActivityChannelButtonsLayout$ButtonHolder;->visibilityAnimator:Lme/vkryl/android/animator/BoolAnimator;

    invoke-virtual {v8}, Lme/vkryl/android/animator/BoolAnimator;->getFloatValue()F

    move-result v8

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v8, v9

    .line 295
    iget-object v9, v7, Lorg/telegram/ui/Components/chat/layouts/ChatActivityChannelButtonsLayout$ButtonHolder;->button:Lorg/telegram/ui/Components/chat/buttons/ChatActivityBlurredRoundButton;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    iget-object v7, v7, Lorg/telegram/ui/Components/chat/layouts/ChatActivityChannelButtonsLayout$ButtonHolder;->button:Lorg/telegram/ui/Components/chat/buttons/ChatActivityBlurredRoundButton;

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    sub-int/2addr v10, v7

    sub-int/2addr v10, v0

    int-to-float v7, v10

    iget v10, p0, Lorg/telegram/ui/Components/chat/layouts/ChatActivityChannelButtonsLayout;->totalWidthRight:F

    sub-float/2addr v7, v10

    invoke-virtual {v9, v7}, Landroid/view/View;->setTranslationX(F)V

    .line 296
    iget v7, p0, Lorg/telegram/ui/Components/chat/layouts/ChatActivityChannelButtonsLayout;->totalWidthRight:F

    add-float/2addr v7, v8

    iput v7, p0, Lorg/telegram/ui/Components/chat/layouts/ChatActivityChannelButtonsLayout;->totalWidthRight:F

    :goto_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 299
    :cond_6
    iget v0, p0, Lorg/telegram/ui/Components/chat/layouts/ChatActivityChannelButtonsLayout;->totalVisibilityFactor:F

    cmpg-float v0, v0, v5

    if-gez v0, :cond_b

    .line 300
    sget-object v0, Lorg/telegram/ui/Components/chat/layouts/ChatActivityChannelButtonsLayout;->buttonsOrderLeft:[I

    array-length v1, v0

    move v2, v3

    :goto_7
    if-ge v2, v1, :cond_8

    aget v4, v0, v2

    .line 301
    iget-object v6, p0, Lorg/telegram/ui/Components/chat/layouts/ChatActivityChannelButtonsLayout;->buttonHolders:[Lorg/telegram/ui/Components/chat/layouts/ChatActivityChannelButtonsLayout$ButtonHolder;

    aget-object v4, v6, v4

    if-nez v4, :cond_7

    goto :goto_8

    .line 306
    :cond_7
    iget-object v4, v4, Lorg/telegram/ui/Components/chat/layouts/ChatActivityChannelButtonsLayout$ButtonHolder;->button:Lorg/telegram/ui/Components/chat/buttons/ChatActivityBlurredRoundButton;

    invoke-virtual {v4}, Landroid/view/View;->getTranslationX()F

    move-result v6

    iget v7, p0, Lorg/telegram/ui/Components/chat/layouts/ChatActivityChannelButtonsLayout;->totalWidthLeft:F

    iget v8, p0, Lorg/telegram/ui/Components/chat/layouts/ChatActivityChannelButtonsLayout;->totalVisibilityFactor:F

    sub-float v8, v5, v8

    mul-float/2addr v7, v8

    sub-float/2addr v6, v7

    invoke-virtual {v4, v6}, Landroid/view/View;->setTranslationX(F)V

    :goto_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 309
    :cond_8
    sget-object v0, Lorg/telegram/ui/Components/chat/layouts/ChatActivityChannelButtonsLayout;->buttonsOrderRight:[I

    array-length v1, v0

    :goto_9
    if-ge v3, v1, :cond_a

    aget v2, v0, v3

    .line 310
    iget-object v4, p0, Lorg/telegram/ui/Components/chat/layouts/ChatActivityChannelButtonsLayout;->buttonHolders:[Lorg/telegram/ui/Components/chat/layouts/ChatActivityChannelButtonsLayout$ButtonHolder;

    aget-object v2, v4, v2

    if-nez v2, :cond_9

    goto :goto_a

    .line 315
    :cond_9
    iget-object v2, v2, Lorg/telegram/ui/Components/chat/layouts/ChatActivityChannelButtonsLayout$ButtonHolder;->button:Lorg/telegram/ui/Components/chat/buttons/ChatActivityBlurredRoundButton;

    invoke-virtual {v2}, Landroid/view/View;->getTranslationX()F

    move-result v4

    iget v6, p0, Lorg/telegram/ui/Components/chat/layouts/ChatActivityChannelButtonsLayout;->totalWidthRight:F

    iget v7, p0, Lorg/telegram/ui/Components/chat/layouts/ChatActivityChannelButtonsLayout;->totalVisibilityFactor:F

    sub-float v7, v5, v7

    mul-float/2addr v6, v7

    add-float/2addr v4, v6

    invoke-virtual {v2, v4}, Landroid/view/View;->setTranslationX(F)V

    :goto_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 318
    :cond_a
    iget v0, p0, Lorg/telegram/ui/Components/chat/layouts/ChatActivityChannelButtonsLayout;->totalWidthLeft:F

    iget v1, p0, Lorg/telegram/ui/Components/chat/layouts/ChatActivityChannelButtonsLayout;->totalVisibilityFactor:F

    mul-float/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/Components/chat/layouts/ChatActivityChannelButtonsLayout;->totalWidthLeft:F

    .line 319
    iget v0, p0, Lorg/telegram/ui/Components/chat/layouts/ChatActivityChannelButtonsLayout;->totalWidthRight:F

    mul-float/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/Components/chat/layouts/ChatActivityChannelButtonsLayout;->totalWidthRight:F

    .line 322
    :cond_b
    iget-object v0, p0, Lorg/telegram/ui/Components/chat/layouts/ChatActivityChannelButtonsLayout;->onButtonsTotalWidthChanged:Lorg/telegram/ui/Components/chat/layouts/ChatActivityChannelButtonsLayout$OnButtonsTotalWidthChanged;

    if-eqz v0, :cond_c

    .line 323
    iget v1, p0, Lorg/telegram/ui/Components/chat/layouts/ChatActivityChannelButtonsLayout;->totalWidthLeft:F

    iget v2, p0, Lorg/telegram/ui/Components/chat/layouts/ChatActivityChannelButtonsLayout;->totalWidthRight:F

    invoke-interface {v0, v1, v2}, Lorg/telegram/ui/Components/chat/layouts/ChatActivityChannelButtonsLayout$OnButtonsTotalWidthChanged;->onButtonsTotalWidthChanged(FF)V

    :cond_c
    return-void
.end method

.method private checkContainerPaddings(Z)V
    .locals 9

    const/high16 v0, 0x40e00000    # 7.0f

    .line 231
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    .line 232
    sget-object v2, Lorg/telegram/ui/Components/chat/layouts/ChatActivityChannelButtonsLayout;->buttonsOrderLeft:[I

    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    const/high16 v6, 0x42680000    # 58.0f

    if-ge v5, v3, :cond_2

    aget v7, v2, v5

    .line 233
    iget-object v8, p0, Lorg/telegram/ui/Components/chat/layouts/ChatActivityChannelButtonsLayout;->buttonHolders:[Lorg/telegram/ui/Components/chat/layouts/ChatActivityChannelButtonsLayout$ButtonHolder;

    aget-object v7, v8, v7

    if-nez v7, :cond_0

    goto :goto_2

    .line 237
    :cond_0
    iget-object v7, v7, Lorg/telegram/ui/Components/chat/layouts/ChatActivityChannelButtonsLayout$ButtonHolder;->visibilityAnimator:Lme/vkryl/android/animator/BoolAnimator;

    invoke-virtual {v7}, Lme/vkryl/android/animator/BoolAnimator;->getValue()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    goto :goto_1

    :cond_1
    move v6, v4

    :goto_1
    add-int/2addr v1, v6

    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 240
    :cond_2
    sget-object v2, Lorg/telegram/ui/Components/chat/layouts/ChatActivityChannelButtonsLayout;->buttonsOrderRight:[I

    array-length v3, v2

    move v5, v4

    :goto_3
    if-ge v5, v3, :cond_5

    aget v7, v2, v5

    .line 241
    iget-object v8, p0, Lorg/telegram/ui/Components/chat/layouts/ChatActivityChannelButtonsLayout;->buttonHolders:[Lorg/telegram/ui/Components/chat/layouts/ChatActivityChannelButtonsLayout$ButtonHolder;

    aget-object v7, v8, v7

    if-nez v7, :cond_3

    goto :goto_5

    .line 245
    :cond_3
    iget-object v7, v7, Lorg/telegram/ui/Components/chat/layouts/ChatActivityChannelButtonsLayout$ButtonHolder;->visibilityAnimator:Lme/vkryl/android/animator/BoolAnimator;

    invoke-virtual {v7}, Lme/vkryl/android/animator/BoolAnimator;->getValue()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    goto :goto_4

    :cond_4
    move v7, v4

    :goto_4
    add-int/2addr v0, v7

    :goto_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 248
    :cond_5
    iget-object v2, p0, Lorg/telegram/ui/Components/chat/layouts/ChatActivityChannelButtonsLayout;->container:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 250
    iget v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    if-ne v3, v1, :cond_6

    iget v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    if-eq v3, v0, :cond_7

    .line 251
    :cond_6
    iput v1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 252
    iput v0, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    if-eqz p1, :cond_7

    .line 254
    iget-object p1, p0, Lorg/telegram/ui/Components/chat/layouts/ChatActivityChannelButtonsLayout;->container:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    :cond_7
    return-void
.end method

.method private synthetic lambda$showButton$0(ILandroid/view/View;)V
    .locals 1

    .line 123
    iget-object v0, p0, Lorg/telegram/ui/Components/chat/layouts/ChatActivityChannelButtonsLayout;->onClickListeners:[Landroid/view/View$OnClickListener;

    aget-object p1, v0, p1

    if-eqz p1, :cond_0

    .line 124
    invoke-interface {p1, p2}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 7

    const/high16 v0, 0x437f0000    # 255.0f

    .line 340
    iget v1, p0, Lorg/telegram/ui/Components/chat/layouts/ChatActivityChannelButtonsLayout;->totalVisibilityFactor:F

    mul-float/2addr v1, v0

    iget-object v0, p0, Lorg/telegram/ui/Components/chat/layouts/ChatActivityChannelButtonsLayout;->animatorCenterAccentBackground:Lme/vkryl/android/animator/BoolAnimator;

    invoke-virtual {v0}, Lme/vkryl/android/animator/BoolAnimator;->getFloatValue()F

    move-result v0

    mul-float/2addr v1, v0

    float-to-int v0, v1

    if-lez v0, :cond_0

    .line 342
    sget-object v1, Lorg/telegram/ui/Components/chat/layouts/ChatActivityChannelButtonsLayout;->tmpRect:Landroid/graphics/RectF;

    iget v2, p0, Lorg/telegram/ui/Components/chat/layouts/ChatActivityChannelButtonsLayout;->totalWidthLeft:F

    const/high16 v3, 0x41200000    # 10.0f

    .line 343
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v2, v4

    const/high16 v4, 0x40e00000    # 7.0f

    .line 344
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    .line 345
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int/2addr v6, v3

    int-to-float v3, v6

    iget v6, p0, Lorg/telegram/ui/Components/chat/layouts/ChatActivityChannelButtonsLayout;->totalWidthRight:F

    sub-float/2addr v3, v6

    .line 346
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int/2addr v6, v4

    int-to-float v4, v6

    .line 342
    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 348
    iget-object v2, p0, Lorg/telegram/ui/Components/chat/layouts/ChatActivityChannelButtonsLayout;->backgroundAccentPaint:Landroid/graphics/Paint;

    iget v3, p0, Lorg/telegram/ui/Components/chat/layouts/ChatActivityChannelButtonsLayout;->accentColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 349
    iget-object v2, p0, Lorg/telegram/ui/Components/chat/layouts/ChatActivityChannelButtonsLayout;->backgroundAccentPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    const/high16 v0, 0x41a80000    # 21.0f

    .line 350
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    iget-object v3, p0, Lorg/telegram/ui/Components/chat/layouts/ChatActivityChannelButtonsLayout;->backgroundAccentPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 353
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public getContainer()Landroid/widget/FrameLayout;
    .locals 1

    .line 94
    iget-object v0, p0, Lorg/telegram/ui/Components/chat/layouts/ChatActivityChannelButtonsLayout;->container:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public isButtonVisible(I)Z
    .locals 2

    if-ltz p1, :cond_1

    .line 137
    iget-object v0, p0, Lorg/telegram/ui/Components/chat/layouts/ChatActivityChannelButtonsLayout;->buttonHolders:[Lorg/telegram/ui/Components/chat/layouts/ChatActivityChannelButtonsLayout$ButtonHolder;

    array-length v1, v0

    if-ge p1, v1, :cond_1

    aget-object p1, v0, p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 141
    :cond_0
    iget-object p1, p1, Lorg/telegram/ui/Components/chat/layouts/ChatActivityChannelButtonsLayout$ButtonHolder;->visibilityAnimator:Lme/vkryl/android/animator/BoolAnimator;

    invoke-virtual {p1}, Lme/vkryl/android/animator/BoolAnimator;->getValue()Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public onFactorChangeFinished(IFLme/vkryl/android/animator/FactorAnimator;)V
    .locals 3

    const/16 p2, 0x63

    if-ne p1, p2, :cond_0

    .line 208
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    shr-int/lit8 p2, p1, 0x10

    const p3, 0xffff

    and-int/2addr p1, p3

    if-ltz p2, :cond_3

    .line 213
    iget-object p3, p0, Lorg/telegram/ui/Components/chat/layouts/ChatActivityChannelButtonsLayout;->buttonHolders:[Lorg/telegram/ui/Components/chat/layouts/ChatActivityChannelButtonsLayout$ButtonHolder;

    array-length v0, p3

    if-ge p2, v0, :cond_3

    aget-object p3, p3, p2

    if-nez p3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    .line 219
    iget-object p1, p3, Lorg/telegram/ui/Components/chat/layouts/ChatActivityChannelButtonsLayout$ButtonHolder;->visibilityAnimator:Lme/vkryl/android/animator/BoolAnimator;

    invoke-virtual {p1}, Lme/vkryl/android/animator/BoolAnimator;->getValue()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 220
    iget-object p1, p0, Lorg/telegram/ui/Components/chat/layouts/ChatActivityChannelButtonsLayout;->onButtonFullyVisible:[Lorg/telegram/ui/Components/chat/layouts/ChatActivityChannelButtonsLayout$OnButtonFullyVisibleListener;

    aget-object p1, p1, p2

    if-eqz p1, :cond_2

    .line 221
    iget-object v1, p3, Lorg/telegram/ui/Components/chat/layouts/ChatActivityChannelButtonsLayout$ButtonHolder;->button:Lorg/telegram/ui/Components/chat/buttons/ChatActivityBlurredRoundButton;

    iget-boolean v2, p3, Lorg/telegram/ui/Components/chat/layouts/ChatActivityChannelButtonsLayout$ButtonHolder;->wasShown:Z

    xor-int/2addr v2, v0

    invoke-interface {p1, v1, p2, v2}, Lorg/telegram/ui/Components/chat/layouts/ChatActivityChannelButtonsLayout$OnButtonFullyVisibleListener;->onButtonFullyVisible(Landroid/view/View;IZ)V

    .line 223
    :cond_2
    iput-boolean v0, p3, Lorg/telegram/ui/Components/chat/layouts/ChatActivityChannelButtonsLayout$ButtonHolder;->wasShown:Z

    :cond_3
    :goto_0
    return-void
.end method

.method public onFactorChanged(IFFLme/vkryl/android/animator/FactorAnimator;)V
    .locals 0

    const/16 p2, 0x63

    if-ne p1, p2, :cond_0

    .line 188
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void

    :cond_0
    shr-int/lit8 p2, p1, 0x10

    const p3, 0xffff

    and-int/2addr p1, p3

    if-ltz p2, :cond_2

    .line 194
    iget-object p3, p0, Lorg/telegram/ui/Components/chat/layouts/ChatActivityChannelButtonsLayout;->buttonHolders:[Lorg/telegram/ui/Components/chat/layouts/ChatActivityChannelButtonsLayout$ButtonHolder;

    array-length p4, p3

    if-ge p2, p4, :cond_2

    aget-object p2, p3, p2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 p2, 0x1

    if-ne p1, p2, :cond_2

    .line 199
    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/chat/layouts/ChatActivityChannelButtonsLayout;->checkContainerPaddings(Z)V

    .line 200
    invoke-direct {p0}, Lorg/telegram/ui/Components/chat/layouts/ChatActivityChannelButtonsLayout;->checkButtonsPositionsAndVisibility()V

    .line 201
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_2
    :goto_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    const/4 v0, 0x0

    .line 158
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/chat/layouts/ChatActivityChannelButtonsLayout;->checkContainerPaddings(Z)V

    .line 160
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 161
    invoke-direct {p0}, Lorg/telegram/ui/Components/chat/layouts/ChatActivityChannelButtonsLayout;->checkButtonsPositionsAndVisibility()V

    return-void
.end method

.method public setAccentColor(I)V
    .locals 0

    .line 359
    iput p1, p0, Lorg/telegram/ui/Components/chat/layouts/ChatActivityChannelButtonsLayout;->accentColor:I

    return-void
.end method

.method public setButtonOnClickListener(ILandroid/view/View$OnClickListener;)V
    .locals 1

    .line 145
    iget-object v0, p0, Lorg/telegram/ui/Components/chat/layouts/ChatActivityChannelButtonsLayout;->onClickListeners:[Landroid/view/View$OnClickListener;

    aput-object p2, v0, p1

    return-void
.end method

.method public setButtonOnFullyVisibleListener(ILorg/telegram/ui/Components/chat/layouts/ChatActivityChannelButtonsLayout$OnButtonFullyVisibleListener;)V
    .locals 1

    .line 149
    iget-object v0, p0, Lorg/telegram/ui/Components/chat/layouts/ChatActivityChannelButtonsLayout;->onButtonFullyVisible:[Lorg/telegram/ui/Components/chat/layouts/ChatActivityChannelButtonsLayout$OnButtonFullyVisibleListener;

    aput-object p2, v0, p1

    return-void
.end method

.method public setCenterAccentBackground(ZZ)V
    .locals 1

    .line 171
    iget-object v0, p0, Lorg/telegram/ui/Components/chat/layouts/ChatActivityChannelButtonsLayout;->animatorCenterAccentBackground:Lme/vkryl/android/animator/BoolAnimator;

    invoke-virtual {v0, p1, p2}, Lme/vkryl/android/animator/BoolAnimator;->setValue(ZZ)V

    return-void
.end method

.method public setOnButtonsTotalWidthChanged(Lorg/telegram/ui/Components/chat/layouts/ChatActivityChannelButtonsLayout$OnButtonsTotalWidthChanged;)V
    .locals 0

    .line 153
    iput-object p1, p0, Lorg/telegram/ui/Components/chat/layouts/ChatActivityChannelButtonsLayout;->onButtonsTotalWidthChanged:Lorg/telegram/ui/Components/chat/layouts/ChatActivityChannelButtonsLayout$OnButtonsTotalWidthChanged;

    return-void
.end method

.method public setTotalVisibilityFactor(F)V
    .locals 1

    .line 178
    iget v0, p0, Lorg/telegram/ui/Components/chat/layouts/ChatActivityChannelButtonsLayout;->totalVisibilityFactor:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 179
    iput p1, p0, Lorg/telegram/ui/Components/chat/layouts/ChatActivityChannelButtonsLayout;->totalVisibilityFactor:F

    .line 180
    invoke-direct {p0}, Lorg/telegram/ui/Components/chat/layouts/ChatActivityChannelButtonsLayout;->checkButtonsPositionsAndVisibility()V

    .line 181
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public showButton(IZZ)V
    .locals 10

    if-ltz p1, :cond_0

    .line 98
    iget-object v0, p0, Lorg/telegram/ui/Components/chat/layouts/ChatActivityChannelButtonsLayout;->buttonHolders:[Lorg/telegram/ui/Components/chat/layouts/ChatActivityChannelButtonsLayout$ButtonHolder;

    array-length v1, v0

    if-lt p1, v1, :cond_1

    :cond_0
    :goto_0
    move-object v3, p0

    goto :goto_2

    .line 102
    :cond_1
    aget-object v0, v0, p1

    if-nez v0, :cond_2

    if-nez p2, :cond_2

    goto :goto_0

    :cond_2
    if-nez v0, :cond_3

    shl-int/lit8 v0, p1, 0x10

    or-int/lit8 v2, v0, 0x1

    .line 108
    new-instance v1, Lme/vkryl/android/animator/BoolAnimator;

    sget-object v4, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const-wide/16 v5, 0x12c

    move-object v3, p0

    invoke-direct/range {v1 .. v6}, Lme/vkryl/android/animator/BoolAnimator;-><init>(ILme/vkryl/android/animator/FactorAnimator$Target;Landroid/view/animation/Interpolator;J)V

    .line 112
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, v3, Lorg/telegram/ui/Components/chat/layouts/ChatActivityChannelButtonsLayout;->blurredBackgroundDrawableViewFactory:Lorg/telegram/ui/Components/blur3/BlurredBackgroundDrawableViewFactory;

    iget-object v6, v3, Lorg/telegram/ui/Components/chat/layouts/ChatActivityChannelButtonsLayout;->colorProvider:Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundColorProvider;

    iget-object v7, v3, Lorg/telegram/ui/Components/chat/layouts/ChatActivityChannelButtonsLayout;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    sget-object v0, Lorg/telegram/ui/Components/chat/layouts/ChatActivityChannelButtonsLayout;->buttonIcons:[I

    aget v8, v0, p1

    const/16 v9, 0x30

    .line 111
    invoke-static/range {v4 .. v9}, Lorg/telegram/ui/Components/chat/buttons/ChatActivityBlurredRoundButton;->create(Landroid/content/Context;Lorg/telegram/ui/Components/blur3/BlurredBackgroundDrawableViewFactory;Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundColorProvider;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;II)Lorg/telegram/ui/Components/chat/buttons/ChatActivityBlurredRoundButton;

    move-result-object v0

    const v2, 0x3e051eb8    # 0.13f

    const/high16 v4, 0x40000000    # 2.0f

    .line 120
    invoke-static {v0, v2, v4}, Lorg/telegram/ui/Components/ScaleStateListAnimator;->apply(Landroid/view/View;FF)V

    const/16 v2, 0x8

    .line 121
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 122
    new-instance v2, Lorg/telegram/ui/Components/chat/layouts/ChatActivityChannelButtonsLayout$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/Components/chat/layouts/ChatActivityChannelButtonsLayout$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/chat/layouts/ChatActivityChannelButtonsLayout;I)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v2, 0x38

    const/high16 v4, 0x42600000    # 56.0f

    .line 127
    invoke-static {v2, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 129
    iget-object v2, v3, Lorg/telegram/ui/Components/chat/layouts/ChatActivityChannelButtonsLayout;->buttonHolders:[Lorg/telegram/ui/Components/chat/layouts/ChatActivityChannelButtonsLayout$ButtonHolder;

    new-instance v4, Lorg/telegram/ui/Components/chat/layouts/ChatActivityChannelButtonsLayout$ButtonHolder;

    const/4 v5, 0x0

    invoke-direct {v4, v0, v1, v5}, Lorg/telegram/ui/Components/chat/layouts/ChatActivityChannelButtonsLayout$ButtonHolder;-><init>(Lorg/telegram/ui/Components/chat/buttons/ChatActivityBlurredRoundButton;Lme/vkryl/android/animator/BoolAnimator;Lorg/telegram/ui/Components/chat/layouts/ChatActivityChannelButtonsLayout-IA;)V

    aput-object v4, v2, p1

    .line 130
    invoke-direct {p0}, Lorg/telegram/ui/Components/chat/layouts/ChatActivityChannelButtonsLayout;->checkButtonsPositionsAndVisibility()V

    goto :goto_1

    :cond_3
    move-object v3, p0

    .line 133
    :goto_1
    iget-object v0, v3, Lorg/telegram/ui/Components/chat/layouts/ChatActivityChannelButtonsLayout;->buttonHolders:[Lorg/telegram/ui/Components/chat/layouts/ChatActivityChannelButtonsLayout$ButtonHolder;

    aget-object p1, v0, p1

    iget-object p1, p1, Lorg/telegram/ui/Components/chat/layouts/ChatActivityChannelButtonsLayout$ButtonHolder;->visibilityAnimator:Lme/vkryl/android/animator/BoolAnimator;

    invoke-virtual {p1, p2, p3}, Lme/vkryl/android/animator/BoolAnimator;->setValue(ZZ)V

    :goto_2
    return-void
.end method

.method public updateColors()V
    .locals 4

    .line 86
    iget-object v0, p0, Lorg/telegram/ui/Components/chat/layouts/ChatActivityChannelButtonsLayout;->buttonHolders:[Lorg/telegram/ui/Components/chat/layouts/ChatActivityChannelButtonsLayout$ButtonHolder;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    if-eqz v3, :cond_0

    .line 88
    iget-object v3, v3, Lorg/telegram/ui/Components/chat/layouts/ChatActivityChannelButtonsLayout$ButtonHolder;->button:Lorg/telegram/ui/Components/chat/buttons/ChatActivityBlurredRoundButton;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/chat/buttons/ChatActivityBlurredRoundButton;->updateColors()V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
