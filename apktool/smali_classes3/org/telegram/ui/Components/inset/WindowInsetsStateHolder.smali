.class public Lorg/telegram/ui/Components/inset/WindowInsetsStateHolder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/Components/inset/WindowInsetsProvider;
.implements Lorg/telegram/ui/Components/inset/WindowInsetsInAppController;
.implements Lorg/telegram/ui/Components/inset/WindowAnimatedInsetsProvider$Listener;


# instance fields
.field private activeAnimations:I

.field private animatedImeInset:I

.field private animatedInsetsProvider:Lorg/telegram/ui/Components/inset/WindowAnimatedInsetsProvider;

.field private animatedInsetsProviderTarget:Landroid/view/View;

.field private final closeInAppKeyboard:Ljava/lang/Runnable;

.field private inAppKeyboardHeight:I

.field private inAppKeyboardState:I

.field private inAppKeyboardViewHeight:I

.field private final insetsAnimator:Lme/vkryl/android/animator/FactorAnimator;

.field private final insetsImeRect:Lme/vkryl/android/animator/VariableRect;

.field private final insetsMaxRect:Lme/vkryl/android/animator/VariableRect;

.field private final keyboardState:Lorg/telegram/ui/Components/inset/KeyboardState;

.field private final keyboardVisibility:Lme/vkryl/android/animator/VariableFloat;

.field private lastInsets:Landroidx/core/view/WindowInsetsCompat;

.field private final onUpdateListener:Ljava/lang/Runnable;


