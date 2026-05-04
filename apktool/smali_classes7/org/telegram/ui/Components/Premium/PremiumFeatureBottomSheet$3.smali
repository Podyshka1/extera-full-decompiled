.class Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$3;
.super Landroidx/viewpager/widget/ViewPager;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;IZIZLorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field lastTapTime:J

.field private scroller:Landroid/widget/Scroller;

.field private smoothScroll:Z

.field final synthetic this$0:Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;


# direct methods
.method static bridge synthetic -$$Nest$fgetsmoothScroll(Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$3;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$3;->smoothScroll:Z

    return p0
.end method

.method constructor <init>(Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;Landroid/content/Context;)V
    .locals 1

    .line 204
    iput-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$3;->this$0:Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    invoke-direct {p0, p2}, Landroidx/viewpager/widget/ViewPager;-><init>(Landroid/content/Context;)V

    .line 264
    :try_start_0
    const-class p1, Landroidx/viewpager/widget/ViewPager;

    .line 265
    const-string p2, "mScroller"

    invoke-virtual {p1, p2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    const/4 p2, 0x1

    .line 266
    invoke-virtual {p1, p2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 267
    new-instance p2, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$3$1;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, p0, v0}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$3$1;-><init>(Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$3;Landroid/content/Context;)V

    iput-object p2, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$3;->scroller:Landroid/widget/Scroller;

    .line 273
    invoke-virtual {p1, p0, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 275
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return-void
.end method

.method private processTap(Landroid/view/MotionEvent;Z)Z
    .locals 6

    .line 217
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    const/4 v0, 0x1

    if-nez p2, :cond_0

    .line 218
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$3;->lastTapTime:J

    return v0

    .line 220
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    const/4 v1, 0x0

    if-ne p2, v0, :cond_3

    .line 221
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$3;->lastTapTime:J

    sub-long/2addr v2, v4

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result p2

    int-to-long v4, p2

    cmp-long p2, v2, v4

    if-gtz p2, :cond_4

    iget-object p2, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$3;->scroller:Landroid/widget/Scroller;

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Landroid/widget/Scroller;->isFinished()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 222
    iput-boolean v0, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$3;->smoothScroll:Z

    .line 223
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p2

    int-to-float p2, p2

    const v2, 0x3ee66666    # 0.45f

    mul-float/2addr p2, v2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_1

    .line 224
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$3;->this$0:Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    iget p2, p1, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->selectedPosition:I

    add-int/2addr p2, v0

    iget-object p1, p1, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->premiumFeatures:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge p2, p1, :cond_2

    .line 225
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$3;->this$0:Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    iget p1, p1, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->selectedPosition:I

    add-int/2addr p1, v0

    invoke-virtual {p0, p1, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    goto :goto_0

    .line 228
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$3;->this$0:Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    iget p1, p1, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->selectedPosition:I

    add-int/lit8 p2, p1, -0x1

    if-ltz p2, :cond_2

    sub-int/2addr p1, v0

    .line 229
    invoke-virtual {p0, p1, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    .line 232
    :cond_2
    :goto_0
    iput-boolean v1, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$3;->smoothScroll:Z

    goto :goto_1

    .line 234
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x3

    if-ne p1, p2, :cond_4

    const-wide/16 p1, -0x1

    .line 235
    iput-wide p1, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$3;->lastTapTime:J

    :cond_4
    :goto_1
    return v1
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x1

    .line 243
    :try_start_0
    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$3;->processTap(Landroid/view/MotionEvent;Z)Z

    .line 244
    invoke-super {p0, p1}, Landroidx/viewpager/widget/ViewPager;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method

.method protected onMeasure(II)V
    .locals 2

    const/high16 p2, 0x42c80000    # 100.0f

    .line 208
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    .line 209
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 p2, 0x0

    .line 210
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-static {p2, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/view/View;->measure(II)V

    .line 211
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    .line 213
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$3;->this$0:Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    iget v0, v0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->topGlobalOffset:I

    add-int/2addr p2, v0

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroidx/viewpager/widget/ViewPager;->onMeasure(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 253
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$3;->this$0:Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    iget-boolean v0, v0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->enterAnimationIsRunning:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 256
    :cond_0
    invoke-direct {p0, p1, v1}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$3;->processTap(Landroid/view/MotionEvent;Z)Z

    move-result v0

    .line 257
    invoke-super {p0, p1}, Landroidx/viewpager/widget/ViewPager;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-nez p1, :cond_2

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    return p1
.end method
