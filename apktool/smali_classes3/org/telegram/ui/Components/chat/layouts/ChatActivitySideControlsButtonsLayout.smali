.class public Lorg/telegram/ui/Components/chat/layouts/ChatActivitySideControlsButtonsLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lme/vkryl/android/animator/FactorAnimator$Target;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/chat/layouts/ChatActivitySideControlsButtonsLayout$ButtonHolder;
    }
.end annotation


# static fields
.field private static final buttonIcons:[I


# instance fields
.field private final blurredBackgroundDrawableViewFactory:Lorg/telegram/ui/Components/blur3/BlurredBackgroundDrawableViewFactory;

.field private final buttonDescriptions:[Ljava/lang/String;

.field private final buttonHolders:[Lorg/telegram/ui/Components/chat/layouts/ChatActivitySideControlsButtonsLayout$ButtonHolder;

.field private final colorProvider:Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundColorProvider;

.field private gravity:I

.field private onClickListener:Lorg/telegram/ui/Components/chat/layouts/ButtonOnClickListener;

.field private onLongClickListener:Lorg/telegram/ui/Components/chat/layouts/ButtonOnLongClickListener;

.field private final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;


# direct methods
.method public static synthetic $r8$lambda$dRI-X88dSSMMXqg7mgPtJLGyshM(Lorg/telegram/ui/Components/chat/layouts/ChatActivitySideControlsButtonsLayout;ILandroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/chat/layouts/ChatActivitySideControlsButtonsLayout;->lambda$getOrCreateButtonHolder$0(ILandroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kt7hwCJfq0thdB9wq9NGgwv4lJk(Lorg/telegram/ui/Components/chat/layouts/ChatActivitySideControlsButtonsLayout;ILandroid/view/View;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/chat/layouts/ChatActivitySideControlsButtonsLayout;->lambda$getOrCreateButtonHolder$1(ILandroid/view/View;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 6

    .line 41
    sget v0, Lorg/telegram/messenger/R$drawable;->msg_input_attach2:I

    sget v1, Lorg/telegram/messenger/R$drawable;->pagedown:I

    sget v2, Lorg/telegram/messenger/R$drawable;->mentionbutton:I

    sget v3, Lorg/telegram/messenger/R$drawable;->reactionbutton:I

    move v4, v1

    move v5, v1

    filled-new-array/range {v0 .. v5}, [I

    move-result-object v0

    sput-object v0, Lorg/telegram/ui/Components/chat/layouts/ChatActivitySideControlsButtonsLayout;->buttonIcons:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundColorProvider;Lorg/telegram/ui/Components/blur3/BlurredBackgroundDrawableViewFactory;)V
    .locals 6

    .line 71
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 50
    sget p1, Lorg/telegram/messenger/R$string;->AttachMenu:I

    .line 51
    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget p1, Lorg/telegram/messenger/R$string;->AccDescrPageDown:I

    .line 52
    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget p1, Lorg/telegram/messenger/R$string;->AccDescrMentionDown:I

    .line 53
    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget p1, Lorg/telegram/messenger/R$string;->AccDescrReactionMentionDown:I

    .line 54
    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget p1, Lorg/telegram/messenger/R$string;->AccDescrSearchPrev:I

    .line 55
    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget p1, Lorg/telegram/messenger/R$string;->AccDescrSearchNext:I

    .line 56
    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/chat/layouts/ChatActivitySideControlsButtonsLayout;->buttonDescriptions:[Ljava/lang/String;

    const/4 p1, 0x6

    .line 62
    new-array p1, p1, [Lorg/telegram/ui/Components/chat/layouts/ChatActivitySideControlsButtonsLayout$ButtonHolder;

    iput-object p1, p0, Lorg/telegram/ui/Components/chat/layouts/ChatActivitySideControlsButtonsLayout;->buttonHolders:[Lorg/telegram/ui/Components/chat/layouts/ChatActivitySideControlsButtonsLayout$ButtonHolder;

    const/16 p1, 0x53

    .line 77
    iput p1, p0, Lorg/telegram/ui/Components/chat/layouts/ChatActivitySideControlsButtonsLayout;->gravity:I

    .line 72
    iput-object p4, p0, Lorg/telegram/ui/Components/chat/layouts/ChatActivitySideControlsButtonsLayout;->blurredBackgroundDrawableViewFactory:Lorg/telegram/ui/Components/blur3/BlurredBackgroundDrawableViewFactory;

    .line 73
    iput-object p3, p0, Lorg/telegram/ui/Components/chat/layouts/ChatActivitySideControlsButtonsLayout;->colorProvider:Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundColorProvider;

    .line 74
    iput-object p2, p0, Lorg/telegram/ui/Components/chat/layouts/ChatActivitySideControlsButtonsLayout;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-void
.end method

.method private checkButtonsPositionsAndVisibility()V
    .locals 10

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v3, v0

    move v2, v1

    .line 154
    :goto_0
    iget-object v4, p0, Lorg/telegram/ui/Components/chat/layouts/ChatActivitySideControlsButtonsLayout;->buttonHolders:[Lorg/telegram/ui/Components/chat/layouts/ChatActivitySideControlsButtonsLayout$ButtonHolder;

    array-length v5, v4

    if-ge v2, v5, :cond_5

    .line 155
    aget-object v4, v4, v2

    if-nez v4, :cond_0

    goto :goto_4

    .line 161
    :cond_0
    iget-object v5, v4, Lorg/telegram/ui/Components/chat/layouts/ChatActivitySideControlsButtonsLayout$ButtonHolder;->visibilityAnimator:Lme/vkryl/android/animator/BoolAnimator;

    invoke-virtual {v5}, Lme/vkryl/android/animator/BoolAnimator;->getFloatValue()F

    move-result v5

    .line 162
    iget-object v6, v4, Lorg/telegram/ui/Components/chat/layouts/ChatActivitySideControlsButtonsLayout$ButtonHolder;->button:Lorg/telegram/ui/Components/chat/buttons/ChatActivityBlurredRoundPageDownButton;

    cmpl-float v7, v5, v0

    if-lez v7, :cond_1

    move v7, v1

    goto :goto_1

    :cond_1
    const/16 v7, 0x8

    :goto_1
    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 163
    iget-object v6, v4, Lorg/telegram/ui/Components/chat/layouts/ChatActivitySideControlsButtonsLayout$ButtonHolder;->button:Lorg/telegram/ui/Components/chat/buttons/ChatActivityBlurredRoundPageDownButton;

    invoke-virtual {v6, v5}, Landroid/view/View;->setAlpha(F)V

    .line 164
    iget-object v6, v4, Lorg/telegram/ui/Components/chat/layouts/ChatActivitySideControlsButtonsLayout$ButtonHolder;->button:Lorg/telegram/ui/Components/chat/buttons/ChatActivityBlurredRoundPageDownButton;

    const v7, 0x3f333333    # 0.7f

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-static {v7, v8, v5}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v9

    invoke-virtual {v6, v9}, Landroid/view/View;->setScaleX(F)V

    .line 165
    iget-object v6, v4, Lorg/telegram/ui/Components/chat/layouts/ChatActivitySideControlsButtonsLayout$ButtonHolder;->button:Lorg/telegram/ui/Components/chat/buttons/ChatActivityBlurredRoundPageDownButton;

    invoke-static {v7, v8, v5}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v7

    invoke-virtual {v6, v7}, Landroid/view/View;->setScaleY(F)V

    if-eqz v2, :cond_2

    .line 167
    iget-object v4, v4, Lorg/telegram/ui/Components/chat/layouts/ChatActivitySideControlsButtonsLayout$ButtonHolder;->button:Lorg/telegram/ui/Components/chat/buttons/ChatActivityBlurredRoundPageDownButton;

    const/high16 v6, 0x42c80000    # 100.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v8, v5

    mul-float/2addr v6, v8

    sub-float/2addr v6, v3

    invoke-virtual {v4, v6}, Landroid/view/View;->setTranslationY(F)V

    :cond_2
    const/high16 v4, 0x42400000    # 48.0f

    .line 170
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    const/4 v6, 0x5

    if-eq v2, v6, :cond_4

    const/4 v6, 0x4

    if-ne v2, v6, :cond_3

    goto :goto_2

    :cond_3
    const/high16 v6, 0x41800000    # 16.0f

    goto :goto_3

    :cond_4
    :goto_2
    const/high16 v6, 0x41200000    # 10.0f

    .line 171
    :goto_3
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    add-int/2addr v4, v6

    int-to-float v4, v4

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method private getButtonHolder(I)Lorg/telegram/ui/Components/chat/layouts/ChatActivitySideControlsButtonsLayout$ButtonHolder;
    .locals 2

    if-ltz p1, :cond_1

    .line 181
    iget-object v0, p0, Lorg/telegram/ui/Components/chat/layouts/ChatActivitySideControlsButtonsLayout;->buttonHolders:[Lorg/telegram/ui/Components/chat/layouts/ChatActivitySideControlsButtonsLayout$ButtonHolder;

    array-length v1, v0

    if-lt p1, v1, :cond_0

    goto :goto_0

    .line 185
    :cond_0
    aget-object p1, v0, p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private getOrCreateButtonHolder(I)Lorg/telegram/ui/Components/chat/layouts/ChatActivitySideControlsButtonsLayout$ButtonHolder;
    .locals 12

    .line 189
    iget-object v0, p0, Lorg/telegram/ui/Components/chat/layouts/ChatActivitySideControlsButtonsLayout;->buttonHolders:[Lorg/telegram/ui/Components/chat/layouts/ChatActivitySideControlsButtonsLayout$ButtonHolder;

    aget-object v0, v0, p1

    if-nez v0, :cond_5

    shl-int/lit8 v0, p1, 0x10

    const/4 v1, 0x1

    or-int/lit8 v3, v0, 0x1

    .line 192
    new-instance v2, Lme/vkryl/android/animator/BoolAnimator;

    if-nez p1, :cond_0

    .line 195
    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    :goto_0
    move-object v5, v0

    goto :goto_1

    :cond_0
    sget-object v0, Lme/vkryl/android/AnimatorUtils;->DECELERATE_INTERPOLATOR:Landroid/view/animation/DecelerateInterpolator;

    goto :goto_0

    :goto_1
    if-nez p1, :cond_1

    const-wide/16 v6, 0x12c

    :goto_2
    move-object v4, p0

    goto :goto_3

    :cond_1
    const-wide/16 v6, 0x118

    goto :goto_2

    .line 196
    :goto_3
    invoke-direct/range {v2 .. v7}, Lme/vkryl/android/animator/BoolAnimator;-><init>(ILme/vkryl/android/animator/FactorAnimator$Target;Landroid/view/animation/Interpolator;J)V

    if-nez p1, :cond_2

    const/16 v0, 0x32

    const/16 v3, 0x20

    :goto_4
    move v6, v0

    move v7, v3

    goto :goto_5

    :cond_2
    const/16 v0, 0x38

    const/16 v3, 0x30

    goto :goto_4

    .line 205
    :goto_5
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v8, v4, Lorg/telegram/ui/Components/chat/layouts/ChatActivitySideControlsButtonsLayout;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    iget-object v9, v4, Lorg/telegram/ui/Components/chat/layouts/ChatActivitySideControlsButtonsLayout;->blurredBackgroundDrawableViewFactory:Lorg/telegram/ui/Components/blur3/BlurredBackgroundDrawableViewFactory;

    iget-object v10, v4, Lorg/telegram/ui/Components/chat/layouts/ChatActivitySideControlsButtonsLayout;->colorProvider:Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundColorProvider;

    sget-object v0, Lorg/telegram/ui/Components/chat/layouts/ChatActivitySideControlsButtonsLayout;->buttonIcons:[I

    aget v11, v0, p1

    .line 204
    invoke-static/range {v5 .. v11}, Lorg/telegram/ui/Components/chat/buttons/ChatActivityBlurredRoundPageDownButton;->create(Landroid/content/Context;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/Components/blur3/BlurredBackgroundDrawableViewFactory;Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundColorProvider;I)Lorg/telegram/ui/Components/chat/buttons/ChatActivityBlurredRoundPageDownButton;

    move-result-object v0

    int-to-float v3, v6

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v3, v5

    .line 213
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v0, v5}, Landroid/view/View;->setPivotX(F)V

    const/high16 v5, 0x41000000    # 8.0f

    add-float/2addr v3, v5

    .line 214
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setPivotY(F)V

    const/16 v3, 0x8

    .line 215
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 216
    iget-object v3, v4, Lorg/telegram/ui/Components/chat/layouts/ChatActivitySideControlsButtonsLayout;->buttonDescriptions:[Ljava/lang/String;

    aget-object v3, v3, p1

    invoke-virtual {v0, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 217
    new-instance v3, Lorg/telegram/ui/Components/chat/layouts/ChatActivitySideControlsButtonsLayout$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, p1}, Lorg/telegram/ui/Components/chat/layouts/ChatActivitySideControlsButtonsLayout$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/chat/layouts/ChatActivitySideControlsButtonsLayout;I)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 222
    new-instance v3, Lorg/telegram/ui/Components/chat/layouts/ChatActivitySideControlsButtonsLayout$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, p1}, Lorg/telegram/ui/Components/chat/layouts/ChatActivitySideControlsButtonsLayout$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/chat/layouts/ChatActivitySideControlsButtonsLayout;I)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    const/4 v3, 0x5

    if-ne p1, v3, :cond_3

    .line 230
    invoke-virtual {v0}, Lorg/telegram/ui/Components/chat/buttons/ChatActivityBlurredRoundPageDownButton;->reverseIconByY()V

    :cond_3
    if-ne p1, v1, :cond_4

    .line 233
    invoke-virtual {v0}, Lorg/telegram/ui/Components/chat/buttons/ChatActivityBlurredRoundPageDownButton;->reverseCounter()V

    :cond_4
    add-int/lit8 v1, v6, 0x8

    .line 236
    iget v3, v4, Lorg/telegram/ui/Components/chat/layouts/ChatActivitySideControlsButtonsLayout;->gravity:I

    invoke-static {v6, v1, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 238
    iget-object v1, v4, Lorg/telegram/ui/Components/chat/layouts/ChatActivitySideControlsButtonsLayout;->buttonHolders:[Lorg/telegram/ui/Components/chat/layouts/ChatActivitySideControlsButtonsLayout$ButtonHolder;

    new-instance v3, Lorg/telegram/ui/Components/chat/layouts/ChatActivitySideControlsButtonsLayout$ButtonHolder;

    const/4 v5, 0x0

    invoke-direct {v3, v0, v2, v5}, Lorg/telegram/ui/Components/chat/layouts/ChatActivitySideControlsButtonsLayout$ButtonHolder;-><init>(Lorg/telegram/ui/Components/chat/buttons/ChatActivityBlurredRoundPageDownButton;Lme/vkryl/android/animator/BoolAnimator;Lorg/telegram/ui/Components/chat/layouts/ChatActivitySideControlsButtonsLayout-IA;)V

    aput-object v3, v1, p1

    .line 239
    invoke-direct {p0}, Lorg/telegram/ui/Components/chat/layouts/ChatActivitySideControlsButtonsLayout;->checkButtonsPositionsAndVisibility()V

    goto :goto_6

    :cond_5
    move-object v4, p0

    .line 242
    :goto_6
    iget-object v0, v4, Lorg/telegram/ui/Components/chat/layouts/ChatActivitySideControlsButtonsLayout;->buttonHolders:[Lorg/telegram/ui/Components/chat/layouts/ChatActivitySideControlsButtonsLayout$ButtonHolder;

    aget-object p1, v0, p1

    return-object p1
.end method

.method private synthetic lambda$getOrCreateButtonHolder$0(ILandroid/view/View;)V
    .locals 1

    .line 218
    iget-object v0, p0, Lorg/telegram/ui/Components/chat/layouts/ChatActivitySideControlsButtonsLayout;->onClickListener:Lorg/telegram/ui/Components/chat/layouts/ButtonOnClickListener;

    if-eqz v0, :cond_0

    .line 219
    invoke-interface {v0, p1, p2}, Lorg/telegram/ui/Components/chat/layouts/ButtonOnClickListener;->onClick(ILandroid/view/View;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$getOrCreateButtonHolder$1(ILandroid/view/View;)Z
    .locals 1

    .line 223
    iget-object v0, p0, Lorg/telegram/ui/Components/chat/layouts/ChatActivitySideControlsButtonsLayout;->onLongClickListener:Lorg/telegram/ui/Components/chat/layouts/ButtonOnLongClickListener;

    if-eqz v0, :cond_0

    .line 224
    invoke-interface {v0, p1, p2}, Lorg/telegram/ui/Components/chat/layouts/ButtonOnLongClickListener;->onLongClick(ILandroid/view/View;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public getButtonLocationInWindow(I[I)Z
    .locals 1

    .line 91
    iget-object v0, p0, Lorg/telegram/ui/Components/chat/layouts/ChatActivitySideControlsButtonsLayout;->buttonHolders:[Lorg/telegram/ui/Components/chat/layouts/ChatActivitySideControlsButtonsLayout$ButtonHolder;

    aget-object p1, v0, p1

    if-eqz p1, :cond_0

    .line 93
    iget-object p1, p1, Lorg/telegram/ui/Components/chat/layouts/ChatActivitySideControlsButtonsLayout$ButtonHolder;->button:Lorg/telegram/ui/Components/chat/buttons/ChatActivityBlurredRoundPageDownButton;

    invoke-virtual {p1, p2}, Landroid/view/View;->getLocationInWindow([I)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isButtonVisible(I)Z
    .locals 0

    .line 127
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/chat/layouts/ChatActivitySideControlsButtonsLayout;->getButtonHolder(I)Lorg/telegram/ui/Components/chat/layouts/ChatActivitySideControlsButtonsLayout$ButtonHolder;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 129
    iget-object p1, p1, Lorg/telegram/ui/Components/chat/layouts/ChatActivitySideControlsButtonsLayout$ButtonHolder;->visibilityAnimator:Lme/vkryl/android/animator/BoolAnimator;

    invoke-virtual {p1}, Lme/vkryl/android/animator/BoolAnimator;->getValue()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public synthetic onFactorChangeFinished(IFLme/vkryl/android/animator/FactorAnimator;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lme/vkryl/android/animator/FactorAnimator$Target$-CC;->$default$onFactorChangeFinished(Lme/vkryl/android/animator/FactorAnimator$Target;IFLme/vkryl/android/animator/FactorAnimator;)V

    return-void
.end method

.method public onFactorChanged(IFFLme/vkryl/android/animator/FactorAnimator;)V
    .locals 0

    shr-int/lit8 p2, p1, 0x10

    const p3, 0xffff

    and-int/2addr p1, p3

    if-ltz p2, :cond_1

    .line 142
    iget-object p3, p0, Lorg/telegram/ui/Components/chat/layouts/ChatActivitySideControlsButtonsLayout;->buttonHolders:[Lorg/telegram/ui/Components/chat/layouts/ChatActivitySideControlsButtonsLayout$ButtonHolder;

    array-length p4, p3

    if-ge p2, p4, :cond_1

    aget-object p2, p3, p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    .line 147
    invoke-direct {p0}, Lorg/telegram/ui/Components/chat/layouts/ChatActivitySideControlsButtonsLayout;->checkButtonsPositionsAndVisibility()V

    :cond_1
    :goto_0
    return-void
.end method

.method public setButtonCount(IIZ)V
    .locals 0

    .line 117
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/chat/layouts/ChatActivitySideControlsButtonsLayout;->getOrCreateButtonHolder(I)Lorg/telegram/ui/Components/chat/layouts/ChatActivitySideControlsButtonsLayout$ButtonHolder;

    move-result-object p1

    .line 118
    iget-object p1, p1, Lorg/telegram/ui/Components/chat/layouts/ChatActivitySideControlsButtonsLayout$ButtonHolder;->button:Lorg/telegram/ui/Components/chat/buttons/ChatActivityBlurredRoundPageDownButton;

    invoke-virtual {p1, p2, p3}, Lorg/telegram/ui/Components/chat/buttons/ChatActivityBlurredRoundPageDownButton;->setCount(IZ)V

    return-void
.end method

.method public setButtonEnabled(IZZ)V
    .locals 0

    .line 133
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/chat/layouts/ChatActivitySideControlsButtonsLayout;->getOrCreateButtonHolder(I)Lorg/telegram/ui/Components/chat/layouts/ChatActivitySideControlsButtonsLayout$ButtonHolder;

    move-result-object p1

    .line 134
    iget-object p1, p1, Lorg/telegram/ui/Components/chat/layouts/ChatActivitySideControlsButtonsLayout$ButtonHolder;->button:Lorg/telegram/ui/Components/chat/buttons/ChatActivityBlurredRoundPageDownButton;

    invoke-virtual {p1, p2, p3}, Lorg/telegram/ui/Components/chat/buttons/ChatActivityBlurredRoundPageDownButton;->setEnabled(ZZ)V

    return-void
.end method

.method public setButtonLoading(IZZ)V
    .locals 0

    .line 122
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/chat/layouts/ChatActivitySideControlsButtonsLayout;->getOrCreateButtonHolder(I)Lorg/telegram/ui/Components/chat/layouts/ChatActivitySideControlsButtonsLayout$ButtonHolder;

    move-result-object p1

    .line 123
    iget-object p1, p1, Lorg/telegram/ui/Components/chat/layouts/ChatActivitySideControlsButtonsLayout$ButtonHolder;->button:Lorg/telegram/ui/Components/chat/buttons/ChatActivityBlurredRoundPageDownButton;

    invoke-virtual {p1, p2, p3}, Lorg/telegram/ui/Components/chat/buttons/ChatActivityBlurredRoundPageDownButton;->showLoading(ZZ)V

    return-void
.end method

.method public setGravity(I)V
    .locals 0

    .line 79
    iput p1, p0, Lorg/telegram/ui/Components/chat/layouts/ChatActivitySideControlsButtonsLayout;->gravity:I

    return-void
.end method

.method public setOnClickListener(Lorg/telegram/ui/Components/chat/layouts/ButtonOnClickListener;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lorg/telegram/ui/Components/chat/layouts/ChatActivitySideControlsButtonsLayout;->onClickListener:Lorg/telegram/ui/Components/chat/layouts/ButtonOnClickListener;

    return-void
.end method

.method public setOnLongClickListener(Lorg/telegram/ui/Components/chat/layouts/ButtonOnLongClickListener;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lorg/telegram/ui/Components/chat/layouts/ChatActivitySideControlsButtonsLayout;->onLongClickListener:Lorg/telegram/ui/Components/chat/layouts/ButtonOnLongClickListener;

    return-void
.end method

.method public showButton(IZZ)V
    .locals 1

    .line 108
    iget-object v0, p0, Lorg/telegram/ui/Components/chat/layouts/ChatActivitySideControlsButtonsLayout;->buttonHolders:[Lorg/telegram/ui/Components/chat/layouts/ChatActivitySideControlsButtonsLayout$ButtonHolder;

    aget-object v0, v0, p1

    if-nez v0, :cond_0

    if-nez p2, :cond_0

    return-void

    .line 112
    :cond_0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/chat/layouts/ChatActivitySideControlsButtonsLayout;->getOrCreateButtonHolder(I)Lorg/telegram/ui/Components/chat/layouts/ChatActivitySideControlsButtonsLayout$ButtonHolder;

    move-result-object p1

    .line 113
    iget-object p1, p1, Lorg/telegram/ui/Components/chat/layouts/ChatActivitySideControlsButtonsLayout$ButtonHolder;->visibilityAnimator:Lme/vkryl/android/animator/BoolAnimator;

    invoke-virtual {p1, p2, p3}, Lme/vkryl/android/animator/BoolAnimator;->setValue(ZZ)V

    return-void
.end method

.method public updateColors()V
    .locals 4

    .line 100
    iget-object v0, p0, Lorg/telegram/ui/Components/chat/layouts/ChatActivitySideControlsButtonsLayout;->buttonHolders:[Lorg/telegram/ui/Components/chat/layouts/ChatActivitySideControlsButtonsLayout$ButtonHolder;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    if-eqz v3, :cond_0

    .line 102
    iget-object v3, v3, Lorg/telegram/ui/Components/chat/layouts/ChatActivitySideControlsButtonsLayout$ButtonHolder;->button:Lorg/telegram/ui/Components/chat/buttons/ChatActivityBlurredRoundPageDownButton;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/chat/buttons/ChatActivityBlurredRoundPageDownButton;->updateColors()V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
