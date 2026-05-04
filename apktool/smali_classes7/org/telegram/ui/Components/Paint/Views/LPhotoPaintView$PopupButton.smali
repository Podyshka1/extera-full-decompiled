.class public Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$PopupButton;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PopupButton"
.end annotation


# instance fields
.field checkView:Landroid/widget/ImageView;

.field image2View:Landroid/widget/ImageView;

.field imageSwitchAnimator:Landroid/animation/ValueAnimator;

.field imageSwitchFill:Z

.field imageSwitchT:F

.field imageView:Landroid/widget/ImageView;

.field imagesView:Landroid/widget/FrameLayout;

.field public textView:Landroid/widget/TextView;

.field final synthetic this$0:Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;


# direct methods
.method public static synthetic $r8$lambda$EvIMWc0tuO7ogdByhUmfFCGbYjw(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$PopupButton;ZLandroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$PopupButton;->lambda$setIcon$0(ZLandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;Landroid/content/Context;)V
    .locals 11

    .line 2499
    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$PopupButton;->this$0:Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;

    .line 2500
    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 2501
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 2502
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    invoke-static {p1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->-$$Nest$fgetresourcesProvider(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-static {v1, v0}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2504
    new-instance v0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$PopupButton$1;

    invoke-direct {v0, p0, p2, p1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$PopupButton$1;-><init>(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$PopupButton;Landroid/content/Context;Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$PopupButton;->imagesView:Landroid/widget/FrameLayout;

    const/16 v6, 0x10

    const/4 v7, 0x0

    const/4 v1, -0x2

    const/4 v2, -0x2

    const/16 v3, 0x13

    const/16 v4, 0x10

    const/4 v5, 0x0

    .line 2524
    invoke-static/range {v1 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2526
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$PopupButton;->imageView:Landroid/widget/ImageView;

    .line 2527
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 2528
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$PopupButton;->imageView:Landroid/widget/ImageView;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuItem:I

    invoke-static {p1, v2}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->-$$Nest$mgetThemedColor(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 2529
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$PopupButton;->imagesView:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$PopupButton;->imageView:Landroid/widget/ImageView;

    const/4 v4, -0x2

    const/16 v5, 0x11

    invoke-static {v4, v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v0, v3, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2530
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$PopupButton;->image2View:Landroid/widget/ImageView;

    .line 2531
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 2532
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$PopupButton;->image2View:Landroid/widget/ImageView;

    invoke-static {p1, v2}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->-$$Nest$mgetThemedColor(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 2533
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$PopupButton;->image2View:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2534
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$PopupButton;->imagesView:Landroid/widget/FrameLayout;

    iget-object v6, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$PopupButton;->image2View:Landroid/widget/ImageView;

    invoke-static {v4, v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v6, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2536
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$PopupButton;->textView:Landroid/widget/TextView;

    .line 2537
    invoke-static {p1, v2}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->-$$Nest$mgetThemedColor(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2538
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$PopupButton;->textView:Landroid/widget/TextView;

    const/4 v2, 0x1

    const/high16 v4, 0x41800000    # 16.0f

    invoke-virtual {v0, v2, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 2539
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$PopupButton;->textView:Landroid/widget/TextView;

    const/16 v9, 0x10

    const/4 v10, 0x0

    const/4 v4, -0x2

    const/4 v5, -0x2

    const/16 v6, 0x13

    const/4 v8, 0x0

    invoke-static/range {v4 .. v10}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2541
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$PopupButton;->checkView:Landroid/widget/ImageView;

    .line 2542
    sget p2, Lorg/telegram/messenger/R$drawable;->msg_text_check:I

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2543
    iget-object p2, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$PopupButton;->checkView:Landroid/widget/ImageView;

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 2544
    iget-object p2, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$PopupButton;->checkView:Landroid/widget/ImageView;

    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_radioBackgroundChecked:I

    invoke-static {p1, v1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->-$$Nest$mgetThemedColor(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;I)I

    move-result p1

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, p1, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 2545
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$PopupButton;->checkView:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2546
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$PopupButton;->checkView:Landroid/widget/ImageView;

    const/16 p2, 0x32

    const/4 v0, -0x1

    invoke-static {p2, v0}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private synthetic lambda$setIcon$0(ZLandroid/animation/ValueAnimator;)V
    .locals 1

    .line 2575
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    iput p2, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$PopupButton;->imageSwitchT:F

    if-nez p1, :cond_0

    .line 2577
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$PopupButton;->imageView:Landroid/widget/ImageView;

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p2

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 2579
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$PopupButton;->imagesView:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public performClick()Z
    .locals 2

    .line 2603
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$PopupButton;->this$0:Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;

    invoke-static {v0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->-$$Nest$fgetpopupWindow(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$PopupButton;->this$0:Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;

    invoke-static {v0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->-$$Nest$fgetpopupWindow(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2604
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$PopupButton;->this$0:Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;

    invoke-static {v0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->-$$Nest$fgetpopupWindow(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dismiss(Z)V

    .line 2606
    :cond_0
    invoke-super {p0}, Landroid/widget/LinearLayout;->performClick()Z

    move-result v0

    return v0
.end method

.method public setIcon(I)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2558
    invoke-virtual {p0, p1, v0, v1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$PopupButton;->setIcon(IZZ)V

    return-void
.end method

.method public setIcon(IZZ)V
    .locals 1

    if-eqz p3, :cond_1

    .line 2563
    iget-object p3, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$PopupButton;->imageSwitchAnimator:Landroid/animation/ValueAnimator;

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 2564
    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 p2, 0x0

    .line 2565
    iput-object p2, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$PopupButton;->imageSwitchAnimator:Landroid/animation/ValueAnimator;

    .line 2566
    invoke-virtual {p0, p1, v0, v0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$PopupButton;->setIcon(IZZ)V

    return-void

    .line 2569
    :cond_0
    iput-boolean p2, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$PopupButton;->imageSwitchFill:Z

    .line 2570
    iget-object p3, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$PopupButton;->image2View:Landroid/widget/ImageView;

    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2571
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$PopupButton;->image2View:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2572
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$PopupButton;->image2View:Landroid/widget/ImageView;

    const/high16 p3, 0x3f800000    # 1.0f

    invoke-virtual {p1, p3}, Landroid/view/View;->setAlpha(F)V

    const/4 p1, 0x2

    .line 2573
    new-array p1, p1, [F

    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$PopupButton;->imageSwitchAnimator:Landroid/animation/ValueAnimator;

    .line 2574
    new-instance p3, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$PopupButton$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0, p2}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$PopupButton$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$PopupButton;Z)V

    invoke-virtual {p1, p3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2581
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$PopupButton;->imageSwitchAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$PopupButton$2;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$PopupButton$2;-><init>(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$PopupButton;)V

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2593
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$PopupButton;->imageSwitchAnimator:Landroid/animation/ValueAnimator;

    sget-object p2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2594
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$PopupButton;->imageSwitchAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 p2, 0x1a4

    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 2595
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$PopupButton;->imageSwitchAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void

    .line 2597
    :cond_1
    iget-object p2, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$PopupButton;->imageView:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public setSelected(Z)V
    .locals 1

    .line 2550
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$PopupButton;->checkView:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1

    .line 2554
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$PopupButton;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
