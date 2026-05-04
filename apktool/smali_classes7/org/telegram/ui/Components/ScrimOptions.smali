.class public Lorg/telegram/ui/Components/ScrimOptions;
.super Landroid/app/Dialog;
.source "SourceFile"


# instance fields
.field private blurBitmap:Landroid/graphics/Bitmap;

.field private blurBitmapPaint:Landroid/graphics/Paint;

.field private blurBitmapShader:Landroid/graphics/BitmapShader;

.field private blurMatrix:Landroid/graphics/Matrix;

.field private final containerView:Landroid/widget/FrameLayout;

.field public final context:Landroid/content/Context;

.field public final currentAccount:I

.field private dismissing:Z

.field private final insets:Landroid/graphics/Rect;

.field private isGroup:Z

.field private openAnimator:Landroid/animation/ValueAnimator;

.field private openProgress:F

.field private options:Lorg/telegram/ui/Components/ItemOptions;

.field private optionsContainer:Landroid/widget/FrameLayout;

.field private optionsView:Landroid/view/View;

.field public final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private scrimCell:Lorg/telegram/ui/Cells/ChatMessageCell;

.field private scrimDrawable:Landroid/graphics/drawable/Drawable;

.field private scrimDrawableSh:F

.field private scrimDrawableSw:F

.field private scrimDrawableTx1:F

.field private scrimDrawableTx2:F

.field private scrimDrawableTy1:F

.field private scrimDrawableTy2:F

.field private final windowView:Landroid/widget/FrameLayout;


