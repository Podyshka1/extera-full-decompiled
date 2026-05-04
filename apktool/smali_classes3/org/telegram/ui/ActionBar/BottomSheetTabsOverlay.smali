.class public Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;,
        Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$Sheet;,
        Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$SheetView;
    }
.end annotation


# instance fields
.field private actionBarLayout:Landroid/view/View;

.field private final animatedCount:Lorg/telegram/ui/Components/AnimatedFloat;

.field private animator:Landroid/animation/ValueAnimator;

.field private blurBitmap:Landroid/graphics/Bitmap;

.field private blurBitmapPaint:Landroid/graphics/Paint;

.field private blurBitmapShader:Landroid/graphics/BitmapShader;

.field private blurMatrix:Landroid/graphics/Matrix;

.field private final clipPath:Landroid/graphics/Path;

.field private final clipRect:Landroid/graphics/RectF;

.field private closeAllButtonBackground:Landroid/graphics/drawable/Drawable;

.field private closeAllButtonBackgroundDark:Z

.field private closeAllButtonText:Lorg/telegram/ui/Components/Text;

.field private dismissProgress:F

.field private dismissingSheet:Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$Sheet;

.field private dismissingTab:Lorg/telegram/ui/ActionBar/BottomSheetTabs$TabDrawable;

.field private gradientClip:Lorg/telegram/ui/GradientClip;

.field private hitCloseAllButton:Z

.field private horizontallySwiping:Z

.field public isOpen:Z

.field private lastY:F

.field private final maximumVelocity:I

.field private final minimumVelocity:I

.field private navigationBarInset:I

.field public offset:F

.field private openAnimator:Landroid/animation/ValueAnimator;

.field private openProgress:F

.field private openingProgress:F

.field private openingSheet:Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$Sheet;

.field private openingTab:Lorg/telegram/ui/ActionBar/BottomSheetTabs$TabDrawable;

.field private openingTabScroll:F

