.class public Lorg/telegram/ui/Stories/StoryCaptionView;
.super Landroidx/core/widget/NestedScrollView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;,
        Lorg/telegram/ui/Stories/StoryCaptionView$Reply;
    }
.end annotation


# instance fields
.field private abortAnimatedScrollMethod:Ljava/lang/reflect/Method;

.field private backgroundAlpha:F

.field public blackoutBottomOffset:I

.field captionContainer:Landroid/widget/FrameLayout;

.field public captionTextview:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

.field private disableDraw:Z

.field public disableTouches:Z

.field private dontChangeTopMargin:Z

.field expanded:Z

.field gradientColor:I

.field private isLandscape:Z

.field private lastMotionX:F

.field private lastMotionY:F

.field private nestedScrollStarted:Z

.field private overScrollY:F

.field private final paint:Landroid/graphics/Paint;

.field private pendingTopMargin:I

.field private prevHeight:I

.field private replytextHash:I

.field private replytitleHash:I

.field private scroller:Landroid/widget/OverScroller;

.field private final springAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

.field private startMotionX:F

.field private startMotionY:F

.field private textHash:I

.field textSelectionHelper:Lorg/telegram/ui/Cells/TextSelectionHelper$SimpleTextSelectionHelper;

.field topOverlayGradient:Landroid/graphics/drawable/GradientDrawable;

.field touched:Z

.field private velocitySign:F

.field private velocityY:F