# direct methods
.method public static synthetic $r8$lambda$-KSK2VnZCT1plBzAnxNOtiUT_Tc(Lorg/telegram/ui/Components/ScrimOptions;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/ScrimOptions;->lambda$dismiss$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$5okuEI5-kBVD8thRuOVOGMqmDs4(Lorg/telegram/ui/Components/ScrimOptions;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/ScrimOptions;->lambda$dismissFast$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$dV3nazUis3TjzvHIPVGavKU5zrA(Lorg/telegram/ui/Components/ScrimOptions;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ScrimOptions;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kNHRGmCyPglcQVZnn_Mrtk9L5fs(Lorg/telegram/ui/Components/ScrimOptions;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ScrimOptions;->lambda$animateOpenTo$5(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$r5tJunqnqO2QT5KvzVGgx5yrRSc(Lorg/telegram/ui/Components/ScrimOptions;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/ScrimOptions;->lambda$dismiss$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$su1qWSmLnGMmAa7xHHKlfGJxTfE(Lorg/telegram/ui/Components/ScrimOptions;Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ScrimOptions;->lambda$prepareBlur$6(Landroid/view/View;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yv7wNa6bO98we6eLDG9M5pkfQzE(Lorg/telegram/ui/Components/ScrimOptions;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/ScrimOptions;->lambda$dismissFast$4()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetblurBitmap(Lorg/telegram/ui/Components/ScrimOptions;)Landroid/graphics/Bitmap;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/ScrimOptions;->blurBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetblurBitmapPaint(Lorg/telegram/ui/Components/ScrimOptions;)Landroid/graphics/Paint;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/ScrimOptions;->blurBitmapPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetblurBitmapShader(Lorg/telegram/ui/Components/ScrimOptions;)Landroid/graphics/BitmapShader;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/ScrimOptions;->blurBitmapShader:Landroid/graphics/BitmapShader;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetblurMatrix(Lorg/telegram/ui/Components/ScrimOptions;)Landroid/graphics/Matrix;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/ScrimOptions;->blurMatrix:Landroid/graphics/Matrix;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcontainerView(Lorg/telegram/ui/Components/ScrimOptions;)Landroid/widget/FrameLayout;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/ScrimOptions;->containerView:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetinsets(Lorg/telegram/ui/Components/ScrimOptions;)Landroid/graphics/Rect;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/ScrimOptions;->insets:Landroid/graphics/Rect;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetopenProgress(Lorg/telegram/ui/Components/ScrimOptions;)F
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Components/ScrimOptions;->openProgress:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetoptionsView(Lorg/telegram/ui/Components/ScrimOptions;)Landroid/view/View;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/ScrimOptions;->optionsView:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetscrimDrawable(Lorg/telegram/ui/Components/ScrimOptions;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/ScrimOptions;->scrimDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetscrimDrawableSh(Lorg/telegram/ui/Components/ScrimOptions;)F
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Components/ScrimOptions;->scrimDrawableSh:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetscrimDrawableSw(Lorg/telegram/ui/Components/ScrimOptions;)F
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Components/ScrimOptions;->scrimDrawableSw:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetscrimDrawableTx1(Lorg/telegram/ui/Components/ScrimOptions;)F
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Components/ScrimOptions;->scrimDrawableTx1:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetscrimDrawableTx2(Lorg/telegram/ui/Components/ScrimOptions;)F
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Components/ScrimOptions;->scrimDrawableTx2:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetscrimDrawableTy1(Lorg/telegram/ui/Components/ScrimOptions;)F
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Components/ScrimOptions;->scrimDrawableTy1:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetscrimDrawableTy2(Lorg/telegram/ui/Components/ScrimOptions;)F
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Components/ScrimOptions;->scrimDrawableTy2:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetwindowView(Lorg/telegram/ui/Components/ScrimOptions;)Landroid/widget/FrameLayout;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/ScrimOptions;->windowView:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputopenProgress(Lorg/telegram/ui/Components/ScrimOptions;F)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/Components/ScrimOptions;->openProgress:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 2

    .line 87
    sget v0, Lorg/telegram/messenger/R$style;->TransparentDialog:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 63
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    iput v0, p0, Lorg/telegram/ui/Components/ScrimOptions;->currentAccount:I

    .line 65
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/ScrimOptions;->insets:Landroid/graphics/Rect;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 84
    iput v0, p0, Lorg/telegram/ui/Components/ScrimOptions;->scrimDrawableSw:F

    iput v0, p0, Lorg/telegram/ui/Components/ScrimOptions;->scrimDrawableSh:F

    const/4 v0, 0x0

    .line 177
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ScrimOptions;->dismissing:Z

    .line 89
    iput-object p1, p0, Lorg/telegram/ui/Components/ScrimOptions;->context:Landroid/content/Context;

    .line 90
    iput-object p2, p0, Lorg/telegram/ui/Components/ScrimOptions;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 92
    new-instance p2, Lorg/telegram/ui/Components/ScrimOptions$1;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/Components/ScrimOptions$1;-><init>(Lorg/telegram/ui/Components/ScrimOptions;Landroid/content/Context;)V

    iput-object p2, p0, Lorg/telegram/ui/Components/ScrimOptions;->windowView:Landroid/widget/FrameLayout;

    .line 135
    new-instance v1, Lorg/telegram/ui/Components/ScrimOptions$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/ScrimOptions$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Components/ScrimOptions;)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    new-instance v1, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-direct {v1, p1}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/ScrimOptions;->containerView:Landroid/widget/FrameLayout;

    .line 138
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    const/4 p1, -0x1

    const/16 v0, 0x77

    .line 139
    invoke-static {p1, p1, v0}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {p2, v1, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x1

    .line 142
    invoke-virtual {p2, p1}, Landroid/view/View;->setFitsSystemWindows(Z)V

    .line 143
    new-instance p1, Lorg/telegram/ui/Components/ScrimOptions$2;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/ScrimOptions$2;-><init>(Lorg/telegram/ui/Components/ScrimOptions;)V

    invoke-virtual {p2, p1}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    return-void
.end method

.method private animateOpenTo(ZFLjava/lang/Runnable;)V
    .locals 3

    .line 211
    iget-object p2, p0, Lorg/telegram/ui/Components/ScrimOptions;->openAnimator:Landroid/animation/ValueAnimator;

    if-eqz p2, :cond_0

    .line 212
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->cancel()V

    .line 219
    :cond_0
    iget p2, p0, Lorg/telegram/ui/Components/ScrimOptions;->openProgress:F

    if-eqz p1, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p2, v1, v2

    const/4 p2, 0x1

    aput v0, v1, p2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    iput-object p2, p0, Lorg/telegram/ui/Components/ScrimOptions;->openAnimator:Landroid/animation/ValueAnimator;

    .line 220
    new-instance v0, Lorg/telegram/ui/Components/ScrimOptions$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/ScrimOptions$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/ScrimOptions;)V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 239
    iget-object p2, p0, Lorg/telegram/ui/Components/ScrimOptions;->openAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lorg/telegram/ui/Components/ScrimOptions$3;

    invoke-direct {v0, p0, p1, p3}, Lorg/telegram/ui/Components/ScrimOptions$3;-><init>(Lorg/telegram/ui/Components/ScrimOptions;ZLjava/lang/Runnable;)V

    invoke-virtual {p2, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 265
    iget-object p1, p0, Lorg/telegram/ui/Components/ScrimOptions;->openAnimator:Landroid/animation/ValueAnimator;

    sget-object p2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 266
    iget-object p1, p0, Lorg/telegram/ui/Components/ScrimOptions;->openAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 p2, 0x15e

    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 267
    iget-object p1, p0, Lorg/telegram/ui/Components/ScrimOptions;->openAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private animateOpenTo(ZLjava/lang/Runnable;)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 208
    invoke-direct {p0, p1, v0, p2}, Lorg/telegram/ui/Components/ScrimOptions;->animateOpenTo(ZFLjava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$animateOpenTo$5(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 221
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/ScrimOptions;->openProgress:F

    .line 223
    iget-object v0, p0, Lorg/telegram/ui/Components/ScrimOptions;->optionsView:Landroid/view/View;

    const v1, 0x3f4ccccd    # 0.8f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v1, v2, p1}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setScaleX(F)V

    .line 224
    iget-object p1, p0, Lorg/telegram/ui/Components/ScrimOptions;->optionsView:Landroid/view/View;

    iget v0, p0, Lorg/telegram/ui/Components/ScrimOptions;->openProgress:F

    invoke-static {v1, v2, v0}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    .line 225
    iget-object p1, p0, Lorg/telegram/ui/Components/ScrimOptions;->optionsView:Landroid/view/View;

    iget v0, p0, Lorg/telegram/ui/Components/ScrimOptions;->openProgress:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 236
    iget-object p1, p0, Lorg/telegram/ui/Components/ScrimOptions;->windowView:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 237
    iget-object p1, p0, Lorg/telegram/ui/Components/ScrimOptions;->containerView:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private synthetic lambda$dismiss$1()V
    .locals 0

    .line 192
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method private synthetic lambda$dismiss$2()V
    .locals 1

    .line 192
    new-instance v0, Lorg/telegram/ui/Components/ScrimOptions$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/ScrimOptions$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Components/ScrimOptions;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$dismissFast$3()V
    .locals 0

    .line 201
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method private synthetic lambda$dismissFast$4()V
    .locals 1

    .line 201
    new-instance v0, Lorg/telegram/ui/Components/ScrimOptions$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/ScrimOptions$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Components/ScrimOptions;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .locals 0

    .line 135
    invoke-virtual {p0}, Landroid/app/Dialog;->onBackPressed()V

    return-void
.end method

.method private synthetic lambda$prepareBlur$6(Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 2

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 311
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 313
    :cond_0
    iput-object p2, p0, Lorg/telegram/ui/Components/ScrimOptions;->blurBitmap:Landroid/graphics/Bitmap;

    .line 315
    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/Components/ScrimOptions;->blurBitmapPaint:Landroid/graphics/Paint;

    .line 316
    new-instance p2, Landroid/graphics/BitmapShader;

    iget-object v0, p0, Lorg/telegram/ui/Components/ScrimOptions;->blurBitmap:Landroid/graphics/Bitmap;

    sget-object v1, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {p2, v0, v1, v1}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object p2, p0, Lorg/telegram/ui/Components/ScrimOptions;->blurBitmapShader:Landroid/graphics/BitmapShader;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 317
    new-instance p1, Landroid/graphics/ColorMatrix;

    invoke-direct {p1}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 318
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->isCurrentThemeDark()Z

    move-result p2

    if-eqz p2, :cond_1

    const p2, 0x3da3d70a    # 0.08f

    goto :goto_0

    :cond_1
    const/high16 p2, 0x3e800000    # 0.25f

    :goto_0
    invoke-static {p1, p2}, Lorg/telegram/messenger/AndroidUtilities;->adjustSaturationColorMatrix(Landroid/graphics/ColorMatrix;F)V

    .line 319
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->isCurrentThemeDark()Z

    move-result p2

    if-eqz p2, :cond_2

    const p2, -0x435c28f6    # -0.02f

    goto :goto_1

    :cond_2
    const p2, -0x4270a3d7    # -0.07f

    :goto_1
    invoke-static {p1, p2}, Lorg/telegram/messenger/AndroidUtilities;->adjustBrightnessColorMatrix(Landroid/graphics/ColorMatrix;F)V

    .line 320
    iget-object p2, p0, Lorg/telegram/ui/Components/ScrimOptions;->blurBitmapPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v0, p1}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 321
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/ScrimOptions;->blurMatrix:Landroid/graphics/Matrix;

    return-void
.end method

.method private prepareBlur(Landroid/view/View;)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x4

    .line 307
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 309
    :cond_0
    new-instance v0, Lorg/telegram/ui/Components/ScrimOptions$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Components/ScrimOptions$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/ScrimOptions;Landroid/view/View;)V

    const/high16 p1, 0x41600000    # 14.0f

    invoke-static {v0, p1}, Lorg/telegram/messenger/AndroidUtilities;->makeGlobalBlurBitmap(Lorg/telegram/messenger/Utilities$Callback;F)V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    .line 189
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ScrimOptions;->dismissing:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 190
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ScrimOptions;->dismissing:Z

    .line 191
    new-instance v0, Lorg/telegram/ui/Components/ScrimOptions$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/ScrimOptions$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/ScrimOptions;)V

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lorg/telegram/ui/Components/ScrimOptions;->animateOpenTo(ZLjava/lang/Runnable;)V

    .line 194
    iget-object v0, p0, Lorg/telegram/ui/Components/ScrimOptions;->windowView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public dismissFast()V
    .locals 3

    .line 198
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ScrimOptions;->dismissing:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 199
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ScrimOptions;->dismissing:Z

    .line 200
    new-instance v0, Lorg/telegram/ui/Components/ScrimOptions$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/ScrimOptions$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/ScrimOptions;)V

    const/4 v1, 0x0

    const/high16 v2, 0x40000000    # 2.0f

    invoke-direct {p0, v1, v2, v0}, Lorg/telegram/ui/Components/ScrimOptions;->animateOpenTo(ZFLjava/lang/Runnable;)V

    .line 203
    iget-object v0, p0, Lorg/telegram/ui/Components/ScrimOptions;->windowView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public isShowing()Z
    .locals 1

    .line 174
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ScrimOptions;->dismissing:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public layout()V
    .locals 13

    .line 327
    iget-object v0, p0, Lorg/telegram/ui/Components/ScrimOptions;->scrimDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    .line 328
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 333
    iget-object v1, p0, Lorg/telegram/ui/Components/ScrimOptions;->optionsContainer:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_3

    .line 334
    iget v2, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v3, p0, Lorg/telegram/ui/Components/ScrimOptions;->scrimDrawableTx2:F

    add-float/2addr v2, v3

    .line 335
    iget v4, v0, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    add-float/2addr v4, v3

    .line 336
    iget v3, v0, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    iget v5, p0, Lorg/telegram/ui/Components/ScrimOptions;->scrimDrawableTy2:F

    add-float/2addr v3, v5

    .line 337
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    add-float/2addr v0, v5

    .line 341
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    sub-float v1, v4, v1

    const/high16 v5, 0x41000000    # 8.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    cmpg-float v1, v1, v6

    const/high16 v6, 0x40800000    # 4.0f

    const/4 v7, 0x1

    const/high16 v8, 0x41200000    # 10.0f

    const/4 v9, 0x0

    const/high16 v10, 0x40c00000    # 6.0f

    if-gez v1, :cond_0

    .line 342
    iget-object v1, p0, Lorg/telegram/ui/Components/ScrimOptions;->optionsView:Landroid/view/View;

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v1, v5}, Landroid/view/View;->setPivotX(F)V

    .line 343
    iget-object v1, p0, Lorg/telegram/ui/Components/ScrimOptions;->optionsContainer:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lorg/telegram/ui/Components/ScrimOptions;->containerView:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    iget-object v11, p0, Lorg/telegram/ui/Components/ScrimOptions;->optionsContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v11}, Landroid/view/View;->getWidth()I

    move-result v11

    sub-int/2addr v5, v11

    int-to-float v5, v5

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    int-to-float v11, v11

    sub-float v11, v2, v11

    invoke-static {v5, v11}, Ljava/lang/Math;->min(FF)F

    move-result v5

    iget-object v11, p0, Lorg/telegram/ui/Components/ScrimOptions;->containerView:Landroid/widget/FrameLayout;

    invoke-virtual {v11}, Landroid/view/View;->getX()F

    move-result v11

    sub-float/2addr v5, v11

    invoke-virtual {v1, v5}, Landroid/view/View;->setX(F)V

    move v1, v9

    goto :goto_0

    .line 346
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/ScrimOptions;->optionsView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    sub-int/2addr v11, v12

    int-to-float v11, v11

    invoke-virtual {v1, v11}, Landroid/view/View;->setPivotX(F)V

    .line 347
    iget-object v1, p0, Lorg/telegram/ui/Components/ScrimOptions;->optionsContainer:Landroid/widget/FrameLayout;

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    int-to-float v11, v11

    add-float/2addr v11, v4

    iget-object v12, p0, Lorg/telegram/ui/Components/ScrimOptions;->optionsContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v12

    int-to-float v12, v12

    sub-float/2addr v11, v12

    invoke-static {v5, v11}, Ljava/lang/Math;->max(FF)F

    move-result v5

    iget-object v11, p0, Lorg/telegram/ui/Components/ScrimOptions;->containerView:Landroid/widget/FrameLayout;

    invoke-virtual {v11}, Landroid/view/View;->getX()F

    move-result v11

    sub-float/2addr v5, v11

    invoke-virtual {v1, v5}, Landroid/view/View;->setX(F)V

    move v1, v7

    :goto_0
    if-eqz v1, :cond_1

    .line 349
    iget-object v2, p0, Lorg/telegram/ui/Components/ScrimOptions;->optionsContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/view/View;->getX()F

    move-result v2

    iget-object v5, p0, Lorg/telegram/ui/Components/ScrimOptions;->optionsContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v2, v5

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v2, v5

    sub-float/2addr v2, v4

    goto :goto_1

    :cond_1
    iget-object v4, p0, Lorg/telegram/ui/Components/ScrimOptions;->optionsContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/view/View;->getX()F

    move-result v4

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    sub-float v2, v4, v2

    :goto_1
    iput v2, p0, Lorg/telegram/ui/Components/ScrimOptions;->scrimDrawableTx1:F

    const/4 v2, 0x0

    .line 350
    iput v2, p0, Lorg/telegram/ui/Components/ScrimOptions;->scrimDrawableTy1:F

    .line 352
    iget-object v2, p0, Lorg/telegram/ui/Components/ScrimOptions;->optionsContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v0

    iget-object v4, p0, Lorg/telegram/ui/Components/ScrimOptions;->windowView:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    const/high16 v5, 0x41800000    # 16.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    sub-int/2addr v4, v8

    int-to-float v4, v4

    cmpl-float v2, v2, v4

    if-lez v2, :cond_2

    .line 354
    iget-object v0, p0, Lorg/telegram/ui/Components/ScrimOptions;->optionsView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int/2addr v2, v4

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setPivotY(F)V

    .line 355
    iget-object v0, p0, Lorg/telegram/ui/Components/ScrimOptions;->optionsContainer:Landroid/widget/FrameLayout;

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v3, v2

    iget-object v2, p0, Lorg/telegram/ui/Components/ScrimOptions;->optionsContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v3, v2

    iget-object v2, p0, Lorg/telegram/ui/Components/ScrimOptions;->containerView:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v2

    sub-float/2addr v3, v2

    invoke-virtual {v0, v3}, Landroid/view/View;->setY(F)V

    goto :goto_2

    .line 357
    :cond_2
    iget-object v2, p0, Lorg/telegram/ui/Components/ScrimOptions;->optionsView:Landroid/view/View;

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setPivotY(F)V

    .line 358
    iget-object v2, p0, Lorg/telegram/ui/Components/ScrimOptions;->optionsContainer:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lorg/telegram/ui/Components/ScrimOptions;->windowView:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/Components/ScrimOptions;->optionsContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-static {v3, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget-object v3, p0, Lorg/telegram/ui/Components/ScrimOptions;->containerView:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/view/View;->getY()F

    move-result v3

    sub-float/2addr v0, v3

    invoke-virtual {v2, v0}, Landroid/view/View;->setY(F)V

    move v7, v9

    .line 360
    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/Components/ScrimOptions;->options:Lorg/telegram/ui/Components/ItemOptions;

    invoke-virtual {v0, v1, v7}, Lorg/telegram/ui/Components/ItemOptions;->setSwipebackGravity(ZZ)Lorg/telegram/ui/Components/ItemOptions;

    :cond_3
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 273
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 275
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    .line 276
    sget v0, Lorg/telegram/messenger/R$style;->DialogNoAnimation:I

    invoke-virtual {p1, v0}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 277
    iget-object v0, p0, Lorg/telegram/ui/Components/ScrimOptions;->windowView:Landroid/widget/FrameLayout;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 279
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 280
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 281
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    const/16 v1, 0x77

    .line 282
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 v1, 0x0

    .line 283
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 284
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v1, v1, -0x3

    const/16 v2, 0x10

    .line 285
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    const/high16 v2, 0x20000

    or-int/2addr v2, v1

    .line 286
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 287
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const v3, -0x73fcfa80

    or-int/2addr v1, v3

    .line 295
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/16 v1, 0x1c

    const/4 v3, 0x1

    if-lt v2, v1, :cond_0

    .line 297
    invoke-static {v0, v3}, Lorg/telegram/messenger/AndroidUtilities$$ExternalSyntheticApiModelOutline2;->m(Landroid/view/WindowManager$LayoutParams;I)V

    .line 299
    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 301
    iget-object p1, p0, Lorg/telegram/ui/Components/ScrimOptions;->windowView:Landroid/widget/FrameLayout;

    const/16 v0, 0x100

    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 302
    iget-object p1, p0, Lorg/telegram/ui/Components/ScrimOptions;->windowView:Landroid/widget/FrameLayout;

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->isCurrentThemeDark()Z

    move-result v0

    xor-int/2addr v0, v3

    invoke-static {p1, v0}, Lorg/telegram/messenger/AndroidUtilities;->setLightNavigationBar(Landroid/view/View;Z)V

    return-void
.end method

.method public setItemOptions(Lorg/telegram/ui/Components/ItemOptions;)V
    .locals 4

    .line 166
    iput-object p1, p0, Lorg/telegram/ui/Components/ScrimOptions;->options:Lorg/telegram/ui/Components/ItemOptions;

    .line 167
    invoke-virtual {p1}, Lorg/telegram/ui/Components/ItemOptions;->getLayout()Landroid/view/ViewGroup;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/ScrimOptions;->optionsView:Landroid/view/View;

    .line 168
    new-instance p1, Landroid/widget/FrameLayout;

    iget-object v0, p0, Lorg/telegram/ui/Components/ScrimOptions;->context:Landroid/content/Context;

    invoke-direct {p1, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/ScrimOptions;->optionsContainer:Landroid/widget/FrameLayout;

    .line 169
    iget-object v0, p0, Lorg/telegram/ui/Components/ScrimOptions;->optionsView:Landroid/view/View;

    const/4 v1, -0x2

    const/high16 v2, -0x40000000    # -2.0f

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {p1, v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 170
    iget-object p1, p0, Lorg/telegram/ui/Components/ScrimOptions;->containerView:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lorg/telegram/ui/Components/ScrimOptions;->optionsContainer:Landroid/widget/FrameLayout;

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setScrim(Lorg/telegram/ui/Cells/ChatMessageCell;Landroid/text/style/CharacterStyle;Ljava/lang/CharSequence;)V
    .locals 28

    move-object/from16 v1, p0

    move-object/from16 v4, p1

    move-object/from16 v0, p2

    if-nez v4, :cond_0

    goto/16 :goto_18

    .line 371
    :cond_0
    iput-object v4, v1, Lorg/telegram/ui/Components/ScrimOptions;->scrimCell:Lorg/telegram/ui/Cells/ChatMessageCell;

    .line 372
    invoke-virtual {v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCurrentMessagesGroup()Lorg/telegram/messenger/MessageObject$GroupedMessages;

    move-result-object v2

    const/4 v12, 0x0

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    move v2, v12

    :goto_0
    iput-boolean v2, v1, Lorg/telegram/ui/Components/ScrimOptions;->isGroup:Z

    .line 381
    invoke-virtual {v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v2

    .line 383
    invoke-virtual {v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCaptionLayout()Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 384
    invoke-virtual {v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCaptionX()F

    move-result v3

    .line 385
    invoke-virtual {v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCaptionY()F

    move-result v7

    .line 386
    invoke-virtual {v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCaptionLayout()Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;

    move-result-object v8

    iget-object v8, v8, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->textLayoutBlocks:Ljava/util/ArrayList;

    .line 387
    invoke-virtual {v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCaptionLayout()Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;

    move-result-object v9

    iget v9, v9, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->textXOffset:F

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_1
    if-nez v8, :cond_3

    .line 390
    invoke-virtual {v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->getTextX()I

    move-result v3

    int-to-float v3, v3

    .line 391
    invoke-virtual {v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->getTextY()I

    move-result v7

    int-to-float v7, v7

    iget v8, v4, Lorg/telegram/ui/Cells/ChatMessageCell;->transitionYOffsetForDrawables:F

    add-float/2addr v7, v8

    .line 392
    iget-object v8, v2, Lorg/telegram/messenger/MessageObject;->textLayoutBlocks:Ljava/util/ArrayList;

    .line 393
    iget v9, v2, Lorg/telegram/messenger/MessageObject;->textXOffset:F

    .line 395
    :cond_3
    const-class v10, Landroid/text/style/CharacterStyle;

    if-eqz v8, :cond_a

    move v13, v12

    .line 396
    :goto_2
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v13, v14, :cond_a

    .line 397
    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;

    .line 398
    iget-object v15, v14, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->textLayout:Landroid/text/StaticLayout;

    if-nez v15, :cond_4

    goto :goto_5

    .line 400
    :cond_4
    invoke-virtual {v15}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    instance-of v5, v5, Landroid/text/Spanned;

    if-nez v5, :cond_5

    goto :goto_5

    .line 402
    :cond_5
    invoke-virtual {v15}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Landroid/text/Spanned;

    invoke-virtual {v15}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/lang/CharSequence;->length()I

    move-result v6

    invoke-interface {v5, v12, v6, v10}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/text/style/CharacterStyle;

    if-nez v5, :cond_6

    goto :goto_5

    :cond_6
    move v6, v12

    .line 405
    :goto_3
    array-length v11, v5

    if-ge v6, v11, :cond_9

    .line 406
    aget-object v11, v5, v6

    if-ne v11, v0, :cond_8

    .line 416
    invoke-virtual {v15}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Landroid/text/Spanned;

    invoke-interface {v5, v0}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    .line 417
    invoke-virtual {v15}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    check-cast v6, Landroid/text/Spanned;

    invoke-interface {v6, v0}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v6

    .line 419
    invoke-virtual {v14}, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->isRtl()Z

    move-result v11

    if-eqz v11, :cond_7

    float-to-double v12, v9

    invoke-static {v12, v13}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v12

    double-to-int v9, v12

    goto :goto_4

    :cond_7
    const/4 v9, 0x0

    :goto_4
    int-to-float v9, v9

    add-float/2addr v3, v9

    .line 420
    iget v9, v14, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->padTop:I

    int-to-float v9, v9

    iget-object v12, v4, Lorg/telegram/ui/Cells/ChatMessageCell;->transitionParams:Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;

    invoke-virtual {v14, v8, v12}, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->textYOffset(Ljava/util/ArrayList;Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;)F

    move-result v8

    add-float/2addr v9, v8

    add-float/2addr v7, v9

    .line 422
    iget v8, v14, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->originalWidth:I

    goto :goto_6

    :cond_8
    add-int/lit8 v6, v6, 0x1

    const/4 v12, 0x0

    goto :goto_3

    :cond_9
    :goto_5
    add-int/lit8 v13, v13, 0x1

    const/4 v12, 0x0

    goto :goto_2

    :cond_a
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v15, 0x0

    :goto_6
    if-nez v15, :cond_10

    .line 427
    invoke-virtual {v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->getDescriptionlayout()Landroid/text/StaticLayout;

    move-result-object v9

    if-eqz v9, :cond_10

    .line 428
    invoke-virtual {v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->getDescriptionlayout()Landroid/text/StaticLayout;

    move-result-object v9

    const/4 v12, 0x0

    :goto_7
    if-nez v12, :cond_10

    if-nez v9, :cond_b

    goto :goto_9

    .line 431
    :cond_b
    invoke-virtual {v9}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v13

    instance-of v13, v13, Landroid/text/Spanned;

    if-nez v13, :cond_c

    goto :goto_9

    .line 433
    :cond_c
    invoke-virtual {v9}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v13

    check-cast v13, Landroid/text/Spanned;

    invoke-virtual {v9}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v14

    invoke-interface {v14}, Ljava/lang/CharSequence;->length()I

    move-result v14

    const/4 v11, 0x0

    invoke-interface {v13, v11, v14, v10}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Landroid/text/style/CharacterStyle;

    if-nez v13, :cond_d

    goto :goto_9

    :cond_d
    const/4 v14, 0x0

    .line 436
    :goto_8
    array-length v11, v13

    if-ge v14, v11, :cond_f

    .line 437
    aget-object v11, v13, v14

    if-ne v11, v0, :cond_e

    .line 446
    invoke-virtual {v9}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Landroid/text/Spanned;

    invoke-interface {v3, v0}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v3

    .line 447
    invoke-virtual {v9}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Landroid/text/Spanned;

    invoke-interface {v5, v0}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v5

    .line 449
    invoke-virtual {v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->getDescriptionLayoutX()F

    move-result v6

    .line 450
    invoke-virtual {v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->getDescriptionLayoutY()F

    move-result v7

    .line 452
    invoke-virtual {v9}, Landroid/text/Layout;->getWidth()I

    move-result v8

    move v15, v5

    move v5, v3

    move v3, v6

    move v6, v15

    move-object v15, v9

    goto :goto_9

    :cond_e
    add-int/lit8 v14, v14, 0x1

    goto :goto_8

    :cond_f
    :goto_9
    add-int/lit8 v12, v12, 0x1

    goto :goto_7

    :cond_10
    if-nez v15, :cond_18

    .line 456
    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->isTodo()Z

    move-result v9

    if-nez v9, :cond_11

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->isPoll()Z

    move-result v9

    if-eqz v9, :cond_18

    .line 457
    :cond_11
    invoke-virtual {v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->getPollButtons()Ljava/util/ArrayList;

    move-result-object v9

    if-eqz v9, :cond_18

    const/4 v12, 0x0

    .line 459
    :goto_a
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v12, v11, :cond_17

    .line 460
    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    move-object v13, v11

    check-cast v13, Lorg/telegram/ui/Cells/ChatMessageCell$PollButton;

    .line 461
    iget-object v14, v13, Lorg/telegram/ui/Cells/ChatMessageCell$PollButton;->title:Landroid/text/StaticLayout;

    if-nez v14, :cond_12

    :goto_b
    move/from16 v20, v3

    move/from16 v19, v5

    goto :goto_d

    .line 464
    :cond_12
    invoke-virtual {v14}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v11

    instance-of v11, v11, Landroid/text/Spanned;

    if-nez v11, :cond_13

    goto :goto_b

    .line 466
    :cond_13
    invoke-virtual {v14}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v11

    check-cast v11, Landroid/text/Spanned;

    invoke-virtual {v14}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v19

    move/from16 v20, v3

    invoke-interface/range {v19 .. v19}, Ljava/lang/CharSequence;->length()I

    move-result v3

    move/from16 v19, v5

    const/4 v5, 0x0

    invoke-interface {v11, v5, v3, v10}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/text/style/CharacterStyle;

    if-nez v3, :cond_14

    goto :goto_d

    :cond_14
    const/4 v5, 0x0

    .line 469
    :goto_c
    array-length v11, v3

    if-ge v5, v11, :cond_16

    .line 470
    aget-object v11, v3, v5

    if-ne v11, v0, :cond_15

    .line 479
    invoke-virtual {v14}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Landroid/text/Spanned;

    invoke-interface {v3, v0}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v3

    .line 480
    invoke-virtual {v14}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Landroid/text/Spanned;

    invoke-interface {v5, v0}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v5

    .line 482
    iget v6, v13, Lorg/telegram/ui/Cells/ChatMessageCell$PollButton;->titleX:F

    .line 483
    iget v7, v13, Lorg/telegram/ui/Cells/ChatMessageCell$PollButton;->titleY:F

    .line 485
    invoke-virtual {v14}, Landroid/text/Layout;->getWidth()I

    move-result v8

    move v15, v5

    move v5, v3

    move v3, v6

    move v6, v15

    move-object v15, v14

    goto :goto_e

    :cond_15
    add-int/lit8 v5, v5, 0x1

    goto :goto_c

    :cond_16
    :goto_d
    move/from16 v5, v19

    move/from16 v3, v20

    :goto_e
    add-int/lit8 v12, v12, 0x1

    goto :goto_a

    :cond_17
    move/from16 v20, v3

    move/from16 v19, v5

    move/from16 v11, v19

    :goto_f
    move/from16 v21, v8

    goto :goto_10

    :cond_18
    move v11, v5

    goto :goto_f

    :goto_10
    if-nez v15, :cond_19

    goto/16 :goto_18

    :cond_19
    if-eqz p3, :cond_1b

    .line 494
    invoke-virtual {v15, v11}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v0

    .line 495
    invoke-virtual {v15, v0}, Landroid/text/StaticLayout;->getLineTop(I)I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v7, v5

    .line 496
    invoke-virtual {v15, v11}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v5

    .line 497
    invoke-virtual {v15, v0}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v0

    .line 499
    new-instance v8, Lorg/telegram/ui/Components/LinkPath;

    const/4 v9, 0x1

    invoke-direct {v8, v9}, Lorg/telegram/ui/Components/LinkPath;-><init>(Z)V

    const/4 v10, 0x0

    .line 500
    invoke-virtual {v8, v15, v11, v10}, Lorg/telegram/ui/Components/LinkPath;->setCurrentLayout(Landroid/text/Layout;IF)V

    .line 501
    invoke-virtual {v15, v11, v6, v8}, Landroid/text/Layout;->getSelectionPath(IILandroid/graphics/Path;)V

    .line 502
    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6}, Landroid/graphics/RectF;-><init>()V

    .line 503
    invoke-virtual {v8, v6, v9}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 505
    invoke-virtual {v15}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    move-result-object v23

    invoke-virtual {v15}, Landroid/text/Layout;->getWidth()I

    move-result v24

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/high16 v25, 0x3f800000    # 1.0f

    move-object/from16 v22, p3

    invoke-static/range {v22 .. v27}, Lorg/telegram/messenger/MessageObject;->makeStaticLayout(Ljava/lang/CharSequence;Landroid/text/TextPaint;IFFZ)Landroid/text/StaticLayout;

    move-result-object v15

    .line 507
    invoke-interface/range {p3 .. p3}, Ljava/lang/CharSequence;->length()I

    move-result v8

    .line 508
    invoke-virtual {v15}, Landroid/text/Layout;->getWidth()I

    move-result v9

    int-to-float v9, v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 509
    :goto_11
    invoke-virtual {v15}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v12

    if-ge v11, v12, :cond_1a

    .line 510
    invoke-virtual {v15, v11}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v12

    invoke-static {v9, v12}, Ljava/lang/Math;->min(FF)F

    move-result v9

    .line 511
    invoke-virtual {v15, v11}, Landroid/text/Layout;->getLineRight(I)F

    move-result v12

    invoke-static {v10, v12}, Ljava/lang/Math;->max(FF)F

    move-result v10

    add-int/lit8 v11, v11, 0x1

    goto :goto_11

    :cond_1a
    sub-float/2addr v10, v9

    const/4 v9, 0x0

    .line 514
    invoke-static {v9, v10}, Ljava/lang/Math;->max(FF)F

    move-result v10

    sub-float/2addr v0, v10

    invoke-static {v5, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v9, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    add-float/2addr v3, v0

    move-object v13, v6

    move v6, v8

    const/4 v11, 0x0

    :goto_12
    move v12, v3

    move v14, v7

    goto :goto_13

    :cond_1b
    const/4 v13, 0x0

    goto :goto_12

    .line 517
    :goto_13
    new-instance v9, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {v9, v0}, Landroid/graphics/Paint;-><init>(I)V

    .line 518
    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z

    move-result v0

    if-eqz v0, :cond_1c

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outBubble:I

    goto :goto_14

    :cond_1c
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inBubble:I

    :goto_14
    iget-object v3, v1, Lorg/telegram/ui/Components/ScrimOptions;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v0, v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v0

    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 519
    new-instance v0, Landroid/graphics/CornerPathEffect;

    const/high16 v3, 0x40a00000    # 5.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    invoke-direct {v0, v5}, Landroid/graphics/CornerPathEffect;-><init>(F)V

    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 521
    new-instance v0, Lorg/telegram/ui/Components/LinkPath;

    const/4 v5, 0x1

    invoke-direct {v0, v5}, Lorg/telegram/ui/Components/LinkPath;-><init>(Z)V

    .line 522
    invoke-virtual {v0, v5}, Lorg/telegram/ui/Components/CornerPath;->setUseCornerPathImplementation(Z)V

    const/4 v10, 0x0

    .line 523
    invoke-virtual {v0, v15, v11, v10}, Lorg/telegram/ui/Components/LinkPath;->setCurrentLayout(Landroid/text/Layout;IF)V

    .line 524
    invoke-virtual {v15, v11, v6, v0}, Landroid/text/Layout;->getSelectionPath(IILandroid/graphics/Path;)V

    .line 525
    invoke-virtual {v0}, Lorg/telegram/ui/Components/CornerPath;->closeRects()V

    .line 527
    new-instance v7, Landroid/graphics/RectF;

    invoke-direct {v7}, Landroid/graphics/RectF;-><init>()V

    .line 528
    invoke-virtual {v0, v7, v5}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 531
    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v5

    invoke-static {}, Lorg/telegram/ui/Components/LinkPath;->getRadius()I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v5, v8

    float-to-int v5, v5

    .line 532
    invoke-virtual {v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->drawBackgroundInParent()Z

    move-result v8

    const/4 v10, -0x1

    if-eqz v8, :cond_1d

    if-lez v5, :cond_1d

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v8

    const/16 v18, 0x0

    cmpl-float v8, v8, v18

    if-lez v8, :cond_1e

    .line 533
    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v8

    float-to-int v8, v8

    move/from16 p2, v3

    sget-object v3, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v8, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 534
    new-instance v8, Landroid/graphics/Canvas;

    invoke-direct {v8, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 535
    new-instance v1, Landroid/graphics/Paint;

    move-object/from16 v16, v3

    const/4 v3, 0x1

    invoke-direct {v1, v3}, Landroid/graphics/Paint;-><init>(I)V

    .line 536
    invoke-virtual {v1, v10}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v5, v5

    .line 537
    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v26

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v27, v1

    move/from16 v25, v5

    move-object/from16 v22, v8

    invoke-virtual/range {v22 .. v27}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    move-object/from16 v1, v22

    .line 538
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5, v3}, Landroid/graphics/Paint;-><init>(I)V

    .line 539
    invoke-virtual {v5, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 540
    new-instance v3, Landroid/graphics/CornerPathEffect;

    invoke-static/range {p2 .. p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    int-to-float v8, v8

    invoke-direct {v3, v8}, Landroid/graphics/CornerPathEffect;-><init>(F)V

    invoke-virtual {v5, v3}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 541
    new-instance v3, Landroid/graphics/PorterDuffXfermode;

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v8}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v5, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 542
    iget v3, v7, Landroid/graphics/RectF;->left:F

    neg-float v3, v3

    iget v8, v7, Landroid/graphics/RectF;->top:F

    neg-float v8, v8

    invoke-virtual {v1, v3, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 543
    invoke-virtual {v1, v0, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    move-object/from16 v5, v16

    goto :goto_15

    :cond_1d
    const/16 v18, 0x0

    :cond_1e
    const/4 v5, 0x0

    .line 546
    :goto_15
    new-instance v8, Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-direct {v8, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 547
    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v8, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 549
    invoke-virtual {v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->setupTextColors()V

    .line 550
    new-instance v1, Landroid/text/TextPaint;

    invoke-virtual {v15}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    .line 551
    invoke-virtual {v15}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    .line 552
    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-virtual {v15}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v15

    move-object/from16 p2, v0

    invoke-virtual {v1}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    invoke-static {v15, v10, v0}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->cloneSpans(Ljava/lang/CharSequence;ILandroid/graphics/Paint$FontMetricsInt;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {v3, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const/16 v0, 0x21

    if-lez v11, :cond_1f

    .line 556
    new-instance v10, Landroid/text/style/ForegroundColorSpan;

    const/4 v15, 0x0

    invoke-direct {v10, v15}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-interface {v3, v10, v15, v11, v0}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_16

    :cond_1f
    const/4 v15, 0x0

    .line 558
    :goto_16
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v10

    if-ge v6, v10, :cond_20

    .line 559
    new-instance v10, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v10, v15}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v15

    invoke-interface {v3, v10, v6, v15, v0}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 562
    :cond_20
    iget v0, v2, Lorg/telegram/messenger/MessageObject;->totalAnimatedEmojiCount:I

    const/4 v2, 0x4

    if-lt v0, v2, :cond_21

    const/high16 v6, -0x40800000    # -1.0f

    move/from16 v23, v6

    goto :goto_17

    :cond_21
    move/from16 v23, v18

    :goto_17
    const/16 v24, 0x0

    const/high16 v22, 0x3f800000    # 1.0f

    move-object/from16 v20, v1

    move-object/from16 v19, v3

    invoke-static/range {v19 .. v24}, Lorg/telegram/messenger/MessageObject;->makeStaticLayout(Ljava/lang/CharSequence;Landroid/text/TextPaint;IFFZ)Landroid/text/StaticLayout;

    move-result-object v10

    const/4 v0, 0x2

    .line 563
    new-array v0, v0, [I

    .line 564
    invoke-virtual {v4, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v11, 0x0

    .line 566
    aget v1, v0, v11

    float-to-int v2, v12

    add-int/2addr v1, v2

    const/16 v17, 0x1

    .line 567
    aget v2, v0, v17

    float-to-int v3, v14

    add-int/2addr v2, v3

    filled-new-array {v1, v2}, [I

    move-result-object v3

    move-object v6, v5

    move-object v5, v0

    .line 569
    new-instance v0, Lorg/telegram/ui/Components/ScrimOptions$4;

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-direct/range {v0 .. v10}, Lorg/telegram/ui/Components/ScrimOptions$4;-><init>(Lorg/telegram/ui/Components/ScrimOptions;Lorg/telegram/ui/Components/LinkPath;[ILorg/telegram/ui/Cells/ChatMessageCell;[ILandroid/graphics/Bitmap;Landroid/graphics/RectF;Landroid/graphics/Paint;Landroid/graphics/Paint;Landroid/text/StaticLayout;)V

    iput-object v0, v1, Lorg/telegram/ui/Components/ScrimOptions;->scrimDrawable:Landroid/graphics/drawable/Drawable;

    .line 622
    aget v0, v5, v11

    int-to-float v0, v0

    add-float/2addr v0, v12

    iget v2, v7, Landroid/graphics/RectF;->left:F

    add-float/2addr v0, v2

    invoke-static {}, Lorg/telegram/ui/Components/LinkPath;->getRadius()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float/2addr v0, v2

    float-to-int v0, v0

    const/16 v17, 0x1

    .line 623
    aget v2, v5, v17

    int-to-float v2, v2

    add-float/2addr v2, v14

    iget v3, v7, Landroid/graphics/RectF;->top:F

    add-float/2addr v2, v3

    float-to-int v2, v2

    .line 624
    iget-object v3, v1, Lorg/telegram/ui/Components/ScrimOptions;->scrimDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v4

    float-to-int v4, v4

    add-int/2addr v4, v0

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v5

    float-to-int v5, v5

    add-int/2addr v5, v2

    invoke-virtual {v3, v0, v2, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    if-eqz p3, :cond_24

    int-to-float v0, v0

    .line 627
    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v3

    add-float/2addr v3, v0

    sget-object v4, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    const/high16 v5, 0x41000000    # 8.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    sub-int/2addr v4, v6

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_22

    .line 628
    iget v3, v1, Lorg/telegram/ui/Components/ScrimOptions;->scrimDrawableTx2:F

    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v4

    add-float/2addr v0, v4

    sget-object v4, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    sub-int/2addr v4, v6

    int-to-float v4, v4

    sub-float/2addr v0, v4

    sub-float/2addr v3, v0

    iput v3, v1, Lorg/telegram/ui/Components/ScrimOptions;->scrimDrawableTx2:F

    :cond_22
    int-to-float v0, v2

    .line 630
    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v2

    add-float/2addr v2, v0

    sget-object v3, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    sget v4, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    sub-int/2addr v3, v4

    sget v4, Lorg/telegram/messenger/AndroidUtilities;->navigationBarHeight:I

    sub-int/2addr v3, v4

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_23

    .line 631
    iget v2, v1, Lorg/telegram/ui/Components/ScrimOptions;->scrimDrawableTy2:F

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v3

    add-float/2addr v0, v3

    sget-object v3, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    sget v4, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    sub-int/2addr v3, v4

    sget v4, Lorg/telegram/messenger/AndroidUtilities;->navigationBarHeight:I

    sub-int/2addr v3, v4

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    sub-float/2addr v0, v3

    sub-float/2addr v2, v0

    iput v2, v1, Lorg/telegram/ui/Components/ScrimOptions;->scrimDrawableTy2:F

    :cond_23
    if-eqz v13, :cond_24

    .line 634
    invoke-virtual {v13}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v2

    div-float/2addr v0, v2

    iput v0, v1, Lorg/telegram/ui/Components/ScrimOptions;->scrimDrawableSw:F

    .line 635
    invoke-virtual {v13}, Landroid/graphics/RectF;->height()F

    move-result v0

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v2

    div-float/2addr v0, v2

    iput v0, v1, Lorg/telegram/ui/Components/ScrimOptions;->scrimDrawableSh:F

    :cond_24
    :goto_18
    return-void
.end method

.method public show()V
    .locals 2

    .line 181
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->isSafeToShow(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 182
    :cond_0
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    const/4 v0, 0x0

    .line 183
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/ScrimOptions;->prepareBlur(Landroid/view/View;)V

    const/4 v1, 0x1

    .line 184
    invoke-direct {p0, v1, v0}, Lorg/telegram/ui/Components/ScrimOptions;->animateOpenTo(ZLjava/lang/Runnable;)V

    return-void
.end method
