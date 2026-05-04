.class Lorg/telegram/ui/Components/PipVideoOverlay$5;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/PipVideoOverlay;->showInternal(ZLandroid/app/Activity;Landroid/view/View;Lorg/telegram/ui/Components/PhotoViewerWebView;IIZ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private path:Landroid/graphics/Path;

.field final synthetic this$0:Lorg/telegram/ui/Components/PipVideoOverlay;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/PipVideoOverlay;Landroid/content/Context;)V
    .locals 0

    .line 889
    iput-object p1, p0, Lorg/telegram/ui/Components/PipVideoOverlay$5;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 890
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/PipVideoOverlay$5;->path:Landroid/graphics/Path;

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    .line 894
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    const/4 v4, 0x5

    if-ne v0, v4, :cond_2

    .line 896
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v4

    if-ne v4, v3, :cond_1

    .line 897
    iget-object v4, p0, Lorg/telegram/ui/Components/PipVideoOverlay$5;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {v4, v3}, Lorg/telegram/ui/Components/PipVideoOverlay;->-$$Nest$fputcanLongClick(Lorg/telegram/ui/Components/PipVideoOverlay;Z)V

    .line 898
    iget-object v4, p0, Lorg/telegram/ui/Components/PipVideoOverlay$5;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    new-array v7, v1, [F

    aput v5, v7, v2

    aput v6, v7, v3

    invoke-static {v4, v7}, Lorg/telegram/ui/Components/PipVideoOverlay;->-$$Nest$fputlongClickStartPoint(Lorg/telegram/ui/Components/PipVideoOverlay;[F)V

    .line 899
    iget-object v4, p0, Lorg/telegram/ui/Components/PipVideoOverlay$5;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {v4}, Lorg/telegram/ui/Components/PipVideoOverlay;->-$$Nest$fgetlongClickCallback(Lorg/telegram/ui/Components/PipVideoOverlay;)Ljava/lang/Runnable;

    move-result-object v4

    const-wide/16 v5, 0x1f4

    invoke-static {v4, v5, v6}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto :goto_0

    .line 901
    :cond_1
    iget-object v4, p0, Lorg/telegram/ui/Components/PipVideoOverlay$5;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {v4, v2}, Lorg/telegram/ui/Components/PipVideoOverlay;->-$$Nest$fputcanLongClick(Lorg/telegram/ui/Components/PipVideoOverlay;Z)V

    .line 902
    iget-object v4, p0, Lorg/telegram/ui/Components/PipVideoOverlay$5;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {v4}, Lorg/telegram/ui/Components/PipVideoOverlay;->-$$Nest$mcancelRewind(Lorg/telegram/ui/Components/PipVideoOverlay;)V

    .line 903
    iget-object v4, p0, Lorg/telegram/ui/Components/PipVideoOverlay$5;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {v4}, Lorg/telegram/ui/Components/PipVideoOverlay;->-$$Nest$fgetlongClickCallback(Lorg/telegram/ui/Components/PipVideoOverlay;)Ljava/lang/Runnable;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    :cond_2
    :goto_0
    const/4 v4, 0x6

    const/4 v5, 0x3

    if-eq v0, v3, :cond_4

    if-eq v0, v5, :cond_4

    if-ne v0, v4, :cond_3

    goto :goto_1

    :cond_3
    if-ne v0, v1, :cond_5

    .line 911
    iget-object v1, p0, Lorg/telegram/ui/Components/PipVideoOverlay$5;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {v1}, Lorg/telegram/ui/Components/PipVideoOverlay;->-$$Nest$fgetphotoViewer(Lorg/telegram/ui/Components/PipVideoOverlay;)Lorg/telegram/ui/PhotoViewer;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lorg/telegram/ui/Components/PipVideoOverlay$5;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {v1}, Lorg/telegram/ui/Components/PipVideoOverlay;->-$$Nest$fgetphotoViewer(Lorg/telegram/ui/Components/PipVideoOverlay;)Lorg/telegram/ui/PhotoViewer;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/PhotoViewer;->getVideoPlayerRewinder()Lorg/telegram/messenger/video/VideoPlayerRewinder;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lorg/telegram/ui/Components/PipVideoOverlay$5;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {v1}, Lorg/telegram/ui/Components/PipVideoOverlay;->-$$Nest$fgetphotoViewer(Lorg/telegram/ui/Components/PipVideoOverlay;)Lorg/telegram/ui/PhotoViewer;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/PhotoViewer;->getVideoPlayerRewinder()Lorg/telegram/messenger/video/VideoPlayerRewinder;

    move-result-object v1

    iget-boolean v1, v1, Lorg/telegram/messenger/video/VideoPlayerRewinder;->rewinding:Z

    if-eqz v1, :cond_5

    .line 912
    iget-object v1, p0, Lorg/telegram/ui/Components/PipVideoOverlay$5;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {v1}, Lorg/telegram/ui/Components/PipVideoOverlay;->-$$Nest$fgetphotoViewer(Lorg/telegram/ui/Components/PipVideoOverlay;)Lorg/telegram/ui/PhotoViewer;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/PhotoViewer;->getVideoPlayerRewinder()Lorg/telegram/messenger/video/VideoPlayerRewinder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    invoke-virtual {v1, v6}, Lorg/telegram/messenger/video/VideoPlayerRewinder;->setX(F)V

    goto :goto_2

    .line 908
    :cond_4
    :goto_1
    iget-object v1, p0, Lorg/telegram/ui/Components/PipVideoOverlay$5;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/PipVideoOverlay;->-$$Nest$fputcanLongClick(Lorg/telegram/ui/Components/PipVideoOverlay;Z)V

    .line 909
    iget-object v1, p0, Lorg/telegram/ui/Components/PipVideoOverlay$5;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {v1}, Lorg/telegram/ui/Components/PipVideoOverlay;->-$$Nest$mcancelRewind(Lorg/telegram/ui/Components/PipVideoOverlay;)V

    .line 910
    iget-object v1, p0, Lorg/telegram/ui/Components/PipVideoOverlay$5;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {v1}, Lorg/telegram/ui/Components/PipVideoOverlay;->-$$Nest$fgetlongClickCallback(Lorg/telegram/ui/Components/PipVideoOverlay;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 915
    :cond_5
    :goto_2
    iget-object v1, p0, Lorg/telegram/ui/Components/PipVideoOverlay$5;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {v1}, Lorg/telegram/ui/Components/PipVideoOverlay;->-$$Nest$fgetconsumingChild(Lorg/telegram/ui/Components/PipVideoOverlay;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 916
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    .line 917
    iget-object v6, p0, Lorg/telegram/ui/Components/PipVideoOverlay$5;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {v6}, Lorg/telegram/ui/Components/PipVideoOverlay;->-$$Nest$fgetconsumingChild(Lorg/telegram/ui/Components/PipVideoOverlay;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getX()F

    move-result v6

    iget-object v7, p0, Lorg/telegram/ui/Components/PipVideoOverlay$5;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {v7}, Lorg/telegram/ui/Components/PipVideoOverlay;->-$$Nest$fgetconsumingChild(Lorg/telegram/ui/Components/PipVideoOverlay;)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getY()F

    move-result v7

    invoke-virtual {v1, v6, v7}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 918
    iget-object v6, p0, Lorg/telegram/ui/Components/PipVideoOverlay$5;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {v6}, Lorg/telegram/ui/Components/PipVideoOverlay;->-$$Nest$fgetconsumingChild(Lorg/telegram/ui/Components/PipVideoOverlay;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v6

    .line 919
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    if-eq v0, v3, :cond_6

    if-eq v0, v5, :cond_6

    if-ne v0, v4, :cond_7

    .line 922
    :cond_6
    iget-object v1, p0, Lorg/telegram/ui/Components/PipVideoOverlay$5;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    const/4 v7, 0x0

    invoke-static {v1, v7}, Lorg/telegram/ui/Components/PipVideoOverlay;->-$$Nest$fputconsumingChild(Lorg/telegram/ui/Components/PipVideoOverlay;Landroid/view/View;)V

    :cond_7
    if-eqz v6, :cond_8

    return v3

    .line 929
    :cond_8
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    .line 930
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    sub-float/2addr v6, v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    sub-float/2addr v7, v8

    invoke-virtual {v1, v6, v7}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 931
    iget-object v6, p0, Lorg/telegram/ui/Components/PipVideoOverlay$5;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {v6}, Lorg/telegram/ui/Components/PipVideoOverlay;->-$$Nest$fgetscaleGestureDetector(Lorg/telegram/ui/Components/PipVideoOverlay;)Landroid/view/ScaleGestureDetector;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v6

    .line 932
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    .line 933
    iget-object v1, p0, Lorg/telegram/ui/Components/PipVideoOverlay$5;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {v1}, Lorg/telegram/ui/Components/PipVideoOverlay;->-$$Nest$fgetscaleGestureDetector(Lorg/telegram/ui/Components/PipVideoOverlay;)Landroid/view/ScaleGestureDetector;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v1

    if-nez v1, :cond_9

    iget-object v1, p0, Lorg/telegram/ui/Components/PipVideoOverlay$5;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {v1}, Lorg/telegram/ui/Components/PipVideoOverlay;->-$$Nest$fgetgestureDetector(Lorg/telegram/ui/Components/PipVideoOverlay;)Lorg/telegram/ui/Components/GestureDetectorFixDoubleTap;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/telegram/ui/Components/GestureDetectorFixDoubleTap;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_9

    move p1, v3

    goto :goto_3

    :cond_9
    move p1, v2

    :goto_3
    if-eq v0, v3, :cond_a

    if-eq v0, v5, :cond_a

    if-ne v0, v4, :cond_e

    .line 935
    :cond_a
    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay$5;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {v0, v2}, Lorg/telegram/ui/Components/PipVideoOverlay;->-$$Nest$fputisScrolling(Lorg/telegram/ui/Components/PipVideoOverlay;Z)V

    .line 936
    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay$5;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {v0, v2}, Lorg/telegram/ui/Components/PipVideoOverlay;->-$$Nest$fputisScrollDisallowed(Lorg/telegram/ui/Components/PipVideoOverlay;Z)V

    .line 938
    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay$5;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {v0}, Lorg/telegram/ui/Components/PipVideoOverlay;->-$$Nest$fgetonSideToDismiss(Lorg/telegram/ui/Components/PipVideoOverlay;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 939
    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay$5;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {v0, v2}, Lorg/telegram/ui/Components/PipVideoOverlay;->-$$Nest$fputonSideToDismiss(Lorg/telegram/ui/Components/PipVideoOverlay;Z)V

    .line 941
    invoke-static {}, Lorg/telegram/ui/Components/PipVideoOverlay;->dismissAndDestroy()V

    goto/16 :goto_5

    .line 943
    :cond_b
    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay$5;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {v0}, Lorg/telegram/ui/Components/PipVideoOverlay;->-$$Nest$fgetpipXSpring(Lorg/telegram/ui/Components/PipVideoOverlay;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->isRunning()Z

    move-result v0

    const/high16 v1, 0x41800000    # 16.0f

    if-nez v0, :cond_d

    .line 944
    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay$5;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {v0}, Lorg/telegram/ui/Components/PipVideoOverlay;->-$$Nest$fgetpipXSpring(Lorg/telegram/ui/Components/PipVideoOverlay;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v0

    iget-object v4, p0, Lorg/telegram/ui/Components/PipVideoOverlay$5;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {v4}, Lorg/telegram/ui/Components/PipVideoOverlay;->-$$Nest$fgetpipX(Lorg/telegram/ui/Components/PipVideoOverlay;)F

    move-result v4

    invoke-virtual {v0, v4}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setStartValue(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    move-result-object v0

    check-cast v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 945
    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    .line 946
    iget-object v4, p0, Lorg/telegram/ui/Components/PipVideoOverlay$5;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {v4}, Lorg/telegram/ui/Components/PipVideoOverlay;->-$$Nest$fgetpipX(Lorg/telegram/ui/Components/PipVideoOverlay;)F

    move-result v4

    iget-object v5, p0, Lorg/telegram/ui/Components/PipVideoOverlay$5;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {v5}, Lorg/telegram/ui/Components/PipVideoOverlay;->-$$Nest$fgetpipWidth(Lorg/telegram/ui/Components/PipVideoOverlay;)I

    move-result v5

    int-to-float v5, v5

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v5, v7

    add-float/2addr v4, v5

    sget-object v5, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    int-to-float v8, v5

    div-float/2addr v8, v7

    cmpl-float v4, v4, v8

    if-ltz v4, :cond_c

    iget-object v4, p0, Lorg/telegram/ui/Components/PipVideoOverlay$5;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {v4}, Lorg/telegram/ui/Components/PipVideoOverlay;->-$$Nest$fgetpipWidth(Lorg/telegram/ui/Components/PipVideoOverlay;)I

    move-result v4

    sub-int/2addr v5, v4

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int/2addr v5, v4

    int-to-float v4, v5

    goto :goto_4

    :cond_c
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    :goto_4
    invoke-virtual {v0, v4}, Landroidx/dynamicanimation/animation/SpringForce;->setFinalPosition(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 947
    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay$5;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {v0}, Lorg/telegram/ui/Components/PipVideoOverlay;->-$$Nest$fgetpipXSpring(Lorg/telegram/ui/Components/PipVideoOverlay;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    .line 950
    :cond_d
    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay$5;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {v0}, Lorg/telegram/ui/Components/PipVideoOverlay;->-$$Nest$fgetpipYSpring(Lorg/telegram/ui/Components/PipVideoOverlay;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->isRunning()Z

    move-result v0

    if-nez v0, :cond_e

    .line 951
    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay$5;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {v0}, Lorg/telegram/ui/Components/PipVideoOverlay;->-$$Nest$fgetpipYSpring(Lorg/telegram/ui/Components/PipVideoOverlay;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v0

    iget-object v4, p0, Lorg/telegram/ui/Components/PipVideoOverlay$5;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {v4}, Lorg/telegram/ui/Components/PipVideoOverlay;->-$$Nest$fgetpipY(Lorg/telegram/ui/Components/PipVideoOverlay;)F

    move-result v4

    invoke-virtual {v0, v4}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setStartValue(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    move-result-object v0

    check-cast v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 952
    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    iget-object v4, p0, Lorg/telegram/ui/Components/PipVideoOverlay$5;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {v4}, Lorg/telegram/ui/Components/PipVideoOverlay;->-$$Nest$fgetpipY(Lorg/telegram/ui/Components/PipVideoOverlay;)F

    move-result v4

    .line 953
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    sget-object v7, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->y:I

    iget-object v8, p0, Lorg/telegram/ui/Components/PipVideoOverlay$5;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {v8}, Lorg/telegram/ui/Components/PipVideoOverlay;->-$$Nest$fgetpipHeight(Lorg/telegram/ui/Components/PipVideoOverlay;)I

    move-result v8

    sub-int/2addr v7, v8

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int/2addr v7, v1

    int-to-float v1, v7

    invoke-static {v4, v5, v1}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setFinalPosition(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 954
    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay$5;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {v0}, Lorg/telegram/ui/Components/PipVideoOverlay;->-$$Nest$fgetpipYSpring(Lorg/telegram/ui/Components/PipVideoOverlay;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    :cond_e
    :goto_5
    if-nez v6, :cond_10

    if-eqz p1, :cond_f

    goto :goto_6

    :cond_f
    return v2

    :cond_10
    :goto_6
    return v3
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 986
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 6

    .line 963
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/telegram/messenger/AndroidUtilities;->checkDisplaySize(Landroid/content/Context;Landroid/content/res/Configuration;)V

    .line 964
    iget-object p1, p0, Lorg/telegram/ui/Components/PipVideoOverlay$5;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/PipVideoOverlay;->-$$Nest$fputpipConfig(Lorg/telegram/ui/Components/PipVideoOverlay;Lorg/telegram/ui/Components/PipVideoOverlay$PipConfig;)V

    .line 965
    iget-object p1, p0, Lorg/telegram/ui/Components/PipVideoOverlay$5;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {p1}, Lorg/telegram/ui/Components/PipVideoOverlay;->-$$Nest$fgetwindowManager(Lorg/telegram/ui/Components/PipVideoOverlay;)Landroid/view/WindowManager;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay$5;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {v0}, Lorg/telegram/ui/Components/PipVideoOverlay;->-$$Nest$fgetcontentView(Lorg/telegram/ui/Components/PipVideoOverlay;)Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/PipVideoOverlay$5;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {v1}, Lorg/telegram/ui/Components/PipVideoOverlay;->-$$Nest$fgetwindowLayoutParams(Lorg/telegram/ui/Components/PipVideoOverlay;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->setPreferredMaxRefreshRate(Landroid/view/WindowManager;Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V

    .line 967
    iget-object p1, p0, Lorg/telegram/ui/Components/PipVideoOverlay$5;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {p1}, Lorg/telegram/ui/Components/PipVideoOverlay;->-$$Nest$fgetpipWidth(Lorg/telegram/ui/Components/PipVideoOverlay;)I

    move-result p1

    int-to-float p1, p1

    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay$5;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {v0}, Lorg/telegram/ui/Components/PipVideoOverlay;->-$$Nest$mgetSuggestedWidth(Lorg/telegram/ui/Components/PipVideoOverlay;)I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lorg/telegram/ui/Components/PipVideoOverlay$5;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {v1}, Lorg/telegram/ui/Components/PipVideoOverlay;->-$$Nest$fgetscaleFactor(Lorg/telegram/ui/Components/PipVideoOverlay;)F

    move-result v1

    mul-float/2addr v0, v1

    cmpl-float p1, p1, v0

    if-nez p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Components/PipVideoOverlay$5;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {p1}, Lorg/telegram/ui/Components/PipVideoOverlay;->-$$Nest$fgetpipHeight(Lorg/telegram/ui/Components/PipVideoOverlay;)I

    move-result p1

    int-to-float p1, p1

    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay$5;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {v0}, Lorg/telegram/ui/Components/PipVideoOverlay;->-$$Nest$mgetSuggestedHeight(Lorg/telegram/ui/Components/PipVideoOverlay;)I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lorg/telegram/ui/Components/PipVideoOverlay$5;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {v1}, Lorg/telegram/ui/Components/PipVideoOverlay;->-$$Nest$fgetscaleFactor(Lorg/telegram/ui/Components/PipVideoOverlay;)F

    move-result v1

    mul-float/2addr v0, v1

    cmpl-float p1, p1, v0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 968
    :cond_1
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Components/PipVideoOverlay$5;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {p1}, Lorg/telegram/ui/Components/PipVideoOverlay;->-$$Nest$fgetwindowLayoutParams(Lorg/telegram/ui/Components/PipVideoOverlay;)Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay$5;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {v0}, Lorg/telegram/ui/Components/PipVideoOverlay;->-$$Nest$mgetSuggestedWidth(Lorg/telegram/ui/Components/PipVideoOverlay;)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lorg/telegram/ui/Components/PipVideoOverlay$5;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {v2}, Lorg/telegram/ui/Components/PipVideoOverlay;->-$$Nest$fgetscaleFactor(Lorg/telegram/ui/Components/PipVideoOverlay;)F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/PipVideoOverlay;->-$$Nest$fputpipWidth(Lorg/telegram/ui/Components/PipVideoOverlay;I)V

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 969
    iget-object p1, p0, Lorg/telegram/ui/Components/PipVideoOverlay$5;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {p1}, Lorg/telegram/ui/Components/PipVideoOverlay;->-$$Nest$fgetwindowLayoutParams(Lorg/telegram/ui/Components/PipVideoOverlay;)Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay$5;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {v0}, Lorg/telegram/ui/Components/PipVideoOverlay;->-$$Nest$mgetSuggestedHeight(Lorg/telegram/ui/Components/PipVideoOverlay;)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lorg/telegram/ui/Components/PipVideoOverlay$5;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {v2}, Lorg/telegram/ui/Components/PipVideoOverlay;->-$$Nest$fgetscaleFactor(Lorg/telegram/ui/Components/PipVideoOverlay;)F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/PipVideoOverlay;->-$$Nest$fputpipHeight(Lorg/telegram/ui/Components/PipVideoOverlay;I)V

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 970
    iget-object p1, p0, Lorg/telegram/ui/Components/PipVideoOverlay$5;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {p1}, Lorg/telegram/ui/Components/PipVideoOverlay;->-$$Nest$fgetwindowManager(Lorg/telegram/ui/Components/PipVideoOverlay;)Landroid/view/WindowManager;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay$5;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {v0}, Lorg/telegram/ui/Components/PipVideoOverlay;->-$$Nest$fgetcontentView(Lorg/telegram/ui/Components/PipVideoOverlay;)Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/PipVideoOverlay$5;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {v1}, Lorg/telegram/ui/Components/PipVideoOverlay;->-$$Nest$fgetwindowLayoutParams(Lorg/telegram/ui/Components/PipVideoOverlay;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->updateViewLayout(Landroid/view/WindowManager;Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 972
    iget-object p1, p0, Lorg/telegram/ui/Components/PipVideoOverlay$5;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {p1}, Lorg/telegram/ui/Components/PipVideoOverlay;->-$$Nest$fgetpipXSpring(Lorg/telegram/ui/Components/PipVideoOverlay;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay$5;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {v0}, Lorg/telegram/ui/Components/PipVideoOverlay;->-$$Nest$fgetpipX(Lorg/telegram/ui/Components/PipVideoOverlay;)F

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setStartValue(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    move-result-object p1

    check-cast p1, Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 973
    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p1

    .line 974
    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay$5;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {v0}, Lorg/telegram/ui/Components/PipVideoOverlay;->-$$Nest$fgetpipX(Lorg/telegram/ui/Components/PipVideoOverlay;)F

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/PipVideoOverlay$5;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {v1}, Lorg/telegram/ui/Components/PipVideoOverlay;->-$$Nest$mgetSuggestedWidth(Lorg/telegram/ui/Components/PipVideoOverlay;)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lorg/telegram/ui/Components/PipVideoOverlay$5;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {v2}, Lorg/telegram/ui/Components/PipVideoOverlay;->-$$Nest$fgetscaleFactor(Lorg/telegram/ui/Components/PipVideoOverlay;)F

    move-result v2

    mul-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v3, v1

    div-float/2addr v3, v2

    cmpl-float v0, v0, v3

    const/high16 v2, 0x41800000    # 16.0f

    if-ltz v0, :cond_2

    int-to-float v0, v1

    iget-object v1, p0, Lorg/telegram/ui/Components/PipVideoOverlay$5;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {v1}, Lorg/telegram/ui/Components/PipVideoOverlay;->-$$Nest$mgetSuggestedWidth(Lorg/telegram/ui/Components/PipVideoOverlay;)I

    move-result v1

    int-to-float v1, v1

    iget-object v3, p0, Lorg/telegram/ui/Components/PipVideoOverlay$5;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {v3}, Lorg/telegram/ui/Components/PipVideoOverlay;->-$$Nest$fgetscaleFactor(Lorg/telegram/ui/Components/PipVideoOverlay;)F

    move-result v3

    mul-float/2addr v1, v3

    sub-float/2addr v0, v1

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    goto :goto_1

    :cond_2
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    :goto_1
    invoke-virtual {p1, v0}, Landroidx/dynamicanimation/animation/SpringForce;->setFinalPosition(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 975
    iget-object p1, p0, Lorg/telegram/ui/Components/PipVideoOverlay$5;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {p1}, Lorg/telegram/ui/Components/PipVideoOverlay;->-$$Nest$fgetpipXSpring(Lorg/telegram/ui/Components/PipVideoOverlay;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    .line 977
    iget-object p1, p0, Lorg/telegram/ui/Components/PipVideoOverlay$5;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {p1}, Lorg/telegram/ui/Components/PipVideoOverlay;->-$$Nest$fgetpipYSpring(Lorg/telegram/ui/Components/PipVideoOverlay;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay$5;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {v0}, Lorg/telegram/ui/Components/PipVideoOverlay;->-$$Nest$fgetpipY(Lorg/telegram/ui/Components/PipVideoOverlay;)F

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setStartValue(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    move-result-object p1

    check-cast p1, Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 978
    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay$5;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {v0}, Lorg/telegram/ui/Components/PipVideoOverlay;->-$$Nest$fgetpipY(Lorg/telegram/ui/Components/PipVideoOverlay;)F

    move-result v0

    .line 979
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    sget-object v3, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    iget-object v4, p0, Lorg/telegram/ui/Components/PipVideoOverlay$5;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {v4}, Lorg/telegram/ui/Components/PipVideoOverlay;->-$$Nest$mgetSuggestedHeight(Lorg/telegram/ui/Components/PipVideoOverlay;)I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lorg/telegram/ui/Components/PipVideoOverlay$5;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {v5}, Lorg/telegram/ui/Components/PipVideoOverlay;->-$$Nest$fgetscaleFactor(Lorg/telegram/ui/Components/PipVideoOverlay;)F

    move-result v5

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v3, v2

    invoke-static {v0, v1, v3}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/dynamicanimation/animation/SpringForce;->setFinalPosition(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 980
    iget-object p1, p0, Lorg/telegram/ui/Components/PipVideoOverlay$5;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {p1}, Lorg/telegram/ui/Components/PipVideoOverlay;->-$$Nest$fgetpipYSpring(Lorg/telegram/ui/Components/PipVideoOverlay;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1

    .line 991
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 993
    iget-object p3, p0, Lorg/telegram/ui/Components/PipVideoOverlay$5;->path:Landroid/graphics/Path;

    invoke-virtual {p3}, Landroid/graphics/Path;->rewind()V

    .line 994
    sget-object p3, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    int-to-float p1, p1

    int-to-float p2, p2

    const/4 p4, 0x0

    invoke-virtual {p3, p4, p4, p1, p2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 995
    iget-object p1, p0, Lorg/telegram/ui/Components/PipVideoOverlay$5;->path:Landroid/graphics/Path;

    const/high16 p2, 0x41200000    # 10.0f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p4

    int-to-float p4, p4

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    int-to-float p2, p2

    sget-object v0, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {p1, p3, p4, p2, v0}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    return-void
.end method
