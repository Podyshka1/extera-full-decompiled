.class Lorg/telegram/ui/ArticleViewer$WindowView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ArticleViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WindowView"
.end annotation


# instance fields
.field private alpha:F

.field private bHeight:I

.field private bWidth:I

.field private bX:I

.field private bY:I

.field private final blackPaint:Landroid/graphics/Paint;

.field private innerTranslationX:F

.field private lastWebviewAllowedScroll:Z

.field private maybeStartTracking:Z

.field private movingPage:Z

.field private openingPage:Z

.field private startMovingHeaderHeight:I

.field private startedTracking:Z

.field private startedTrackingPointerId:I

.field private startedTrackingX:I

.field private startedTrackingY:I

.field final synthetic this$0:Lorg/telegram/ui/ArticleViewer;

.field private tracker:Landroid/view/VelocityTracker;


# direct methods
.method static bridge synthetic -$$Nest$fgetmovingPage(Lorg/telegram/ui/ArticleViewer$WindowView;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->movingPage:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetopeningPage(Lorg/telegram/ui/ArticleViewer$WindowView;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->openingPage:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetstartMovingHeaderHeight(Lorg/telegram/ui/ArticleViewer$WindowView;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->startMovingHeaderHeight:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmovingPage(Lorg/telegram/ui/ArticleViewer$WindowView;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->movingPage:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputopeningPage(Lorg/telegram/ui/ArticleViewer$WindowView;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->openingPage:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputstartMovingHeaderHeight(Lorg/telegram/ui/ArticleViewer$WindowView;I)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->startMovingHeaderHeight:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputstartedTracking(Lorg/telegram/ui/ArticleViewer$WindowView;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->startedTracking:Z

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;)V
    .locals 0

    .line 767
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    .line 768
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 750
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->blackPaint:Landroid/graphics/Paint;

    return-void
.end method

.method private prepareForMoving(Landroid/view/MotionEvent;)V
    .locals 4

    const/4 v0, 0x0

    .line 972
    iput-boolean v0, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->maybeStartTracking:Z

    const/4 v1, 0x1

    .line 973
    iput-boolean v1, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->startedTracking:Z

    .line 974
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->startedTrackingX:I

    .line 975
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object p1, p1, Lorg/telegram/ui/ArticleViewer;->pagesStack:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-le p1, v1, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$fgetactionBar(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/ui/web/WebActionBar;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$fgetactionBar(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/ui/web/WebActionBar;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/web/WebActionBar;->isSearching()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$fgetactionBar(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/ui/web/WebActionBar;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/web/WebActionBar;->isAddressing()Z

    move-result p1

    if-nez p1, :cond_2

    .line 976
    :cond_0
    iput-boolean v1, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->movingPage:Z

    .line 977
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$fgetcurrentHeaderHeight(Lorg/telegram/ui/ArticleViewer;)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->startMovingHeaderHeight:I

    .line 978
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object p1, p1, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object p1, p1, v1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 979
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object p1, p1, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object p1, p1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {p1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 980
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object p1, p1, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object p1, p1, v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lorg/telegram/ui/ArticleViewer$PageLayout;->setTranslationX(F)V

    .line 981
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v2, p1, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v2, v2, v0

    iget-object v3, p1, Lorg/telegram/ui/ArticleViewer;->sheet:Lorg/telegram/ui/ArticleViewer$Sheet;

    if-nez v3, :cond_1

    move p1, v0

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$fgetbackgroundPaint(Lorg/telegram/ui/ArticleViewer;)Landroid/graphics/Paint;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Paint;->getColor()I

    move-result p1

    :goto_0
    invoke-virtual {v2, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 982
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v2, p1, Lorg/telegram/ui/ArticleViewer;->pagesStack:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, -0x1

    invoke-static {p1, v2, v1, v3}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$mupdateInterfaceForCurrentPage(Lorg/telegram/ui/ArticleViewer;Ljava/lang/Object;ZI)V

    .line 983
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$fgetcontainerView(Lorg/telegram/ui/ArticleViewer;)Landroid/widget/FrameLayout;

    move-result-object p1

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v2, v2, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p1

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v2}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$fgetcontainerView(Lorg/telegram/ui/ArticleViewer;)Landroid/widget/FrameLayout;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v3, v3, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v2

    if-ge p1, v2, :cond_3

    .line 984
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$fgetcontainerView(Lorg/telegram/ui/ArticleViewer;)Landroid/widget/FrameLayout;

    move-result-object p1

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v2, v2, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p1

    .line 985
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$fgetcontainerView(Lorg/telegram/ui/ArticleViewer;)Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v2, v2, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 986
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$fgetcontainerView(Lorg/telegram/ui/ArticleViewer;)Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v2, v2, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v1, v2, v1

    invoke-virtual {v0, v1, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    goto :goto_1

    .line 989
    :cond_2
    iput-boolean v0, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->movingPage:Z

    .line 991
    :cond_3
    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-virtual {p1}, Lorg/telegram/ui/ArticleViewer;->cancelCheckLongPress()V

    return-void
.end method


# virtual methods
.method public dispatchApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 3

    .line 773
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v1, v0, Lorg/telegram/ui/ArticleViewer;->sheet:Lorg/telegram/ui/ArticleViewer$Sheet;

    if-eqz v1, :cond_0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p1

    return-object p1

    .line 774
    :cond_0
    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$fgetlastInsets(Lorg/telegram/ui/ArticleViewer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowInsets;

    .line 775
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v1, p1}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$fputlastInsets(Lorg/telegram/ui/ArticleViewer;Ljava/lang/Object;)V

    if-eqz v0, :cond_1

    .line 776
    invoke-virtual {v0}, Landroid/view/WindowInsets;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/WindowInsets;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 777
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$fgetwindowView(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/ui/ArticleViewer$WindowView;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 778
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$fgetwindowView(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/ui/ArticleViewer$WindowView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 781
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$fgetparentActivity(Lorg/telegram/ui/ArticleViewer;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 782
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$fgetparentActivity(Lorg/telegram/ui/ArticleViewer;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 784
    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getBoundingRects()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 785
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 786
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v2, 0x1

    :cond_3
    invoke-static {v1, v2}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$fputhasCutout(Lorg/telegram/ui/ArticleViewer;Z)V

    .line 790
    :cond_4
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p1

    return-object p1
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 14

    .line 1164
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 1165
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$fgetlastInsets(Lorg/telegram/ui/ArticleViewer;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1166
    iget v0, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->bWidth:I

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->bHeight:I

    if-eqz v0, :cond_1

    .line 1167
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->blackPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v1}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$fgetwindowView(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/ui/ArticleViewer$WindowView;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/ArticleViewer$WindowView;->getAlpha()F

    move-result v1

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1168
    iget v0, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->bX:I

    if-nez v0, :cond_0

    iget v1, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->bY:I

    if-nez v1, :cond_0

    int-to-float v3, v0

    int-to-float v4, v1

    .line 1169
    iget v2, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->bWidth:I

    add-int/2addr v0, v2

    int-to-float v5, v0

    iget v0, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->bHeight:I

    add-int/2addr v1, v0

    int-to-float v6, v1

    iget-object v7, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->blackPaint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void

    :cond_0
    move-object v2, p1

    int-to-float p1, v0

    .line 1171
    invoke-virtual {p0}, Landroid/view/View;->getTranslationX()F

    move-result v0

    sub-float v9, p1, v0

    iget p1, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->bY:I

    int-to-float v10, p1

    iget p1, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->bX:I

    iget v0, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->bWidth:I

    add-int/2addr p1, v0

    int-to-float p1, p1

    invoke-virtual {p0}, Landroid/view/View;->getTranslationX()F

    move-result v0

    sub-float v11, p1, v0

    iget p1, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->bY:I

    iget v0, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->bHeight:I

    add-int/2addr p1, v0

    int-to-float v12, p1

    iget-object v13, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->blackPaint:Landroid/graphics/Paint;

    move-object v8, v2

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_1
    return-void
.end method

.method public dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z
    .locals 2

    if-eqz p1, :cond_4

    .line 1221
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_4

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 1222
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$fgetactionBar(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/ui/web/WebActionBar;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/ui/web/WebActionBar;->searchEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {p1}, Landroid/view/View;->isFocused()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1223
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$fgetactionBar(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/ui/web/WebActionBar;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/ui/web/WebActionBar;->searchEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {p1}, Landroid/view/View;->clearFocus()V

    .line 1224
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$fgetactionBar(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/ui/web/WebActionBar;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/ui/web/WebActionBar;->searchEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    goto :goto_0

    .line 1225
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$fgetactionBar(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/ui/web/WebActionBar;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/ui/web/WebActionBar;->addressEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {p1}, Landroid/view/View;->isFocused()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1226
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$fgetactionBar(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/ui/web/WebActionBar;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/ui/web/WebActionBar;->addressEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {p1}, Landroid/view/View;->clearFocus()V

    .line 1227
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$fgetactionBar(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/ui/web/WebActionBar;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/ui/web/WebActionBar;->addressEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    goto :goto_0

    .line 1228
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$fgetkeyboardVisible(Lorg/telegram/ui/ArticleViewer;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1229
    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    goto :goto_0

    .line 1230
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object p1, p1, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    const/4 v0, 0x0

    aget-object p1, p1, v0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lorg/telegram/ui/ArticleViewer$PageLayout;->isWeb()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object p1, p1, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object p1, p1, v0

    invoke-virtual {p1}, Lorg/telegram/ui/ArticleViewer$PageLayout;->getWebView()Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object p1, p1, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object p1, p1, v0

    invoke-virtual {p1}, Lorg/telegram/ui/ArticleViewer$PageLayout;->getWebView()Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->canGoBack()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1231
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object p1, p1, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object p1, p1, v0

    invoke-virtual {p1}, Lorg/telegram/ui/ArticleViewer$PageLayout;->getWebView()Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->goBack()V

    goto :goto_0

    .line 1233
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-virtual {p1, v1, v0}, Lorg/telegram/ui/ArticleViewer;->close(ZZ)V

    :goto_0
    return v1

    .line 1237
    :cond_4
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 833
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->pinchToZoomHelper:Lorg/telegram/ui/PinchToZoomHelper;

    invoke-virtual {v0}, Lorg/telegram/ui/PinchToZoomHelper;->isInOverlayMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 834
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$fgetcontainerView(Lorg/telegram/ui/ArticleViewer;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v0

    neg-float v0, v0

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v1}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$fgetcontainerView(Lorg/telegram/ui/ArticleViewer;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v1

    neg-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 835
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->pinchToZoomHelper:Lorg/telegram/ui/PinchToZoomHelper;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/PinchToZoomHelper;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 837
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->textSelectionHelper:Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextSelectionHelper;->getOverlayView(Landroid/content/Context;)Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;

    move-result-object v0

    .line 838
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    .line 839
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v2}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$fgetcontainerView(Lorg/telegram/ui/ArticleViewer;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getX()F

    move-result v2

    neg-float v2, v2

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v3}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$fgetcontainerView(Lorg/telegram/ui/ArticleViewer;)Landroid/widget/FrameLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getY()F

    move-result v3

    neg-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 841
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v2, v2, Lorg/telegram/ui/ArticleViewer;->textSelectionHelper:Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;

    invoke-virtual {v2}, Lorg/telegram/ui/Cells/TextSelectionHelper;->isInSelectionMode()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v2, v2, Lorg/telegram/ui/ArticleViewer;->textSelectionHelper:Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/telegram/ui/Cells/TextSelectionHelper;->getOverlayView(Landroid/content/Context;)Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v3

    .line 845
    :cond_1
    invoke-virtual {v0, p1}, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;->checkOnTap(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 846
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    if-eqz v0, :cond_2

    const/4 v2, 0x0

    aget-object v0, v0, v2

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/telegram/ui/ArticleViewer$PageLayout;->isWeb()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->pagesStack:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt v0, v3, :cond_2

    .line 847
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x3

    .line 849
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 853
    :cond_3
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->textSelectionHelper:Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/TextSelectionHelper;->isInSelectionMode()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v2}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$fgetcontainerView(Lorg/telegram/ui/ArticleViewer;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v0, v0, v2

    if-ltz v0, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v2}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$fgetcontainerView(Lorg/telegram/ui/ArticleViewer;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-lez v0, :cond_6

    .line 854
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->textSelectionHelper:Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Cells/TextSelectionHelper;->getOverlayView(Landroid/content/Context;)Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 855
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_5
    return v3

    .line 860
    :cond_6
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 8

    .line 947
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 948
    iget v1, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->innerTranslationX:F

    float-to-int v1, v1

    .line 950
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    const/4 v3, 0x0

    .line 951
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual {p1, v1, v3, v0, v4}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 952
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p3

    .line 953
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    if-eqz v1, :cond_1

    .line 955
    iget-object p4, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {p4}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$fgetcontainerView(Lorg/telegram/ui/ArticleViewer;)Landroid/widget/FrameLayout;

    move-result-object p4

    if-ne p2, p4, :cond_1

    sub-int p2, v0, v1

    int-to-float p2, p2

    int-to-float p4, v0

    div-float/2addr p2, p4

    const p4, 0x3f4ccccd    # 0.8f

    .line 956
    invoke-static {p4, p2}, Ljava/lang/Math;->min(FF)F

    move-result p2

    const/4 p4, 0x0

    cmpg-float v0, p2, p4

    if-gez v0, :cond_0

    move p2, p4

    .line 960
    :cond_0
    iget-object p4, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {p4}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$fgetscrimPaint(Lorg/telegram/ui/ArticleViewer;)Landroid/graphics/Paint;

    move-result-object p4

    const/high16 v0, 0x43190000    # 153.0f

    mul-float/2addr p2, v0

    float-to-int p2, p2

    shl-int/lit8 p2, p2, 0x18

    invoke-virtual {p4, p2}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v5, v1

    .line 961
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p2

    int-to-float v6, p2

    iget-object p2, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {p2}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$fgetscrimPaint(Lorg/telegram/ui/ArticleViewer;)Landroid/graphics/Paint;

    move-result-object v7

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_1
    return p3
.end method

.method public getAlpha()F
    .locals 1
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 1216
    iget v0, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->alpha:F

    return v0
.end method

.method public getInnerTranslationX()F
    .locals 1
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 968
    iget v0, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->innerTranslationX:F

    return v0
.end method

.method public handleTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11

    .line 996
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$fgetpageSwitchAnimation(Lorg/telegram/ui/ArticleViewer;)Landroid/animation/AnimatorSet;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1b

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$fgetcloseAnimationInProgress(Lorg/telegram/ui/ArticleViewer;)Z

    move-result v0

    if-nez v0, :cond_1b

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$fgetfullscreenVideoContainer(Lorg/telegram/ui/ArticleViewer;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->textSelectionHelper:Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/TextSelectionHelper;->isInSelectionMode()Z

    move-result v0

    if-nez v0, :cond_1b

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 997
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->startedTracking:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->maybeStartTracking:Z

    if-nez v2, :cond_0

    .line 998
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    iput v2, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->startedTrackingPointerId:I

    .line 999
    iput-boolean v0, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->maybeStartTracking:Z

    .line 1000
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->startedTrackingX:I

    .line 1001
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->startedTrackingY:I

    .line 1002
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->tracker:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_1a

    .line 1003
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->clear()V

    goto/16 :goto_7

    :cond_0
    const/4 v2, 0x2

    const/4 v3, 0x3

    const/4 v4, 0x0

    if-eqz p1, :cond_8

    .line 1005
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-ne v5, v2, :cond_8

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    iget v6, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->startedTrackingPointerId:I

    if-ne v5, v6, :cond_8

    .line 1006
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->tracker:Landroid/view/VelocityTracker;

    if-nez v2, :cond_1

    .line 1007
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->tracker:Landroid/view/VelocityTracker;

    .line 1009
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget v5, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->startedTrackingX:I

    int-to-float v5, v5

    sub-float/2addr v2, v5

    float-to-int v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1010
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    iget v6, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->startedTrackingY:I

    sub-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    .line 1011
    iget-object v6, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->tracker:Landroid/view/VelocityTracker;

    invoke-virtual {v6, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1012
    iget-object v6, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v6, v6, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v6, v6, v1

    if-eqz v6, :cond_3

    invoke-virtual {v6}, Lorg/telegram/ui/ArticleViewer$PageLayout;->isWeb()Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v6, v6, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v6, v6, v1

    iget-object v6, v6, Lorg/telegram/ui/ArticleViewer$PageLayout;->swipeContainer:Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    invoke-virtual {v6, v0}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->allowingScroll(Z)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v6, v6, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v6, v6, v1

    iget-object v6, v6, Lorg/telegram/ui/ArticleViewer$PageLayout;->swipeContainer:Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    iget-boolean v6, v6, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->isScrolling:Z

    if-nez v6, :cond_2

    goto :goto_0

    :cond_2
    move v6, v1

    goto :goto_1

    :cond_3
    :goto_0
    move v6, v0

    :goto_1
    iput-boolean v6, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->lastWebviewAllowedScroll:Z

    .line 1013
    iget-object v6, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v6, v6, Lorg/telegram/ui/ArticleViewer;->sheet:Lorg/telegram/ui/ArticleViewer$Sheet;

    if-eqz v6, :cond_4

    iget-boolean v6, v6, Lorg/telegram/ui/ArticleViewer$Sheet;->nestedVerticalScroll:Z

    if-nez v6, :cond_5

    :cond_4
    iget-boolean v6, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->maybeStartTracking:Z

    if-eqz v6, :cond_5

    iget-boolean v6, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->startedTracking:Z

    if-nez v6, :cond_5

    int-to-float v6, v2

    const v7, 0x3ecccccd    # 0.4f

    invoke-static {v7, v0}, Lorg/telegram/messenger/AndroidUtilities;->getPixelsInCM(FZ)F

    move-result v7

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_5

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v6

    div-int/2addr v6, v3

    if-le v6, v5, :cond_5

    iget-boolean v3, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->lastWebviewAllowedScroll:Z

    if-eqz v3, :cond_5

    .line 1014
    invoke-direct {p0, p1}, Lorg/telegram/ui/ArticleViewer$WindowView;->prepareForMoving(Landroid/view/MotionEvent;)V

    goto/16 :goto_7

    .line 1015
    :cond_5
    iget-boolean p1, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->startedTracking:Z

    if-eqz p1, :cond_1a

    .line 1016
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {p1, v4}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$fputpressedLinkOwnerLayout(Lorg/telegram/ui/ArticleViewer;Lorg/telegram/ui/ArticleViewer$DrawingText;)V

    .line 1017
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {p1, v4}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$fputpressedLinkOwnerView(Lorg/telegram/ui/ArticleViewer;Landroid/view/View;)V

    .line 1018
    iget-boolean p1, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->movingPage:Z

    if-eqz p1, :cond_6

    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object p1, p1, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object p1, p1, v1

    if-eqz p1, :cond_6

    int-to-float v2, v2

    .line 1019
    invoke-virtual {p1, v2}, Lorg/telegram/ui/ArticleViewer$PageLayout;->setTranslationX(F)V

    goto/16 :goto_7

    .line 1020
    :cond_6
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v3, p1, Lorg/telegram/ui/ArticleViewer;->sheet:Lorg/telegram/ui/ArticleViewer$Sheet;

    if-eqz v3, :cond_7

    int-to-float p1, v2

    .line 1021
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr p1, v2

    invoke-virtual {v3, p1}, Lorg/telegram/ui/ArticleViewer$Sheet;->setBackProgress(F)V

    goto/16 :goto_7

    .line 1023
    :cond_7
    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$fgetcontainerView(Lorg/telegram/ui/ArticleViewer;)Landroid/widget/FrameLayout;

    move-result-object p1

    int-to-float v2, v2

    invoke-virtual {p1, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 1024
    invoke-virtual {p0, v2}, Lorg/telegram/ui/ArticleViewer$WindowView;->setInnerTranslationX(F)V

    goto/16 :goto_7

    :cond_8
    if-eqz p1, :cond_18

    .line 1027
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    iget v6, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->startedTrackingPointerId:I

    if-ne v5, v6, :cond_18

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-eq v5, v3, :cond_9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-eq v3, v0, :cond_9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v5, 0x6

    if-ne v3, v5, :cond_18

    .line 1028
    :cond_9
    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->tracker:Landroid/view/VelocityTracker;

    if-nez v3, :cond_a

    .line 1029
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v3

    iput-object v3, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->tracker:Landroid/view/VelocityTracker;

    .line 1031
    :cond_a
    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->tracker:Landroid/view/VelocityTracker;

    const/16 v5, 0x3e8

    invoke-virtual {v3, v5}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 1032
    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->tracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v3

    .line 1033
    iget-object v5, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->tracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v5

    .line 1034
    iget-object v6, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v6, v6, Lorg/telegram/ui/ArticleViewer;->sheet:Lorg/telegram/ui/ArticleViewer$Sheet;

    if-eqz v6, :cond_b

    iget-boolean v6, v6, Lorg/telegram/ui/ArticleViewer$Sheet;->nestedVerticalScroll:Z

    if-nez v6, :cond_c

    :cond_b
    iget-boolean v6, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->startedTracking:Z

    if-nez v6, :cond_c

    invoke-static {}, Lcom/exteragram/messenger/utils/AppUtils;->getSwipeVelocity()I

    move-result v6

    int-to-float v6, v6

    cmpl-float v6, v3, v6

    if-ltz v6, :cond_c

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpl-float v6, v3, v6

    if-lez v6, :cond_c

    .line 1035
    invoke-direct {p0, p1}, Lorg/telegram/ui/ArticleViewer$WindowView;->prepareForMoving(Landroid/view/MotionEvent;)V

    .line 1037
    :cond_c
    iget-boolean p1, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->startedTracking:Z

    if-eqz p1, :cond_17

    .line 1038
    iget-boolean p1, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->movingPage:Z

    if-eqz p1, :cond_d

    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object p1, p1, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object p1, p1, v1

    goto :goto_2

    :cond_d
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$fgetcontainerView(Lorg/telegram/ui/ArticleViewer;)Landroid/widget/FrameLayout;

    move-result-object p1

    .line 1039
    :goto_2
    iget-boolean v6, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->movingPage:Z

    if-nez v6, :cond_e

    iget-object v6, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v6, v6, Lorg/telegram/ui/ArticleViewer;->sheet:Lorg/telegram/ui/ArticleViewer$Sheet;

    if-eqz v6, :cond_e

    invoke-virtual {v6}, Lorg/telegram/ui/ArticleViewer$Sheet;->getBackProgress()F

    move-result v6

    iget-object v7, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v7, v7, Lorg/telegram/ui/ArticleViewer;->sheet:Lorg/telegram/ui/ArticleViewer$Sheet;

    iget-object v7, v7, Lorg/telegram/ui/ArticleViewer$Sheet;->windowView:Lorg/telegram/ui/ArticleViewer$Sheet$WindowView;

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v6, v7

    goto :goto_3

    :cond_e
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v6

    .line 1041
    :goto_3
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    int-to-float v7, v7

    const v8, 0x3e99999a    # 0.3f

    mul-float/2addr v7, v8

    cmpg-float v7, v6, v7

    if-gez v7, :cond_f

    invoke-static {}, Lcom/exteragram/messenger/utils/AppUtils;->getSwipeVelocity()I

    move-result v7

    int-to-float v7, v7

    cmpg-float v7, v3, v7

    if-ltz v7, :cond_10

    cmpg-float v3, v3, v5

    if-ltz v3, :cond_10

    :cond_f
    iget-boolean v3, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->lastWebviewAllowedScroll:Z

    if-nez v3, :cond_11

    :cond_10
    move v3, v0

    goto :goto_4

    :cond_11
    move v3, v1

    .line 1043
    :goto_4
    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1044
    sget-object v7, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    if-nez v3, :cond_14

    .line 1045
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    int-to-float v8, v8

    sub-float v6, v8, v6

    .line 1046
    iget-boolean v8, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->movingPage:Z

    if-eqz v8, :cond_12

    .line 1047
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v2, v2, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v2, v2, v1

    .line 1048
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    int-to-float v8, v8

    new-array v9, v0, [F

    aput v8, v9, v1

    invoke-static {v2, v7, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    new-array v7, v0, [Landroid/animation/Animator;

    aput-object v2, v7, v1

    .line 1047
    invoke-virtual {v5, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto/16 :goto_5

    .line 1051
    :cond_12
    iget-object v8, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v9, v8, Lorg/telegram/ui/ArticleViewer;->sheet:Lorg/telegram/ui/ArticleViewer$Sheet;

    if-eqz v9, :cond_13

    const/high16 v2, 0x3f800000    # 1.0f

    .line 1053
    invoke-virtual {v9, v2}, Lorg/telegram/ui/ArticleViewer$Sheet;->animateBackProgressTo(F)Landroid/animation/ValueAnimator;

    move-result-object v2

    new-array v7, v0, [Landroid/animation/Animator;

    aput-object v2, v7, v1

    .line 1052
    invoke-virtual {v5, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto/16 :goto_5

    .line 1056
    :cond_13
    invoke-static {v8}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$fgetcontainerView(Lorg/telegram/ui/ArticleViewer;)Landroid/widget/FrameLayout;

    move-result-object v8

    .line 1057
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    int-to-float v9, v9

    new-array v10, v0, [F

    aput v9, v10, v1

    invoke-static {v8, v7, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    sget-object v8, Lorg/telegram/ui/ArticleViewer;->ARTICLE_VIEWER_INNER_TRANSLATION_X:Landroid/util/Property;

    .line 1058
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    int-to-float v9, v9

    new-array v10, v0, [F

    aput v9, v10, v1

    invoke-static {p0, v8, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    new-array v2, v2, [Landroid/animation/Animator;

    aput-object v7, v2, v1

    aput-object v8, v2, v0

    .line 1056
    invoke-virtual {v5, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_5

    .line 1064
    :cond_14
    iget-boolean v8, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->movingPage:Z

    const/4 v9, 0x0

    if-eqz v8, :cond_15

    .line 1065
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v2, v2, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v2, v2, v1

    new-array v8, v0, [F

    aput v9, v8, v1

    .line 1066
    invoke-static {v2, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    new-array v7, v0, [Landroid/animation/Animator;

    aput-object v2, v7, v1

    .line 1065
    invoke-virtual {v5, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_5

    .line 1069
    :cond_15
    iget-object v8, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v10, v8, Lorg/telegram/ui/ArticleViewer;->sheet:Lorg/telegram/ui/ArticleViewer$Sheet;

    if-eqz v10, :cond_16

    .line 1071
    invoke-virtual {v10, v9}, Lorg/telegram/ui/ArticleViewer$Sheet;->animateBackProgressTo(F)Landroid/animation/ValueAnimator;

    move-result-object v2

    new-array v7, v0, [Landroid/animation/Animator;

    aput-object v2, v7, v1

    .line 1070
    invoke-virtual {v5, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_5

    .line 1074
    :cond_16
    invoke-static {v8}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$fgetcontainerView(Lorg/telegram/ui/ArticleViewer;)Landroid/widget/FrameLayout;

    move-result-object v8

    new-array v10, v0, [F

    aput v9, v10, v1

    .line 1075
    invoke-static {v8, v7, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    sget-object v8, Lorg/telegram/ui/ArticleViewer;->ARTICLE_VIEWER_INNER_TRANSLATION_X:Landroid/util/Property;

    new-array v10, v0, [F

    aput v9, v10, v1

    .line 1076
    invoke-static {p0, v8, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    new-array v2, v2, [Landroid/animation/Animator;

    aput-object v7, v2, v1

    aput-object v8, v2, v0

    .line 1074
    invoke-virtual {v5, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1082
    :goto_5
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    int-to-float p1, p1

    const/high16 v2, 0x43d20000    # 420.0f

    div-float/2addr v2, p1

    mul-float/2addr v2, v6

    float-to-int p1, v2

    const/16 v2, 0xfa

    invoke-static {p1, v2}, Ljava/lang/Math;->max(II)I

    move-result p1

    int-to-long v6, p1

    invoke-virtual {v5, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1083
    sget-object p1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v5, p1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1084
    new-instance p1, Lorg/telegram/ui/ArticleViewer$WindowView$1;

    invoke-direct {p1, p0, v3}, Lorg/telegram/ui/ArticleViewer$WindowView$1;-><init>(Lorg/telegram/ui/ArticleViewer$WindowView;Z)V

    invoke-virtual {v5, p1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1134
    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->start()V

    .line 1135
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {p1, v0}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$fputcloseAnimationInProgress(Lorg/telegram/ui/ArticleViewer;Z)V

    goto :goto_6

    .line 1137
    :cond_17
    iput-boolean v1, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->maybeStartTracking:Z

    .line 1138
    iput-boolean v1, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->startedTracking:Z

    .line 1139
    iput-boolean v1, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->movingPage:Z

    .line 1141
    :goto_6
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->tracker:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_1a

    .line 1142
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    .line 1143
    iput-object v4, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->tracker:Landroid/view/VelocityTracker;

    goto :goto_7

    :cond_18
    if-nez p1, :cond_1a

    .line 1146
    iput-boolean v1, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->maybeStartTracking:Z

    .line 1147
    iput-boolean v1, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->startedTracking:Z

    .line 1148
    iput-boolean v1, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->movingPage:Z

    .line 1149
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->tracker:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_19

    .line 1150
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    .line 1151
    iput-object v4, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->tracker:Landroid/view/VelocityTracker;

    .line 1153
    :cond_19
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object p1, p1, Lorg/telegram/ui/ArticleViewer;->textSelectionHelper:Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;

    if-eqz p1, :cond_1a

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/TextSelectionHelper;->isInSelectionMode()Z

    move-result p1

    if-nez p1, :cond_1a

    .line 1154
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object p1, p1, Lorg/telegram/ui/ArticleViewer;->textSelectionHelper:Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/TextSelectionHelper;->clear()V

    .line 1157
    :cond_1a
    :goto_7
    iget-boolean p1, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->startedTracking:Z

    if-eqz p1, :cond_1b

    iget-boolean p1, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->lastWebviewAllowedScroll:Z

    if-eqz p1, :cond_1b

    return v0

    :cond_1b
    return v1
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 905
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 906
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$fputattachedToWindow(Lorg/telegram/ui/ArticleViewer;Z)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 911
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 912
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$fputattachedToWindow(Lorg/telegram/ui/ArticleViewer;Z)V

    .line 913
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->videoPlayer:Lorg/telegram/messenger/video/VideoPlayerHolderBase;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 914
    invoke-virtual {v0, v1}, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->release(Ljava/lang/Runnable;)Z

    .line 915
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    iput-object v1, v0, Lorg/telegram/ui/ArticleViewer;->videoPlayer:Lorg/telegram/messenger/video/VideoPlayerHolderBase;

    .line 917
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    iput-object v1, v0, Lorg/telegram/ui/ArticleViewer;->currentPlayer:Lorg/telegram/ui/ArticleViewer$BlockVideoCell;

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 14

    .line 1179
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->sheet:Lorg/telegram/ui/ArticleViewer$Sheet;

    if-nez v0, :cond_3

    .line 1180
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 1181
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 1182
    iget v3, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->innerTranslationX:F

    int-to-float v7, v0

    int-to-float v8, v1

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v2}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$fgetbackgroundPaint(Lorg/telegram/ui/ArticleViewer;)Landroid/graphics/Paint;

    move-result-object v2

    const/4 v4, 0x0

    move v5, v7

    move v6, v8

    move-object v7, v2

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    move-object v4, v2

    move v7, v5

    move v12, v6

    .line 1183
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$fgetlastInsets(Lorg/telegram/ui/ArticleViewer;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 1184
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$fgetlastInsets(Lorg/telegram/ui/ArticleViewer;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowInsets;

    .line 1185
    iget v5, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->innerTranslationX:F

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v2

    int-to-float v8, v2

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v2}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$fgetstatusBarPaint(Lorg/telegram/ui/ArticleViewer;)Landroid/graphics/Paint;

    move-result-object v9

    const/4 v6, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 1186
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v2}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$fgethasCutout(Lorg/telegram/ui/ArticleViewer;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1187
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v2

    if-eqz v2, :cond_0

    int-to-float v11, v2

    .line 1189
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v2}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$fgetstatusBarPaint(Lorg/telegram/ui/ArticleViewer;)Landroid/graphics/Paint;

    move-result-object v13

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v8, v4

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_0
    move v8, v12

    .line 1191
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v2

    if-eqz v2, :cond_2

    sub-int/2addr v0, v2

    int-to-float v5, v0

    .line 1193
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$fgetstatusBarPaint(Lorg/telegram/ui/ArticleViewer;)Landroid/graphics/Paint;

    move-result-object v9

    const/4 v6, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_1
    move v8, v12

    .line 1196
    :cond_2
    :goto_0
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getStableInsetBottom()I

    move-result p1

    sub-int/2addr v1, p1

    int-to-float v6, v1

    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$fgetnavigationBarPaint(Lorg/telegram/ui/ArticleViewer;)Landroid/graphics/Paint;

    move-result-object v9

    const/4 v5, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_3
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 928
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$fgetcollapsed(Lorg/telegram/ui/ArticleViewer;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ArticleViewer$WindowView;->handleTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method protected onLayout(ZIIII)V
    .locals 3

    sub-int/2addr p4, p2

    .line 867
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$fgetanchorsOffsetMeasuredWidth(Lorg/telegram/ui/ArticleViewer;)I

    move-result p1

    const/4 p2, 0x0

    if-eq p1, p4, :cond_2

    move p1, p2

    .line 868
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v1, v0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    array-length v2, v1

    if-ge p1, v2, :cond_1

    .line 869
    aget-object v0, v1, p1

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer$PageLayout;->adapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->-$$Nest$fgetanchorsOffset(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    const/4 v2, -0x1

    .line 870
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 873
    :cond_1
    invoke-static {v0, p4}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$fputanchorsOffsetMeasuredWidth(Lorg/telegram/ui/ArticleViewer;I)V

    .line 877
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$fgetlastInsets(Lorg/telegram/ui/ArticleViewer;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 878
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$fgetlastInsets(Lorg/telegram/ui/ArticleViewer;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowInsets;

    .line 879
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v0

    .line 881
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v1

    if-eqz v1, :cond_3

    .line 882
    iget p3, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->bWidth:I

    sub-int/2addr p4, p3

    iput p4, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->bX:I

    .line 883
    iput p2, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->bY:I

    goto :goto_2

    .line 884
    :cond_3
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result p4

    if-eqz p4, :cond_4

    .line 885
    iput p2, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->bX:I

    .line 886
    iput p2, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->bY:I

    goto :goto_2

    .line 888
    :cond_4
    iput p2, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->bX:I

    sub-int/2addr p5, p3

    .line 889
    iget p2, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->bHeight:I

    sub-int/2addr p5, p2

    iput p5, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->bY:I

    .line 891
    :goto_2
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result p2

    move p1, p2

    move p2, v0

    goto :goto_3

    :cond_5
    move p1, p2

    .line 895
    :goto_3
    iget-object p3, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {p3}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$fgetcontainerView(Lorg/telegram/ui/ArticleViewer;)Landroid/widget/FrameLayout;

    move-result-object p3

    iget-object p4, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {p4}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$fgetcontainerView(Lorg/telegram/ui/ArticleViewer;)Landroid/widget/FrameLayout;

    move-result-object p4

    invoke-virtual {p4}, Landroid/view/View;->getMeasuredWidth()I

    move-result p4

    add-int/2addr p4, p2

    iget-object p5, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {p5}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$fgetcontainerView(Lorg/telegram/ui/ArticleViewer;)Landroid/widget/FrameLayout;

    move-result-object p5

    invoke-virtual {p5}, Landroid/view/View;->getMeasuredHeight()I

    move-result p5

    add-int/2addr p5, p1

    invoke-virtual {p3, p2, p1, p4, p5}, Landroid/view/View;->layout(IIII)V

    .line 896
    iget-object p3, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {p3}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$fgetfullscreenVideoContainer(Lorg/telegram/ui/ArticleViewer;)Landroid/widget/FrameLayout;

    move-result-object p3

    iget-object p4, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {p4}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$fgetfullscreenVideoContainer(Lorg/telegram/ui/ArticleViewer;)Landroid/widget/FrameLayout;

    move-result-object p4

    invoke-virtual {p4}, Landroid/view/View;->getMeasuredWidth()I

    move-result p4

    add-int/2addr p4, p2

    iget-object p5, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {p5}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$fgetfullscreenVideoContainer(Lorg/telegram/ui/ArticleViewer;)Landroid/widget/FrameLayout;

    move-result-object p5

    invoke-virtual {p5}, Landroid/view/View;->getMeasuredHeight()I

    move-result p5

    add-int/2addr p5, p1

    invoke-virtual {p3, p2, p1, p4, p5}, Landroid/view/View;->layout(IIII)V

    .line 897
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$fgetrunAfterKeyboardClose(Lorg/telegram/ui/ArticleViewer;)Landroid/animation/AnimatorSet;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 898
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$fgetrunAfterKeyboardClose(Lorg/telegram/ui/ArticleViewer;)Landroid/animation/AnimatorSet;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    .line 899
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$fputrunAfterKeyboardClose(Lorg/telegram/ui/ArticleViewer;Landroid/animation/AnimatorSet;)V

    :cond_6
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    .line 795
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 796
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    .line 797
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$fgetlastInsets(Lorg/telegram/ui/ArticleViewer;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 798
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 799
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$fgetlastInsets(Lorg/telegram/ui/ArticleViewer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowInsets;

    .line 800
    sget-boolean v1, Lorg/telegram/messenger/AndroidUtilities;->incorrectDisplaySizeFix:Z

    if-eqz v1, :cond_1

    .line 801
    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    if-le p2, v1, :cond_0

    move p2, v1

    .line 804
    :cond_0
    sget v1, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    add-int/2addr p2, v1

    .line 806
    :cond_1
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v1

    sub-int/2addr p2, v1

    .line 807
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v2

    add-int/2addr v1, v2

    sub-int/2addr p1, v1

    .line 808
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v1

    if-eqz v1, :cond_2

    .line 809
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->bWidth:I

    .line 810
    iput p2, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->bHeight:I

    goto :goto_0

    .line 811
    :cond_2
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v1

    if-eqz v1, :cond_3

    .line 812
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->bWidth:I

    .line 813
    iput p2, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->bHeight:I

    goto :goto_0

    .line 815
    :cond_3
    iput p1, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->bWidth:I

    .line 816
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getStableInsetBottom()I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->bHeight:I

    .line 818
    :goto_0
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v0

    sub-int/2addr p2, v0

    goto :goto_1

    .line 820
    :cond_4
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 824
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v1, v0, Lorg/telegram/ui/ArticleViewer;->sheet:Lorg/telegram/ui/ArticleViewer$Sheet;

    if-nez v1, :cond_6

    .line 825
    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    const/high16 v2, 0x42c80000    # 100.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int/2addr v1, v2

    if-ge p2, v1, :cond_5

    const/4 v1, 0x1

    goto :goto_2

    :cond_5
    const/4 v1, 0x0

    :goto_2
    invoke-static {v0, v1}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$fputkeyboardVisible(Lorg/telegram/ui/ArticleViewer;Z)V

    .line 827
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$fgetcontainerView(Lorg/telegram/ui/ArticleViewer;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {p1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-static {p2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/view/View;->measure(II)V

    .line 828
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$fgetfullscreenVideoContainer(Lorg/telegram/ui/ArticleViewer;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-static {p1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-static {p2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->measure(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 933
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$fgetcollapsed(Lorg/telegram/ui/ArticleViewer;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ArticleViewer$WindowView;->handleTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 922
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ArticleViewer$WindowView;->handleTouchEvent(Landroid/view/MotionEvent;)Z

    .line 923
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->requestDisallowInterceptTouchEvent(Z)V

    return-void
.end method

.method public setAlpha(F)V
    .locals 2
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 1204
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$fgetbackgroundPaint(Lorg/telegram/ui/ArticleViewer;)Landroid/graphics/Paint;

    move-result-object v0

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v1, p1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1205
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$fgetstatusBarPaint(Lorg/telegram/ui/ArticleViewer;)Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1206
    iput p1, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->alpha:F

    .line 1207
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$fgetparentActivity(Lorg/telegram/ui/ArticleViewer;)Landroid/app/Activity;

    move-result-object p1

    instance-of p1, p1, Lorg/telegram/ui/LaunchActivity;

    if-eqz p1, :cond_2

    .line 1208
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$fgetparentActivity(Lorg/telegram/ui/ArticleViewer;)Landroid/app/Activity;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/LaunchActivity;

    iget-object p1, p1, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$fgetisVisible(Lorg/telegram/ui/ArticleViewer;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->alpha:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    iget v0, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->innerTranslationX:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->setAllowDrawContent(Z)V

    .line 1210
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setInnerTranslationX(F)V
    .locals 2
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 938
    iput p1, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->innerTranslationX:F

    .line 939
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$fgetparentActivity(Lorg/telegram/ui/ArticleViewer;)Landroid/app/Activity;

    move-result-object p1

    instance-of p1, p1, Lorg/telegram/ui/LaunchActivity;

    if-eqz p1, :cond_2

    .line 940
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$fgetparentActivity(Lorg/telegram/ui/ArticleViewer;)Landroid/app/Activity;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/LaunchActivity;

    iget-object p1, p1, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$fgetisVisible(Lorg/telegram/ui/ArticleViewer;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->alpha:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    iget v0, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->innerTranslationX:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->setAllowDrawContent(Z)V

    .line 942
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