# direct methods
.method public static synthetic $r8$lambda$GjMM_ONPiGdAeDxCAU89bDabj0k(Lorg/telegram/ui/Stories/StoryCaptionView;Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Stories/StoryCaptionView;->lambda$new$0(Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V

    return-void
.end method

.method public static synthetic $r8$lambda$HiBOSYHBjGiRd0SZeQUIAWK-dlg(Lorg/telegram/ui/Stories/StoryCaptionView;FFFFLandroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/Stories/StoryCaptionView;->lambda$collapse$2(FFFFLandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$f9MwkloWTxqdcR-GY_ONzCmAjiM(Lorg/telegram/ui/Stories/StoryCaptionView;FFFLandroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Stories/StoryCaptionView;->lambda$expand$1(FFFLandroid/animation/ValueAnimator;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fputlastMotionX(Lorg/telegram/ui/Stories/StoryCaptionView;F)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->lastMotionX:F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputlastMotionY(Lorg/telegram/ui/Stories/StoryCaptionView;F)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->lastMotionY:F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputstartMotionX(Lorg/telegram/ui/Stories/StoryCaptionView;F)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->startMotionX:F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputstartMotionY(Lorg/telegram/ui/Stories/StoryCaptionView;F)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->startMotionY:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 10

    .line 130
    const-class v0, Landroidx/core/widget/NestedScrollView;

    invoke-direct {p0, p1}, Landroidx/core/widget/NestedScrollView;-><init>(Landroid/content/Context;)V

    .line 92
    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->paint:Landroid/graphics/Paint;

    const/high16 v3, 0x3f800000    # 1.0f

    .line 116
    iput v3, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->backgroundAlpha:F

    const/4 v4, -0x1

    .line 118
    iput v4, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->pendingTopMargin:I

    const/16 v5, 0x33

    const/high16 v6, -0x1000000

    .line 126
    invoke-static {v6, v5}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v5

    iput v5, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->gradientColor:I

    .line 127
    new-instance v5, Landroid/graphics/drawable/GradientDrawable;

    sget-object v7, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    iget v8, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->gradientColor:I

    const/4 v9, 0x0

    filled-new-array {v9, v8}, [I

    move-result-object v8

    invoke-direct {v5, v7, v8}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    iput-object v5, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->topOverlayGradient:Landroid/graphics/drawable/GradientDrawable;

    .line 131
    new-instance v5, Landroid/widget/FrameLayout;

    invoke-direct {v5, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->captionContainer:Landroid/widget/FrameLayout;

    .line 132
    invoke-virtual {p0, v9}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    const/4 p1, 0x2

    .line 133
    invoke-virtual {p0, p1}, Landroid/view/View;->setOverScrollMode(I)V

    .line 135
    invoke-static {p0}, Lorg/telegram/messenger/NotificationCenter;->listenEmojiLoading(Landroid/view/View;)V

    .line 137
    new-instance p1, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {p1, p0, v5, p2}, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;-><init>(Lorg/telegram/ui/Stories/StoryCaptionView;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object p1, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->captionTextview:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    .line 138
    new-instance v5, Lorg/telegram/ui/Cells/TextSelectionHelper$SimpleTextSelectionHelper;

    invoke-direct {v5, p1, p2}, Lorg/telegram/ui/Cells/TextSelectionHelper$SimpleTextSelectionHelper;-><init>(Lorg/telegram/ui/Cells/TextSelectionHelper$SimpleSelectabeleView;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v5, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->textSelectionHelper:Lorg/telegram/ui/Cells/TextSelectionHelper$SimpleTextSelectionHelper;

    .line 139
    iput-boolean v9, v5, Lorg/telegram/ui/Cells/TextSelectionHelper;->useMovingOffset:Z

    .line 140
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->captionContainer:Landroid/widget/FrameLayout;

    iget-object p2, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->captionTextview:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    const/4 v5, -0x2

    invoke-virtual {p1, p2, v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 141
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->captionContainer:Landroid/widget/FrameLayout;

    new-instance p2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {p2, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, p2}, Landroidx/core/widget/NestedScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 143
    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 p1, 0x41400000    # 12.0f

    .line 144
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setFadingEdgeLength(I)V

    .line 145
    invoke-virtual {p0, v2}, Landroid/view/View;->setVerticalFadingEdgeEnabled(Z)V

    .line 146
    invoke-virtual {p0, v9}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 148
    new-instance p1, Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object p2, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->captionTextview:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    sget-object v1, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    const/4 v4, 0x0

    invoke-direct {p1, p2, v1, v4}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;F)V

    iput-object p1, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->springAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 149
    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p2

    const/high16 v1, 0x42c80000    # 100.0f

    invoke-virtual {p2, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 150
    invoke-virtual {p1, v3}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setMinimumVisibleChange(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 151
    new-instance p2, Lorg/telegram/ui/Stories/StoryCaptionView$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Stories/StoryCaptionView$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Stories/StoryCaptionView;)V

    invoke-virtual {p1, p2}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addUpdateListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 155
    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    const/4 p1, 0x0

    .line 158
    :try_start_0
    const-string p2, "abortAnimatedScroll"

    invoke-virtual {v0, p2, p1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    iput-object p2, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->abortAnimatedScrollMethod:Ljava/lang/reflect/Method;

    .line 159
    invoke-virtual {p2, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 161
    iput-object p1, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->abortAnimatedScrollMethod:Ljava/lang/reflect/Method;

    .line 162
    invoke-static {p2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 166
    :goto_0
    :try_start_1
    const-string p2, "mScroller"

    invoke-virtual {v0, p2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p2

    .line 167
    invoke-virtual {p2, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 168
    invoke-virtual {p2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/OverScroller;

    iput-object p2, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->scroller:Landroid/widget/OverScroller;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p2

    .line 170
    iput-object p1, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->scroller:Landroid/widget/OverScroller;

    .line 171
    invoke-static {p2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method private synthetic lambda$collapse$2(FFFFLandroid/animation/ValueAnimator;)V
    .locals 0

    .line 540
    invoke-virtual {p5}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/Float;

    invoke-virtual {p5}, Ljava/lang/Float;->floatValue()F

    move-result p5

    .line 541
    invoke-static {p1, p2, p5}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setScrollY(I)V

    .line 542
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->captionTextview:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    invoke-static {p3, p4, p5}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result p2

    iput p2, p1, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->progressToExpand:F

    .line 543
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->captionTextview:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private synthetic lambda$expand$1(FFFLandroid/animation/ValueAnimator;)V
    .locals 3

    .line 517
    invoke-virtual {p4}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Float;

    invoke-virtual {p4}, Ljava/lang/Float;->floatValue()F

    move-result p4

    .line 518
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget v1, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->blackoutBottomOffset:I

    sub-int/2addr v0, v1

    const/high16 v1, 0x42800000    # 64.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->captionContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    .line 519
    invoke-static {p1, v0, p4}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setScrollY(I)V

    .line 520
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->captionTextview:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    invoke-static {p2, p3, p4}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result p2

    iput p2, p1, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->progressToExpand:F

    .line 521
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->captionTextview:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private synthetic lambda$new$0(Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .locals 0

    .line 152
    iput p2, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->overScrollY:F

    .line 153
    iput p3, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->velocityY:F

    return-void
.end method

.method private startSpringAnimationIfNotRunning(F)V
    .locals 1

    .line 390
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->springAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 391
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->springAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0, p1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setStartVelocity(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 392
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->springAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    .line 394
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result p1

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 395
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/StoryCaptionView;->collapse()V

    :cond_1
    return-void
.end method

.method private updateTopMargin(II)V
    .locals 0

    .line 257
    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/Stories/StoryCaptionView;->calculateNewContainerMarginTop(II)I

    move-result p1

    if-ltz p1, :cond_1

    .line 259
    iget-boolean p2, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->dontChangeTopMargin:Z

    if-eqz p2, :cond_0

    .line 260
    iput p1, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->pendingTopMargin:I

    return-void

    .line 262
    :cond_0
    iget-object p2, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->captionContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup$MarginLayoutParams;

    iput p1, p2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    const/4 p1, -0x1

    .line 263
    iput p1, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->pendingTopMargin:I

    :cond_1
    return-void
.end method


# virtual methods
.method public allowInterceptTouchEvent(FF)Z
    .locals 1

    .line 475
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->captionTextview:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    iget p1, p1, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->progressToExpand:F

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v0

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->disableTouches:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->captionContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v0

    sub-int/2addr p1, v0

    int-to-float p1, p1

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->captionTextview:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    add-float/2addr p1, v0

    cmpl-float p1, p2, p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public calculateNewContainerMarginTop(II)I
    .locals 8

    const/4 v0, -0x1

    if-eqz p1, :cond_7

    if-nez p2, :cond_0

    goto/16 :goto_3

    .line 273
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->captionTextview:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    .line 274
    iget-object v2, v1, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->state:[Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    iget-object v4, v2, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->text:Ljava/lang/CharSequence;

    .line 275
    iget-object v2, v2, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->reply:Lorg/telegram/ui/Stories/StoryCaptionView$Reply;

    const/4 v5, 0x0

    if-eqz v2, :cond_1

    iget-object v6, v2, Lorg/telegram/ui/Stories/StoryCaptionView$Reply;->title:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_1
    move-object v6, v5

    :goto_0
    if-eqz v2, :cond_2

    .line 276
    iget-object v5, v2, Lorg/telegram/ui/Stories/StoryCaptionView$Reply;->text:Ljava/lang/CharSequence;

    .line 278
    :cond_2
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v2

    if-eqz v6, :cond_3

    .line 279
    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v4

    goto :goto_1

    :cond_3
    move v4, v3

    :goto_1
    if-eqz v5, :cond_4

    .line 280
    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v5

    goto :goto_2

    :cond_4
    move v5, v3

    .line 281
    :goto_2
    sget-object v6, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v7, v6, Landroid/graphics/Point;->x:I

    iget v6, v6, Landroid/graphics/Point;->y:I

    if-le v7, v6, :cond_5

    const/4 v3, 0x1

    .line 283
    :cond_5
    iget v6, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->textHash:I

    if-ne v6, v2, :cond_6

    iget v6, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->replytitleHash:I

    if-ne v6, v4, :cond_6

    iget v6, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->replytextHash:I

    if-ne v6, v5, :cond_6

    iget-boolean v6, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->isLandscape:Z

    if-ne v6, v3, :cond_6

    iget v6, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->prevHeight:I

    if-ne v6, p2, :cond_6

    iget-boolean v6, v1, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->updating:Z

    if-nez v6, :cond_6

    return v0

    .line 287
    :cond_6
    iput v2, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->textHash:I

    .line 288
    iput v4, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->replytitleHash:I

    .line 289
    iput v5, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->replytextHash:I

    .line 290
    iput-boolean v3, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->isLandscape:Z

    .line 291
    iput p2, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->prevHeight:I

    const/high16 v0, 0x40000000    # 2.0f

    .line 293
    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    const/high16 v0, -0x80000000

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {v1, p1, v0}, Landroid/view/View;->measure(II)V

    .line 295
    invoke-virtual {v1, p2}, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->collapsedTextHeight(I)I

    move-result p1

    return p1

    :cond_7
    :goto_3
    return v0
.end method

.method public cancelTouch()V
    .locals 1

    const/4 v0, 0x0

    .line 565
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->touched:Z

    return-void
.end method

.method public checkCancelTextSelection()V
    .locals 4

    .line 573
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->textSelectionHelper:Lorg/telegram/ui/Cells/TextSelectionHelper$SimpleTextSelectionHelper;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/TextSelectionHelper;->isInSelectionMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->startMotionX:F

    iget v1, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->lastMotionX:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    sget v1, Lorg/telegram/messenger/AndroidUtilities;->touchSlop:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->startMotionY:F

    iget v1, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->lastMotionY:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    sget v1, Lorg/telegram/messenger/AndroidUtilities;->touchSlop:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 574
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->textSelectionHelper:Lorg/telegram/ui/Cells/TextSelectionHelper$SimpleTextSelectionHelper;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextSelectionHelper;->getOverlayView(Landroid/content/Context;)Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->lastMotionX:F

    iget v2, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->lastMotionY:F

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;->checkCancel(FFZ)V

    :cond_0
    return-void
.end method

.method public collapse()V
    .locals 7

    .line 530
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->expanded:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 533
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->expanded:Z

    .line 534
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v0

    int-to-float v3, v0

    .line 536
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->captionTextview:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    iget v5, v0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->progressToExpand:F

    const/4 v0, 0x2

    .line 538
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 539
    new-instance v1, Lorg/telegram/ui/Stories/StoryCaptionView$$ExternalSyntheticLambda0;

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lorg/telegram/ui/Stories/StoryCaptionView$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Stories/StoryCaptionView;FFFF)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 v1, 0xfa

    .line 545
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 546
    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 547
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public computeScroll()V
    .locals 2

    .line 411
    invoke-super {p0}, Landroidx/core/widget/NestedScrollView;->computeScroll()V

    .line 412
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->nestedScrollStarted:Z

    if-nez v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->overScrollY:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->scroller:Landroid/widget/OverScroller;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 413
    invoke-direct {p0, v1}, Lorg/telegram/ui/Stories/StoryCaptionView;->startSpringAnimationIfNotRunning(F)V

    :cond_0
    return-void
.end method

.method public disableDraw(Z)V
    .locals 1

    .line 551
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->disableDraw:Z

    if-eq v0, p1, :cond_0

    .line 552
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->disableDraw:Z

    .line 553
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/StoryCaptionView;->invalidate()V

    :cond_0
    return-void
.end method

.method public dispatchNestedPreScroll(II[I[II)Z
    .locals 3

    const/4 p1, 0x1

    const/4 p4, 0x0

    .line 324
    aput p4, p3, p1

    .line 326
    iget-boolean p5, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->nestedScrollStarted:Z

    if-eqz p5, :cond_5

    iget p5, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->overScrollY:F

    const/4 v0, 0x0

    cmpl-float v1, p5, v0

    if-lez v1, :cond_0

    if-gtz p2, :cond_1

    :cond_0
    cmpg-float v1, p5, v0

    if-gez v1, :cond_5

    if-gez p2, :cond_5

    :cond_1
    int-to-float v1, p2

    sub-float v2, p5, v1

    cmpl-float p5, p5, v0

    if-lez p5, :cond_3

    cmpg-float p5, v2, v0

    if-gez p5, :cond_2

    .line 331
    iput v0, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->overScrollY:F

    int-to-float p2, p4

    add-float/2addr v1, v2

    add-float/2addr p2, v1

    float-to-int p2, p2

    .line 332
    aput p2, p3, p1

    goto :goto_0

    .line 334
    :cond_2
    iput v2, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->overScrollY:F

    .line 335
    aput p2, p3, p1

    goto :goto_0

    :cond_3
    cmpl-float p5, v2, v0

    if-lez p5, :cond_4

    .line 339
    iput v0, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->overScrollY:F

    int-to-float p2, p4

    add-float/2addr v1, v2

    add-float/2addr p2, v1

    float-to-int p2, p2

    .line 340
    aput p2, p3, p1

    goto :goto_0

    .line 342
    :cond_4
    iput v2, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->overScrollY:F

    .line 343
    aput p2, p3, p1

    .line 347
    :goto_0
    iget-object p2, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->captionTextview:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    iget p3, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->overScrollY:F

    invoke-virtual {p2, p3}, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->setTranslationY(F)V

    .line 348
    iget-object p2, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->textSelectionHelper:Lorg/telegram/ui/Cells/TextSelectionHelper$SimpleTextSelectionHelper;

    invoke-virtual {p2}, Lorg/telegram/ui/Cells/TextSelectionHelper;->invalidate()V

    return p1

    :cond_5
    return p4
.end method

.method public dispatchNestedScroll(IIII[II[I)V
    .locals 0

    if-eqz p4, :cond_5

    int-to-float p1, p4

    .line 359
    iget p2, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->overScrollY:F

    neg-float p2, p2

    iget-object p3, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->captionContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p3}, Landroid/view/View;->getTop()I

    move-result p3

    int-to-float p3, p3

    div-float/2addr p2, p3

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    const/high16 p3, 0x3f800000    # 1.0f

    sub-float/2addr p3, p2

    mul-float/2addr p1, p3

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    if-eqz p1, :cond_5

    .line 362
    iget-boolean p2, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->nestedScrollStarted:Z

    if-nez p2, :cond_4

    .line 363
    iget-object p2, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->springAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p2}, Landroidx/dynamicanimation/animation/DynamicAnimation;->isRunning()Z

    move-result p2

    if-nez p2, :cond_5

    .line 365
    iget-object p2, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->scroller:Landroid/widget/OverScroller;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result p2

    goto :goto_0

    :cond_0
    const/high16 p2, 0x7fc00000    # Float.NaN

    .line 366
    :goto_0
    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result p3

    if-nez p3, :cond_2

    .line 367
    sget-object p3, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget p4, p3, Landroid/graphics/Point;->x:I

    iget p3, p3, Landroid/graphics/Point;->y:I

    if-le p4, p3, :cond_1

    const p3, 0x453b8000    # 3000.0f

    goto :goto_1

    :cond_1
    const p3, 0x459c4000    # 5000.0f

    :goto_1
    invoke-static {p3, p2}, Ljava/lang/Math;->min(FF)F

    move-result p3

    int-to-float p1, p1

    mul-float/2addr p1, p3

    div-float/2addr p1, p2

    float-to-int p1, p1

    .line 369
    iget p2, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->velocitySign:F

    neg-float p2, p2

    mul-float/2addr p3, p2

    goto :goto_2

    :cond_2
    const/4 p3, 0x0

    :goto_2
    if-eqz p1, :cond_3

    .line 375
    iget p2, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->overScrollY:F

    int-to-float p1, p1

    sub-float/2addr p2, p1

    iput p2, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->overScrollY:F

    .line 376
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->captionTextview:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->setTranslationY(F)V

    .line 378
    :cond_3
    invoke-direct {p0, p3}, Lorg/telegram/ui/Stories/StoryCaptionView;->startSpringAnimationIfNotRunning(F)V

    goto :goto_3

    .line 381
    :cond_4
    iget p2, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->overScrollY:F

    int-to-float p1, p1

    sub-float/2addr p2, p1

    iput p2, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->overScrollY:F

    .line 382
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->captionTextview:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->setTranslationY(F)V

    .line 386
    :cond_5
    :goto_3
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->textSelectionHelper:Lorg/telegram/ui/Cells/TextSelectionHelper$SimpleTextSelectionHelper;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/TextSelectionHelper;->invalidate()V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 440
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->disableDraw:Z

    if-eqz v0, :cond_0

    return-void

    .line 446
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 447
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 448
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v2

    .line 450
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v3

    add-int/2addr v1, v2

    .line 451
    iget v4, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->blackoutBottomOffset:I

    add-int/2addr v4, v1

    const/4 v5, 0x0

    invoke-virtual {p1, v5, v2, v0, v4}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 461
    invoke-virtual {p1, v5, v2, v0, v1}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 462
    invoke-super {p0, p1}, Landroidx/core/widget/NestedScrollView;->draw(Landroid/graphics/Canvas;)V

    .line 463
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method public expand()V
    .locals 1

    const/4 v0, 0x0

    .line 503
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Stories/StoryCaptionView;->expand(Z)V

    return-void
.end method

.method public expand(Z)V
    .locals 4

    .line 508
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->expanded:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x1

    .line 511
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->expanded:Z

    .line 512
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result p1

    int-to-float p1, p1

    .line 513
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->captionTextview:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    iget v0, v0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->progressToExpand:F

    const/4 v1, 0x2

    .line 515
    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 516
    new-instance v2, Lorg/telegram/ui/Stories/StoryCaptionView$$ExternalSyntheticLambda2;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v2, p0, p1, v0, v3}, Lorg/telegram/ui/Stories/StoryCaptionView$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Stories/StoryCaptionView;FFF)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 v2, 0xfa

    .line 523
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 524
    sget-object p1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v1, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 525
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public fling(I)V
    .locals 0

    .line 317
    invoke-super {p0, p1}, Landroidx/core/widget/NestedScrollView;->fling(I)V

    int-to-float p1, p1

    .line 318
    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->velocitySign:F

    const/4 p1, 0x0

    .line 319
    iput p1, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->velocityY:F

    return-void
.end method

.method protected getBottomFadingEdgeStrength()F
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public getMaxTop()F
    .locals 3

    .line 471
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->captionContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->captionContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    sub-int/2addr v1, v2

    sub-int/2addr v0, v1

    int-to-float v0, v0

    return v0
.end method

.method public getPendingMarginTopDiff()I
    .locals 2

    .line 245
    iget v0, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->pendingTopMargin:I

    if-ltz v0, :cond_0

    .line 246
    iget-object v1, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->captionContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getProgressToBlackout()F
    .locals 3

    .line 498
    iget v0, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->prevHeight:I

    const/high16 v1, 0x42200000    # 40.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 499
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->captionTextview:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    invoke-virtual {v2}, Landroid/view/View;->getTranslationY()F

    move-result v2

    sub-float/2addr v1, v2

    int-to-float v0, v0

    div-float/2addr v1, v0

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v0

    return v0
.end method

.method public getTextTop()F
    .locals 2

    .line 467
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->captionContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->captionTextview:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v1

    add-float/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    return v0
.end method

.method protected getTopFadingEdgeStrength()F
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public hasScroll()Z
    .locals 2

    .line 569
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->captionContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    sub-int/2addr v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public invalidate()V
    .locals 1

    .line 490
    invoke-super {p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 491
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 492
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 494
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->textSelectionHelper:Lorg/telegram/ui/Cells/TextSelectionHelper$SimpleTextSelectionHelper;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/TextSelectionHelper;->invalidate()V

    return-void
.end method

.method public isTouched()Z
    .locals 1

    .line 558
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->touched:Z

    return v0
.end method

.method public onEmojiClick(Lorg/telegram/ui/Components/AnimatedEmojiSpan;)V
    .locals 0

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 193
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->captionTextview:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    iget v0, v0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->progressToExpand:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    const/4 v1, 0x0

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->disableTouches:Z

    if-nez v0, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v2, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->captionContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->captionTextview:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    invoke-virtual {v3}, Landroid/view/View;->getTranslationY()F

    move-result v3

    add-float/2addr v2, v3

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    goto :goto_1

    .line 200
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 201
    iput-boolean v2, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->touched:Z

    .line 202
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/StoryCaptionView;->invalidate()V

    goto :goto_0

    .line 203
    :cond_1
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->touched:Z

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v2, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_3

    .line 204
    :cond_2
    iput-boolean v1, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->touched:Z

    .line 205
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/StoryCaptionView;->invalidate()V

    .line 207
    :cond_3
    :goto_0
    invoke-super {p0, p1}, Landroidx/core/widget/NestedScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 194
    :cond_4
    :goto_1
    iget-boolean p1, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->touched:Z

    if-eqz p1, :cond_5

    .line 195
    iput-boolean v1, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->touched:Z

    .line 196
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/StoryCaptionView;->invalidate()V

    :cond_5
    return v1
.end method

.method public onLinkClick(Landroid/text/style/CharacterStyle;Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onLinkLongPress(Landroid/text/style/URLSpan;Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 0

    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 231
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/Stories/StoryCaptionView;->updateTopMargin(II)V

    .line 232
    invoke-super {p0, p1, p2}, Landroidx/core/widget/NestedScrollView;->onMeasure(II)V

    return-void
.end method

.method public onReplyClick(Lorg/telegram/ui/Stories/StoryCaptionView$Reply;)V
    .locals 0

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 212
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->captionTextview:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    iget v0, v0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->progressToExpand:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    const/4 v1, 0x0

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->disableTouches:Z

    if-nez v0, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v2, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->captionContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->captionTextview:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    invoke-virtual {v3}, Landroid/view/View;->getTranslationY()F

    move-result v3

    add-float/2addr v2, v3

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    goto :goto_1

    .line 219
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 220
    iput-boolean v2, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->touched:Z

    .line 221
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/StoryCaptionView;->invalidate()V

    goto :goto_0

    .line 222
    :cond_1
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->touched:Z

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v2, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_3

    .line 223
    :cond_2
    iput-boolean v1, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->touched:Z

    .line 224
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/StoryCaptionView;->invalidate()V

    .line 226
    :cond_3
    :goto_0
    invoke-super {p0, p1}, Landroidx/core/widget/NestedScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 213
    :cond_4
    :goto_1
    iget-boolean p1, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->touched:Z

    if-eqz p1, :cond_5

    .line 214
    iput-boolean v1, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->touched:Z

    .line 215
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/StoryCaptionView;->invalidate()V

    :cond_5
    return v1
.end method

.method public reset()V
    .locals 2

    const/4 v0, 0x0

    .line 299
    invoke-virtual {p0, v0, v0}, Landroidx/core/widget/NestedScrollView;->scrollTo(II)V

    .line 300
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->expanded:Z

    .line 301
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->captionTextview:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    const/4 v1, 0x0

    iput v1, v0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->progressToExpand:F

    .line 302
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public scrollBy(II)V
    .locals 0

    .line 483
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->scrollBy(II)V

    .line 484
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/StoryCaptionView;->invalidate()V

    return-void
.end method

.method public startNestedScroll(II)Z
    .locals 0

    const/4 p1, 0x1

    if-nez p2, :cond_0

    .line 402
    iget-object p2, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->springAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p2}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    .line 403
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->nestedScrollStarted:Z

    .line 404
    iget-object p2, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->captionTextview:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    invoke-virtual {p2}, Landroid/view/View;->getTranslationY()F

    move-result p2

    iput p2, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->overScrollY:F

    :cond_0
    return p1
.end method

.method public stopNestedScroll(I)V
    .locals 1

    .line 419
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->nestedScrollStarted:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 420
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->nestedScrollStarted:Z

    .line 421
    iget p1, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->overScrollY:F

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->scroller:Landroid/widget/OverScroller;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/OverScroller;->isFinished()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 422
    iget p1, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->velocityY:F

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/StoryCaptionView;->startSpringAnimationIfNotRunning(F)V

    :cond_0
    return-void
.end method

.method public updateTopMargin()V
    .locals 2

    .line 253
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/Stories/StoryCaptionView;->updateTopMargin(II)V

    return-void
.end method
