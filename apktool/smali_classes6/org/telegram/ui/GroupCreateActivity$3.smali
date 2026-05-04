.class Lorg/telegram/ui/GroupCreateActivity$3;
.super Landroid/widget/ScrollView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/GroupCreateActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/GroupCreateActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/GroupCreateActivity;Landroid/content/Context;)V
    .locals 0

    .line 659
    iput-object p1, p0, Lorg/telegram/ui/GroupCreateActivity$3;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    invoke-direct {p0, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 674
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 675
    iget-object v1, p0, Lorg/telegram/ui/GroupCreateActivity$3;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    invoke-static {v1}, Lorg/telegram/ui/GroupCreateActivity;->-$$Nest$fgetanimatorSelectorContainerHeight(Lorg/telegram/ui/GroupCreateActivity;)Lme/vkryl/android/animator/FactorAnimator;

    move-result-object v1

    invoke-virtual {v1}, Lme/vkryl/android/animator/FactorAnimator;->getFactor()F

    move-result v1

    .line 676
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    if-nez v0, :cond_0

    cmpl-float v0, v2, v1

    if-lez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 680
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 3

    .line 662
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity$3;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    invoke-static {v0}, Lorg/telegram/ui/GroupCreateActivity;->-$$Nest$fgetignoreScrollEvent(Lorg/telegram/ui/GroupCreateActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 663
    iget-object p1, p0, Lorg/telegram/ui/GroupCreateActivity$3;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lorg/telegram/ui/GroupCreateActivity;->-$$Nest$fputignoreScrollEvent(Lorg/telegram/ui/GroupCreateActivity;Z)V

    return p2

    .line 666
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 667
    iget v0, p2, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lorg/telegram/ui/GroupCreateActivity$3;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    invoke-static {v1}, Lorg/telegram/ui/GroupCreateActivity;->-$$Nest$fgetfieldY(Lorg/telegram/ui/GroupCreateActivity;)I

    move-result v1

    const/high16 v2, 0x41a00000    # 20.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    iput v0, p2, Landroid/graphics/Rect;->top:I

    .line 668
    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Lorg/telegram/ui/GroupCreateActivity$3;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    invoke-static {v1}, Lorg/telegram/ui/GroupCreateActivity;->-$$Nest$fgetfieldY(Lorg/telegram/ui/GroupCreateActivity;)I

    move-result v1

    const/high16 v2, 0x42480000    # 50.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    iput v0, p2, Landroid/graphics/Rect;->bottom:I

    .line 669
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ScrollView;->requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z

    move-result p1

    return p1
.end method
