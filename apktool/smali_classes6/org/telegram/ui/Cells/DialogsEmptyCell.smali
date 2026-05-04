.class public Lorg/telegram/ui/Cells/DialogsEmptyCell;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field private currentAccount:I

.field private currentType:I

.field private imageView:Lorg/telegram/ui/Components/RLottieImageView;

.field private onUtyanAnimationEndListener:Ljava/lang/Runnable;

.field private onUtyanAnimationUpdateListener:Landroidx/core/util/Consumer;

.field private prevIcon:I

.field private subtitleView:Lorg/telegram/ui/Components/TextViewSwitcher;

.field private titleView:Landroid/widget/TextView;

.field private utyanAnimationTriggered:Z

.field private utyanAnimator:Landroid/animation/ValueAnimator;

.field private utyanCollapseProgress:F


# direct methods
.method public static synthetic $r8$lambda$2rbnsx3OuGcb1NIZCZEZ9dxq0W8(Lorg/telegram/ui/Cells/DialogsEmptyCell;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Cells/DialogsEmptyCell;->lambda$startUtyanExpandAnimation$3(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$DyE5nhTjwATc_RUBuK-rX5spjis(Lorg/telegram/ui/Cells/DialogsEmptyCell;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Cells/DialogsEmptyCell;->lambda$startUtyanCollapseAnimation$4(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_Xr4Xh3iJRBCV8ufUe_I8KuNnGE(Lorg/telegram/ui/Cells/DialogsEmptyCell;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Cells/DialogsEmptyCell;->lambda$new$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$orrQ6KUp7SgjvkysqPE4x0aE658(Landroid/content/Context;)Landroid/view/View;
    .locals 2

    .line 108
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 109
    sget p0, Lorg/telegram/ui/ActionBar/Theme;->key_chats_message:I

    invoke-static {p0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 p0, 0x1

    const/high16 v1, 0x41600000    # 14.0f

    .line 110
    invoke-virtual {v0, p0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    const/16 p0, 0x11

    .line 111
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setGravity(I)V

    const/high16 p0, 0x40000000    # 2.0f

    .line 112
    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p0

    int-to-float p0, p0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, p0, v1}, Landroid/widget/TextView;->setLineSpacing(FF)V

    return-object v0
.end method

.method public static synthetic $r8$lambda$ugpKNg-6fsNS82BgCbqgLN-nBV0(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 87
    const/4 p0, 0x1

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetonUtyanAnimationEndListener(Lorg/telegram/ui/Cells/DialogsEmptyCell;)Ljava/lang/Runnable;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Cells/DialogsEmptyCell;->onUtyanAnimationEndListener:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetutyanAnimator(Lorg/telegram/ui/Cells/DialogsEmptyCell;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Cells/DialogsEmptyCell;->utyanAnimator:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fpututyanAnimator(Lorg/telegram/ui/Cells/DialogsEmptyCell;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/Cells/DialogsEmptyCell;->utyanAnimator:Landroid/animation/ValueAnimator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 10

    .line 83
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, -0x1

    .line 74
    iput v0, p0, Lorg/telegram/ui/Cells/DialogsEmptyCell;->currentType:I

    .line 80
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    iput v0, p0, Lorg/telegram/ui/Cells/DialogsEmptyCell;->currentAccount:I

    const/16 v0, 0x11

    .line 85
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/4 v1, 0x1

    .line 86
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 87
    new-instance v2, Lorg/telegram/ui/Cells/DialogsEmptyCell$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lorg/telegram/ui/Cells/DialogsEmptyCell$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p0, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 89
    new-instance v2, Lorg/telegram/ui/Components/RLottieImageView;

    invoke-direct {v2, p1}, Lorg/telegram/ui/Components/RLottieImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lorg/telegram/ui/Cells/DialogsEmptyCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    .line 90
    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 91
    iget-object v2, p0, Lorg/telegram/ui/Cells/DialogsEmptyCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    const/high16 v8, 0x42500000    # 52.0f

    const/4 v9, 0x0

    const/16 v3, 0x64

    const/high16 v4, 0x42c80000    # 100.0f

    const/16 v5, 0x11

    const/high16 v6, 0x42500000    # 52.0f

    const/high16 v7, 0x40800000    # 4.0f

    invoke-static/range {v3 .. v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 92
    iget-object v2, p0, Lorg/telegram/ui/Cells/DialogsEmptyCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    new-instance v3, Lorg/telegram/ui/Cells/DialogsEmptyCell$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0}, Lorg/telegram/ui/Cells/DialogsEmptyCell$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Cells/DialogsEmptyCell;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lorg/telegram/ui/Cells/DialogsEmptyCell;->titleView:Landroid/widget/TextView;

    .line 100
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_chats_nameMessage_threeLines:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 101
    iget-object v2, p0, Lorg/telegram/ui/Cells/DialogsEmptyCell;->titleView:Landroid/widget/TextView;

    const/high16 v3, 0x41a00000    # 20.0f

    invoke-virtual {v2, v1, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 102
    iget-object v1, p0, Lorg/telegram/ui/Cells/DialogsEmptyCell;->titleView:Landroid/widget/TextView;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 103
    iget-object v1, p0, Lorg/telegram/ui/Cells/DialogsEmptyCell;->titleView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 104
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogsEmptyCell;->titleView:Landroid/widget/TextView;

    const/4 v7, 0x0

    const/4 v1, -0x1

    const/high16 v2, -0x40000000    # -2.0f

    const/16 v3, 0x33

    const/high16 v4, 0x42500000    # 52.0f

    const/high16 v5, 0x41200000    # 10.0f

    invoke-static/range {v1 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 106
    new-instance v0, Lorg/telegram/ui/Components/TextViewSwitcher;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Components/TextViewSwitcher;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/DialogsEmptyCell;->subtitleView:Lorg/telegram/ui/Components/TextViewSwitcher;

    .line 107
    new-instance v1, Lorg/telegram/ui/Cells/DialogsEmptyCell$$ExternalSyntheticLambda2;

    invoke-direct {v1, p1}, Lorg/telegram/ui/Cells/DialogsEmptyCell$$ExternalSyntheticLambda2;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/ViewSwitcher;->setFactory(Landroid/widget/ViewSwitcher$ViewFactory;)V

    .line 115
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogsEmptyCell;->subtitleView:Lorg/telegram/ui/Components/TextViewSwitcher;

    sget v1, Lorg/telegram/messenger/R$anim;->alpha_in:I

    invoke-virtual {v0, p1, v1}, Landroid/widget/ViewAnimator;->setInAnimation(Landroid/content/Context;I)V

    .line 116
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogsEmptyCell;->subtitleView:Lorg/telegram/ui/Components/TextViewSwitcher;

    sget v1, Lorg/telegram/messenger/R$anim;->alpha_out:I

    invoke-virtual {v0, p1, v1}, Landroid/widget/ViewAnimator;->setOutAnimation(Landroid/content/Context;I)V

    .line 117
    iget-object p1, p0, Lorg/telegram/ui/Cells/DialogsEmptyCell;->subtitleView:Lorg/telegram/ui/Components/TextViewSwitcher;

    const/high16 v5, 0x42500000    # 52.0f

    const/4 v6, 0x0

    const/4 v0, -0x1

    const/high16 v1, -0x40000000    # -2.0f

    const/16 v2, 0x33

    const/high16 v3, 0x42500000    # 52.0f

    const/high16 v4, 0x40e00000    # 7.0f

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private synthetic lambda$new$1(Landroid/view/View;)V
    .locals 1

    .line 93
    iget-object p1, p0, Lorg/telegram/ui/Cells/DialogsEmptyCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RLottieImageView;->isPlaying()Z

    move-result p1

    if-nez p1, :cond_0

    .line 94
    iget-object p1, p0, Lorg/telegram/ui/Cells/DialogsEmptyCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/RLottieImageView;->setProgress(F)V

    .line 95
    iget-object p1, p0, Lorg/telegram/ui/Cells/DialogsEmptyCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RLottieImageView;->playAnimation()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$startUtyanCollapseAnimation$4(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 238
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Cells/DialogsEmptyCell;->utyanCollapseProgress:F

    .line 239
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 240
    iget-object p1, p0, Lorg/telegram/ui/Cells/DialogsEmptyCell;->onUtyanAnimationUpdateListener:Landroidx/core/util/Consumer;

    if-eqz p1, :cond_0

    .line 241
    iget v0, p0, Lorg/telegram/ui/Cells/DialogsEmptyCell;->utyanCollapseProgress:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {p1, v0}, Landroidx/core/util/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$startUtyanExpandAnimation$3(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 202
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Cells/DialogsEmptyCell;->utyanCollapseProgress:F

    .line 203
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 204
    iget-object p1, p0, Lorg/telegram/ui/Cells/DialogsEmptyCell;->onUtyanAnimationUpdateListener:Landroidx/core/util/Consumer;

    if-eqz p1, :cond_0

    .line 205
    iget v0, p0, Lorg/telegram/ui/Cells/DialogsEmptyCell;->utyanCollapseProgress:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {p1, v0}, Landroidx/core/util/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private measureUtyanHeight(I)I
    .locals 2

    .line 289
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 290
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    .line 291
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 292
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result p1

    if-eqz p1, :cond_1

    .line 293
    sget p1, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    sub-int/2addr v0, p1

    goto :goto_0

    .line 296
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    :cond_1
    :goto_0
    if-nez v0, :cond_2

    .line 299
    sget-object p1, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget p1, p1, Landroid/graphics/Point;->y:I

    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v0

    sub-int/2addr p1, v0

    sget v0, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    sub-int v0, p1, v0

    .line 301
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of p1, p1, Lorg/telegram/ui/Components/BlurredRecyclerView;

    if-eqz p1, :cond_3

    .line 302
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Components/BlurredRecyclerView;

    iget p1, p1, Lorg/telegram/ui/Components/BlurredRecyclerView;->blurTopPadding:I

    sub-int/2addr v0, p1

    :cond_3
    int-to-float p1, v0

    const/high16 v1, 0x43a00000    # 320.0f

    .line 305
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int/2addr v1, v0

    int-to-float v0, v1

    iget v1, p0, Lorg/telegram/ui/Cells/DialogsEmptyCell;->utyanCollapseProgress:F

    mul-float/2addr v0, v1

    add-float/2addr p1, v0

    float-to-int p1, p1

    return p1
.end method


# virtual methods
.method public isUtyanAnimationTriggered()Z
    .locals 1

    .line 191
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/DialogsEmptyCell;->utyanAnimationTriggered:Z

    return v0
.end method

.method public offsetTopAndBottom(I)V
    .locals 0

    .line 266
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->offsetTopAndBottom(I)V

    .line 267
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/DialogsEmptyCell;->updateLayout()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 260
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 261
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/DialogsEmptyCell;->updateLayout()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 5

    .line 310
    iget v0, p0, Lorg/telegram/ui/Cells/DialogsEmptyCell;->currentType:I

    const/high16 v1, 0x40000000    # 2.0f

    if-eqz v0, :cond_8

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    goto/16 :goto_2

    :cond_0
    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    const/4 v3, 0x3

    if-ne v0, v3, :cond_1

    goto :goto_0

    :cond_1
    const/high16 p2, 0x43260000    # 166.0f

    .line 337
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    invoke-static {p2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void

    .line 314
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_3

    .line 315
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    .line 316
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 317
    invoke-virtual {p2}, Landroid/view/View;->getPaddingTop()I

    move-result p2

    if-eqz p2, :cond_4

    .line 318
    sget p2, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    sub-int/2addr v0, p2

    goto :goto_1

    .line 321
    :cond_3
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    :cond_4
    :goto_1
    if-nez v0, :cond_5

    .line 324
    sget-object p2, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget p2, p2, Landroid/graphics/Point;->y:I

    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v0

    sub-int/2addr p2, v0

    sget v0, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    sub-int v0, p2, v0

    .line 327
    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    instance-of p2, p2, Lorg/telegram/ui/Components/BlurredRecyclerView;

    if-eqz p2, :cond_6

    .line 328
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    check-cast p2, Lorg/telegram/ui/Components/BlurredRecyclerView;

    iget p2, p2, Lorg/telegram/ui/Components/BlurredRecyclerView;->blurTopPadding:I

    sub-int/2addr v0, p2

    .line 331
    :cond_6
    iget p2, p0, Lorg/telegram/ui/Cells/DialogsEmptyCell;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    iget-object p2, p2, Lorg/telegram/messenger/MessagesController;->hintDialogs:Ljava/util/ArrayList;

    .line 332
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_7

    const/high16 v3, 0x42900000    # 72.0f

    .line 333
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v4

    mul-int/2addr v3, v4

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    add-int/2addr v3, p2

    sub-int/2addr v3, v2

    const/high16 p2, 0x42480000    # 50.0f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    add-int/2addr v3, p2

    sub-int/2addr v0, v3

    .line 335
    :cond_7
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {p1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void

    .line 311
    :cond_8
    :goto_2
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {p1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-direct {p0, p2}, Lorg/telegram/ui/Cells/DialogsEmptyCell;->measureUtyanHeight(I)I

    move-result p2

    invoke-static {p2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void
.end method

.method public setOnUtyanAnimationEndListener(Ljava/lang/Runnable;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lorg/telegram/ui/Cells/DialogsEmptyCell;->onUtyanAnimationEndListener:Ljava/lang/Runnable;

    return-void
.end method

.method public setOnUtyanAnimationUpdateListener(Landroidx/core/util/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/core/util/Consumer;",
            ")V"
        }
    .end annotation

    .line 125
    iput-object p1, p0, Lorg/telegram/ui/Cells/DialogsEmptyCell;->onUtyanAnimationUpdateListener:Landroidx/core/util/Consumer;

    return-void
.end method

.method public setType(IZ)V
    .locals 6

    .line 129
    iget v0, p0, Lorg/telegram/ui/Cells/DialogsEmptyCell;->currentType:I

    if-ne v0, p1, :cond_0

    return-void

    .line 132
    :cond_0
    iput p1, p0, Lorg/telegram/ui/Cells/DialogsEmptyCell;->currentType:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_3

    if-eq p1, v1, :cond_3

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    .line 155
    iget-object p1, p0, Lorg/telegram/ui/Cells/DialogsEmptyCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/RLottieImageView;->setAutoRepeat(Z)V

    .line 156
    sget p1, Lorg/telegram/messenger/R$raw;->filter_new:I

    .line 157
    sget p2, Lorg/telegram/messenger/R$string;->FilterAddingChatsInfo:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 158
    iget-object v2, p0, Lorg/telegram/ui/Cells/DialogsEmptyCell;->titleView:Landroid/widget/TextView;

    sget v3, Lorg/telegram/messenger/R$string;->FilterAddingChats:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 143
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Cells/DialogsEmptyCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/RLottieImageView;->setAutoRepeat(Z)V

    .line 144
    sget p1, Lorg/telegram/messenger/R$raw;->filter_no_chats:I

    if-eqz p2, :cond_2

    .line 146
    iget-object p2, p0, Lorg/telegram/ui/Cells/DialogsEmptyCell;->titleView:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/R$string;->FilterNoChatsToForward:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    sget p2, Lorg/telegram/messenger/R$string;->FilterNoChatsToForwardInfo:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 149
    :cond_2
    iget-object p2, p0, Lorg/telegram/ui/Cells/DialogsEmptyCell;->titleView:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/R$string;->FilterNoChatsToDisplay:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    sget p2, Lorg/telegram/messenger/R$string;->FilterNoChatsToDisplayInfo:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 138
    :cond_3
    sget p1, Lorg/telegram/messenger/R$raw;->utyan_newborn:I

    .line 139
    sget p2, Lorg/telegram/messenger/R$string;->NoChatsHelp:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 140
    iget-object v2, p0, Lorg/telegram/ui/Cells/DialogsEmptyCell;->titleView:Landroid/widget/TextView;

    sget v3, Lorg/telegram/messenger/R$string;->NoChats:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    const/16 v2, 0x20

    const/16 v3, 0xa

    if-eqz p1, :cond_7

    .line 162
    iget-object v4, p0, Lorg/telegram/ui/Cells/DialogsEmptyCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    .line 163
    iget v4, p0, Lorg/telegram/ui/Cells/DialogsEmptyCell;->currentType:I

    if-ne v4, v1, :cond_6

    .line 164
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/DialogsEmptyCell;->isUtyanAnimationTriggered()Z

    move-result v4

    if-eqz v4, :cond_5

    const/high16 v4, 0x3f800000    # 1.0f

    .line 165
    iput v4, p0, Lorg/telegram/ui/Cells/DialogsEmptyCell;->utyanCollapseProgress:F

    .line 166
    sget v4, Lorg/telegram/messenger/R$string;->NoChatsContactsHelp:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 167
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isSmallTablet()Z

    move-result v5

    if-nez v5, :cond_4

    .line 168
    invoke-virtual {v4, v3, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    .line 170
    :cond_4
    iget-object v5, p0, Lorg/telegram/ui/Cells/DialogsEmptyCell;->subtitleView:Lorg/telegram/ui/Components/TextViewSwitcher;

    invoke-virtual {v5, v4, v1}, Lorg/telegram/ui/Components/TextViewSwitcher;->setText(Ljava/lang/CharSequence;Z)V

    .line 171
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    goto :goto_1

    .line 173
    :cond_5
    invoke-virtual {p0, v1}, Lorg/telegram/ui/Cells/DialogsEmptyCell;->startUtyanCollapseAnimation(Z)V

    .line 176
    :cond_6
    :goto_1
    iget v1, p0, Lorg/telegram/ui/Cells/DialogsEmptyCell;->prevIcon:I

    if-eq v1, p1, :cond_8

    .line 177
    iget-object v1, p0, Lorg/telegram/ui/Cells/DialogsEmptyCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    const/16 v4, 0x64

    invoke-virtual {v1, p1, v4, v4}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(III)V

    .line 178
    iget-object v1, p0, Lorg/telegram/ui/Cells/DialogsEmptyCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/RLottieImageView;->playAnimation()V

    .line 179
    iput p1, p0, Lorg/telegram/ui/Cells/DialogsEmptyCell;->prevIcon:I

    goto :goto_2

    .line 182
    :cond_7
    iget-object p1, p0, Lorg/telegram/ui/Cells/DialogsEmptyCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 184
    :cond_8
    :goto_2
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isSmallTablet()Z

    move-result p1

    if-nez p1, :cond_9

    .line 185
    invoke-virtual {p2, v3, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p2

    .line 187
    :cond_9
    iget-object p1, p0, Lorg/telegram/ui/Cells/DialogsEmptyCell;->subtitleView:Lorg/telegram/ui/Components/TextViewSwitcher;

    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/Components/TextViewSwitcher;->setText(Ljava/lang/CharSequence;Z)V

    return-void
.end method

.method public startUtyanCollapseAnimation(Z)V
    .locals 3

    .line 223
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogsEmptyCell;->utyanAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 224
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    const/4 v0, 0x1

    .line 226
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/DialogsEmptyCell;->utyanAnimationTriggered:Z

    if-eqz p1, :cond_2

    .line 228
    sget p1, Lorg/telegram/messenger/R$string;->NoChatsContactsHelp:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 229
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isSmallTablet()Z

    move-result v1

    if-nez v1, :cond_1

    const/16 v1, 0xa

    const/16 v2, 0x20

    .line 230
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    .line 232
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Cells/DialogsEmptyCell;->subtitleView:Lorg/telegram/ui/Components/TextViewSwitcher;

    invoke-virtual {v1, p1, v0}, Lorg/telegram/ui/Components/TextViewSwitcher;->setText(Ljava/lang/CharSequence;Z)V

    .line 235
    :cond_2
    iget p1, p0, Lorg/telegram/ui/Cells/DialogsEmptyCell;->utyanCollapseProgress:F

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    const/high16 p1, 0x3f800000    # 1.0f

    aput p1, v1, v0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    const-wide/16 v0, 0xfa

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Cells/DialogsEmptyCell;->utyanAnimator:Landroid/animation/ValueAnimator;

    .line 236
    sget-object v0, Lorg/telegram/ui/Components/Easings;->easeOutQuad:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 237
    iget-object p1, p0, Lorg/telegram/ui/Cells/DialogsEmptyCell;->utyanAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lorg/telegram/ui/Cells/DialogsEmptyCell$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Cells/DialogsEmptyCell$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Cells/DialogsEmptyCell;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 244
    iget-object p1, p0, Lorg/telegram/ui/Cells/DialogsEmptyCell;->utyanAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lorg/telegram/ui/Cells/DialogsEmptyCell$2;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Cells/DialogsEmptyCell$2;-><init>(Lorg/telegram/ui/Cells/DialogsEmptyCell;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 255
    iget-object p1, p0, Lorg/telegram/ui/Cells/DialogsEmptyCell;->utyanAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public startUtyanExpandAnimation()V
    .locals 3

    .line 195
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogsEmptyCell;->utyanAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 196
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    const/4 v0, 0x0

    .line 198
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/DialogsEmptyCell;->utyanAnimationTriggered:Z

    .line 199
    iget v1, p0, Lorg/telegram/ui/Cells/DialogsEmptyCell;->utyanCollapseProgress:F

    const/4 v2, 0x2

    new-array v2, v2, [F

    aput v1, v2, v0

    const/4 v0, 0x0

    const/4 v1, 0x1

    aput v0, v2, v1

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Cells/DialogsEmptyCell;->utyanAnimator:Landroid/animation/ValueAnimator;

    .line 200
    sget-object v1, Lorg/telegram/ui/Components/Easings;->easeOutQuad:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 201
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogsEmptyCell;->utyanAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lorg/telegram/ui/Cells/DialogsEmptyCell$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Cells/DialogsEmptyCell$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Cells/DialogsEmptyCell;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 208
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogsEmptyCell;->utyanAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lorg/telegram/ui/Cells/DialogsEmptyCell$1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Cells/DialogsEmptyCell$1;-><init>(Lorg/telegram/ui/Cells/DialogsEmptyCell;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 219
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogsEmptyCell;->utyanAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public updateLayout()V
    .locals 4

    .line 272
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/telegram/ui/Cells/DialogsEmptyCell;->currentType:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_1

    .line 273
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 274
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    if-eqz v0, :cond_1

    .line 276
    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v0

    div-int/2addr v0, v2

    sub-int/2addr v1, v0

    .line 279
    :cond_1
    iget v0, p0, Lorg/telegram/ui/Cells/DialogsEmptyCell;->currentType:I

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    :cond_2
    int-to-float v0, v1

    .line 280
    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    float-to-int v1, v1

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    iget v3, p0, Lorg/telegram/ui/Cells/DialogsEmptyCell;->utyanCollapseProgress:F

    sub-float/2addr v2, v3

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    float-to-int v1, v0

    .line 282
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogsEmptyCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 283
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogsEmptyCell;->titleView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 284
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogsEmptyCell;->subtitleView:Lorg/telegram/ui/Components/TextViewSwitcher;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method
