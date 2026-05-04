.class public abstract Lorg/telegram/ui/bots/BotKeyboardView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/Components/inset/InAppKeyboardInsetView;
.implements Lme/vkryl/android/animator/ReplaceAnimator$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/bots/BotKeyboardView$Button;,
        Lorg/telegram/ui/bots/BotKeyboardView$BotKeyboardViewDelegate;,
        Lorg/telegram/ui/bots/BotKeyboardView$ButtonsLayout;
    }
.end annotation


# instance fields
.field private final animator:Lme/vkryl/android/animator/ReplaceAnimator;

.field private botButtons:Lorg/telegram/tgnet/TLRPC$TL_replyKeyboardMarkup;

.field private buttonHeight:I

.field private final buttonViews:Ljava/util/ArrayList;

.field private delegate:Lorg/telegram/ui/bots/BotKeyboardView$BotKeyboardViewDelegate;

.field private final fadeDrawable:Landroid/graphics/drawable/GradientDrawable;

.field private final frameLayout:Landroid/widget/FrameLayout;

.field private isFullSize:Z

.field private lastFadeColor:I

.field private navigationBarHeight:I

.field private panelHeight:I

.field private final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private final scrollView:Landroid/widget/ScrollView;


# direct methods
.method public static synthetic $r8$lambda$-jPeXVbCJl5ykuSHahpPefbQMuM(Lorg/telegram/ui/bots/BotKeyboardView;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/bots/BotKeyboardView;->lambda$setButtons$0(Landroid/view/View;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetThemedColor(Lorg/telegram/ui/bots/BotKeyboardView;I)I
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/bots/BotKeyboardView;->getThemedColor(I)I

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 4

    .line 73
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/bots/BotKeyboardView;->buttonViews:Ljava/util/ArrayList;

    .line 295
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->BOTTOM_TOP:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    iput-object v0, p0, Lorg/telegram/ui/bots/BotKeyboardView;->fadeDrawable:Landroid/graphics/drawable/GradientDrawable;

    .line 313
    new-instance v0, Lme/vkryl/android/animator/ReplaceAnimator;

    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const-wide/16 v2, 0x140

    invoke-direct {v0, p0, v1, v2, v3}, Lme/vkryl/android/animator/ReplaceAnimator;-><init>(Lme/vkryl/android/animator/ReplaceAnimator$Callback;Landroid/view/animation/Interpolator;J)V

    iput-object v0, p0, Lorg/telegram/ui/bots/BotKeyboardView;->animator:Lme/vkryl/android/animator/ReplaceAnimator;

    .line 74
    iput-object p2, p0, Lorg/telegram/ui/bots/BotKeyboardView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/4 p2, 0x1

    .line 76
    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 78
    new-instance p2, Landroid/widget/ScrollView;

    invoke-direct {p2, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lorg/telegram/ui/bots/BotKeyboardView;->scrollView:Landroid/widget/ScrollView;

    const/4 v0, 0x0

    .line 79
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 80
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 82
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/bots/BotKeyboardView;->frameLayout:Landroid/widget/FrameLayout;

    .line 83
    invoke-virtual {p2, v0}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 84
    invoke-virtual {p0}, Lorg/telegram/ui/bots/BotKeyboardView;->updateColors()V

    return-void
.end method

.method private getThemedColor(I)I
    .locals 1

    .line 271
    iget-object v0, p0, Lorg/telegram/ui/bots/BotKeyboardView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p1, v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    return p1
.end method

.method private synthetic lambda$setButtons$0(Landroid/view/View;)V
    .locals 1

    .line 163
    iget-object v0, p0, Lorg/telegram/ui/bots/BotKeyboardView;->delegate:Lorg/telegram/ui/bots/BotKeyboardView$BotKeyboardViewDelegate;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$KeyboardButton;

    invoke-interface {v0, p1}, Lorg/telegram/ui/bots/BotKeyboardView$BotKeyboardViewDelegate;->didPressedButton(Lorg/telegram/tgnet/TLRPC$KeyboardButton;)V

    return-void
.end method


# virtual methods
.method public applyInAppKeyboardAnimatedHeight(F)V
    .locals 0

    return-void
.end method

.method public applyNavigationBarHeight(I)V
    .locals 2

    .line 279
    iget v0, p0, Lorg/telegram/ui/bots/BotKeyboardView;->navigationBarHeight:I

    if-ne v0, p1, :cond_0

    return-void

    .line 282
    :cond_0
    iput p1, p0, Lorg/telegram/ui/bots/BotKeyboardView;->navigationBarHeight:I

    .line 284
    iget-object v0, p0, Lorg/telegram/ui/bots/BotKeyboardView;->scrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    if-eq v0, p1, :cond_1

    .line 285
    iget-object v0, p0, Lorg/telegram/ui/bots/BotKeyboardView;->scrollView:Landroid/widget/ScrollView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, p1}, Landroid/view/View;->setPadding(IIII)V

    .line 287
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 300
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 301
    iget v0, p0, Lorg/telegram/ui/bots/BotKeyboardView;->navigationBarHeight:I

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->getNavigationBarThirdButtonsFactor(I)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_1

    .line 303
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_emojiPanelBackground:I

    invoke-direct {p0, v1}, Lorg/telegram/ui/bots/BotKeyboardView;->getThemedColor(I)I

    move-result v1

    invoke-static {v1, v0}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v0

    .line 304
    iget v1, p0, Lorg/telegram/ui/bots/BotKeyboardView;->lastFadeColor:I

    const/4 v2, 0x0

    if-eq v1, v0, :cond_0

    .line 305
    iget-object v1, p0, Lorg/telegram/ui/bots/BotKeyboardView;->fadeDrawable:Landroid/graphics/drawable/GradientDrawable;

    const v3, 0x3f28f5c3    # 0.66f

    invoke-static {v0, v3}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v3

    invoke-static {v0, v2}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v4

    filled-new-array {v0, v3, v4}, [I

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/GradientDrawable;->setColors([I)V

    .line 306
    iput v0, p0, Lorg/telegram/ui/bots/BotKeyboardView;->lastFadeColor:I

    .line 308
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/bots/BotKeyboardView;->fadeDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget v3, p0, Lorg/telegram/ui/bots/BotKeyboardView;->navigationBarHeight:I

    sub-int/2addr v1, v3

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 309
    iget-object v0, p0, Lorg/telegram/ui/bots/BotKeyboardView;->fadeDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    :cond_1
    return-void
.end method

.method public getKeyboardHeight()I
    .locals 3

    .line 264
    iget-object v0, p0, Lorg/telegram/ui/bots/BotKeyboardView;->botButtons:Lorg/telegram/tgnet/TLRPC$TL_replyKeyboardMarkup;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 267
    :cond_0
    iget-boolean v1, p0, Lorg/telegram/ui/bots/BotKeyboardView;->isFullSize:Z

    if-eqz v1, :cond_1

    iget v0, p0, Lorg/telegram/ui/bots/BotKeyboardView;->panelHeight:I

    return v0

    :cond_1
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$ReplyMarkup;->rows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lorg/telegram/ui/bots/BotKeyboardView;->buttonHeight:I

    int-to-float v1, v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    mul-int/2addr v0, v1

    const/high16 v1, 0x41800000    # 16.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/telegram/ui/bots/BotKeyboardView;->botButtons:Lorg/telegram/tgnet/TLRPC$TL_replyKeyboardMarkup;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$ReplyMarkup;->rows:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/high16 v2, 0x40800000    # 4.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method public synthetic hasChanges(Lme/vkryl/android/animator/ReplaceAnimator;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lme/vkryl/android/animator/ReplaceAnimator$Callback$-CC;->$default$hasChanges(Lme/vkryl/android/animator/ReplaceAnimator$Callback;Lme/vkryl/android/animator/ReplaceAnimator;)Z

    move-result p1

    return p1
.end method

.method public invalidateViews()V
    .locals 2

    const/4 v0, 0x0

    .line 118
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/bots/BotKeyboardView;->buttonViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 119
    iget-object v1, p0, Lorg/telegram/ui/bots/BotKeyboardView;->buttonViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/bots/BotKeyboardView$Button;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public isFullSize()Z
    .locals 1

    .line 124
    iget-boolean v0, p0, Lorg/telegram/ui/bots/BotKeyboardView;->isFullSize:Z

    return v0
.end method

.method public synthetic onApplyMetadataAnimation(Lme/vkryl/android/animator/ReplaceAnimator;F)Z
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lme/vkryl/android/animator/ReplaceAnimator$Callback$-CC;->$default$onApplyMetadataAnimation(Lme/vkryl/android/animator/ReplaceAnimator$Callback;Lme/vkryl/android/animator/ReplaceAnimator;F)Z

    move-result p1

    return p1
.end method

.method public synthetic onFinishMetadataAnimation(Lme/vkryl/android/animator/ReplaceAnimator;Z)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lme/vkryl/android/animator/ReplaceAnimator$Callback$-CC;->$default$onFinishMetadataAnimation(Lme/vkryl/android/animator/ReplaceAnimator$Callback;Lme/vkryl/android/animator/ReplaceAnimator;Z)V

    return-void
.end method

.method public synthetic onForceApplyChanges(Lme/vkryl/android/animator/ReplaceAnimator;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lme/vkryl/android/animator/ReplaceAnimator$Callback$-CC;->$default$onForceApplyChanges(Lme/vkryl/android/animator/ReplaceAnimator$Callback;Lme/vkryl/android/animator/ReplaceAnimator;)V

    return-void
.end method

.method public onItemChanged(Lme/vkryl/android/animator/ReplaceAnimator;)V
    .locals 4

    .line 317
    iget-object p1, p0, Lorg/telegram/ui/bots/BotKeyboardView;->animator:Lme/vkryl/android/animator/ReplaceAnimator;

    invoke-virtual {p1}, Lme/vkryl/android/animator/ReplaceAnimator;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lme/vkryl/android/animator/ListAnimator$Entry;

    .line 318
    invoke-virtual {v0}, Lme/vkryl/android/animator/ListAnimator$Entry;->getVisibility()F

    move-result v1

    const v2, 0x3f333333    # 0.7f

    const/high16 v3, 0x3f800000    # 1.0f

    .line 319
    invoke-static {v2, v3, v1}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v2

    .line 320
    iget-object v3, v0, Lme/vkryl/android/animator/ListAnimator$Entry;->item:Ljava/lang/Object;

    check-cast v3, Lorg/telegram/ui/bots/BotKeyboardView$ButtonsLayout;

    invoke-virtual {v3, v1}, Landroid/view/View;->setAlpha(F)V

    .line 321
    iget-object v1, v0, Lme/vkryl/android/animator/ListAnimator$Entry;->item:Ljava/lang/Object;

    check-cast v1, Lorg/telegram/ui/bots/BotKeyboardView$ButtonsLayout;

    invoke-virtual {v1, v2}, Landroid/view/View;->setScaleX(F)V

    .line 322
    iget-object v0, v0, Lme/vkryl/android/animator/ListAnimator$Entry;->item:Ljava/lang/Object;

    check-cast v0, Lorg/telegram/ui/bots/BotKeyboardView$ButtonsLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleY(F)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public synthetic onPrepareMetadataAnimation(Lme/vkryl/android/animator/ReplaceAnimator;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lme/vkryl/android/animator/ReplaceAnimator$Callback$-CC;->$default$onPrepareMetadataAnimation(Lme/vkryl/android/animator/ReplaceAnimator$Callback;Lme/vkryl/android/animator/ReplaceAnimator;)V

    return-void
.end method

.method public setButtons(Lorg/telegram/tgnet/TLRPC$TL_replyKeyboardMarkup;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 128
    iput-object v1, v0, Lorg/telegram/ui/bots/BotKeyboardView;->botButtons:Lorg/telegram/tgnet/TLRPC$TL_replyKeyboardMarkup;

    .line 129
    iget-object v2, v0, Lorg/telegram/ui/bots/BotKeyboardView;->buttonViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 131
    iget-object v2, v0, Lorg/telegram/ui/bots/BotKeyboardView;->scrollView:Landroid/widget/ScrollView;

    invoke-virtual {v2}, Landroid/view/View;->getScrollY()I

    move-result v2

    int-to-float v2, v2

    .line 132
    iget-object v3, v0, Lorg/telegram/ui/bots/BotKeyboardView;->animator:Lme/vkryl/android/animator/ReplaceAnimator;

    invoke-virtual {v3}, Lme/vkryl/android/animator/ReplaceAnimator;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lme/vkryl/android/animator/ListAnimator$Entry;

    .line 133
    iget-object v4, v4, Lme/vkryl/android/animator/ListAnimator$Entry;->item:Ljava/lang/Object;

    move-object v5, v4

    check-cast v5, Lorg/telegram/ui/bots/BotKeyboardView$ButtonsLayout;

    check-cast v4, Lorg/telegram/ui/bots/BotKeyboardView$ButtonsLayout;

    invoke-virtual {v4}, Landroid/view/View;->getTranslationY()F

    move-result v4

    sub-float/2addr v4, v2

    invoke-virtual {v5, v4}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0

    .line 136
    :cond_0
    iget-object v2, v0, Lorg/telegram/ui/bots/BotKeyboardView;->scrollView:Landroid/widget/ScrollView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v3}, Landroid/widget/ScrollView;->scrollTo(II)V

    const/4 v2, 0x1

    if-eqz v1, :cond_b

    .line 138
    iget-object v4, v0, Lorg/telegram/ui/bots/BotKeyboardView;->botButtons:Lorg/telegram/tgnet/TLRPC$TL_replyKeyboardMarkup;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$ReplyMarkup;->rows:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_b

    .line 139
    new-instance v4, Lorg/telegram/ui/bots/BotKeyboardView$ButtonsLayout;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/telegram/ui/bots/BotKeyboardView$ButtonsLayout;-><init>(Landroid/content/Context;)V

    .line 140
    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/4 v5, 0x0

    .line 141
    invoke-virtual {v4, v5}, Landroid/view/View;->setAlpha(F)V

    .line 142
    iget-object v6, v0, Lorg/telegram/ui/bots/BotKeyboardView;->frameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v6, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 144
    iget-boolean v6, v1, Lorg/telegram/tgnet/TLRPC$ReplyMarkup;->resize:Z

    xor-int/lit8 v7, v6, 0x1

    iput-boolean v7, v0, Lorg/telegram/ui/bots/BotKeyboardView;->isFullSize:Z

    const/high16 v7, 0x40800000    # 4.0f

    if-eqz v6, :cond_1

    const/16 v6, 0x2c

    goto :goto_1

    .line 145
    :cond_1
    iget v6, v0, Lorg/telegram/ui/bots/BotKeyboardView;->panelHeight:I

    const/high16 v8, 0x41800000    # 16.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    sub-int/2addr v6, v8

    iget-object v8, v0, Lorg/telegram/ui/bots/BotKeyboardView;->botButtons:Lorg/telegram/tgnet/TLRPC$TL_replyKeyboardMarkup;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$ReplyMarkup;->rows:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    sub-int/2addr v8, v2

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    mul-int/2addr v8, v9

    sub-int/2addr v6, v8

    iget-object v8, v0, Lorg/telegram/ui/bots/BotKeyboardView;->botButtons:Lorg/telegram/tgnet/TLRPC$TL_replyKeyboardMarkup;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$ReplyMarkup;->rows:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    div-int/2addr v6, v8

    int-to-float v6, v6

    sget v8, Lorg/telegram/messenger/AndroidUtilities;->density:F

    div-float/2addr v6, v8

    const/high16 v8, 0x42300000    # 44.0f

    invoke-static {v8, v6}, Ljava/lang/Math;->max(FF)F

    move-result v6

    float-to-int v6, v6

    :goto_1
    iput v6, v0, Lorg/telegram/ui/bots/BotKeyboardView;->buttonHeight:I

    move v6, v3

    .line 146
    :goto_2
    iget-object v8, v1, Lorg/telegram/tgnet/TLRPC$ReplyMarkup;->rows:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v6, v8, :cond_a

    .line 147
    iget-object v8, v1, Lorg/telegram/tgnet/TLRPC$ReplyMarkup;->rows:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonRow;

    .line 149
    new-instance v9, Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 150
    invoke-virtual {v9, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 151
    iget v12, v0, Lorg/telegram/ui/bots/BotKeyboardView;->buttonHeight:I

    const/high16 v10, 0x41000000    # 8.0f

    if-nez v6, :cond_2

    move v14, v10

    goto :goto_3

    :cond_2
    move v14, v7

    :goto_3
    iget-object v11, v1, Lorg/telegram/tgnet/TLRPC$ReplyMarkup;->rows:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    sub-int/2addr v11, v2

    if-ne v6, v11, :cond_3

    move/from16 v16, v10

    goto :goto_4

    :cond_3
    move/from16 v16, v5

    :goto_4
    const/4 v11, -0x1

    const/high16 v13, 0x41000000    # 8.0f

    const/high16 v15, 0x41000000    # 8.0f

    invoke-static/range {v11 .. v16}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 153
    iget-object v10, v8, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonRow;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    int-to-float v10, v10

    const/high16 v11, 0x3f800000    # 1.0f

    div-float v14, v11, v10

    move v10, v3

    .line 154
    :goto_5
    iget-object v11, v8, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonRow;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v10, v11, :cond_9

    .line 155
    iget-object v11, v8, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonRow;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/telegram/tgnet/TLRPC$KeyboardButton;

    .line 156
    new-instance v12, Lorg/telegram/ui/bots/BotKeyboardView$Button;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-direct {v12, v0, v13, v11}, Lorg/telegram/ui/bots/BotKeyboardView$Button;-><init>(Lorg/telegram/ui/bots/BotKeyboardView;Landroid/content/Context;Lorg/telegram/tgnet/TLRPC$KeyboardButton;)V

    if-nez v10, :cond_4

    move v11, v2

    goto :goto_6

    :cond_4
    move v11, v3

    :goto_6
    if-nez v6, :cond_5

    move v13, v2

    goto :goto_7

    :cond_5
    move v13, v3

    .line 157
    :goto_7
    iget-object v15, v8, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonRow;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    sub-int/2addr v15, v2

    if-ne v10, v15, :cond_6

    move v15, v2

    goto :goto_8

    :cond_6
    move v15, v3

    :goto_8
    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$ReplyMarkup;->rows:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v2

    if-ne v6, v3, :cond_7

    move v3, v2

    goto :goto_9

    :cond_7
    const/4 v3, 0x0

    :goto_9
    invoke-virtual {v12, v11, v13, v15, v3}, Lorg/telegram/ui/bots/BotKeyboardView$Button;->setPositionFlags(ZZZZ)V

    .line 159
    new-instance v3, Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-direct {v3, v11}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v11, -0x1

    const/high16 v13, -0x40800000    # -1.0f

    .line 160
    invoke-static {v11, v13}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v3, v12, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 162
    iget-object v11, v8, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonRow;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    sub-int/2addr v11, v2

    if-eq v10, v11, :cond_8

    const/4 v11, 0x4

    move/from16 v17, v11

    goto :goto_a

    :cond_8
    const/16 v17, 0x0

    :goto_a
    const/16 v18, 0x0

    move-object v11, v12

    const/4 v12, 0x0

    const/4 v13, -0x1

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v12 .. v18}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v12

    invoke-virtual {v9, v3, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 163
    new-instance v3, Lorg/telegram/ui/bots/BotKeyboardView$$ExternalSyntheticLambda0;

    invoke-direct {v3, v0}, Lorg/telegram/ui/bots/BotKeyboardView$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/bots/BotKeyboardView;)V

    invoke-virtual {v11, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v3, 0x3ca3d70a    # 0.02f

    const/high16 v12, 0x3fc00000    # 1.5f

    .line 164
    invoke-static {v11, v3, v12}, Lorg/telegram/ui/Components/ScaleStateListAnimator;->apply(Landroid/view/View;FF)V

    .line 165
    iget-object v3, v0, Lorg/telegram/ui/bots/BotKeyboardView;->buttonViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 167
    invoke-virtual {v11}, Lorg/telegram/ui/bots/BotKeyboardView$Button;->updateColors()V

    add-int/lit8 v10, v10, 0x1

    const/4 v3, 0x0

    goto/16 :goto_5

    :cond_9
    add-int/lit8 v6, v6, 0x1

    const/4 v3, 0x0

    goto/16 :goto_2

    .line 171
    :cond_a
    iget-object v1, v0, Lorg/telegram/ui/bots/BotKeyboardView;->animator:Lme/vkryl/android/animator/ReplaceAnimator;

    invoke-virtual {v1, v4, v2}, Lme/vkryl/android/animator/ReplaceAnimator;->replace(Ljava/lang/Object;Z)V

    return-void

    .line 173
    :cond_b
    iget-object v1, v0, Lorg/telegram/ui/bots/BotKeyboardView;->animator:Lme/vkryl/android/animator/ReplaceAnimator;

    invoke-virtual {v1, v2}, Lme/vkryl/android/animator/ReplaceAnimator;->clear(Z)V

    return-void
.end method

.method public setDelegate(Lorg/telegram/ui/bots/BotKeyboardView$BotKeyboardViewDelegate;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lorg/telegram/ui/bots/BotKeyboardView;->delegate:Lorg/telegram/ui/bots/BotKeyboardView$BotKeyboardViewDelegate;

    return-void
.end method

.method public setPanelHeight(I)V
    .locals 7

    .line 100
    iput p1, p0, Lorg/telegram/ui/bots/BotKeyboardView;->panelHeight:I

    .line 101
    iget-boolean p1, p0, Lorg/telegram/ui/bots/BotKeyboardView;->isFullSize:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lorg/telegram/ui/bots/BotKeyboardView;->botButtons:Lorg/telegram/tgnet/TLRPC$TL_replyKeyboardMarkup;

    if-eqz p1, :cond_3

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$ReplyMarkup;->rows:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    .line 102
    iget-boolean p1, p0, Lorg/telegram/ui/bots/BotKeyboardView;->isFullSize:Z

    if-nez p1, :cond_0

    const/16 p1, 0x2c

    goto :goto_0

    :cond_0
    iget p1, p0, Lorg/telegram/ui/bots/BotKeyboardView;->panelHeight:I

    const/high16 v0, 0x41800000    # 16.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    sub-int/2addr p1, v0

    iget-object v0, p0, Lorg/telegram/ui/bots/BotKeyboardView;->botButtons:Lorg/telegram/tgnet/TLRPC$TL_replyKeyboardMarkup;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$ReplyMarkup;->rows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/high16 v1, 0x40800000    # 4.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    mul-int/2addr v0, v1

    sub-int/2addr p1, v0

    iget-object v0, p0, Lorg/telegram/ui/bots/BotKeyboardView;->botButtons:Lorg/telegram/tgnet/TLRPC$TL_replyKeyboardMarkup;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$ReplyMarkup;->rows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    div-int/2addr p1, v0

    int-to-float p1, p1

    sget v0, Lorg/telegram/messenger/AndroidUtilities;->density:F

    div-float/2addr p1, v0

    const/high16 v0, 0x42300000    # 44.0f

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    float-to-int p1, p1

    :goto_0
    iput p1, p0, Lorg/telegram/ui/bots/BotKeyboardView;->buttonHeight:I

    int-to-float p1, p1

    .line 103
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    .line 104
    iget-object v0, p0, Lorg/telegram/ui/bots/BotKeyboardView;->animator:Lme/vkryl/android/animator/ReplaceAnimator;

    invoke-virtual {v0}, Lme/vkryl/android/animator/ReplaceAnimator;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lme/vkryl/android/animator/ListAnimator$Entry;

    .line 105
    iget-object v2, v1, Lme/vkryl/android/animator/ListAnimator$Entry;->item:Ljava/lang/Object;

    check-cast v2, Lorg/telegram/ui/bots/BotKeyboardView$ButtonsLayout;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_1

    .line 106
    iget-object v4, v1, Lme/vkryl/android/animator/ListAnimator$Entry;->item:Ljava/lang/Object;

    check-cast v4, Lorg/telegram/ui/bots/BotKeyboardView$ButtonsLayout;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 107
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 108
    iget v6, v5, Landroid/widget/LinearLayout$LayoutParams;->height:I

    if-eq v6, p1, :cond_2

    .line 109
    iput p1, v5, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 110
    invoke-virtual {v4, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public updateColors()V
    .locals 2

    .line 88
    iget-object v0, p0, Lorg/telegram/ui/bots/BotKeyboardView;->scrollView:Landroid/widget/ScrollView;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_emojiPanelBackground:I

    invoke-direct {p0, v1}, Lorg/telegram/ui/bots/BotKeyboardView;->getThemedColor(I)I

    move-result v1

    invoke-static {v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->setScrollViewEdgeEffectColor(Landroid/widget/ScrollView;I)V

    const/4 v0, 0x0

    .line 89
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/bots/BotKeyboardView;->buttonViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 90
    iget-object v1, p0, Lorg/telegram/ui/bots/BotKeyboardView;->buttonViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/bots/BotKeyboardView$Button;

    invoke-virtual {v1}, Lorg/telegram/ui/bots/BotKeyboardView$Button;->updateColors()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 92
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
