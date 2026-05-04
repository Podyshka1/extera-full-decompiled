.class public Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field public allowDrawContent:Z

.field private final backgroundPaint:Landroid/graphics/Paint;

.field private behindKeyboardColor:I

.field private drawCurrentPreviewFragmentAbove:Z

.field private drawerContainer:Lcom/exteragram/messenger/drawer/DrawerContainer;

.field private firstLayout:Z

.field private hasCutout:Z

.field private imeHeight:I

.field private inLayout:Z

.field private final internalNavbarPaint:Landroid/graphics/Paint;

.field private keyboardVisibility:Z

.field private lastWindowInsetsCompat:Landroidx/core/view/WindowInsetsCompat;

.field private parentActionBarLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

.field private previewBlurDrawable:Landroid/graphics/drawable/BitmapDrawable;

.field private previewStartY:F


# direct methods
.method public static synthetic $r8$lambda$YT9UYquktbvW3aOzM2AhgBtr4XA(Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->lambda$new$0(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 68
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 46
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->backgroundPaint:Landroid/graphics/Paint;

    const/4 p1, 0x1

    .line 54
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->allowDrawContent:Z

    .line 56
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->firstLayout:Z

    .line 348
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, p1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->internalNavbarPaint:Landroid/graphics/Paint;

    const/high16 v0, 0x40000

    .line 70
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 71
    invoke-virtual {p0, p1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 73
    new-instance p1, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;)V

    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    const/16 p1, 0x500

    .line 102
    invoke-virtual {p0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method

.method private createBlurDrawable()V
    .locals 7

    .line 158
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 159
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v2, v0

    const/high16 v3, 0x40c00000    # 6.0f

    div-float/2addr v2, v3

    float-to-int v2, v2

    int-to-float v4, v1

    div-float/2addr v4, v3

    float-to-int v3, v4

    .line 162
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 163
    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const v6, 0x3e2aaaab

    .line 164
    invoke-virtual {v5, v6, v6}, Landroid/graphics/Canvas;->scale(FF)V

    .line 166
    invoke-super {p0, v5}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 167
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    div-int/lit16 v2, v2, 0xb4

    const/4 v3, 0x7

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v4, v2}, Lorg/telegram/messenger/Utilities;->stackBlurBitmap(Landroid/graphics/Bitmap;I)V

    .line 168
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v2, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->previewBlurDrawable:Landroid/graphics/drawable/BitmapDrawable;

    const/4 v3, 0x0

    .line 169
    invoke-virtual {v2, v3, v3, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    return-void
.end method

.method private dispatchApplyWindowInsetsInternal(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)V
    .locals 4

    .line 376
    instance-of v0, p1, Lorg/telegram/ui/ActionBar/ActionBarLayout;

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 381
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 382
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->ime()I

    move-result v1

    .line 383
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->systemBars()I

    move-result v2

    or-int/2addr v1, v2

    .line 384
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->displayCutout()I

    move-result v2

    or-int/2addr v1, v2

    .line 382
    invoke-virtual {p2, v1}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object v1

    .line 386
    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-nez v2, :cond_2

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    if-nez v2, :cond_2

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v3, v1, Landroidx/core/graphics/Insets;->left:I

    if-ne v2, v3, :cond_2

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget v3, v1, Landroidx/core/graphics/Insets;->right:I

    if-eq v2, v3, :cond_3

    .line 391
    :cond_2
    iget v2, v1, Landroidx/core/graphics/Insets;->left:I

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    const/4 v2, 0x0

    .line 392
    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 393
    iget v1, v1, Landroidx/core/graphics/Insets;->right:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 394
    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 396
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 399
    :cond_3
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {p2, v1, v2, v3, v0}, Landroidx/core/view/WindowInsetsCompat;->inset(IIII)Landroidx/core/view/WindowInsetsCompat;

    move-result-object p2

    .line 403
    invoke-static {p1, p2}, Landroidx/core/view/ViewCompat;->dispatchApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 5

    .line 74
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_1

    .line 75
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->ime()I

    move-result v1

    invoke-virtual {p2, v1}, Landroidx/core/view/WindowInsetsCompat;->isVisible(I)Z

    move-result v1

    .line 76
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->ime()I

    move-result v2

    invoke-virtual {p2, v2}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object v2

    iget v2, v2, Landroidx/core/graphics/Insets;->bottom:I

    .line 77
    iget-boolean v3, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->keyboardVisibility:Z

    if-ne v3, v1, :cond_0

    iget v3, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->imeHeight:I

    if-eq v3, v2, :cond_1

    .line 78
    :cond_0
    iput-boolean v1, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->keyboardVisibility:Z

    .line 79
    iput v2, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->imeHeight:I

    .line 80
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->requestLayout()V

    .line 83
    :cond_1
    move-object v1, p1

    check-cast v1, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    .line 84
    sget v2, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    invoke-virtual {p2}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    move-result v3

    if-eq v2, v3, :cond_2

    .line 85
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->requestLayout()V

    .line 87
    :cond_2
    invoke-virtual {p2}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    move-result v2

    if-nez v2, :cond_3

    .line 88
    sget-boolean v3, Lorg/telegram/messenger/AndroidUtilities;->isInMultiwindow:Z

    if-nez v3, :cond_3

    iget-boolean v3, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->firstLayout:Z

    if-eqz v3, :cond_4

    :cond_3
    sget v3, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    if-eq v3, v2, :cond_4

    .line 89
    sput v2, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    :cond_4
    const/4 v2, 0x0

    .line 91
    iput-boolean v2, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->firstLayout:Z

    .line 92
    invoke-virtual {p2}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    move-result v3

    const/4 v4, 0x1

    if-gtz v3, :cond_5

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-nez v3, :cond_5

    move v3, v4

    goto :goto_0

    :cond_5
    move v3, v2

    :goto_0
    invoke-virtual {v1, v3}, Landroid/view/View;->setWillNotDraw(Z)V

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_7

    .line 95
    invoke-virtual {p2}, Landroidx/core/view/WindowInsetsCompat;->getDisplayCutout()Landroidx/core/view/DisplayCutoutCompat;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 96
    invoke-virtual {v0}, Landroidx/core/view/DisplayCutoutCompat;->getBoundingRects()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    move v2, v4

    :cond_6
    iput-boolean v2, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->hasCutout:Z

    .line 98
    :cond_7
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 100
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->onApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object p1

    return-object p1
.end method

.method private onApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 2

    .line 408
    iput-object p2, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->lastWindowInsetsCompat:Landroidx/core/view/WindowInsetsCompat;

    .line 410
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    .line 411
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 412
    invoke-direct {p0, v1, p2}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->dispatchApplyWindowInsetsInternal(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 415
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 416
    sget-object p1, Landroidx/core/view/WindowInsetsCompat;->CONSUMED:Landroidx/core/view/WindowInsetsCompat;

    return-object p1
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 367
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 368
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->lastWindowInsetsCompat:Landroidx/core/view/WindowInsetsCompat;

    if-eqz p2, :cond_0

    .line 369
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->dispatchApplyWindowInsetsInternal(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)V

    :cond_0
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 278
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 279
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->drawCurrentPreviewFragmentAbove:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->parentActionBarLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    if-eqz v0, :cond_1

    .line 280
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->previewBlurDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_0

    .line 281
    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getCurrentPreviewFragmentAlpha()F

    move-result v0

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/BitmapDrawable;->setAlpha(I)V

    .line 282
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->previewBlurDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 284
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->parentActionBarLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lorg/telegram/ui/ActionBar/INavigationLayout;->drawCurrentPreviewFragment(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11

    .line 290
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->drawCurrentPreviewFragmentAbove:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->parentActionBarLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    if-eqz v0, :cond_4

    .line 291
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    .line 293
    iget v0, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->previewStartY:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-nez v1, :cond_0

    .line 294
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->previewStartY:F

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x3

    const/4 v8, 0x0

    .line 295
    invoke-static/range {v3 .. v10}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object p1

    .line 296
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 297
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    goto :goto_0

    .line 299
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->parentActionBarLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    sub-float/2addr v0, p1

    invoke-interface {v1, v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->movePreviewFragment(F)V

    goto :goto_0

    :cond_1
    if-eq v0, v2, :cond_2

    const/4 p1, 0x6

    if-eq v0, p1, :cond_2

    const/4 p1, 0x3

    if-ne v0, p1, :cond_3

    .line 302
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->parentActionBarLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    invoke-interface {p1}, Lorg/telegram/ui/ActionBar/INavigationLayout;->finishPreviewFragment()V

    :cond_3
    :goto_0
    return v2

    .line 306
    :cond_4
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 1

    .line 270
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->allowDrawContent:Z

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 273
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p1

    return p1
.end method

.method public getDrawerContainer()Lcom/exteragram/messenger/drawer/DrawerContainer;
    .locals 1

    .line 128
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->drawerContainer:Lcom/exteragram/messenger/drawer/DrawerContainer;

    return-object v0
.end method

.method public getInternalNavbarPaint()Landroid/graphics/Paint;
    .locals 1

    .line 351
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->internalNavbarPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getParentActionBarLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;
    .locals 1

    .line 110
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->parentActionBarLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    return-object v0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    .line 345
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->drawCurrentPreviewFragmentAbove:Z

    return v0
.end method

.method public isDrawCurrentPreviewFragmentAbove()Z
    .locals 1

    .line 139
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->drawCurrentPreviewFragmentAbove:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 14

    .line 311
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->lastWindowInsetsCompat:Landroidx/core/view/WindowInsetsCompat;

    if-nez v0, :cond_0

    goto :goto_1

    .line 315
    :cond_0
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->ime()I

    move-result v1

    .line 316
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->systemBars()I

    move-result v2

    or-int/2addr v1, v2

    .line 317
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->displayCutout()I

    move-result v2

    or-int/2addr v1, v2

    .line 315
    invoke-virtual {v0, v1}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object v0

    .line 319
    iget v1, v0, Landroidx/core/graphics/Insets;->bottom:I

    if-lez v1, :cond_1

    .line 320
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->backgroundPaint:Landroid/graphics/Paint;

    iget v2, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->behindKeyboardColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 323
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget v2, v0, Landroidx/core/graphics/Insets;->bottom:I

    sub-int/2addr v1, v2

    int-to-float v4, v1

    .line 324
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v5, v1

    .line 325
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v6, v1

    iget-object v7, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->internalNavbarPaint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    move-object v2, p1

    .line 321
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    move-object v8, v2

    goto :goto_0

    :cond_1
    move-object v8, p1

    .line 330
    :goto_0
    iget-boolean p1, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->hasCutout:Z

    if-eqz p1, :cond_3

    .line 331
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->backgroundPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 332
    iget p1, v0, Landroidx/core/graphics/Insets;->left:I

    if-eqz p1, :cond_2

    int-to-float v11, p1

    .line 334
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    int-to-float v12, p1

    iget-object v13, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->backgroundPaint:Landroid/graphics/Paint;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 336
    :cond_2
    iget p1, v0, Landroidx/core/graphics/Insets;->right:I

    if-eqz p1, :cond_3

    int-to-float v9, p1

    .line 338
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    int-to-float v11, p1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    int-to-float v12, p1

    iget-object v13, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->backgroundPaint:Landroid/graphics/Paint;

    const/4 v10, 0x0

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 181
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->drawerContainer:Lcom/exteragram/messenger/drawer/DrawerContainer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    return v1

    .line 184
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->drawerContainer:Lcom/exteragram/messenger/drawer/DrawerContainer;

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/exteragram/messenger/drawer/DrawerContainer;->handleEdgeSwipeIntercept(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v2

    .line 187
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->parentActionBarLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lorg/telegram/ui/ActionBar/INavigationLayout;->checkTransitionAnimation()Z

    move-result p1

    if-eqz p1, :cond_2

    return v2

    :cond_2
    return v1
.end method

.method protected onLayout(ZIIII)V
    .locals 4

    const/4 p1, 0x1

    .line 192
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->inLayout:Z

    .line 193
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    const/4 p2, 0x0

    move p3, p2

    :goto_0
    if-ge p3, p1, :cond_2

    .line 195
    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p4

    .line 197
    invoke-virtual {p4}, Landroid/view/View;->getVisibility()I

    move-result p5

    const/16 v0, 0x8

    if-ne p5, v0, :cond_0

    goto :goto_1

    .line 201
    :cond_0
    invoke-virtual {p4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p5

    check-cast p5, Landroid/widget/FrameLayout$LayoutParams;

    .line 203
    :try_start_0
    iget v0, p5, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget v1, p5, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, p5, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    invoke-virtual {p4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v2, v3

    iget p5, p5, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-virtual {p4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/2addr p5, v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    add-int/2addr p5, v3

    invoke-virtual {p4, v0, v1, v2, p5}, Landroid/view/View;->layout(IIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p4

    .line 205
    invoke-static {p4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 206
    sget-boolean p5, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-nez p5, :cond_1

    :goto_1
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 207
    :cond_1
    throw p4

    .line 211
    :cond_2
    iput-boolean p2, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->inLayout:Z

    return-void
.end method

.method protected onMeasure(II)V
    .locals 7

    .line 223
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 224
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    .line 226
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 227
    sget v0, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    sub-int v0, p2, v0

    sget v1, Lorg/telegram/messenger/AndroidUtilities;->navigationBarHeight:I

    sub-int/2addr v0, v1

    if-lez v0, :cond_0

    const/16 v1, 0x1000

    if-ge v0, v1, :cond_0

    .line 232
    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iput v0, v1, Landroid/graphics/Point;->y:I

    .line 235
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_4

    .line 237
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 239
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_1

    goto :goto_2

    .line 243
    :cond_1
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 245
    iget v4, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    sub-int v4, p1, v4

    iget v5, v3, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v4, v5

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 247
    iget v6, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    if-lez v6, :cond_2

    .line 248
    invoke-static {v6, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    goto :goto_1

    .line 250
    :cond_2
    iget v6, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    sub-int v6, p2, v6

    iget v3, v3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v6, v3

    invoke-static {v6, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 252
    :goto_1
    instance-of v5, v2, Lorg/telegram/ui/ActionBar/ActionBarLayout;

    if-eqz v5, :cond_3

    .line 253
    move-object v5, v2

    check-cast v5, Lorg/telegram/ui/ActionBar/ActionBarLayout;

    .line 255
    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->storyViewerAttached()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 256
    invoke-virtual {v2}, Landroid/view/View;->forceLayout()V

    .line 259
    :cond_3
    invoke-virtual {v2, v4, v3}, Landroid/view/View;->measure(II)V

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 173
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->drawerContainer:Lcom/exteragram/messenger/drawer/DrawerContainer;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/exteragram/messenger/drawer/DrawerContainer;->handleEdgeSwipeTouch(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public requestLayout()V
    .locals 1

    .line 216
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->inLayout:Z

    if-nez v0, :cond_0

    .line 217
    invoke-super {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setAllowDrawContent(Z)V
    .locals 1

    .line 132
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->allowDrawContent:Z

    if-eq v0, p1, :cond_0

    .line 133
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->allowDrawContent:Z

    .line 134
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setBehindKeyboardColor(I)V
    .locals 0

    .line 264
    iput p1, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->behindKeyboardColor:I

    .line 265
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setDrawCurrentPreviewFragmentAbove(Z)V
    .locals 1

    .line 143
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->drawCurrentPreviewFragmentAbove:Z

    if-eq v0, p1, :cond_1

    .line 144
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->drawCurrentPreviewFragmentAbove:Z

    if-eqz p1, :cond_0

    .line 146
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->createBlurDrawable()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 149
    iput p1, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->previewStartY:F

    const/4 p1, 0x0

    .line 150
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->previewBlurDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 153
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_1
    return-void
.end method

.method public setDrawerContainer(Lcom/exteragram/messenger/drawer/DrawerContainer;)V
    .locals 2

    .line 114
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->drawerContainer:Lcom/exteragram/messenger/drawer/DrawerContainer;

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 118
    invoke-virtual {v0}, Lcom/exteragram/messenger/drawer/DrawerContainer;->dispose()V

    .line 119
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->drawerContainer:Lcom/exteragram/messenger/drawer/DrawerContainer;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 121
    :cond_1
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->drawerContainer:Lcom/exteragram/messenger/drawer/DrawerContainer;

    if-eqz p1, :cond_2

    .line 123
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setInternalNavigationBarColor(I)V
    .locals 2

    .line 355
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->internalNavbarPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 356
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->internalNavbarPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 357
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 359
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    .line 360
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setParentActionBarLayout(Lorg/telegram/ui/ActionBar/INavigationLayout;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->parentActionBarLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    return-void
.end method
