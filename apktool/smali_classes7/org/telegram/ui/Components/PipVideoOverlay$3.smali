.class Lorg/telegram/ui/Components/PipVideoOverlay$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/PipVideoOverlay;->showInternal(ZLandroid/app/Activity;Landroid/view/View;Lorg/telegram/ui/Components/PhotoViewerWebView;IIZ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/PipVideoOverlay;


# direct methods
.method public static synthetic $r8$lambda$uwo6lObkGqZXLyQe7VEBZ-5rbyQ(Lorg/telegram/ui/Components/PipVideoOverlay$3;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/PipVideoOverlay$3;->lambda$onScale$0()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateLayout(Lorg/telegram/ui/Components/PipVideoOverlay$3;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/PipVideoOverlay$3;->updateLayout()V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/Components/PipVideoOverlay;)V
    .locals 0

    .line 611
    iput-object p1, p0, Lorg/telegram/ui/Components/PipVideoOverlay$3;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onScale$0()V
    .locals 1

    .line 618
    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay$3;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {v0}, Lorg/telegram/ui/Components/PipVideoOverlay;->-$$Nest$fgetcontentView(Lorg/telegram/ui/Components/PipVideoOverlay;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 619
    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay$3;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {v0}, Lorg/telegram/ui/Components/PipVideoOverlay;->-$$Nest$fgetcontentFrameLayout(Lorg/telegram/ui/Components/PipVideoOverlay;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method private updateLayout()V
    .locals 4

    .line 692
    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay$3;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {v0}, Lorg/telegram/ui/Components/PipVideoOverlay;->-$$Nest$fgetwindowLayoutParams(Lorg/telegram/ui/Components/PipVideoOverlay;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/PipVideoOverlay$3;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {v2}, Lorg/telegram/ui/Components/PipVideoOverlay;->-$$Nest$mgetSuggestedWidth(Lorg/telegram/ui/Components/PipVideoOverlay;)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lorg/telegram/ui/Components/PipVideoOverlay$3;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {v3}, Lorg/telegram/ui/Components/PipVideoOverlay;->-$$Nest$fgetscaleFactor(Lorg/telegram/ui/Components/PipVideoOverlay;)F

    move-result v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-static {v0, v2}, Lorg/telegram/ui/Components/PipVideoOverlay;->-$$Nest$fputpipWidth(Lorg/telegram/ui/Components/PipVideoOverlay;I)V

    .line 693
    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay$3;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {v0}, Lorg/telegram/ui/Components/PipVideoOverlay;->-$$Nest$fgetwindowLayoutParams(Lorg/telegram/ui/Components/PipVideoOverlay;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/PipVideoOverlay$3;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {v2}, Lorg/telegram/ui/Components/PipVideoOverlay;->-$$Nest$mgetSuggestedHeight(Lorg/telegram/ui/Components/PipVideoOverlay;)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lorg/telegram/ui/Components/PipVideoOverlay$3;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {v3}, Lorg/telegram/ui/Components/PipVideoOverlay;->-$$Nest$fgetscaleFactor(Lorg/telegram/ui/Components/PipVideoOverlay;)F

    move-result v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-static {v0, v2}, Lorg/telegram/ui/Components/PipVideoOverlay;->-$$Nest$fputpipHeight(Lorg/telegram/ui/Components/PipVideoOverlay;I)V

    .line 695
    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay$3;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {v0}, Lorg/telegram/ui/Components/PipVideoOverlay;->-$$Nest$fgetwindowManager(Lorg/telegram/ui/Components/PipVideoOverlay;)Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/PipVideoOverlay$3;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {v1}, Lorg/telegram/ui/Components/PipVideoOverlay;->-$$Nest$fgetcontentView(Lorg/telegram/ui/Components/PipVideoOverlay;)Landroid/view/ViewGroup;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/PipVideoOverlay$3;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {v2}, Lorg/telegram/ui/Components/PipVideoOverlay;->-$$Nest$fgetwindowLayoutParams(Lorg/telegram/ui/Components/PipVideoOverlay;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->updateViewLayout(Landroid/view/WindowManager;Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 5

    .line 614
    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay$3;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {v0}, Lorg/telegram/ui/Components/PipVideoOverlay;->-$$Nest$fgetscaleFactor(Lorg/telegram/ui/Components/PipVideoOverlay;)F

    move-result v1

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v2

    mul-float/2addr v1, v2

    iget-object v2, p0, Lorg/telegram/ui/Components/PipVideoOverlay$3;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {v2}, Lorg/telegram/ui/Components/PipVideoOverlay;->-$$Nest$fgetminScaleFactor(Lorg/telegram/ui/Components/PipVideoOverlay;)F

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/Components/PipVideoOverlay$3;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {v3}, Lorg/telegram/ui/Components/PipVideoOverlay;->-$$Nest$fgetmaxScaleFactor(Lorg/telegram/ui/Components/PipVideoOverlay;)F

    move-result v3

    invoke-static {v1, v2, v3}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result v1

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/PipVideoOverlay;->-$$Nest$fputscaleFactor(Lorg/telegram/ui/Components/PipVideoOverlay;F)V

    .line 615
    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay$3;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {v0}, Lorg/telegram/ui/Components/PipVideoOverlay;->-$$Nest$mgetSuggestedWidth(Lorg/telegram/ui/Components/PipVideoOverlay;)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lorg/telegram/ui/Components/PipVideoOverlay$3;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {v2}, Lorg/telegram/ui/Components/PipVideoOverlay;->-$$Nest$fgetscaleFactor(Lorg/telegram/ui/Components/PipVideoOverlay;)F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/PipVideoOverlay;->-$$Nest$fputpipWidth(Lorg/telegram/ui/Components/PipVideoOverlay;I)V

    .line 616
    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay$3;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {v0}, Lorg/telegram/ui/Components/PipVideoOverlay;->-$$Nest$mgetSuggestedHeight(Lorg/telegram/ui/Components/PipVideoOverlay;)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lorg/telegram/ui/Components/PipVideoOverlay$3;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {v2}, Lorg/telegram/ui/Components/PipVideoOverlay;->-$$Nest$fgetscaleFactor(Lorg/telegram/ui/Components/PipVideoOverlay;)F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/PipVideoOverlay;->-$$Nest$fputpipHeight(Lorg/telegram/ui/Components/PipVideoOverlay;I)V

    .line 617
    new-instance v0, Lorg/telegram/ui/Components/PipVideoOverlay$3$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/PipVideoOverlay$3$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/PipVideoOverlay$3;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 622
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v0

    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v2, v1

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    cmpl-float v0, v0, v2

    const/high16 v2, 0x41800000    # 16.0f

    if-ltz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay$3;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {v0}, Lorg/telegram/ui/Components/PipVideoOverlay;->-$$Nest$fgetpipWidth(Lorg/telegram/ui/Components/PipVideoOverlay;)I

    move-result v0

    sub-int/2addr v1, v0

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    sub-int/2addr v1, v0

    int-to-float v0, v1

    goto :goto_0

    :cond_0
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    .line 623
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/PipVideoOverlay$3;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {v1}, Lorg/telegram/ui/Components/PipVideoOverlay;->-$$Nest$fgetpipXSpring(Lorg/telegram/ui/Components/PipVideoOverlay;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->isRunning()Z

    move-result v1

    if-nez v1, :cond_1

    .line 624
    iget-object v1, p0, Lorg/telegram/ui/Components/PipVideoOverlay$3;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {v1}, Lorg/telegram/ui/Components/PipVideoOverlay;->-$$Nest$fgetpipXSpring(Lorg/telegram/ui/Components/PipVideoOverlay;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v1

    iget-object v4, p0, Lorg/telegram/ui/Components/PipVideoOverlay$3;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {v4}, Lorg/telegram/ui/Components/PipVideoOverlay;->-$$Nest$fgetpipX(Lorg/telegram/ui/Components/PipVideoOverlay;)F

    move-result v4

    invoke-virtual {v1, v4}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setStartValue(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    move-result-object v1

    check-cast v1, Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 625
    invoke-virtual {v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v1

    .line 626
    invoke-virtual {v1, v0}, Landroidx/dynamicanimation/animation/SpringForce;->setFinalPosition(F)Landroidx/dynamicanimation/animation/SpringForce;

    goto :goto_1

    .line 628
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Components/PipVideoOverlay$3;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {v1}, Lorg/telegram/ui/Components/PipVideoOverlay;->-$$Nest$fgetpipXSpring(Lorg/telegram/ui/Components/PipVideoOverlay;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/dynamicanimation/animation/SpringForce;->setFinalPosition(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 630
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay$3;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {v0}, Lorg/telegram/ui/Components/PipVideoOverlay;->-$$Nest$fgetpipXSpring(Lorg/telegram/ui/Components/PipVideoOverlay;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    .line 632
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result p1

    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay$3;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {v0}, Lorg/telegram/ui/Components/PipVideoOverlay;->-$$Nest$fgetpipHeight(Lorg/telegram/ui/Components/PipVideoOverlay;)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v3

    sub-float/2addr p1, v0

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    iget-object v3, p0, Lorg/telegram/ui/Components/PipVideoOverlay$3;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {v3}, Lorg/telegram/ui/Components/PipVideoOverlay;->-$$Nest$fgetpipHeight(Lorg/telegram/ui/Components/PipVideoOverlay;)I

    move-result v3

    sub-int/2addr v1, v3

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-static {p1, v0, v1}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result p1

    .line 633
    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay$3;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {v0}, Lorg/telegram/ui/Components/PipVideoOverlay;->-$$Nest$fgetpipYSpring(Lorg/telegram/ui/Components/PipVideoOverlay;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->isRunning()Z

    move-result v0

    if-nez v0, :cond_2

    .line 634
    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay$3;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {v0}, Lorg/telegram/ui/Components/PipVideoOverlay;->-$$Nest$fgetpipYSpring(Lorg/telegram/ui/Components/PipVideoOverlay;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/PipVideoOverlay$3;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {v1}, Lorg/telegram/ui/Components/PipVideoOverlay;->-$$Nest$fgetpipY(Lorg/telegram/ui/Components/PipVideoOverlay;)F

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setStartValue(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    move-result-object v0

    check-cast v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 635
    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    .line 636
    invoke-virtual {v0, p1}, Landroidx/dynamicanimation/animation/SpringForce;->setFinalPosition(F)Landroidx/dynamicanimation/animation/SpringForce;

    goto :goto_2

    .line 638
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay$3;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {v0}, Lorg/telegram/ui/Components/PipVideoOverlay;->-$$Nest$fgetpipYSpring(Lorg/telegram/ui/Components/PipVideoOverlay;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/dynamicanimation/animation/SpringForce;->setFinalPosition(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 640
    :goto_2
    iget-object p1, p0, Lorg/telegram/ui/Components/PipVideoOverlay$3;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {p1}, Lorg/telegram/ui/Components/PipVideoOverlay;->-$$Nest$fgetpipYSpring(Lorg/telegram/ui/Components/PipVideoOverlay;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    const/4 p1, 0x1

    return p1
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 3

    .line 647
    iget-object p1, p0, Lorg/telegram/ui/Components/PipVideoOverlay$3;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {p1}, Lorg/telegram/ui/Components/PipVideoOverlay;->-$$Nest$fgetisScrolling(Lorg/telegram/ui/Components/PipVideoOverlay;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 648
    iget-object p1, p0, Lorg/telegram/ui/Components/PipVideoOverlay$3;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/PipVideoOverlay;->-$$Nest$fputisScrolling(Lorg/telegram/ui/Components/PipVideoOverlay;Z)V

    .line 649
    iget-object p1, p0, Lorg/telegram/ui/Components/PipVideoOverlay$3;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/PipVideoOverlay;->-$$Nest$fputcanLongClick(Lorg/telegram/ui/Components/PipVideoOverlay;Z)V

    .line 650
    iget-object p1, p0, Lorg/telegram/ui/Components/PipVideoOverlay$3;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {p1}, Lorg/telegram/ui/Components/PipVideoOverlay;->-$$Nest$mcancelRewind(Lorg/telegram/ui/Components/PipVideoOverlay;)V

    .line 651
    iget-object p1, p0, Lorg/telegram/ui/Components/PipVideoOverlay$3;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {p1}, Lorg/telegram/ui/Components/PipVideoOverlay;->-$$Nest$fgetlongClickCallback(Lorg/telegram/ui/Components/PipVideoOverlay;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 653
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/PipVideoOverlay$3;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/PipVideoOverlay;->-$$Nest$fputisScrollDisallowed(Lorg/telegram/ui/Components/PipVideoOverlay;Z)V

    .line 654
    iget-object p1, p0, Lorg/telegram/ui/Components/PipVideoOverlay$3;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {p1}, Lorg/telegram/ui/Components/PipVideoOverlay;->-$$Nest$fgetwindowLayoutParams(Lorg/telegram/ui/Components/PipVideoOverlay;)Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iget-object v1, p0, Lorg/telegram/ui/Components/PipVideoOverlay$3;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {v1}, Lorg/telegram/ui/Components/PipVideoOverlay;->-$$Nest$mgetSuggestedWidth(Lorg/telegram/ui/Components/PipVideoOverlay;)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lorg/telegram/ui/Components/PipVideoOverlay$3;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {v2}, Lorg/telegram/ui/Components/PipVideoOverlay;->-$$Nest$fgetmaxScaleFactor(Lorg/telegram/ui/Components/PipVideoOverlay;)F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 655
    iget-object p1, p0, Lorg/telegram/ui/Components/PipVideoOverlay$3;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {p1}, Lorg/telegram/ui/Components/PipVideoOverlay;->-$$Nest$fgetwindowLayoutParams(Lorg/telegram/ui/Components/PipVideoOverlay;)Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iget-object v1, p0, Lorg/telegram/ui/Components/PipVideoOverlay$3;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {v1}, Lorg/telegram/ui/Components/PipVideoOverlay;->-$$Nest$mgetSuggestedHeight(Lorg/telegram/ui/Components/PipVideoOverlay;)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lorg/telegram/ui/Components/PipVideoOverlay$3;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {v2}, Lorg/telegram/ui/Components/PipVideoOverlay;->-$$Nest$fgetmaxScaleFactor(Lorg/telegram/ui/Components/PipVideoOverlay;)F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 656
    iget-object p1, p0, Lorg/telegram/ui/Components/PipVideoOverlay$3;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {p1}, Lorg/telegram/ui/Components/PipVideoOverlay;->-$$Nest$fgetwindowManager(Lorg/telegram/ui/Components/PipVideoOverlay;)Landroid/view/WindowManager;

    move-result-object p1

    iget-object v1, p0, Lorg/telegram/ui/Components/PipVideoOverlay$3;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {v1}, Lorg/telegram/ui/Components/PipVideoOverlay;->-$$Nest$fgetcontentView(Lorg/telegram/ui/Components/PipVideoOverlay;)Landroid/view/ViewGroup;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/PipVideoOverlay$3;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {v2}, Lorg/telegram/ui/Components/PipVideoOverlay;->-$$Nest$fgetwindowLayoutParams(Lorg/telegram/ui/Components/PipVideoOverlay;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-static {p1, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->updateViewLayout(Landroid/view/WindowManager;Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return v0
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 2

    .line 663
    iget-object p1, p0, Lorg/telegram/ui/Components/PipVideoOverlay$3;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {p1}, Lorg/telegram/ui/Components/PipVideoOverlay;->-$$Nest$fgetpipXSpring(Lorg/telegram/ui/Components/PipVideoOverlay;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->isRunning()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Components/PipVideoOverlay$3;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {p1}, Lorg/telegram/ui/Components/PipVideoOverlay;->-$$Nest$fgetpipYSpring(Lorg/telegram/ui/Components/PipVideoOverlay;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 688
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/Components/PipVideoOverlay$3;->updateLayout()V

    return-void

    .line 664
    :cond_1
    :goto_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 665
    new-instance v0, Lorg/telegram/ui/Components/PipVideoOverlay$3$1;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Components/PipVideoOverlay$3$1;-><init>(Lorg/telegram/ui/Components/PipVideoOverlay$3;Ljava/util/List;)V

    .line 676
    iget-object v1, p0, Lorg/telegram/ui/Components/PipVideoOverlay$3;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {v1}, Lorg/telegram/ui/Components/PipVideoOverlay;->-$$Nest$fgetpipXSpring(Lorg/telegram/ui/Components/PipVideoOverlay;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->isRunning()Z

    move-result v1

    if-nez v1, :cond_2

    .line 677
    iget-object v1, p0, Lorg/telegram/ui/Components/PipVideoOverlay$3;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {v1}, Lorg/telegram/ui/Components/PipVideoOverlay;->-$$Nest$fgetpipXSpring(Lorg/telegram/ui/Components/PipVideoOverlay;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 679
    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/Components/PipVideoOverlay$3;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {v1}, Lorg/telegram/ui/Components/PipVideoOverlay;->-$$Nest$fgetpipXSpring(Lorg/telegram/ui/Components/PipVideoOverlay;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 681
    :goto_1
    iget-object v1, p0, Lorg/telegram/ui/Components/PipVideoOverlay$3;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {v1}, Lorg/telegram/ui/Components/PipVideoOverlay;->-$$Nest$fgetpipYSpring(Lorg/telegram/ui/Components/PipVideoOverlay;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->isRunning()Z

    move-result v1

    if-nez v1, :cond_3

    .line 682
    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay$3;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {v0}, Lorg/telegram/ui/Components/PipVideoOverlay;->-$$Nest$fgetpipYSpring(Lorg/telegram/ui/Components/PipVideoOverlay;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 684
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Components/PipVideoOverlay$3;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {p1}, Lorg/telegram/ui/Components/PipVideoOverlay;->-$$Nest$fgetpipYSpring(Lorg/telegram/ui/Components/PipVideoOverlay;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    return-void
.end method
