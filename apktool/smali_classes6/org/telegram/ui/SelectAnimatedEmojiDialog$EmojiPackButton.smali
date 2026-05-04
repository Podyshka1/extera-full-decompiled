.class Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiPackButton;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/SelectAnimatedEmojiDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EmojiPackButton"
.end annotation


# instance fields
.field addButtonTextView:Lorg/telegram/ui/Components/AnimatedTextView;

.field addButtonView:Landroid/widget/FrameLayout;

.field private installFadeAway:Landroid/animation/ValueAnimator;

.field private lastTitle:Ljava/lang/String;

.field private lockAnimator:Landroid/animation/ValueAnimator;

.field private lockShow:Ljava/lang/Boolean;

.field private lockT:F

.field premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

.field final synthetic this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;


# direct methods
.method public static synthetic $r8$lambda$QbitCcGJLADMICUzrLa0R3ye4pw(Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiPackButton;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiPackButton;->lambda$updateInstall$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$YvRIHrnize62um2oKIH3cCaPMUk(Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiPackButton;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiPackButton;->lambda$updateLock$1(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Landroid/content/Context;)V
    .locals 7

    .line 3060
    iput-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiPackButton;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    .line 3061
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 3063
    new-instance v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiPackButton$1;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {v0, p0, p2, p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiPackButton$1;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiPackButton;Landroid/content/Context;Lorg/telegram/ui/SelectAnimatedEmojiDialog;)V

    iput-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiPackButton;->addButtonTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    const-wide/16 v4, 0xfa

    .line 3080
    sget-object v6, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const v1, 0x3e99999a    # 0.3f

    const-wide/16 v2, 0x0

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/ui/Components/AnimatedTextView;->setAnimationProperties(FJJLandroid/animation/TimeInterpolator;)V

    .line 3081
    iget-object p2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiPackButton;->addButtonTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    const/high16 v0, 0x41600000    # 14.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/AnimatedTextView;->setTextSize(F)V

    .line 3082
    iget-object p2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiPackButton;->addButtonTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/AnimatedTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 3083
    iget-object p2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiPackButton;->addButtonTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_buttonText:I

    invoke-static {p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgetresourcesProvider(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v0

    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/AnimatedTextView;->setTextColor(I)V

    .line 3084
    iget-object p2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiPackButton;->addButtonTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    const/16 v0, 0x11

    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/AnimatedTextView;->setGravity(I)V

    .line 3086
    new-instance p2, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p2, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiPackButton;->addButtonView:Landroid/widget/FrameLayout;

    .line 3087
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButton:I

    invoke-static {p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgetresourcesProvider(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    const/4 v2, 0x1

    new-array v2, v2, [F

    const/4 v3, 0x0

    const/high16 v4, 0x41000000    # 8.0f

    aput v4, v2, v3

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme$AdaptiveRipple;->filledRect(I[F)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 3088
    iget-object p2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiPackButton;->addButtonView:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiPackButton;->addButtonTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    const/4 v2, -0x2

    const/4 v4, -0x1

    invoke-static {v4, v2, v0}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p2, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3089
    iget-object p2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiPackButton;->addButtonView:Landroid/widget/FrameLayout;

    const/high16 v0, -0x40800000    # -1.0f

    invoke-static {v4, v0}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, p2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3091
    new-instance p2, Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgetresourcesProvider(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object p1

    invoke-direct {p2, v1, v3, p1}, Lorg/telegram/ui/Components/Premium/PremiumButtonView;-><init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object p2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiPackButton;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    .line 3092
    sget p1, Lorg/telegram/messenger/R$raw;->unlock_icon:I

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->setIcon(I)V

    .line 3093
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiPackButton;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    invoke-static {v4, v0}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private synthetic lambda$updateInstall$0(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 3136
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiPackButton;->addButtonView:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 3137
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$updateLock$1(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 3167
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiPackButton;->lockT:F

    .line 3168
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiPackButton;->addButtonView:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p1

    .line 3169
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 3171
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiPackButton;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    if-eqz p1, :cond_1

    .line 3172
    iget v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiPackButton;->lockT:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    :cond_1
    return-void
.end method

.method private updateLock(ZZ)V
    .locals 4

    .line 3153
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiPackButton;->lockAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 3154
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v0, 0x0

    .line 3155
    iput-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiPackButton;->lockAnimator:Landroid/animation/ValueAnimator;

    .line 3158
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiPackButton;->lockShow:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-ne v0, p1, :cond_1

    return-void

    .line 3161
    :cond_1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiPackButton;->lockShow:Ljava/lang/Boolean;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz p2, :cond_3

    .line 3164
    iget-object p2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiPackButton;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    .line 3165
    iget p2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiPackButton;->lockT:F

    if-eqz p1, :cond_2

    move v1, v3

    :cond_2
    const/4 v0, 0x2

    new-array v0, v0, [F

    aput p2, v0, v2

    const/4 p2, 0x1

    aput v1, v0, p2

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    iput-object p2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiPackButton;->lockAnimator:Landroid/animation/ValueAnimator;

    .line 3166
    new-instance v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiPackButton$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiPackButton$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiPackButton;)V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 3175
    iget-object p2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiPackButton;->lockAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiPackButton$2;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiPackButton$2;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiPackButton;Z)V

    invoke-virtual {p2, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 3183
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiPackButton;->lockAnimator:Landroid/animation/ValueAnimator;

    sget-object p2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 3184
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiPackButton;->lockAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x15e

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 3185
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiPackButton;->lockAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void

    .line 3187
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_4

    move v1, v3

    :cond_4
    iput v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiPackButton;->lockT:F

    .line 3188
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiPackButton;->addButtonView:Landroid/widget/FrameLayout;

    sub-float/2addr v3, v1

    invoke-virtual {p1, v3}, Landroid/view/View;->setAlpha(F)V

    .line 3189
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiPackButton;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    iget p2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiPackButton;->lockT:F

    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    .line 3190
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiPackButton;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    iget p2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiPackButton;->lockT:F

    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleX(F)V

    .line 3191
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiPackButton;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    iget p2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiPackButton;->lockT:F

    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleY(F)V

    .line 3192
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiPackButton;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    iget-object p2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiPackButton;->lockShow:Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_5

    goto :goto_0

    :cond_5
    const/16 v2, 0x8

    :goto_0
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 3

    const/high16 p2, 0x40a00000    # 5.0f

    .line 3116
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    const/high16 v1, 0x41000000    # 8.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {p0, v0, v2, p2, v1}, Landroid/view/View;->setPadding(IIII)V

    const/high16 p2, 0x42300000    # 44.0f

    .line 3117
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    add-int/2addr p2, v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    add-int/2addr p2, v0

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public set(Ljava/lang/String;ZZLandroid/view/View$OnClickListener;)V
    .locals 4

    .line 3099
    iput-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiPackButton;->lastTitle:Ljava/lang/String;

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    .line 3101
    iget-object v2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiPackButton;->addButtonView:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 3102
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiPackButton;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3103
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiPackButton;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    sget v2, Lorg/telegram/messenger/R$string;->UnlockPremiumEmojiPack:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v1

    const-string p1, "UnlockPremiumEmojiPack"

    invoke-static {p1, v2, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p4}, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->setButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 3105
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiPackButton;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 3106
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiPackButton;->addButtonView:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3107
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiPackButton;->addButtonView:Landroid/widget/FrameLayout;

    invoke-virtual {p1, p4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3110
    :goto_0
    invoke-virtual {p0, p3, v1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiPackButton;->updateInstall(ZZ)V

    .line 3111
    invoke-direct {p0, p2, v1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiPackButton;->updateLock(ZZ)V

    return-void
.end method

.method public updateInstall(ZZ)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    .line 3124
    sget v2, Lorg/telegram/messenger/R$string;->Added:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 3125
    :cond_0
    sget v2, Lorg/telegram/messenger/R$string;->AddStickersCount:I

    iget-object v3, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiPackButton;->lastTitle:Ljava/lang/String;

    new-array v4, v1, [Ljava/lang/Object;

    aput-object v3, v4, v0

    const-string v3, "AddStickersCount"

    invoke-static {v3, v2, v4}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 3126
    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiPackButton;->addButtonTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {v3, v2, p2}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;Z)V

    .line 3127
    iget-object v2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiPackButton;->installFadeAway:Landroid/animation/ValueAnimator;

    if-eqz v2, :cond_1

    .line 3128
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v2, 0x0

    .line 3129
    iput-object v2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiPackButton;->installFadeAway:Landroid/animation/ValueAnimator;

    .line 3131
    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiPackButton;->addButtonView:Landroid/widget/FrameLayout;

    xor-int/lit8 v3, p1, 0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->setEnabled(Z)V

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3f19999a    # 0.6f

    if-eqz p2, :cond_3

    .line 3133
    iget-object p2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiPackButton;->addButtonView:Landroid/widget/FrameLayout;

    invoke-virtual {p2}, Landroid/view/View;->getAlpha()F

    move-result p2

    if-eqz p1, :cond_2

    move v2, v3

    :cond_2
    const/4 p1, 0x2

    new-array p1, p1, [F

    aput p2, p1, v0

    aput v2, p1, v1

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiPackButton;->installFadeAway:Landroid/animation/ValueAnimator;

    .line 3134
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiPackButton;->addButtonView:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    .line 3135
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiPackButton;->installFadeAway:Landroid/animation/ValueAnimator;

    new-instance p2, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiPackButton$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiPackButton$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiPackButton;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 3140
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiPackButton;->installFadeAway:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x1c2

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 3141
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiPackButton;->installFadeAway:Landroid/animation/ValueAnimator;

    sget-object p2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 3142
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiPackButton;->installFadeAway:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void

    .line 3144
    :cond_3
    iget-object p2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiPackButton;->addButtonView:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_4

    move v2, v3

    :cond_4
    invoke-virtual {p2, v2}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method