.field private final pos:[I

.field private final pos2:[I

.field private final pos3:[I

.field private pressTab:Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;

.field private pressTabClose:Z

.field private final rect:Landroid/graphics/RectF;

.field private final rect2:Landroid/graphics/RectF;

.field private scrollAnimator:Landroid/animation/ValueAnimator;

.field private final scroller:Landroid/widget/OverScroller;

.field private slowerDismiss:Z

.field private startTime:J

.field private startX:F

.field private startY:F

.field private final tabs:Ljava/util/ArrayList;

.field private tabsView:Lorg/telegram/ui/ActionBar/BottomSheetTabs;

.field private final tabsViewBounds:Landroid/graphics/RectF;

.field private velocityTracker:Landroid/view/VelocityTracker;

.field private verticallyScrolling:Z


# direct methods
.method public static synthetic $r8$lambda$HTsAKLgJBWNXkqa2kxDVhJe9UtM(Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->lambda$dismissSheet$4(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$LMRCuHQeSzdTIZan9hTansvC2lc(Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;Ljava/lang/Boolean;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->lambda$dispatchTouchEvent$1(Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$RvwWnJRtEvXrcMAgwMZkYCfqFus(Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->lambda$scrollTo$5(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$XU58vQduemRbiaLID3mmX5TDEEs(Lorg/telegram/messenger/Utilities$Callback;Landroid/graphics/Bitmap;Landroid/view/Surface;Landroid/graphics/SurfaceTexture;I)V
    .locals 0

    if-nez p4, :cond_0

    .line 1148
    invoke-interface {p0, p1}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    goto :goto_0

    .line 1150
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    const/4 p1, 0x0

    .line 1151
    invoke-interface {p0, p1}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    .line 1153
    :goto_0
    invoke-virtual {p2}, Landroid/view/Surface;->release()V

    .line 1154
    invoke-virtual {p3}, Landroid/graphics/SurfaceTexture;->release()V

    return-void
.end method

.method public static synthetic $r8$lambda$XYhORhJjs7Z2H8aPx6t1LyaiAgY(Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;Ljava/lang/Boolean;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->lambda$dispatchTouchEvent$0(Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hXGnNPWO7I1wkl5xjJT0SgMoWSw(Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$Sheet;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 514
    invoke-interface {p0}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$Sheet;->getWindowView()Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$SheetView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 515
    invoke-interface {p0}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$Sheet;->getWindowView()Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$SheetView;

    move-result-object p0

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$SheetView;->setDrawingFromOverlay(Z)V

    :cond_0
    return-void
.end method

.method public static synthetic $r8$lambda$q8oaELqmUrifEmLsY5YXbLlymXk(Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->lambda$animateOpen$6(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$x-WSzfctxdH9hkQS_jlwqUKjkIw(Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->onApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetanimator(Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->animator:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetopeningSheet(Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;)Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$Sheet;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->openingSheet:Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$Sheet;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettabsView(Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;)Lorg/telegram/ui/ActionBar/BottomSheetTabs;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->tabsView:Lorg/telegram/ui/ActionBar/BottomSheetTabs;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputanimator(Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->animator:Landroid/animation/ValueAnimator;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputdismissingSheet(Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$Sheet;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->dismissingSheet:Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$Sheet;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputdismissingTab(Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;Lorg/telegram/ui/ActionBar/BottomSheetTabs$TabDrawable;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->dismissingTab:Lorg/telegram/ui/ActionBar/BottomSheetTabs$TabDrawable;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputopenProgress(Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;F)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->openProgress:F

    return-void
.end method

.method static bridge synthetic -$$Nest$mclearTabs(Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->clearTabs()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    .line 105
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 98
    new-instance v0, Lorg/telegram/ui/Components/AnimatedFloat;

    const-wide/16 v4, 0x15e

    sget-object v6, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const-wide/16 v2, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    iput-object v0, v1, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->animatedCount:Lorg/telegram/ui/Components/AnimatedFloat;

    .line 594
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, v1, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->tabsViewBounds:Landroid/graphics/RectF;

    .line 595
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->tabs:Ljava/util/ArrayList;

    const/4 v0, 0x2

    .line 701
    new-array v2, v0, [I

    iput-object v2, v1, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->pos:[I

    .line 702
    new-array v2, v0, [I

    iput-object v2, v1, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->pos2:[I

    .line 703
    new-array v0, v0, [I

    iput-object v0, v1, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->pos3:[I

    .line 704
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, v1, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->rect:Landroid/graphics/RectF;

    .line 705
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, v1, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->rect2:Landroid/graphics/RectF;

    .line 706
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, v1, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->clipRect:Landroid/graphics/RectF;

    .line 707
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, v1, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->clipPath:Landroid/graphics/Path;

    const/4 v0, 0x0

    .line 107
    invoke-virtual {p0, v0}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 109
    new-instance v0, Landroid/widget/OverScroller;

    invoke-direct {v0, p1}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->scroller:Landroid/widget/OverScroller;

    .line 110
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    .line 111
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v0

    iput v0, v1, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->maximumVelocity:I

    .line 112
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result p1

    iput p1, v1, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->minimumVelocity:I

    .line 114
    new-instance p1, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$$ExternalSyntheticLambda6;

    invoke-direct {p1, p0}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;)V

    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    return-void
.end method

.method private animateOpen(Z)V
    .locals 3

    .line 666
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->isOpen:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 667
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->openAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    .line 668
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 671
    :cond_1
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->isOpen:Z

    .line 672
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->tabsView:Lorg/telegram/ui/ActionBar/BottomSheetTabs;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 673
    iput-boolean v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->drawTabs:Z

    .line 674
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 676
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 677
    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->openProgress:F

    if-eqz p1, :cond_3

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_0
    const/4 v2, 0x2

    new-array v2, v2, [F

    aput v0, v2, v1

    const/4 v0, 0x1

    aput p1, v2, v0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->openAnimator:Landroid/animation/ValueAnimator;

    .line 678
    new-instance v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 682
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->openAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$3;

    invoke-direct {v0, p0}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$3;-><init>(Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 696
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->openAnimator:Landroid/animation/ValueAnimator;

    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 697
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->openAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x140

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 698
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->openAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private clearTabs()V
    .locals 1

    .line 619
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method private drawDismissingTab(Landroid/graphics/Canvas;)V
    .locals 14

    .line 710
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->dismissingSheet:Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$Sheet;

    if-eqz v0, :cond_1

    .line 711
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->pos2:[I

    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 712
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->tabsView:Lorg/telegram/ui/ActionBar/BottomSheetTabs;

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->pos:[I

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 713
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->tabsView:Lorg/telegram/ui/ActionBar/BottomSheetTabs;

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->rect:Landroid/graphics/RectF;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->getTabBounds(Landroid/graphics/RectF;F)V

    .line 714
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->rect:Landroid/graphics/RectF;

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->pos:[I

    const/4 v2, 0x0

    aget v3, v1, v2

    iget-object v4, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->pos2:[I

    aget v5, v4, v2

    sub-int/2addr v3, v5

    int-to-float v3, v3

    const/4 v5, 0x1

    aget v1, v1, v5

    aget v4, v4, v5

    sub-int/2addr v1, v4

    int-to-float v1, v1

    invoke-virtual {v0, v3, v1}, Landroid/graphics/RectF;->offset(FF)V

    .line 716
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 717
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget v3, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->navigationBarInset:I

    sub-int/2addr v1, v3

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 719
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->dismissingSheet:Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$Sheet;

    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$Sheet;->getWindowView()Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$SheetView;

    move-result-object v1

    iget-object v3, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->rect:Landroid/graphics/RectF;

    iget v4, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->dismissProgress:F

    iget-object v5, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->clipRect:Landroid/graphics/RectF;

    const/4 v7, 0x0

    move v6, v4

    move-object v2, p1

    invoke-interface/range {v1 .. v7}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$SheetView;->drawInto(Landroid/graphics/Canvas;Landroid/graphics/RectF;FLandroid/graphics/RectF;FZ)F

    move-result v11

    .line 721
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->dismissingTab:Lorg/telegram/ui/ActionBar/BottomSheetTabs$TabDrawable;

    if-eqz p1, :cond_0

    .line 722
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->clipPath:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Path;->rewind()V

    .line 723
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->clipPath:Landroid/graphics/Path;

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->clipRect:Landroid/graphics/RectF;

    sget-object v1, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {p1, v0, v11, v11, v1}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 724
    invoke-virtual {v2}, Landroid/graphics/Canvas;->save()I

    .line 725
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->clipPath:Landroid/graphics/Path;

    invoke-virtual {v2, p1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 726
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->clipRect:Landroid/graphics/RectF;

    iget p1, p1, Landroid/graphics/RectF;->top:F

    const/high16 v0, 0x42480000    # 50.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    const/high16 v3, 0x3f800000    # 1.0f

    iget v4, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->dismissProgress:F

    sub-float/2addr v3, v4

    mul-float/2addr v1, v3

    sub-float/2addr p1, v1

    .line 727
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->rect:Landroid/graphics/RectF;

    iget-object v3, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->clipRect:Landroid/graphics/RectF;

    iget v4, v3, Landroid/graphics/RectF;->left:F

    iget v3, v3, Landroid/graphics/RectF;->right:F

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, p1

    invoke-virtual {v1, v4, p1, v3, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 728
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->tabsView:Lorg/telegram/ui/ActionBar/BottomSheetTabs;

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->dismissingTab:Lorg/telegram/ui/ActionBar/BottomSheetTabs$TabDrawable;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->setupTab(Lorg/telegram/ui/ActionBar/BottomSheetTabs$TabDrawable;)V

    .line 729
    iget-object v8, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->dismissingTab:Lorg/telegram/ui/ActionBar/BottomSheetTabs$TabDrawable;

    iget-object v10, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->rect:Landroid/graphics/RectF;

    iget v12, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->dismissProgress:F

    const/high16 v13, 0x3f800000    # 1.0f

    move-object v9, v2

    invoke-virtual/range {v8 .. v13}, Lorg/telegram/ui/ActionBar/BottomSheetTabs$TabDrawable;->draw(Landroid/graphics/Canvas;Landroid/graphics/RectF;FFF)V

    .line 730
    invoke-virtual {v2}, Landroid/graphics/Canvas;->restore()V

    .line 733
    :cond_0
    invoke-virtual {v2}, Landroid/graphics/Canvas;->restore()V

    :cond_1
    return-void
.end method

.method private drawTabsPreview(Landroid/graphics/Canvas;)V
    .locals 41

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    .line 749
    iget v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->openProgress:F

    const/4 v9, 0x0

    cmpg-float v1, v1, v9

    if-gtz v1, :cond_0

    iget v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->openingProgress:F

    cmpg-float v1, v1, v9

    if-gtz v1, :cond_0

    return-void

    .line 751
    :cond_0
    invoke-virtual {v2}, Landroid/graphics/Canvas;->save()I

    .line 753
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->actionBarLayout:Landroid/view/View;

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-eqz v1, :cond_1

    .line 754
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->pos:[I

    invoke-virtual {v1, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 755
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->pos2:[I

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 756
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->tabsViewBounds:Landroid/graphics/RectF;

    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->pos:[I

    aget v4, v3, v10

    iget-object v5, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->pos2:[I

    aget v6, v5, v10

    sub-int v7, v4, v6

    int-to-float v7, v7

    aget v3, v3, v11

    aget v5, v5, v11

    sub-int/2addr v3, v5

    int-to-float v3, v3

    sub-int/2addr v4, v6

    iget-object v5, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->actionBarLayout:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    iget-object v5, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->pos:[I

    aget v5, v5, v11

    iget-object v6, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->pos2:[I

    aget v6, v6, v11

    sub-int/2addr v5, v6

    iget-object v6, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->actionBarLayout:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v5, v6

    int-to-float v5, v5

    invoke-virtual {v1, v7, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_0

    .line 758
    :cond_1
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->pos:[I

    aput v10, v1, v11

    aput v10, v1, v10

    .line 759
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->tabsViewBounds:Landroid/graphics/RectF;

    invoke-virtual {v1, v9, v9, v9, v9}, Landroid/graphics/RectF;->set(FFFF)V

    .line 762
    :goto_0
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->tabsViewBounds:Landroid/graphics/RectF;

    invoke-virtual {v2, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    .line 763
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->tabsViewBounds:Landroid/graphics/RectF;

    iget v3, v1, Landroid/graphics/RectF;->left:F

    iget v1, v1, Landroid/graphics/RectF;->top:F

    invoke-virtual {v2, v3, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 765
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->tabsViewBounds:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v4

    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->tabsViewBounds:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v5

    .line 767
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->blurBitmap:Landroid/graphics/Bitmap;

    const/high16 v12, 0x437f0000    # 255.0f

    if-eqz v1, :cond_2

    .line 768
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->blurMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    .line 769
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->tabsViewBounds:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->blurBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v1, v3

    .line 770
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->blurMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v1, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 771
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->blurBitmapShader:Landroid/graphics/BitmapShader;

    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->blurMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v3}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 773
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->blurBitmapPaint:Landroid/graphics/Paint;

    iget v3, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->openProgress:F

    mul-float/2addr v3, v12

    float-to-int v3, v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    const/4 v3, 0x0

    .line 774
    iget-object v6, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->blurBitmapPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_2
    const/16 v6, 0xff

    const/16 v7, 0x1f

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v1, p1

    .line 777
    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    move-object v2, v1

    move v13, v4

    move v14, v5

    .line 779
    sget v1, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    const/high16 v3, 0x42200000    # 40.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    add-int/2addr v1, v3

    const/high16 v3, 0x425c0000    # 55.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    add-int/2addr v1, v3

    int-to-float v15, v1

    const/high16 v1, 0x42880000    # 68.0f

    .line 780
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    const/high16 v3, 0x43aa0000    # 340.0f

    .line 782
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    const v4, 0x3f733333    # 0.95f

    mul-float/2addr v4, v13

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    float-to-int v3, v3

    .line 783
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v4

    const/high16 v16, 0x3f000000    # 0.5f

    if-eqz v4, :cond_3

    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->tabsViewBounds:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    mul-float v4, v4, v16

    goto :goto_1

    :cond_3
    const/high16 v4, 0x3f400000    # 0.75f

    mul-float/2addr v4, v14

    :goto_1
    float-to-int v4, v4

    const/high16 v17, 0x40000000    # 2.0f

    div-float v18, v13, v17

    move v6, v9

    move v5, v10

    .line 786
    :goto_2
    iget-object v7, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/high16 v8, 0x3f800000    # 1.0f

    if-ge v5, v7, :cond_5

    .line 787
    iget-object v7, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;

    .line 788
    iget-object v7, v7, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->tabDrawable:Lorg/telegram/ui/ActionBar/BottomSheetTabs$TabDrawable;

    iget v7, v7, Lorg/telegram/ui/ActionBar/BottomSheetTabs$TabDrawable;->index:I

    if-ltz v7, :cond_4

    goto :goto_3

    :cond_4
    move v8, v9

    :goto_3
    add-float/2addr v6, v8

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 790
    :cond_5
    iget-object v5, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->animatedCount:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {v5, v6}, Lorg/telegram/ui/Components/AnimatedFloat;->set(F)F

    move-result v19

    .line 792
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->getScrollWindow()F

    move-result v5

    cmpg-float v5, v5, v9

    if-gtz v5, :cond_6

    move v5, v9

    goto :goto_4

    :cond_6
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->getScrollMin()F

    move-result v5

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->getScrollOffset()F

    move-result v6

    sub-float/2addr v5, v6

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->getScrollWindow()F

    move-result v6

    const v7, 0x3e19999a    # 0.15f

    mul-float/2addr v6, v7

    div-float/2addr v5, v6

    const v6, 0x3e4ccccd    # 0.2f

    mul-float/2addr v5, v6

    :goto_4
    invoke-static {v5, v8, v9}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v5

    sub-float v5, v8, v5

    iget v6, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->openProgress:F

    invoke-static {v9, v5, v6}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v5

    const/4 v6, -0x1

    move v7, v10

    move/from16 v20, v7

    .line 794
    :goto_5
    iget-object v10, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/2addr v10, v11

    if-ge v7, v10, :cond_17

    .line 796
    iget-object v10, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ne v7, v10, :cond_8

    if-ltz v6, :cond_7

    .line 797
    iget v10, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->openingProgress:F

    cmpl-float v10, v10, v16

    if-lez v10, :cond_7

    .line 798
    iget-object v10, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;

    :goto_6
    move/from16 v21, v12

    goto :goto_7

    :cond_7
    move/from16 v26, v1

    move/from16 v29, v3

    move/from16 v28, v4

    move v9, v5

    move v10, v7

    move/from16 v24, v8

    move/from16 v22, v11

    move/from16 v21, v12

    move v11, v6

    goto/16 :goto_10

    .line 803
    :cond_8
    iget-object v10, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;

    goto :goto_6

    .line 805
    :goto_7
    iget-object v12, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v7, v12, :cond_9

    iget-object v12, v10, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->tabDrawable:Lorg/telegram/ui/ActionBar/BottomSheetTabs$TabDrawable;

    move/from16 v22, v11

    iget-object v11, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->openingTab:Lorg/telegram/ui/ActionBar/BottomSheetTabs$TabDrawable;

    if-ne v12, v11, :cond_a

    iget v11, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->openingProgress:F

    cmpl-float v11, v11, v16

    if-lez v11, :cond_a

    move/from16 v26, v1

    move/from16 v29, v3

    move/from16 v28, v4

    move v9, v5

    move v6, v7

    move v10, v6

    move/from16 v24, v8

    goto/16 :goto_11

    :cond_9
    move/from16 v22, v11

    .line 810
    :cond_a
    iget-object v11, v10, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->tabDrawable:Lorg/telegram/ui/ActionBar/BottomSheetTabs$TabDrawable;

    iget-object v12, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->openingTab:Lorg/telegram/ui/ActionBar/BottomSheetTabs$TabDrawable;

    if-ne v11, v12, :cond_b

    move/from16 v23, v8

    goto :goto_8

    :cond_b
    move/from16 v23, v5

    :goto_8
    if-ne v11, v12, :cond_c

    .line 811
    iget v12, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->openingProgress:F

    goto :goto_9

    :cond_c
    move v12, v9

    :goto_9
    sub-float v24, v19, v8

    .line 813
    invoke-virtual {v11}, Lorg/telegram/ui/ActionBar/BottomSheetTabs$TabDrawable;->getPosition()F

    move-result v11

    sub-float v11, v24, v11

    .line 814
    iget-object v8, v10, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->tabDrawable:Lorg/telegram/ui/ActionBar/BottomSheetTabs$TabDrawable;

    iget-object v9, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->openingTab:Lorg/telegram/ui/ActionBar/BottomSheetTabs$TabDrawable;

    if-ne v8, v9, :cond_d

    iget v8, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->openingTabScroll:F

    :goto_a
    const/4 v9, 0x0

    goto :goto_b

    :cond_d
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->getScrollMin()F

    move-result v8

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->getScrollOffset()F

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->max(FF)F

    move-result v8

    sub-float v8, v11, v8

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->getScrollWindow()F

    move-result v9

    div-float/2addr v8, v9

    goto :goto_a

    .line 815
    :goto_b
    invoke-static {v8, v9}, Ljava/lang/Math;->max(FF)F

    move/from16 v26, v1

    const/high16 v9, 0x3f800000    # 1.0f

    .line 816
    invoke-static {v8, v9}, Ljava/lang/Math;->min(FF)F

    move-result v1

    const/high16 v9, -0x3f800000    # -4.0f

    invoke-static {v1, v9}, Ljava/lang/Math;->max(FF)F

    const/high16 v1, 0x40c00000    # 6.0f

    .line 820
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    const/high16 v9, 0x40a00000    # 5.0f

    invoke-static {v9, v11}, Ljava/lang/Math;->min(FF)F

    move-result v9

    mul-float/2addr v1, v9

    add-float/2addr v1, v15

    sub-float v9, v14, v26

    move/from16 v27, v1

    int-to-float v1, v4

    const v28, 0x3e851eb8    # 0.26f

    mul-float v28, v28, v1

    sub-float v9, v9, v28

    sub-float v9, v9, v27

    mul-float/2addr v9, v8

    add-float v8, v27, v9

    .line 826
    iget-object v9, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->rect2:Landroid/graphics/RectF;

    move/from16 v27, v1

    int-to-float v1, v3

    div-float v1, v1, v17

    move/from16 v28, v1

    sub-float v1, v18, v28

    move/from16 v29, v3

    add-float v3, v18, v28

    move/from16 v28, v4

    add-float v4, v8, v27

    invoke-virtual {v9, v1, v8, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 827
    iget-object v1, v10, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->tabDrawable:Lorg/telegram/ui/ActionBar/BottomSheetTabs$TabDrawable;

    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->openingTab:Lorg/telegram/ui/ActionBar/BottomSheetTabs$TabDrawable;

    const v4, 0x3dcccccd    # 0.1f

    if-eq v1, v3, :cond_f

    iget-object v8, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->rect2:Landroid/graphics/RectF;

    iget v9, v8, Landroid/graphics/RectF;->top:F

    cmpl-float v9, v9, v14

    if-gtz v9, :cond_e

    iget v8, v8, Landroid/graphics/RectF;->bottom:F

    const/16 v25, 0x0

    cmpg-float v8, v8, v25

    if-ltz v8, :cond_e

    cmpg-float v8, v5, v4

    if-gez v8, :cond_f

    :cond_e
    const/high16 v8, 0x40400000    # 3.0f

    sub-float v8, v19, v8

    cmpg-float v8, v11, v8

    if-gez v8, :cond_f

    move v8, v4

    move/from16 v4, v22

    goto :goto_c

    :cond_f
    move v8, v4

    move/from16 v4, v20

    .line 829
    :goto_c
    iget-object v9, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->openingSheet:Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$Sheet;

    if-eqz v9, :cond_10

    if-ne v1, v3, :cond_10

    .line 830
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->rect:Landroid/graphics/RectF;

    invoke-interface {v9}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$Sheet;->getWindowView()Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$SheetView;

    move-result-object v3

    invoke-interface {v3}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$SheetView;->getRect()Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 831
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->rect2:Landroid/graphics/RectF;

    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->rect:Landroid/graphics/RectF;

    invoke-static {v1, v3, v12, v1}, Lorg/telegram/messenger/AndroidUtilities;->lerpCentered(Landroid/graphics/RectF;Landroid/graphics/RectF;FLandroid/graphics/RectF;)V

    move/from16 v30, v4

    move/from16 v27, v8

    goto :goto_d

    .line 833
    :cond_10
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->tabsView:Lorg/telegram/ui/ActionBar/BottomSheetTabs;

    iget-object v9, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->rect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BottomSheetTabs$TabDrawable;->getPosition()F

    move-result v1

    move/from16 v30, v4

    move/from16 v27, v8

    const/4 v4, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-static {v1, v8, v4}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v1

    invoke-virtual {v3, v9, v1}, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->getTabBounds(Landroid/graphics/RectF;F)V

    .line 834
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->rect:Landroid/graphics/RectF;

    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->tabsView:Lorg/telegram/ui/ActionBar/BottomSheetTabs;

    invoke-virtual {v3}, Landroid/view/View;->getX()F

    move-result v3

    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->tabsView:Lorg/telegram/ui/ActionBar/BottomSheetTabs;

    invoke-virtual {v4}, Landroid/view/View;->getY()F

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/graphics/RectF;->offset(FF)V

    .line 835
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->rect:Landroid/graphics/RectF;

    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->rect2:Landroid/graphics/RectF;

    invoke-static {v1, v3, v5, v3}, Lorg/telegram/messenger/AndroidUtilities;->lerpCentered(Landroid/graphics/RectF;Landroid/graphics/RectF;FLandroid/graphics/RectF;)V

    .line 838
    :goto_d
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->tabsView:Lorg/telegram/ui/ActionBar/BottomSheetTabs;

    if-eqz v1, :cond_11

    .line 839
    iget-object v3, v10, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->tabDrawable:Lorg/telegram/ui/ActionBar/BottomSheetTabs$TabDrawable;

    invoke-virtual {v1, v3}, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->setupTab(Lorg/telegram/ui/ActionBar/BottomSheetTabs$TabDrawable;)V

    .line 842
    :cond_11
    iget-object v1, v10, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->tabDrawable:Lorg/telegram/ui/ActionBar/BottomSheetTabs$TabDrawable;

    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->openingTab:Lorg/telegram/ui/ActionBar/BottomSheetTabs$TabDrawable;

    if-eq v1, v3, :cond_13

    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->rect2:Landroid/graphics/RectF;

    iget v3, v1, Landroid/graphics/RectF;->top:F

    cmpl-float v3, v3, v14

    if-gtz v3, :cond_12

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    const/16 v25, 0x0

    cmpg-float v1, v1, v25

    if-gez v1, :cond_13

    :cond_12
    move v9, v5

    move v11, v6

    move v10, v7

    const/high16 v24, 0x3f800000    # 1.0f

    goto/16 :goto_10

    .line 845
    :cond_13
    invoke-virtual {v2}, Landroid/graphics/Canvas;->save()I

    .line 846
    iget-object v1, v10, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->clickBounds:Landroid/graphics/RectF;

    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->rect2:Landroid/graphics/RectF;

    invoke-virtual {v1, v3}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 849
    invoke-static {v10}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->-$$Nest$fgetmatrix(Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;)Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    .line 853
    invoke-static {v10}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->-$$Nest$fgetsrc(Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;)[F

    move-result-object v1

    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->rect2:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    aput v3, v1, v20

    .line 854
    invoke-static {v10}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->-$$Nest$fgetsrc(Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;)[F

    move-result-object v1

    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->rect2:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    aput v3, v1, v22

    .line 855
    invoke-static {v10}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->-$$Nest$fgetsrc(Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;)[F

    move-result-object v1

    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->rect2:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    const/4 v4, 0x2

    aput v3, v1, v4

    .line 856
    invoke-static {v10}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->-$$Nest$fgetsrc(Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;)[F

    move-result-object v1

    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->rect2:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    const/4 v8, 0x3

    aput v3, v1, v8

    .line 857
    invoke-static {v10}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->-$$Nest$fgetsrc(Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;)[F

    move-result-object v1

    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->rect2:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    const/4 v9, 0x4

    aput v3, v1, v9

    .line 858
    invoke-static {v10}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->-$$Nest$fgetsrc(Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;)[F

    move-result-object v1

    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->rect2:Landroid/graphics/RectF;

    move/from16 v31, v4

    iget v4, v3, Landroid/graphics/RectF;->top:F

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    const/high16 v24, 0x3f800000    # 1.0f

    mul-float v3, v3, v24

    add-float/2addr v4, v3

    const/4 v3, 0x5

    aput v4, v1, v3

    .line 859
    invoke-static {v10}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->-$$Nest$fgetsrc(Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;)[F

    move-result-object v1

    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->rect2:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    const/16 v32, 0x6

    aput v4, v1, v32

    .line 860
    invoke-static {v10}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->-$$Nest$fgetsrc(Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;)[F

    move-result-object v1

    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->rect2:Landroid/graphics/RectF;

    move/from16 v33, v3

    iget v3, v4, Landroid/graphics/RectF;->top:F

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    const/high16 v24, 0x3f800000    # 1.0f

    mul-float v4, v4, v24

    add-float/2addr v3, v4

    const/4 v4, 0x7

    aput v3, v1, v4

    .line 862
    invoke-static {v10}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->-$$Nest$fgetdst(Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;)[F

    move-result-object v1

    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->rect2:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    aput v3, v1, v20

    .line 863
    invoke-static {v10}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->-$$Nest$fgetdst(Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;)[F

    move-result-object v1

    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->rect2:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    move/from16 v34, v4

    const/16 v25, 0x0

    invoke-static/range {v25 .. v25}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    aput v3, v1, v22

    .line 864
    invoke-static {v10}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->-$$Nest$fgetdst(Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;)[F

    move-result-object v1

    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->rect2:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    aput v3, v1, v31

    .line 865
    invoke-static {v10}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->-$$Nest$fgetdst(Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;)[F

    move-result-object v1

    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->rect2:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    invoke-static/range {v25 .. v25}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    aput v3, v1, v8

    .line 867
    invoke-static {v10}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->-$$Nest$fgetdst(Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;)[F

    move-result-object v1

    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->rect2:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->rect2:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    div-float v4, v4, v17

    const/high16 v8, 0x3f800000    # 1.0f

    sub-float v24, v8, v12

    move/from16 v31, v9

    mul-float v9, v23, v24

    move-object/from16 v35, v1

    const v1, 0x3f547ae1    # 0.83f

    invoke-static {v8, v1, v9}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v36

    mul-float v4, v4, v36

    add-float/2addr v3, v4

    aput v3, v35, v31

    .line 868
    invoke-static {v10}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->-$$Nest$fgetdst(Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;)[F

    move-result-object v3

    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->rect2:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    const/16 v25, 0x0

    invoke-static/range {v25 .. v25}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v4, v8

    iget-object v8, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->rect2:Landroid/graphics/RectF;

    invoke-virtual {v8}, Landroid/graphics/RectF;->height()F

    move-result v8

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v8, v1

    invoke-static/range {v25 .. v25}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v8, v1

    const v1, 0x3f19999a    # 0.6f

    move-object/from16 v35, v3

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v3, v1, v9}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v24

    mul-float v8, v8, v24

    add-float/2addr v4, v8

    aput v4, v35, v33

    .line 869
    invoke-static {v10}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->-$$Nest$fgetdst(Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;)[F

    move-result-object v4

    iget-object v8, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->rect2:Landroid/graphics/RectF;

    invoke-virtual {v8}, Landroid/graphics/RectF;->centerX()F

    move-result v8

    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->rect2:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    div-float v1, v1, v17

    move/from16 v35, v1

    const v1, 0x3f547ae1    # 0.83f

    invoke-static {v3, v1, v9}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v1

    mul-float v1, v1, v35

    sub-float/2addr v8, v1

    aput v8, v4, v32

    .line 870
    invoke-static {v10}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->-$$Nest$fgetdst(Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;)[F

    move-result-object v1

    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->rect2:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    const/16 v25, 0x0

    invoke-static/range {v25 .. v25}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->rect2:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    const/high16 v8, 0x3f800000    # 1.0f

    mul-float/2addr v4, v8

    invoke-static/range {v25 .. v25}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v4, v8

    move-object/from16 v31, v1

    const/high16 v1, 0x3f800000    # 1.0f

    const v8, 0x3f19999a    # 0.6f

    invoke-static {v1, v8, v9}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v8

    mul-float/2addr v4, v8

    add-float/2addr v3, v4

    aput v3, v31, v34

    .line 872
    invoke-static {v10}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->-$$Nest$fgetmatrix(Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;)Landroid/graphics/Matrix;

    move-result-object v35

    invoke-static {v10}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->-$$Nest$fgetsrc(Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;)[F

    move-result-object v36

    invoke-static {v10}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->-$$Nest$fgetdst(Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;)[F

    move-result-object v38

    const/16 v39, 0x0

    const/16 v40, 0x4

    const/16 v37, 0x0

    invoke-virtual/range {v35 .. v40}, Landroid/graphics/Matrix;->setPolyToPoly([FI[FII)Z

    .line 873
    invoke-static {v10}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->-$$Nest$fgetmatrix(Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;)Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 875
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->rect2:Landroid/graphics/RectF;

    .line 879
    iget-object v1, v10, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->tabDrawable:Lorg/telegram/ui/ActionBar/BottomSheetTabs$TabDrawable;

    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->openingTab:Lorg/telegram/ui/ActionBar/BottomSheetTabs$TabDrawable;

    if-ne v1, v4, :cond_14

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_e

    :cond_14
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BottomSheetTabs$TabDrawable;->getAlpha()F

    move-result v1

    iget v4, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->openProgress:F

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-static {v1, v8, v4}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v1

    .line 880
    :goto_e
    iget-object v4, v10, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->tabDrawable:Lorg/telegram/ui/ActionBar/BottomSheetTabs$TabDrawable;

    iget-object v8, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->openingTab:Lorg/telegram/ui/ActionBar/BottomSheetTabs$TabDrawable;

    if-ne v4, v8, :cond_15

    const/high16 v9, 0x3f800000    # 1.0f

    :cond_15
    sub-float v11, v11, v19

    add-float v11, v11, v17

    .line 882
    invoke-static {v11}, Lorg/telegram/messenger/Utilities;->clamp01(F)F

    move-result v4

    sub-float v23, v23, v27

    const v8, 0x3f4ccccd    # 0.8f

    div-float v23, v23, v8

    invoke-static/range {v23 .. v23}, Lorg/telegram/messenger/Utilities;->clamp01(F)F

    move-result v8

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-static {v4, v11, v8}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v8

    move/from16 v24, v11

    move/from16 v4, v30

    move v11, v6

    move v6, v9

    move v9, v5

    move v5, v1

    move-object v1, v10

    move v10, v7

    move v7, v12

    .line 875
    invoke-virtual/range {v1 .. v8}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->draw(Landroid/graphics/Canvas;Landroid/graphics/RectF;ZFFFF)V

    move v6, v7

    .line 885
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->openingSheet:Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$Sheet;

    if-eqz v2, :cond_16

    iget-object v1, v1, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->tabDrawable:Lorg/telegram/ui/ActionBar/BottomSheetTabs$TabDrawable;

    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->openingTab:Lorg/telegram/ui/ActionBar/BottomSheetTabs$TabDrawable;

    if-ne v1, v3, :cond_16

    .line 886
    invoke-interface {v2}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$Sheet;->getWindowView()Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$SheetView;

    move-result-object v1

    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->rect2:Landroid/graphics/RectF;

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v7, 0x1

    move-object v5, v3

    move-object/from16 v2, p1

    invoke-interface/range {v1 .. v7}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$SheetView;->drawInto(Landroid/graphics/Canvas;Landroid/graphics/RectF;FLandroid/graphics/RectF;FZ)F

    goto :goto_f

    :cond_16
    move-object/from16 v2, p1

    .line 889
    :goto_f
    invoke-virtual {v2}, Landroid/graphics/Canvas;->restore()V

    :goto_10
    move v6, v11

    :goto_11
    add-int/lit8 v7, v10, 0x1

    move v5, v9

    move/from16 v12, v21

    move/from16 v11, v22

    move/from16 v8, v24

    move/from16 v1, v26

    move/from16 v4, v28

    move/from16 v3, v29

    const/4 v9, 0x0

    goto/16 :goto_5

    :cond_17
    move/from16 v22, v11

    move/from16 v21, v12

    .line 891
    invoke-virtual {v2}, Landroid/graphics/Canvas;->save()I

    .line 892
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->gradientClip:Lorg/telegram/ui/GradientClip;

    if-nez v1, :cond_18

    .line 893
    new-instance v1, Lorg/telegram/ui/GradientClip;

    invoke-direct {v1}, Lorg/telegram/ui/GradientClip;-><init>()V

    iput-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->gradientClip:Lorg/telegram/ui/GradientClip;

    .line 895
    :cond_18
    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v4, v13, v15}, Landroid/graphics/RectF;->set(FFFF)V

    .line 896
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->gradientClip:Lorg/telegram/ui/GradientClip;

    iget v4, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->openProgress:F

    move/from16 v5, v22

    invoke-virtual {v3, v2, v1, v5, v4}, Lorg/telegram/ui/GradientClip;->draw(Landroid/graphics/Canvas;Landroid/graphics/RectF;ZF)V

    .line 897
    invoke-virtual {v2}, Landroid/graphics/Canvas;->restore()V

    .line 898
    invoke-virtual {v2}, Landroid/graphics/Canvas;->restore()V

    .line 900
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->closeAllButtonText:Lorg/telegram/ui/Components/Text;

    const/high16 v3, 0x41600000    # 14.0f

    if-nez v1, :cond_19

    .line 901
    new-instance v1, Lorg/telegram/ui/Components/Text;

    sget v4, Lorg/telegram/messenger/R$string;->BotCloseAllTabs:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v5

    invoke-direct {v1, v4, v3, v5}, Lorg/telegram/ui/Components/Text;-><init>(Ljava/lang/CharSequence;FLandroid/graphics/Typeface;)V

    iput-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->closeAllButtonText:Lorg/telegram/ui/Components/Text;

    .line 903
    :cond_19
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->closeAllButtonBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1a

    iget-boolean v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->closeAllButtonBackgroundDark:Z

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->isCurrentThemeDark()Z

    move-result v4

    if-eq v1, v4, :cond_1c

    .line 904
    :cond_1a
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->isCurrentThemeDark()Z

    move-result v1

    iput-boolean v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->closeAllButtonBackgroundDark:Z

    const/16 v4, 0x40

    if-eqz v1, :cond_1b

    const v1, 0x20ffffff

    const v5, 0x33ffffff

    .line 906
    invoke-static {v4, v1, v5}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorRoundRectDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->closeAllButtonBackground:Landroid/graphics/drawable/Drawable;

    goto :goto_12

    :cond_1b
    const/high16 v1, 0x2e000000

    const/high16 v5, 0x44000000    # 512.0f

    .line 908
    invoke-static {v4, v1, v5}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorRoundRectDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->closeAllButtonBackground:Landroid/graphics/drawable/Drawable;

    .line 910
    :goto_12
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->closeAllButtonBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 912
    :cond_1c
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->closeAllButtonText:Lorg/telegram/ui/Components/Text;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Text;->getCurrentWidth()F

    move-result v1

    const/high16 v4, 0x41c00000    # 24.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v1, v4

    .line 913
    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->closeAllButtonBackground:Landroid/graphics/drawable/Drawable;

    sub-float v5, v13, v1

    div-float v5, v5, v17

    float-to-int v6, v5

    const/high16 v7, 0x42be0000    # 95.0f

    .line 915
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    int-to-float v8, v8

    div-float v8, v8, v17

    sub-float v8, v15, v8

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    sub-float/2addr v8, v9

    float-to-int v8, v8

    add-float/2addr v1, v13

    div-float v1, v1, v17

    float-to-int v1, v1

    .line 917
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    div-float v9, v9, v17

    sub-float v9, v15, v9

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v9, v3

    float-to-int v3, v9

    .line 913
    invoke-virtual {v4, v6, v8, v1, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 919
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->closeAllButtonBackground:Landroid/graphics/drawable/Drawable;

    iget v3, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->openProgress:F

    mul-float v3, v3, v21

    float-to-int v3, v3

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 920
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->closeAllButtonBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 921
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->closeAllButtonText:Lorg/telegram/ui/Components/Text;

    const/high16 v3, 0x41400000    # 12.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v3, v5

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    div-float v4, v4, v17

    sub-float v4, v15, v4

    const/4 v5, -0x1

    iget v6, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->openProgress:F

    invoke-virtual/range {v1 .. v6}, Lorg/telegram/ui/Components/Text;->draw(Landroid/graphics/Canvas;FFIF)V

    .line 923
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private getScrollStep()F
    .locals 1

    const/high16 v0, 0x43480000    # 200.0f

    .line 367
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method private getTabAt(FF)Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;
    .locals 5

    .line 416
    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->openProgress:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    const/4 v1, 0x0

    if-gez v0, :cond_0

    return-object v1

    .line 418
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    .line 419
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;

    .line 420
    iget v3, v2, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->dismissProgress:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const v4, 0x3ecccccd    # 0.4f

    cmpg-float v3, v3, v4

    if-gez v3, :cond_1

    iget-object v3, v2, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->clickBounds:Landroid/graphics/RectF;

    invoke-virtual {v3, p1, p2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method private synthetic lambda$animateOpen$6(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 679
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->openProgress:F

    .line 680
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private synthetic lambda$dismissSheet$4(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 523
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->dismissProgress:F

    .line 524
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private synthetic lambda$dispatchTouchEvent$0(Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;Ljava/lang/Boolean;)V
    .locals 1

    .line 257
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    .line 258
    iget p2, p1, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->dismissProgress:F

    cmpg-float p2, p2, v0

    if-gez p2, :cond_0

    const/high16 p2, -0x40800000    # -1.0f

    goto :goto_0

    :cond_0
    const/high16 p2, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->animateDismiss(F)V

    .line 259
    iget p1, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->offset:F

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->getScrollMax(Z)F

    move-result v0

    invoke-virtual {p0, p2}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->getScrollMin(Z)F

    move-result p2

    invoke-static {p1, v0, p2}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result p1

    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->scrollTo(F)V

    .line 260
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->tabsView:Lorg/telegram/ui/ActionBar/BottomSheetTabs;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->getTabs()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 261
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->closeTabsView()V

    :cond_1
    return-void

    .line 264
    :cond_2
    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->animateDismiss(F)V

    return-void
.end method

.method private synthetic lambda$dispatchTouchEvent$1(Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;Ljava/lang/Boolean;)V
    .locals 1

    .line 299
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_1

    const/high16 p2, 0x3f800000    # 1.0f

    .line 300
    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->animateDismiss(F)V

    .line 301
    iget p1, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->offset:F

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->getScrollMax(Z)F

    move-result v0

    invoke-virtual {p0, p2}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->getScrollMin(Z)F

    move-result p2

    invoke-static {p1, v0, p2}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result p1

    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->scrollTo(F)V

    .line 302
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->tabsView:Lorg/telegram/ui/ActionBar/BottomSheetTabs;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->getTabs()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 303
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->closeTabsView()V

    :cond_0
    return-void

    :cond_1
    const/4 p2, 0x0

    .line 306
    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->animateDismiss(F)V

    return-void
.end method

.method private synthetic lambda$scrollTo$5(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 655
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->offset:F

    return-void
.end method

.method private onApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 0

    .line 119
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->navigationBars()I

    move-result p1

    invoke-virtual {p2, p1}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object p1

    iget p1, p1, Landroidx/core/graphics/Insets;->bottom:I

    iput p1, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->navigationBarInset:I

    .line 120
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 122
    sget-object p1, Landroidx/core/view/WindowInsetsCompat;->CONSUMED:Landroidx/core/view/WindowInsetsCompat;

    return-object p1
.end method

.method private prepareBlur(Landroid/view/View;)V
    .locals 3

    const/4 v0, 0x1

    .line 582
    sput-boolean v0, Lorg/telegram/messenger/AndroidUtilities;->makingGlobalBlurBitmap:Z

    const/high16 v1, 0x41600000    # 14.0f

    const/16 v2, 0xe

    .line 583
    invoke-static {p1, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->makeBlurBitmap(Landroid/view/View;FI)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->blurBitmap:Landroid/graphics/Bitmap;

    const/4 p1, 0x0

    .line 584
    sput-boolean p1, Lorg/telegram/messenger/AndroidUtilities;->makingGlobalBlurBitmap:Z

    .line 586
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->blurBitmapPaint:Landroid/graphics/Paint;

    .line 587
    new-instance v0, Landroid/graphics/BitmapShader;

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->blurBitmap:Landroid/graphics/Bitmap;

    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, v1, v2, v2}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->blurBitmapShader:Landroid/graphics/BitmapShader;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 588
    new-instance p1, Landroid/graphics/ColorMatrix;

    invoke-direct {p1}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 589
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->isCurrentThemeDark()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x3da3d70a    # 0.08f

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3e800000    # 0.25f

    :goto_0
    invoke-static {p1, v0}, Lorg/telegram/messenger/AndroidUtilities;->adjustSaturationColorMatrix(Landroid/graphics/ColorMatrix;F)V

    .line 590
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->blurBitmapPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v1, p1}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 591
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->blurMatrix:Landroid/graphics/Matrix;

    return-void
.end method

.method private prepareTabs()V
    .locals 8

    .line 623
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->tabsView:Lorg/telegram/ui/ActionBar/BottomSheetTabs;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->getTabs()Ljava/util/ArrayList;

    move-result-object v0

    .line 624
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->tabsView:Lorg/telegram/ui/ActionBar/BottomSheetTabs;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->getTabDrawables()Ljava/util/ArrayList;

    move-result-object v1

    .line 626
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    :goto_0
    if-ltz v2, :cond_3

    .line 627
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;

    const/4 v5, 0x0

    .line 629
    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_1

    .line 630
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/ui/ActionBar/BottomSheetTabs$TabDrawable;

    .line 631
    iget-object v7, v6, Lorg/telegram/ui/ActionBar/BottomSheetTabs$TabDrawable;->tab:Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;

    if-ne v7, v4, :cond_0

    goto :goto_2

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    :goto_2
    if-nez v6, :cond_2

    goto :goto_3

    .line 637
    :cond_2
    iget-object v5, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->tabs:Ljava/util/ArrayList;

    new-instance v7, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;

    invoke-direct {v7, p0, v4, v6}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;-><init>(Landroid/view/View;Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;Lorg/telegram/ui/ActionBar/BottomSheetTabs$TabDrawable;)V

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 639
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->animatedCount:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1, v3}, Lorg/telegram/ui/Components/AnimatedFloat;->set(FZ)F

    .line 640
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->getScrollMax()F

    move-result v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->setScrollOffset(F)V

    return-void
.end method

.method public static renderHardwareViewToBitmap(Landroid/view/View;FLorg/telegram/messenger/Utilities$Callback;)V
    .locals 5

    if-eqz p0, :cond_1

    if-eqz p2, :cond_1

    .line 1129
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1136
    invoke-static {v0}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$$ExternalSyntheticApiModelOutline0;->m(Z)Landroid/graphics/SurfaceTexture;

    move-result-object v0

    .line 1137
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 1138
    new-instance v1, Landroid/view/Surface;

    invoke-direct {v1, v0}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 1140
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1141
    invoke-virtual {v1}, Landroid/view/Surface;->lockHardwareCanvas()Landroid/graphics/Canvas;

    move-result-object v3

    const/4 v4, 0x0

    .line 1142
    invoke-virtual {v3, v4, p1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1143
    invoke-virtual {p0, v3}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 1144
    invoke-virtual {v1, v3}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 1146
    new-instance p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$$ExternalSyntheticLambda8;

    invoke-direct {p0, p2, v2, v1, v0}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/messenger/Utilities$Callback;Landroid/graphics/Bitmap;Landroid/view/Surface;Landroid/graphics/SurfaceTexture;)V

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    invoke-static {v1, v2, p0, p1}, Landroid/view/PixelCopy;->request(Landroid/view/Surface;Landroid/graphics/Bitmap;Landroid/view/PixelCopy$OnPixelCopyFinishedListener;Landroid/os/Handler;)V

    return-void

    :cond_1
    :goto_0
    if-eqz p2, :cond_2

    const/4 p0, 0x0

    .line 1131
    invoke-interface {p2, p0}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method private scrollTo(F)V
    .locals 3

    .line 649
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->scrollAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 650
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v0, 0x0

    .line 651
    iput-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->scrollAnimator:Landroid/animation/ValueAnimator;

    .line 653
    :cond_0
    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->offset:F

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput v0, v1, v2

    const/4 v0, 0x1

    aput p1, v1, v0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->scrollAnimator:Landroid/animation/ValueAnimator;

    .line 654
    new-instance v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 657
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->scrollAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0xfa

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 658
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->scrollAnimator:Landroid/animation/ValueAnimator;

    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 659
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->scrollAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method


# virtual methods
.method public closeTabsView()V
    .locals 1

    const/4 v0, 0x0

    .line 644
    invoke-direct {p0, v0}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->animateOpen(Z)V

    return-void
.end method

.method public computeScroll()V
    .locals 2

    .line 351
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->scroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 352
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->scroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v0

    int-to-float v0, v0

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->getScrollStep()F

    move-result v1

    div-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->setScrollOffset(F)V

    .line 353
    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    :cond_0
    return-void
.end method

.method public dismissSheet(Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$Sheet;)Z
    .locals 11

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 494
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->tabsView:Lorg/telegram/ui/ActionBar/BottomSheetTabs;

    if-nez v1, :cond_1

    return v0

    .line 496
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->dismissingSheet:Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$Sheet;

    if-nez v1, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->openingSheet:Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$Sheet;

    if-eqz v1, :cond_3

    .line 497
    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->animator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_3

    .line 498
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->end()V

    const/4 v1, 0x0

    .line 499
    iput-object v1, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->animator:Landroid/animation/ValueAnimator;

    .line 503
    :cond_3
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->dismissingSheet:Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$Sheet;

    .line 504
    invoke-interface {p1, v0}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$Sheet;->setLastVisible(Z)V

    .line 507
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->animator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_4

    .line 508
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 511
    :cond_4
    invoke-interface {p1}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$Sheet;->saveState()Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;

    move-result-object v1

    .line 512
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->tabsView:Lorg/telegram/ui/ActionBar/BottomSheetTabs;

    invoke-virtual {v2, v1}, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->pushTab(Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;)Lorg/telegram/ui/ActionBar/BottomSheetTabs$TabDrawable;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->dismissingTab:Lorg/telegram/ui/ActionBar/BottomSheetTabs$TabDrawable;

    .line 513
    new-instance v2, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$$ExternalSyntheticLambda2;

    invoke-direct {v2, p1}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$Sheet;)V

    invoke-virtual {p0, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 518
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    const/4 v2, 0x0

    .line 520
    iput v2, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->dismissProgress:F

    const/4 v2, 0x2

    .line 521
    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->animator:Landroid/animation/ValueAnimator;

    .line 522
    new-instance v3, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 526
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->animator:Landroid/animation/ValueAnimator;

    new-instance v3, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$2;

    invoke-direct {v3, p0, v1, p1}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$2;-><init>(Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$Sheet;)V

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 560
    iget-object v4, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->animator:Landroid/animation/ValueAnimator;

    const-wide/high16 v7, 0x403e000000000000L    # 30.0

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    const-wide v5, 0x406b800000000000L    # 220.0

    invoke-static/range {v4 .. v10}, Lorg/telegram/messenger/AndroidUtilities;->applySpring(Landroid/animation/Animator;DDD)V

    .line 561
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v1

    long-to-float v1, v1

    const v2, 0x3f8ccccd    # 1.1f

    mul-float/2addr v1, v2

    float-to-long v1, v1

    invoke-virtual {p1, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 562
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 564
    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->slowerDismiss:Z

    const/4 p1, 0x1

    return p1

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 928
    invoke-super {p0, p1}, Landroid/view/View;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 930
    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->drawDismissingTab(Landroid/graphics/Canvas;)V

    .line 931
    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->drawTabsPreview(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 25

    move-object/from16 v0, p0

    .line 148
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->tabsViewBounds:Landroid/graphics/RectF;

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v1

    if-nez v1, :cond_0

    return v2

    .line 152
    :cond_0
    iget v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->openProgress:F

    const/4 v3, 0x0

    cmpl-float v1, v1, v3

    if-lez v1, :cond_2d

    .line 153
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->velocityTracker:Landroid/view/VelocityTracker;

    if-nez v1, :cond_1

    .line 154
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->velocityTracker:Landroid/view/VelocityTracker;

    .line 156
    :cond_1
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->velocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v4, p1

    invoke-virtual {v1, v4}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 157
    invoke-virtual {v4}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/high16 v5, 0x41c00000    # 24.0f

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-nez v1, :cond_a

    .line 158
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    iput-wide v9, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->startTime:J

    .line 159
    invoke-virtual {v4}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->startX:F

    .line 160
    invoke-virtual {v4}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->startY:F

    .line 161
    invoke-virtual {v4}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {v4}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-direct {v0, v1, v3}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->getTabAt(FF)Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->pressTab:Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;

    .line 162
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->closeAllButtonBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v4}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v4}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    float-to-int v9, v9

    invoke-virtual {v1, v3, v9}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v8

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    iput-boolean v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->hitCloseAllButton:Z

    if-eqz v1, :cond_3

    .line 163
    iput-object v7, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->pressTab:Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;

    .line 164
    :cond_3
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->closeAllButtonBackground:Landroid/graphics/drawable/Drawable;

    const v3, 0x101009e

    const v9, 0x10100a7

    if-eqz v1, :cond_5

    .line 165
    invoke-virtual {v4}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    invoke-virtual {v4}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    invoke-virtual {v1, v10, v11}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 166
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->closeAllButtonBackground:Landroid/graphics/drawable/Drawable;

    iget-boolean v10, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->hitCloseAllButton:Z

    if-eqz v10, :cond_4

    new-array v10, v6, [I

    aput v9, v10, v2

    aput v3, v10, v8

    goto :goto_1

    :cond_4
    new-array v10, v2, [I

    :goto_1
    invoke-virtual {v1, v10}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 168
    :cond_5
    iput-boolean v2, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->verticallyScrolling:Z

    .line 169
    iput-boolean v2, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->horizontallySwiping:Z

    .line 170
    iput-boolean v2, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->pressTabClose:Z

    .line 171
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->pressTab:Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;

    if-eqz v1, :cond_8

    .line 172
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->cancelDismissAnimator()V

    .line 173
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->pressTab:Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;

    iget-object v1, v1, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->tabDrawable:Lorg/telegram/ui/ActionBar/BottomSheetTabs$TabDrawable;

    iget-object v1, v1, Lorg/telegram/ui/ActionBar/BottomSheetTabs$TabDrawable;->closeRipple:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v4}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    iget-object v11, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->pressTab:Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;

    iget-object v11, v11, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->clickBounds:Landroid/graphics/RectF;

    iget v11, v11, Landroid/graphics/RectF;->left:F

    sub-float/2addr v10, v11

    float-to-int v10, v10

    invoke-virtual {v4}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    iget-object v12, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->pressTab:Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;

    iget-object v12, v12, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->clickBounds:Landroid/graphics/RectF;

    iget v12, v12, Landroid/graphics/RectF;->top:F

    sub-float/2addr v11, v12

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v11, v5

    float-to-int v5, v11

    invoke-virtual {v1, v10, v5}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    iput-boolean v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->pressTabClose:Z

    if-eqz v1, :cond_6

    .line 175
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->pressTab:Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;

    iget-object v1, v1, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->tabDrawable:Lorg/telegram/ui/ActionBar/BottomSheetTabs$TabDrawable;

    iget-object v1, v1, Lorg/telegram/ui/ActionBar/BottomSheetTabs$TabDrawable;->closeRipple:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iget-object v10, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->rect:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->left:F

    sub-float/2addr v5, v10

    float-to-int v5, v5

    int-to-float v5, v5

    invoke-virtual {v4}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    iget-object v11, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->rect:Landroid/graphics/RectF;

    invoke-virtual {v11}, Landroid/graphics/RectF;->centerY()F

    move-result v11

    sub-float/2addr v10, v11

    float-to-int v10, v10

    int-to-float v10, v10

    invoke-virtual {v1, v5, v10}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 177
    :cond_6
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->pressTab:Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;

    iget-boolean v5, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->pressTabClose:Z

    xor-int/2addr v5, v8

    invoke-virtual {v1, v5}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->setPressed(Z)V

    .line 178
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->pressTab:Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;

    iget-object v1, v1, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->tabDrawable:Lorg/telegram/ui/ActionBar/BottomSheetTabs$TabDrawable;

    iget-object v1, v1, Lorg/telegram/ui/ActionBar/BottomSheetTabs$TabDrawable;->closeRipple:Landroid/graphics/drawable/Drawable;

    iget-boolean v5, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->pressTabClose:Z

    if-eqz v5, :cond_7

    new-array v5, v6, [I

    aput v9, v5, v2

    aput v3, v5, v8

    goto :goto_2

    :cond_7
    new-array v5, v2, [I

    :goto_2
    invoke-virtual {v1, v5}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 180
    :cond_8
    invoke-virtual {v4}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->lastY:F

    .line 181
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->scroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_9

    .line 182
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->scroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 184
    :cond_9
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->scrollAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_2c

    .line 185
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 186
    iput-object v7, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->scrollAnimator:Landroid/animation/ValueAnimator;

    goto/16 :goto_9

    .line 188
    :cond_a
    invoke-virtual {v4}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v6, :cond_1c

    .line 189
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->pressTab:Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;

    if-eqz v1, :cond_19

    .line 190
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->isPressed()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 191
    iget-boolean v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->horizontallySwiping:Z

    if-nez v1, :cond_b

    iget-boolean v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->verticallyScrolling:Z

    if-nez v1, :cond_b

    iget v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->startX:F

    invoke-virtual {v4}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-virtual {v4}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    invoke-virtual {v4}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    invoke-static {v1, v5, v6, v9}, Lcom/google/zxing/common/detector/MathUtils;->distance(FFFF)F

    move-result v1

    sget v5, Lorg/telegram/messenger/AndroidUtilities;->touchSlop:F

    cmpl-float v1, v1, v5

    if-lez v1, :cond_b

    .line 192
    iput-boolean v8, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->horizontallySwiping:Z

    .line 194
    :cond_b
    iget-boolean v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->verticallyScrolling:Z

    if-nez v1, :cond_e

    iget-boolean v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->horizontallySwiping:Z

    if-nez v1, :cond_e

    invoke-virtual {v4}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget v5, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->startY:F

    invoke-virtual {v4}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    invoke-virtual {v4}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    invoke-static {v1, v5, v6, v9}, Lcom/google/zxing/common/detector/MathUtils;->distance(FFFF)F

    move-result v1

    sget v5, Lorg/telegram/messenger/AndroidUtilities;->touchSlop:F

    cmpl-float v1, v1, v5

    if-lez v1, :cond_e

    .line 195
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->scroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_c

    .line 196
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->scroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 198
    :cond_c
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->scrollAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_d

    .line 199
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 200
    iput-object v7, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->scrollAnimator:Landroid/animation/ValueAnimator;

    .line 202
    :cond_d
    iput-boolean v8, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->verticallyScrolling:Z

    .line 204
    :cond_e
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->tabsView:Lorg/telegram/ui/ActionBar/BottomSheetTabs;

    if-eqz v1, :cond_15

    iget-boolean v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->verticallyScrolling:Z

    if-nez v1, :cond_f

    iget-boolean v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->horizontallySwiping:Z

    if-eqz v1, :cond_15

    .line 205
    :cond_f
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->pressTab:Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->setPressed(Z)V

    .line 206
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->pressTab:Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->cancelDismissAnimator()V

    goto/16 :goto_3

    .line 209
    :cond_10
    iget-boolean v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->pressTabClose:Z

    if-nez v1, :cond_11

    iget-boolean v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->horizontallySwiping:Z

    if-nez v1, :cond_11

    iget-boolean v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->verticallyScrolling:Z

    if-nez v1, :cond_11

    iget v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->startX:F

    invoke-virtual {v4}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-virtual {v4}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    invoke-virtual {v4}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    invoke-static {v1, v6, v9, v10}, Lcom/google/zxing/common/detector/MathUtils;->distance(FFFF)F

    move-result v1

    sget v6, Lorg/telegram/messenger/AndroidUtilities;->touchSlop:F

    cmpl-float v1, v1, v6

    if-lez v1, :cond_11

    .line 210
    iput-boolean v8, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->horizontallySwiping:Z

    .line 212
    :cond_11
    iget-boolean v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->pressTabClose:Z

    if-nez v1, :cond_14

    iget-boolean v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->verticallyScrolling:Z

    if-nez v1, :cond_14

    iget-boolean v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->horizontallySwiping:Z

    if-nez v1, :cond_14

    invoke-virtual {v4}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget v6, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->startY:F

    invoke-virtual {v4}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    invoke-virtual {v4}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    invoke-static {v1, v6, v9, v10}, Lcom/google/zxing/common/detector/MathUtils;->distance(FFFF)F

    move-result v1

    sget v6, Lorg/telegram/messenger/AndroidUtilities;->touchSlop:F

    cmpl-float v1, v1, v6

    if-lez v1, :cond_14

    .line 213
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->scroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_12

    .line 214
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->scroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 216
    :cond_12
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->scrollAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_13

    .line 217
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 218
    iput-object v7, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->scrollAnimator:Landroid/animation/ValueAnimator;

    .line 220
    :cond_13
    iput-boolean v8, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->verticallyScrolling:Z

    .line 222
    :cond_14
    iget-boolean v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->pressTabClose:Z

    if-eqz v1, :cond_15

    .line 223
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->pressTab:Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;

    iget-object v1, v1, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->tabDrawable:Lorg/telegram/ui/ActionBar/BottomSheetTabs$TabDrawable;

    iget-object v1, v1, Lorg/telegram/ui/ActionBar/BottomSheetTabs$TabDrawable;->closeRipple:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v4}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    iget-object v7, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->pressTab:Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;

    iget-object v7, v7, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->clickBounds:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->left:F

    sub-float/2addr v6, v7

    float-to-int v6, v6

    invoke-virtual {v4}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    iget-object v9, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->pressTab:Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;

    iget-object v9, v9, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->clickBounds:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->top:F

    sub-float/2addr v7, v9

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v7, v5

    float-to-int v5, v7

    invoke-virtual {v1, v6, v5}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    iput-boolean v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->pressTabClose:Z

    if-nez v1, :cond_15

    .line 225
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->pressTab:Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;

    iget-object v1, v1, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->tabDrawable:Lorg/telegram/ui/ActionBar/BottomSheetTabs$TabDrawable;

    iget-object v1, v1, Lorg/telegram/ui/ActionBar/BottomSheetTabs$TabDrawable;->closeRipple:Landroid/graphics/drawable/Drawable;

    new-array v5, v2, [I

    invoke-virtual {v1, v5}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 229
    :cond_15
    :goto_3
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->pressTab:Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->isPressed()Z

    move-result v1

    if-nez v1, :cond_18

    .line 230
    iget-boolean v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->horizontallySwiping:Z

    if-eqz v1, :cond_16

    .line 231
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->pressTab:Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;

    invoke-virtual {v4}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iget v5, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->startX:F

    sub-float/2addr v3, v5

    const/high16 v5, 0x43960000    # 300.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v3, v5

    iput v3, v1, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->dismissProgress:F

    goto :goto_4

    .line 232
    :cond_16
    iget-boolean v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->verticallyScrolling:Z

    if-eqz v1, :cond_18

    .line 233
    invoke-virtual {v4}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget v5, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->lastY:F

    sub-float/2addr v1, v5

    .line 234
    iget v5, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->offset:F

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->getScrollMin()F

    move-result v6

    cmpg-float v5, v5, v6

    if-gez v5, :cond_17

    .line 235
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->getScrollMin()F

    move-result v5

    iget v6, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->offset:F

    sub-float/2addr v5, v6

    invoke-direct {v0}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->getScrollStep()F

    move-result v6

    div-float/2addr v5, v6

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v5, v6, v3}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v3

    const/high16 v5, 0x3f000000    # 0.5f

    mul-float/2addr v3, v5

    sub-float/2addr v6, v3

    mul-float/2addr v1, v6

    .line 238
    :cond_17
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->getScrollOffset()F

    move-result v3

    invoke-direct {v0}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->getScrollStep()F

    move-result v5

    mul-float/2addr v3, v5

    sub-float/2addr v3, v1

    invoke-direct {v0}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->getScrollStep()F

    move-result v1

    div-float/2addr v3, v1

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->getScrollMax()F

    move-result v1

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->getScrollMin()F

    move-result v5

    const v6, 0x3fb33333    # 1.4f

    invoke-direct {v0}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->getScrollStep()F

    move-result v7

    mul-float/2addr v7, v6

    sub-float/2addr v5, v7

    invoke-static {v3, v1, v5}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v1

    .line 237
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->setScrollOffset(F)V

    .line 240
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 243
    :cond_18
    :goto_4
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 245
    :cond_19
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->closeAllButtonBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1b

    iget-boolean v3, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->hitCloseAllButton:Z

    if-eqz v3, :cond_1b

    .line 246
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->pressTab:Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;

    if-nez v3, :cond_1a

    if-eqz v1, :cond_1a

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v4}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v4}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v1, v3, v5}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-eqz v1, :cond_1a

    move v1, v8

    goto :goto_5

    :cond_1a
    move v1, v2

    :goto_5
    iput-boolean v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->hitCloseAllButton:Z

    if-nez v1, :cond_1b

    .line 248
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->closeAllButtonBackground:Landroid/graphics/drawable/Drawable;

    new-array v2, v2, [I

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 251
    :cond_1b
    invoke-virtual {v4}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->lastY:F

    goto/16 :goto_9

    .line 252
    :cond_1c
    invoke-virtual {v4}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v8, :cond_29

    .line 253
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->pressTab:Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;

    if-eqz v1, :cond_25

    .line 254
    iget-object v6, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->tabsView:Lorg/telegram/ui/ActionBar/BottomSheetTabs;

    if-eqz v6, :cond_1d

    iget v1, v1, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->dismissProgress:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const v6, 0x3ecccccd    # 0.4f

    cmpl-float v1, v1, v6

    if-lez v1, :cond_1d

    .line 255
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->pressTab:Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;

    .line 256
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->tabsView:Lorg/telegram/ui/ActionBar/BottomSheetTabs;

    iget-object v6, v1, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->tabData:Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;

    new-instance v9, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$$ExternalSyntheticLambda4;

    invoke-direct {v9, v0, v1}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;)V

    invoke-virtual {v3, v6, v9}, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->removeTab(Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;Lorg/telegram/messenger/Utilities$Callback;)V

    goto/16 :goto_7

    .line 268
    :cond_1d
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->pressTab:Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;

    invoke-virtual {v1, v3}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->animateDismiss(F)V

    .line 269
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->tabsView:Lorg/telegram/ui/ActionBar/BottomSheetTabs;

    if-eqz v1, :cond_1e

    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->pressTab:Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->isPressed()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 270
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->closeTabsView()V

    .line 271
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->pressTab:Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;

    iput-object v7, v1, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->webView:Landroid/webkit/WebView;

    .line 272
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->tabsView:Lorg/telegram/ui/ActionBar/BottomSheetTabs;

    iget-object v1, v1, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->tabData:Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;

    invoke-virtual {v3, v1}, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->openTab(Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;)V

    goto/16 :goto_7

    .line 273
    :cond_1e
    iget-boolean v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->verticallyScrolling:Z

    if-eqz v1, :cond_22

    .line 274
    iget v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->offset:F

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->getScrollMin()F

    move-result v3

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->getScrollWindow()F

    move-result v6

    const v9, 0x3e19999a    # 0.15f

    mul-float/2addr v6, v9

    sub-float/2addr v3, v6

    cmpg-float v1, v1, v3

    if-gez v1, :cond_1f

    .line 275
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->closeTabsView()V

    goto/16 :goto_6

    .line 276
    :cond_1f
    iget v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->offset:F

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->getScrollMin()F

    move-result v3

    cmpg-float v1, v1, v3

    if-gez v1, :cond_20

    .line 277
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->getScrollMin()F

    move-result v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->scrollTo(F)V

    goto :goto_6

    .line 279
    :cond_20
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->velocityTracker:Landroid/view/VelocityTracker;

    iget v3, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->maximumVelocity:I

    int-to-float v3, v3

    const/16 v6, 0x3e8

    invoke-virtual {v1, v6, v3}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 280
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v1

    .line 281
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v6, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->minimumVelocity:I

    int-to-float v6, v6

    cmpl-float v3, v3, v6

    if-lez v3, :cond_21

    .line 282
    iget-object v9, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->scroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->getScrollOffset()F

    move-result v3

    invoke-direct {v0}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->getScrollStep()F

    move-result v6

    mul-float/2addr v3, v6

    float-to-int v11, v3

    neg-float v1, v1

    float-to-int v13, v1

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->getScrollMin()F

    move-result v1

    invoke-direct {v0}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->getScrollStep()F

    move-result v3

    mul-float/2addr v1, v3

    float-to-int v1, v1

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->getScrollMax()F

    move-result v3

    invoke-direct {v0}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->getScrollStep()F

    move-result v6

    mul-float/2addr v3, v6

    float-to-int v3, v3

    const v6, 0x3dcccccd    # 0.1f

    invoke-direct {v0}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->getScrollStep()F

    move-result v10

    mul-float/2addr v10, v6

    float-to-int v6, v10

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v18, 0x0

    move/from16 v16, v1

    move/from16 v17, v3

    move/from16 v19, v6

    invoke-virtual/range {v9 .. v19}, Landroid/widget/OverScroller;->fling(IIIIIIIIII)V

    goto :goto_6

    .line 284
    :cond_21
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->scroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->getScrollOffset()F

    move-result v3

    invoke-direct {v0}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->getScrollStep()F

    move-result v6

    mul-float/2addr v3, v6

    float-to-int v3, v3

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v20, 0x0

    const/16 v22, 0x0

    move-object/from16 v19, v1

    move/from16 v21, v3

    invoke-virtual/range {v19 .. v24}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    .line 287
    :goto_6
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->recycle()V

    .line 288
    iput-object v7, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->velocityTracker:Landroid/view/VelocityTracker;

    .line 289
    invoke-virtual {v0}, Landroid/view/View;->postInvalidateOnAnimation()V

    .line 292
    :cond_22
    :goto_7
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->pressTab:Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->setPressed(Z)V

    .line 293
    iget-boolean v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->pressTabClose:Z

    if-eqz v1, :cond_23

    .line 294
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->pressTab:Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;

    iget-object v1, v1, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->tabDrawable:Lorg/telegram/ui/ActionBar/BottomSheetTabs$TabDrawable;

    iget-object v1, v1, Lorg/telegram/ui/ActionBar/BottomSheetTabs$TabDrawable;->closeRipple:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v4}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iget-object v6, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->pressTab:Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;

    iget-object v6, v6, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->clickBounds:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    sub-float/2addr v3, v6

    float-to-int v3, v3

    invoke-virtual {v4}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iget-object v6, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->pressTab:Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;

    iget-object v6, v6, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->clickBounds:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    sub-float/2addr v4, v6

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v4, v5

    float-to-int v4, v4

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    iput-boolean v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->pressTabClose:Z

    .line 296
    :cond_23
    iget-boolean v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->pressTabClose:Z

    if-eqz v1, :cond_24

    .line 297
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->pressTab:Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;

    .line 298
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->tabsView:Lorg/telegram/ui/ActionBar/BottomSheetTabs;

    iget-object v4, v1, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->tabData:Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;

    new-instance v5, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$$ExternalSyntheticLambda5;

    invoke-direct {v5, v0, v1}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;)V

    invoke-virtual {v3, v4, v5}, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->removeTab(Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;Lorg/telegram/messenger/Utilities$Callback;)V

    .line 310
    :cond_24
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->pressTab:Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;

    iget-object v1, v1, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->tabDrawable:Lorg/telegram/ui/ActionBar/BottomSheetTabs$TabDrawable;

    iget-object v1, v1, Lorg/telegram/ui/ActionBar/BottomSheetTabs$TabDrawable;->closeRipple:Landroid/graphics/drawable/Drawable;

    new-array v3, v2, [I

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_8

    .line 311
    :cond_25
    iget-boolean v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->hitCloseAllButton:Z

    if-eqz v1, :cond_26

    .line 312
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->tabsView:Lorg/telegram/ui/ActionBar/BottomSheetTabs;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->removeAll()Z

    .line 313
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->closeTabsView()V

    goto :goto_8

    .line 314
    :cond_26
    iget v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->startX:F

    iget v3, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->startY:F

    invoke-virtual {v4}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {v4}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-static {v1, v3, v5, v4}, Lcom/google/zxing/common/detector/MathUtils;->distance(FFFF)F

    move-result v1

    sget v3, Lorg/telegram/messenger/AndroidUtilities;->touchSlop:F

    cmpg-float v1, v1, v3

    if-gtz v1, :cond_27

    iget-boolean v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->verticallyScrolling:Z

    if-nez v1, :cond_27

    iget-boolean v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->horizontallySwiping:Z

    if-nez v1, :cond_27

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->startTime:J

    sub-long/2addr v3, v5

    long-to-float v1, v3

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v3

    int-to-float v3, v3

    const v4, 0x3f99999a    # 1.2f

    mul-float/2addr v3, v4

    cmpg-float v1, v1, v3

    if-gtz v1, :cond_27

    .line 315
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->closeTabsView()V

    .line 317
    :cond_27
    :goto_8
    iput-object v7, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->pressTab:Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;

    .line 318
    iput-boolean v2, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->pressTabClose:Z

    .line 319
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->velocityTracker:Landroid/view/VelocityTracker;

    if-eqz v1, :cond_28

    .line 320
    invoke-virtual {v1}, Landroid/view/VelocityTracker;->recycle()V

    .line 321
    iput-object v7, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->velocityTracker:Landroid/view/VelocityTracker;

    .line 323
    :cond_28
    iput-boolean v2, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->hitCloseAllButton:Z

    .line 324
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->closeAllButtonBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2c

    .line 325
    new-array v2, v2, [I

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_9

    .line 327
    :cond_29
    invoke-virtual {v4}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v4, 0x3

    if-ne v1, v4, :cond_2c

    .line 328
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->pressTab:Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;

    if-eqz v1, :cond_2a

    .line 329
    invoke-virtual {v1, v3}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->animateDismiss(F)V

    .line 330
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->pressTab:Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->setPressed(Z)V

    .line 331
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->pressTab:Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;

    iget-object v1, v1, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->tabDrawable:Lorg/telegram/ui/ActionBar/BottomSheetTabs$TabDrawable;

    iget-object v1, v1, Lorg/telegram/ui/ActionBar/BottomSheetTabs$TabDrawable;->closeRipple:Landroid/graphics/drawable/Drawable;

    new-array v3, v2, [I

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 333
    :cond_2a
    iput-object v7, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->pressTab:Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;

    .line 334
    iput-boolean v2, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->pressTabClose:Z

    .line 335
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->velocityTracker:Landroid/view/VelocityTracker;

    if-eqz v1, :cond_2b

    .line 336
    invoke-virtual {v1}, Landroid/view/VelocityTracker;->recycle()V

    .line 337
    iput-object v7, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->velocityTracker:Landroid/view/VelocityTracker;

    .line 339
    :cond_2b
    iput-boolean v2, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->hitCloseAllButton:Z

    .line 340
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->closeAllButtonBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2c

    .line 341
    new-array v2, v2, [I

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_2c
    :goto_9
    return v8

    :cond_2d
    return v2
.end method

.method public getScrollMax()F
    .locals 1

    const/4 v0, 0x1

    .line 400
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->getScrollMax(Z)F

    move-result v0

    return v0
.end method

.method public getScrollMax(Z)F
    .locals 4

    .line 404
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->getScrollRange(Z)F

    move-result v0

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->getScrollWindow(Z)F

    move-result v1

    sub-float/2addr v0, v1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->getScrollWindow(Z)F

    move-result v1

    const/high16 v2, 0x40400000    # 3.0f

    div-float/2addr v1, v2

    const/high16 v2, 0x40800000    # 4.0f

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->getScrollRange(Z)F

    move-result p1

    sub-float/2addr v2, p1

    const/high16 p1, 0x3f000000    # 0.5f

    const/4 v3, 0x0

    invoke-static {v2, p1, v3}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result p1

    mul-float/2addr v1, p1

    sub-float/2addr v0, v1

    return v0
.end method

.method public getScrollMin()F
    .locals 1

    const/4 v0, 0x1

    .line 392
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->getScrollMin(Z)F

    move-result v0

    return v0
.end method

.method public getScrollMin(Z)F
    .locals 3

    .line 396
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->getScrollWindow()F

    move-result v0

    neg-float v0, v0

    const/high16 v1, 0x40400000    # 3.0f

    div-float/2addr v0, v1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->getScrollRange(Z)F

    move-result p1

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result p1

    mul-float/2addr v0, p1

    return v0
.end method

.method public getScrollOffset()F
    .locals 1

    .line 359
    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->offset:F

    return v0
.end method

.method public getScrollRange()F
    .locals 1

    const/4 v0, 0x1

    .line 371
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->getScrollRange(Z)F

    move-result v0

    return v0
.end method

.method public getScrollRange(Z)F
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v2, v0

    .line 376
    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 377
    iget-object v3, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;

    .line 378
    iget-object v3, v3, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->tabDrawable:Lorg/telegram/ui/ActionBar/BottomSheetTabs$TabDrawable;

    iget v3, v3, Lorg/telegram/ui/ActionBar/BottomSheetTabs$TabDrawable;->index:I

    if-ltz v3, :cond_0

    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_0
    move v3, v0

    :goto_1
    add-float/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    .line 380
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->animatedCount:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {p1, v2}, Lorg/telegram/ui/Components/AnimatedFloat;->set(F)F

    move-result p1

    return p1

    :cond_2
    return v2
.end method

.method public getScrollWindow()F
    .locals 2

    const/high16 v0, 0x40400000    # 3.0f

    .line 384
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->getScrollRange()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0
.end method

.method public getScrollWindow(Z)F
    .locals 1

    const/high16 v0, 0x40400000    # 3.0f

    .line 388
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->getScrollRange(Z)F

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    return p1
.end method

.method public onBackPressed()Z
    .locals 1

    .line 570
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->isOpen:Z

    if-eqz v0, :cond_0

    .line 571
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->closeTabsView()V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public openTabsView()V
    .locals 7

    .line 599
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->tabsView:Lorg/telegram/ui/ActionBar/BottomSheetTabs;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-nez v0, :cond_0

    goto :goto_1

    .line 601
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->stopAnimations()V

    .line 603
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->tabsView:Lorg/telegram/ui/ActionBar/BottomSheetTabs;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->actionBarLayout:Landroid/view/View;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 605
    iget-object v3, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->pos:[I

    invoke-virtual {v0, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    goto :goto_0

    .line 607
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->pos:[I

    aput v1, v0, v2

    aput v1, v0, v1

    .line 609
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->pos2:[I

    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 610
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->tabsViewBounds:Landroid/graphics/RectF;

    iget-object v3, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->pos:[I

    aget v4, v3, v1

    iget-object v5, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->pos2:[I

    aget v1, v5, v1

    sub-int v6, v4, v1

    int-to-float v6, v6

    aget v3, v3, v2

    aget v5, v5, v2

    sub-int/2addr v3, v5

    int-to-float v3, v3

    sub-int/2addr v4, v1

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->actionBarLayout:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    add-int/2addr v4, v1

    int-to-float v1, v4

    iget-object v4, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->pos:[I

    aget v4, v4, v2

    iget-object v5, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->pos2:[I

    aget v5, v5, v2

    sub-int/2addr v4, v5

    iget-object v5, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->actionBarLayout:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v0, v6, v3, v1, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 612
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->actionBarLayout:Landroid/view/View;

    invoke-direct {p0, v0}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->prepareBlur(Landroid/view/View;)V

    .line 613
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->clearTabs()V

    .line 614
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->prepareTabs()V

    .line 615
    invoke-direct {p0, v2}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->animateOpen(Z)V

    :cond_2
    :goto_1
    return-void
.end method

.method public setScrollOffset(F)V
    .locals 0

    .line 363
    iput p1, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->offset:F

    return-void
.end method

.method public setSlowerDismiss(Z)V
    .locals 0

    .line 428
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->slowerDismiss:Z

    return-void
.end method

.method public setTabsView(Lorg/telegram/ui/ActionBar/BottomSheetTabs;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->tabsView:Lorg/telegram/ui/ActionBar/BottomSheetTabs;

    return-void
.end method

.method public stopAnimations()V
    .locals 1

    .line 486
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->animator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 487
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v0, 0x0

    .line 488
    iput-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->animator:Landroid/animation/ValueAnimator;

    :cond_0
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .line 739
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->closeAllButtonBackground:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_1

    invoke-super {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method