# direct methods
.method public static synthetic $r8$lambda$BBI0r-nQ4SIQYrlifaR8OrvWhfE(Lorg/telegram/ui/Components/inset/WindowInsetsStateHolder;Lorg/telegram/ui/Components/inset/KeyboardState$State;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/inset/WindowInsetsStateHolder;->onKeyboardStateChanged(Lorg/telegram/ui/Components/inset/KeyboardState$State;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_4sXN7z0M-7VXplcBh972Ead80M(Lorg/telegram/ui/Components/inset/WindowInsetsStateHolder;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/inset/WindowInsetsStateHolder;->lambda$new$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$tSyLquPKZlLA6wDUoKkmoiTlpu0(Lorg/telegram/ui/Components/inset/WindowInsetsStateHolder;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/inset/WindowInsetsStateHolder;->lambda$onAnimatedInsetsFinished$1()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetinAppKeyboardHeight(Lorg/telegram/ui/Components/inset/WindowInsetsStateHolder;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Components/inset/WindowInsetsStateHolder;->inAppKeyboardHeight:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetinAppKeyboardState(Lorg/telegram/ui/Components/inset/WindowInsetsStateHolder;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Components/inset/WindowInsetsStateHolder;->inAppKeyboardState:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetinAppKeyboardViewHeight(Lorg/telegram/ui/Components/inset/WindowInsetsStateHolder;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Components/inset/WindowInsetsStateHolder;->inAppKeyboardViewHeight:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetinsetsImeRect(Lorg/telegram/ui/Components/inset/WindowInsetsStateHolder;)Lme/vkryl/android/animator/VariableRect;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/inset/WindowInsetsStateHolder;->insetsImeRect:Lme/vkryl/android/animator/VariableRect;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetinsetsMaxRect(Lorg/telegram/ui/Components/inset/WindowInsetsStateHolder;)Lme/vkryl/android/animator/VariableRect;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/inset/WindowInsetsStateHolder;->insetsMaxRect:Lme/vkryl/android/animator/VariableRect;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetkeyboardVisibility(Lorg/telegram/ui/Components/inset/WindowInsetsStateHolder;)Lme/vkryl/android/animator/VariableFloat;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/inset/WindowInsetsStateHolder;->keyboardVisibility:Lme/vkryl/android/animator/VariableFloat;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputinAppKeyboardState(Lorg/telegram/ui/Components/inset/WindowInsetsStateHolder;I)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/Components/inset/WindowInsetsStateHolder;->inAppKeyboardState:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputinAppKeyboardViewHeight(Lorg/telegram/ui/Components/inset/WindowInsetsStateHolder;I)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/Components/inset/WindowInsetsStateHolder;->inAppKeyboardViewHeight:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 7

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Lme/vkryl/android/animator/VariableFloat;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lme/vkryl/android/animator/VariableFloat;-><init>(F)V

    iput-object v0, p0, Lorg/telegram/ui/Components/inset/WindowInsetsStateHolder;->keyboardVisibility:Lme/vkryl/android/animator/VariableFloat;

    .line 20
    new-instance v0, Lme/vkryl/android/animator/VariableRect;

    invoke-direct {v0}, Lme/vkryl/android/animator/VariableRect;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/inset/WindowInsetsStateHolder;->insetsMaxRect:Lme/vkryl/android/animator/VariableRect;

    .line 21
    new-instance v0, Lme/vkryl/android/animator/VariableRect;

    invoke-direct {v0}, Lme/vkryl/android/animator/VariableRect;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/inset/WindowInsetsStateHolder;->insetsImeRect:Lme/vkryl/android/animator/VariableRect;

    .line 23
    new-instance v0, Lorg/telegram/ui/Components/inset/KeyboardState;

    new-instance v1, Lorg/telegram/ui/Components/inset/WindowInsetsStateHolder$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/inset/WindowInsetsStateHolder$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/inset/WindowInsetsStateHolder;)V

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/inset/KeyboardState;-><init>(Lorg/telegram/messenger/Utilities$Callback;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/inset/WindowInsetsStateHolder;->keyboardState:Lorg/telegram/ui/Components/inset/KeyboardState;

    const/4 v0, 0x1

    .line 186
    iput v0, p0, Lorg/telegram/ui/Components/inset/WindowInsetsStateHolder;->inAppKeyboardState:I

    .line 204
    new-instance v0, Lorg/telegram/ui/Components/inset/WindowInsetsStateHolder$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/inset/WindowInsetsStateHolder$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/inset/WindowInsetsStateHolder;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/inset/WindowInsetsStateHolder;->closeInAppKeyboard:Ljava/lang/Runnable;

    .line 27
    iput-object p1, p0, Lorg/telegram/ui/Components/inset/WindowInsetsStateHolder;->onUpdateListener:Ljava/lang/Runnable;

    .line 28
    new-instance v1, Lme/vkryl/android/animator/FactorAnimator;

    new-instance v3, Lorg/telegram/ui/Components/inset/WindowInsetsStateHolder$1;

    invoke-direct {v3, p0, p1}, Lorg/telegram/ui/Components/inset/WindowInsetsStateHolder$1;-><init>(Lorg/telegram/ui/Components/inset/WindowInsetsStateHolder;Ljava/lang/Runnable;)V

    sget-object v4, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->keyboardInterpolator:Landroid/view/animation/Interpolator;

    const-wide/16 v5, 0xfa

    const/4 v2, 0x0

    invoke-direct/range {v1 .. v6}, Lme/vkryl/android/animator/FactorAnimator;-><init>(ILme/vkryl/android/animator/FactorAnimator$Target;Landroid/view/animation/Interpolator;J)V

    iput-object v1, p0, Lorg/telegram/ui/Components/inset/WindowInsetsStateHolder;->insetsAnimator:Lme/vkryl/android/animator/FactorAnimator;

    return-void
.end method

.method private synthetic lambda$new$0()V
    .locals 1

    .line 205
    iget v0, p0, Lorg/telegram/ui/Components/inset/WindowInsetsStateHolder;->inAppKeyboardHeight:I

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 206
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/inset/WindowInsetsStateHolder;->resetInAppKeyboardHeight(Z)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onAnimatedInsetsFinished$1()V
    .locals 2

    .line 262
    iget v0, p0, Lorg/telegram/ui/Components/inset/WindowInsetsStateHolder;->activeAnimations:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/telegram/ui/Components/inset/WindowInsetsStateHolder;->activeAnimations:I

    if-nez v0, :cond_0

    .line 264
    iget-object v0, p0, Lorg/telegram/ui/Components/inset/WindowInsetsStateHolder;->animatedInsetsProviderTarget:Landroid/view/View;

    invoke-static {v0}, Lorg/telegram/ui/Components/inset/WindowAnimatedInsetsProvider;->calculateWindowInsets(Landroid/view/View;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/Components/inset/WindowInsetsStateHolder;->setInsets(Landroidx/core/view/WindowInsetsCompat;Z)V

    :cond_0
    return-void
.end method

.method private onKeyboardStateChanged(Lorg/telegram/ui/Components/inset/KeyboardState$State;)V
    .locals 1

    .line 58
    sget-object v0, Lorg/telegram/ui/Components/inset/KeyboardState$State;->STATE_FULLY_VISIBLE:Lorg/telegram/ui/Components/inset/KeyboardState$State;

    if-ne p1, v0, :cond_1

    iget p1, p0, Lorg/telegram/ui/Components/inset/WindowInsetsStateHolder;->inAppKeyboardState:I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 p1, 0x1

    .line 59
    iput p1, p0, Lorg/telegram/ui/Components/inset/WindowInsetsStateHolder;->inAppKeyboardState:I

    .line 62
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/inset/WindowInsetsStateHolder;->onUpdateListener:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private setInsets(Landroidx/core/view/WindowInsetsCompat;Z)V
    .locals 10

    .line 72
    iput-object p1, p0, Lorg/telegram/ui/Components/inset/WindowInsetsStateHolder;->lastInsets:Landroidx/core/view/WindowInsetsCompat;

    if-eqz p1, :cond_0

    .line 74
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->systemBars()I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Landroidx/core/graphics/Insets;->NONE:Landroidx/core/graphics/Insets;

    :goto_0
    if-eqz p1, :cond_1

    .line 75
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->ime()I

    move-result v1

    invoke-virtual {p1, v1}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object p1

    goto :goto_1

    :cond_1
    sget-object p1, Landroidx/core/graphics/Insets;->NONE:Landroidx/core/graphics/Insets;

    .line 77
    :goto_1
    iget-object v1, p0, Lorg/telegram/ui/Components/inset/WindowInsetsStateHolder;->keyboardState:Lorg/telegram/ui/Components/inset/KeyboardState;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/inset/KeyboardState;->getState()Lorg/telegram/ui/Components/inset/KeyboardState$State;

    move-result-object v1

    .line 78
    iget-object v2, p0, Lorg/telegram/ui/Components/inset/WindowInsetsStateHolder;->keyboardState:Lorg/telegram/ui/Components/inset/KeyboardState;

    iget v3, p1, Landroidx/core/graphics/Insets;->bottom:I

    const/4 v4, 0x0

    if-lez v3, :cond_2

    const/4 v3, 0x1

    goto :goto_2

    :cond_2
    move v3, v4

    :goto_2
    xor-int/lit8 v5, p2, 0x1

    invoke-virtual {v2, v3, v5, v4}, Lorg/telegram/ui/Components/inset/KeyboardState;->setKeyboardVisibility(ZZZ)Lorg/telegram/ui/Components/inset/KeyboardState$State;

    move-result-object v2

    .line 80
    iget v3, p0, Lorg/telegram/ui/Components/inset/WindowInsetsStateHolder;->inAppKeyboardState:I

    const/4 v5, 0x2

    if-ne v3, v5, :cond_3

    .line 81
    iput v4, p0, Lorg/telegram/ui/Components/inset/WindowInsetsStateHolder;->inAppKeyboardHeight:I

    :cond_3
    const/4 v5, 0x3

    if-ne v3, v5, :cond_4

    .line 83
    iget v3, p1, Landroidx/core/graphics/Insets;->bottom:I

    if-lez v3, :cond_4

    .line 84
    iput v4, p0, Lorg/telegram/ui/Components/inset/WindowInsetsStateHolder;->inAppKeyboardHeight:I

    .line 87
    :cond_4
    iget v3, p0, Lorg/telegram/ui/Components/inset/WindowInsetsStateHolder;->inAppKeyboardHeight:I

    invoke-static {v4, v4, v4, v3}, Landroidx/core/graphics/Insets;->of(IIII)Landroidx/core/graphics/Insets;

    move-result-object v3

    .line 88
    invoke-static {p1, v3}, Landroidx/core/graphics/Insets;->max(Landroidx/core/graphics/Insets;Landroidx/core/graphics/Insets;)Landroidx/core/graphics/Insets;

    move-result-object p1

    .line 89
    invoke-static {v0, p1}, Landroidx/core/graphics/Insets;->max(Landroidx/core/graphics/Insets;Landroidx/core/graphics/Insets;)Landroidx/core/graphics/Insets;

    move-result-object v0

    const/4 v3, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    if-eqz p2, :cond_a

    .line 92
    iget-object p2, p0, Lorg/telegram/ui/Components/inset/WindowInsetsStateHolder;->keyboardVisibility:Lme/vkryl/android/animator/VariableFloat;

    iget v6, p1, Landroidx/core/graphics/Insets;->bottom:I

    if-lez v6, :cond_5

    move v6, v5

    goto :goto_3

    :cond_5
    move v6, v3

    :goto_3
    invoke-virtual {p2, v6}, Lme/vkryl/android/animator/VariableFloat;->differs(F)Z

    move-result p2

    if-nez p2, :cond_8

    iget-object p2, p0, Lorg/telegram/ui/Components/inset/WindowInsetsStateHolder;->insetsMaxRect:Lme/vkryl/android/animator/VariableRect;

    iget v6, v0, Landroidx/core/graphics/Insets;->left:I

    int-to-float v6, v6

    iget v7, v0, Landroidx/core/graphics/Insets;->top:I

    int-to-float v7, v7

    iget v8, v0, Landroidx/core/graphics/Insets;->right:I

    int-to-float v8, v8

    iget v9, v0, Landroidx/core/graphics/Insets;->bottom:I

    int-to-float v9, v9

    .line 93
    invoke-virtual {p2, v6, v7, v8, v9}, Lme/vkryl/android/animator/VariableRect;->differs(FFFF)Z

    move-result p2

    if-nez p2, :cond_8

    iget-object p2, p0, Lorg/telegram/ui/Components/inset/WindowInsetsStateHolder;->insetsImeRect:Lme/vkryl/android/animator/VariableRect;

    iget v6, p1, Landroidx/core/graphics/Insets;->left:I

    int-to-float v6, v6

    iget v7, p1, Landroidx/core/graphics/Insets;->top:I

    int-to-float v7, v7

    iget v8, p1, Landroidx/core/graphics/Insets;->right:I

    int-to-float v8, v8

    iget v9, p1, Landroidx/core/graphics/Insets;->bottom:I

    int-to-float v9, v9

    .line 94
    invoke-virtual {p2, v6, v7, v8, v9}, Lme/vkryl/android/animator/VariableRect;->differs(FFFF)Z

    move-result p2

    if-eqz p2, :cond_6

    goto :goto_4

    :cond_6
    if-eq v1, v2, :cond_7

    .line 110
    iget-object p1, p0, Lorg/telegram/ui/Components/inset/WindowInsetsStateHolder;->onUpdateListener:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_7
    return-void

    .line 97
    :cond_8
    :goto_4
    iget-object p2, p0, Lorg/telegram/ui/Components/inset/WindowInsetsStateHolder;->insetsAnimator:Lme/vkryl/android/animator/FactorAnimator;

    invoke-virtual {p2}, Lme/vkryl/android/animator/FactorAnimator;->cancel()Z

    .line 98
    iget-object p2, p0, Lorg/telegram/ui/Components/inset/WindowInsetsStateHolder;->keyboardVisibility:Lme/vkryl/android/animator/VariableFloat;

    invoke-virtual {p2, v4}, Lme/vkryl/android/animator/VariableFloat;->finishAnimation(Z)V

    .line 99
    iget-object p2, p0, Lorg/telegram/ui/Components/inset/WindowInsetsStateHolder;->insetsMaxRect:Lme/vkryl/android/animator/VariableRect;

    invoke-virtual {p2, v4}, Lme/vkryl/android/animator/VariableRect;->finishAnimation(Z)V

    .line 100
    iget-object p2, p0, Lorg/telegram/ui/Components/inset/WindowInsetsStateHolder;->insetsImeRect:Lme/vkryl/android/animator/VariableRect;

    invoke-virtual {p2, v4}, Lme/vkryl/android/animator/VariableRect;->finishAnimation(Z)V

    .line 102
    iget-object p2, p0, Lorg/telegram/ui/Components/inset/WindowInsetsStateHolder;->keyboardVisibility:Lme/vkryl/android/animator/VariableFloat;

    iget v1, p1, Landroidx/core/graphics/Insets;->bottom:I

    if-lez v1, :cond_9

    move v1, v5

    goto :goto_5

    :cond_9
    move v1, v3

    :goto_5
    invoke-virtual {p2, v1}, Lme/vkryl/android/animator/VariableFloat;->setTo(F)V

    .line 103
    iget-object p2, p0, Lorg/telegram/ui/Components/inset/WindowInsetsStateHolder;->insetsMaxRect:Lme/vkryl/android/animator/VariableRect;

    iget v1, v0, Landroidx/core/graphics/Insets;->left:I

    int-to-float v1, v1

    iget v2, v0, Landroidx/core/graphics/Insets;->top:I

    int-to-float v2, v2

    iget v4, v0, Landroidx/core/graphics/Insets;->right:I

    int-to-float v4, v4

    iget v0, v0, Landroidx/core/graphics/Insets;->bottom:I

    int-to-float v0, v0

    invoke-virtual {p2, v1, v2, v4, v0}, Lme/vkryl/android/animator/VariableRect;->setTo(FFFF)V

    .line 104
    iget-object p2, p0, Lorg/telegram/ui/Components/inset/WindowInsetsStateHolder;->insetsImeRect:Lme/vkryl/android/animator/VariableRect;

    iget v0, p1, Landroidx/core/graphics/Insets;->left:I

    int-to-float v0, v0

    iget v1, p1, Landroidx/core/graphics/Insets;->top:I

    int-to-float v1, v1

    iget v2, p1, Landroidx/core/graphics/Insets;->right:I

    int-to-float v2, v2

    iget p1, p1, Landroidx/core/graphics/Insets;->bottom:I

    int-to-float p1, p1

    invoke-virtual {p2, v0, v1, v2, p1}, Lme/vkryl/android/animator/VariableRect;->setTo(FFFF)V

    .line 106
    iget-object p1, p0, Lorg/telegram/ui/Components/inset/WindowInsetsStateHolder;->insetsAnimator:Lme/vkryl/android/animator/FactorAnimator;

    invoke-virtual {p1, v3}, Lme/vkryl/android/animator/FactorAnimator;->forceFactor(F)V

    .line 107
    iget-object p1, p0, Lorg/telegram/ui/Components/inset/WindowInsetsStateHolder;->insetsAnimator:Lme/vkryl/android/animator/FactorAnimator;

    invoke-virtual {p1, v5}, Lme/vkryl/android/animator/FactorAnimator;->animateTo(F)V

    return-void

    .line 114
    :cond_a
    iget-object p2, p0, Lorg/telegram/ui/Components/inset/WindowInsetsStateHolder;->insetsAnimator:Lme/vkryl/android/animator/FactorAnimator;

    invoke-virtual {p2}, Lme/vkryl/android/animator/FactorAnimator;->cancel()Z

    .line 116
    iget-object p2, p0, Lorg/telegram/ui/Components/inset/WindowInsetsStateHolder;->keyboardVisibility:Lme/vkryl/android/animator/VariableFloat;

    iget v1, p1, Landroidx/core/graphics/Insets;->bottom:I

    if-lez v1, :cond_b

    move v3, v5

    :cond_b
    invoke-virtual {p2, v3}, Lme/vkryl/android/animator/VariableFloat;->set(F)V

    .line 117
    iget-object p2, p0, Lorg/telegram/ui/Components/inset/WindowInsetsStateHolder;->insetsMaxRect:Lme/vkryl/android/animator/VariableRect;

    iget v1, v0, Landroidx/core/graphics/Insets;->left:I

    int-to-float v1, v1

    iget v2, v0, Landroidx/core/graphics/Insets;->top:I

    int-to-float v2, v2

    iget v3, v0, Landroidx/core/graphics/Insets;->right:I

    int-to-float v3, v3

    iget v0, v0, Landroidx/core/graphics/Insets;->bottom:I

    int-to-float v0, v0

    invoke-virtual {p2, v1, v2, v3, v0}, Lme/vkryl/android/animator/VariableRect;->set(FFFF)V

    .line 118
    iget-object p2, p0, Lorg/telegram/ui/Components/inset/WindowInsetsStateHolder;->insetsImeRect:Lme/vkryl/android/animator/VariableRect;

    iget v0, p1, Landroidx/core/graphics/Insets;->left:I

    int-to-float v0, v0

    iget v1, p1, Landroidx/core/graphics/Insets;->top:I

    int-to-float v1, v1

    iget v2, p1, Landroidx/core/graphics/Insets;->right:I

    int-to-float v2, v2

    iget p1, p1, Landroidx/core/graphics/Insets;->bottom:I

    int-to-float p1, p1

    invoke-virtual {p2, v0, v1, v2, p1}, Lme/vkryl/android/animator/VariableRect;->set(FFFF)V

    .line 119
    iget-object p1, p0, Lorg/telegram/ui/Components/inset/WindowInsetsStateHolder;->onUpdateListener:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method


# virtual methods
.method public getAnimatedImeBottomInset()F
    .locals 2

    .line 167
    iget-object v0, p0, Lorg/telegram/ui/Components/inset/WindowInsetsStateHolder;->animatedInsetsProvider:Lorg/telegram/ui/Components/inset/WindowAnimatedInsetsProvider;

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/Components/inset/WindowInsetsStateHolder;->activeAnimations:I

    if-lez v0, :cond_0

    .line 168
    iget v0, p0, Lorg/telegram/ui/Components/inset/WindowInsetsStateHolder;->animatedImeInset:I

    int-to-float v0, v0

    iget-object v1, p0, Lorg/telegram/ui/Components/inset/WindowInsetsStateHolder;->insetsImeRect:Lme/vkryl/android/animator/VariableRect;

    invoke-virtual {v1}, Lme/vkryl/android/animator/VariableRect;->getBottom()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0

    .line 171
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/inset/WindowInsetsStateHolder;->insetsImeRect:Lme/vkryl/android/animator/VariableRect;

    invoke-virtual {v0}, Lme/vkryl/android/animator/VariableRect;->getBottom()F

    move-result v0

    return v0
.end method

.method public getAnimatedInsetsTargetView()Landroid/view/View;
    .locals 1

    .line 242
    iget-object v0, p0, Lorg/telegram/ui/Components/inset/WindowInsetsStateHolder;->animatedInsetsProviderTarget:Landroid/view/View;

    return-object v0
.end method

.method public getAnimatedKeyboardVisibility()F
    .locals 1

    .line 176
    iget-object v0, p0, Lorg/telegram/ui/Components/inset/WindowInsetsStateHolder;->keyboardVisibility:Lme/vkryl/android/animator/VariableFloat;

    invoke-virtual {v0}, Lme/vkryl/android/animator/VariableFloat;->get()F

    move-result v0

    return v0
.end method

.method public getAnimatedMaxBottomInset()F
    .locals 2

    .line 149
    iget-object v0, p0, Lorg/telegram/ui/Components/inset/WindowInsetsStateHolder;->animatedInsetsProvider:Lorg/telegram/ui/Components/inset/WindowAnimatedInsetsProvider;

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/Components/inset/WindowInsetsStateHolder;->activeAnimations:I

    if-lez v0, :cond_0

    .line 150
    iget v0, p0, Lorg/telegram/ui/Components/inset/WindowInsetsStateHolder;->animatedImeInset:I

    int-to-float v0, v0

    iget-object v1, p0, Lorg/telegram/ui/Components/inset/WindowInsetsStateHolder;->insetsMaxRect:Lme/vkryl/android/animator/VariableRect;

    invoke-virtual {v1}, Lme/vkryl/android/animator/VariableRect;->getBottom()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0

    .line 153
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/inset/WindowInsetsStateHolder;->insetsMaxRect:Lme/vkryl/android/animator/VariableRect;

    invoke-virtual {v0}, Lme/vkryl/android/animator/VariableRect;->getBottom()F

    move-result v0

    return v0
.end method

.method public getCurrentMaxBottomInset()I
    .locals 3

    .line 158
    iget-object v0, p0, Lorg/telegram/ui/Components/inset/WindowInsetsStateHolder;->animatedInsetsProvider:Lorg/telegram/ui/Components/inset/WindowAnimatedInsetsProvider;

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/Components/inset/WindowInsetsStateHolder;->activeAnimations:I

    if-lez v0, :cond_0

    .line 159
    iget v0, p0, Lorg/telegram/ui/Components/inset/WindowInsetsStateHolder;->animatedImeInset:I

    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->ime()I

    move-result v1

    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->systemBars()I

    move-result v2

    or-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lorg/telegram/ui/Components/inset/WindowInsetsStateHolder;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object v1

    iget v1, v1, Landroidx/core/graphics/Insets;->bottom:I

    iget v2, p0, Lorg/telegram/ui/Components/inset/WindowInsetsStateHolder;->inAppKeyboardHeight:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0

    .line 162
    :cond_0
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->ime()I

    move-result v0

    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->systemBars()I

    move-result v1

    or-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/inset/WindowInsetsStateHolder;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object v0

    iget v0, v0, Landroidx/core/graphics/Insets;->bottom:I

    iget v1, p0, Lorg/telegram/ui/Components/inset/WindowInsetsStateHolder;->inAppKeyboardHeight:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public getCurrentNavigationBarInset()I
    .locals 2

    .line 138
    iget-object v0, p0, Lorg/telegram/ui/Components/inset/WindowInsetsStateHolder;->lastInsets:Landroidx/core/view/WindowInsetsCompat;

    if-eqz v0, :cond_0

    .line 139
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->navigationBars()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object v0

    iget v0, v0, Landroidx/core/graphics/Insets;->bottom:I

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getInAppKeyboardRecommendedViewHeight()I
    .locals 1

    .line 132
    iget v0, p0, Lorg/telegram/ui/Components/inset/WindowInsetsStateHolder;->inAppKeyboardViewHeight:I

    return v0
.end method

.method public getInsets(I)Landroidx/core/graphics/Insets;
    .locals 1

    .line 144
    iget-object v0, p0, Lorg/telegram/ui/Components/inset/WindowInsetsStateHolder;->lastInsets:Landroidx/core/view/WindowInsetsCompat;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object p1

    return-object p1

    :cond_0
    sget-object p1, Landroidx/core/graphics/Insets;->NONE:Landroidx/core/graphics/Insets;

    return-object p1
.end method

.method public inAppViewIsVisible()Z
    .locals 2

    .line 127
    iget v0, p0, Lorg/telegram/ui/Components/inset/WindowInsetsStateHolder;->inAppKeyboardState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onAnimatedInsetsChanged(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)V
    .locals 0

    .line 247
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->ime()I

    move-result p1

    invoke-virtual {p2, p1}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object p1

    iget p1, p1, Landroidx/core/graphics/Insets;->bottom:I

    iput p1, p0, Lorg/telegram/ui/Components/inset/WindowInsetsStateHolder;->animatedImeInset:I

    .line 248
    iget-object p1, p0, Lorg/telegram/ui/Components/inset/WindowInsetsStateHolder;->onUpdateListener:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public onAnimatedInsetsFinished()V
    .locals 2

    .line 260
    iget-object v0, p0, Lorg/telegram/ui/Components/inset/WindowInsetsStateHolder;->animatedInsetsProviderTarget:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 261
    new-instance v1, Lorg/telegram/ui/Components/inset/WindowInsetsStateHolder$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/inset/WindowInsetsStateHolder$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/inset/WindowInsetsStateHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public onAnimatedInsetsStarted()V
    .locals 1

    .line 255
    iget v0, p0, Lorg/telegram/ui/Components/inset/WindowInsetsStateHolder;->activeAnimations:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/telegram/ui/Components/inset/WindowInsetsStateHolder;->activeAnimations:I

    return-void
.end method

.method public requestInAppKeyboardHeight(I)V
    .locals 1

    .line 192
    iget v0, p0, Lorg/telegram/ui/Components/inset/WindowInsetsStateHolder;->inAppKeyboardHeight:I

    if-ne v0, p1, :cond_1

    iget v0, p0, Lorg/telegram/ui/Components/inset/WindowInsetsStateHolder;->inAppKeyboardState:I

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 193
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/inset/WindowInsetsStateHolder;->closeInAppKeyboard:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 195
    iget v0, p0, Lorg/telegram/ui/Components/inset/WindowInsetsStateHolder;->inAppKeyboardHeight:I

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/inset/WindowInsetsStateHolder;->inAppKeyboardViewHeight:I

    .line 197
    iput p1, p0, Lorg/telegram/ui/Components/inset/WindowInsetsStateHolder;->inAppKeyboardHeight:I

    const/4 p1, 0x0

    .line 198
    iput p1, p0, Lorg/telegram/ui/Components/inset/WindowInsetsStateHolder;->inAppKeyboardState:I

    .line 200
    iget-object p1, p0, Lorg/telegram/ui/Components/inset/WindowInsetsStateHolder;->lastInsets:Landroidx/core/view/WindowInsetsCompat;

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/inset/WindowInsetsStateHolder;->setInsets(Landroidx/core/view/WindowInsetsCompat;)V

    return-void
.end method

.method public synthetic requestInAppKeyboardHeightIncludeNavbar(I)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Components/inset/WindowInsetsInAppController$-CC;->$default$requestInAppKeyboardHeightIncludeNavbar(Lorg/telegram/ui/Components/inset/WindowInsetsInAppController;I)V

    return-void
.end method

.method public resetInAppKeyboardHeight(Z)V
    .locals 2

    .line 212
    iget v0, p0, Lorg/telegram/ui/Components/inset/WindowInsetsStateHolder;->inAppKeyboardHeight:I

    if-nez v0, :cond_0

    goto :goto_1

    .line 216
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/inset/WindowInsetsStateHolder;->closeInAppKeyboard:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    if-eqz p1, :cond_1

    const/4 v0, 0x3

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    .line 220
    :goto_0
    iput v0, p0, Lorg/telegram/ui/Components/inset/WindowInsetsStateHolder;->inAppKeyboardState:I

    .line 222
    iget-object v0, p0, Lorg/telegram/ui/Components/inset/WindowInsetsStateHolder;->lastInsets:Landroidx/core/view/WindowInsetsCompat;

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/inset/WindowInsetsStateHolder;->setInsets(Landroidx/core/view/WindowInsetsCompat;)V

    if-eqz p1, :cond_2

    .line 225
    iget-object p1, p0, Lorg/telegram/ui/Components/inset/WindowInsetsStateHolder;->closeInAppKeyboard:Ljava/lang/Runnable;

    const-wide/16 v0, 0x3e8

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_2
    :goto_1
    return-void
.end method

.method public setInsets(Landroidx/core/view/WindowInsetsCompat;)V
    .locals 1

    .line 68
    iget-object v0, p0, Lorg/telegram/ui/Components/inset/WindowInsetsStateHolder;->lastInsets:Landroidx/core/view/WindowInsetsCompat;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/Components/inset/WindowInsetsStateHolder;->setInsets(Landroidx/core/view/WindowInsetsCompat;Z)V

    return-void
.end method

.method public setupAnimatedInsetsProvider(Lorg/telegram/ui/Components/inset/WindowAnimatedInsetsProvider;Landroid/view/View;)V
    .locals 0

    .line 235
    iput-object p1, p0, Lorg/telegram/ui/Components/inset/WindowInsetsStateHolder;->animatedInsetsProvider:Lorg/telegram/ui/Components/inset/WindowAnimatedInsetsProvider;

    .line 236
    iput-object p2, p0, Lorg/telegram/ui/Components/inset/WindowInsetsStateHolder;->animatedInsetsProviderTarget:Landroid/view/View;

    .line 237
    invoke-virtual {p1, p0}, Lorg/telegram/ui/Components/inset/WindowAnimatedInsetsProvider;->subscribeToWindowInsetsAnimation(Lorg/telegram/ui/Components/inset/WindowAnimatedInsetsProvider$Listener;)V

    return-void
.end method
