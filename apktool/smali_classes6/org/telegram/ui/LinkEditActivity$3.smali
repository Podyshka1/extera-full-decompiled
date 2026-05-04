.class Lorg/telegram/ui/LinkEditActivity$3;
.super Lorg/telegram/ui/Components/SizeNotifierFrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/LinkEditActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/LinkEditActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/LinkEditActivity;Landroid/content/Context;)V
    .locals 0

    .line 198
    iput-object p1, p0, Lorg/telegram/ui/LinkEditActivity$3;->this$0:Lorg/telegram/ui/LinkEditActivity;

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 279
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 280
    iget-object p1, p0, Lorg/telegram/ui/LinkEditActivity$3;->this$0:Lorg/telegram/ui/LinkEditActivity;

    iget-boolean v0, p1, Lorg/telegram/ui/LinkEditActivity;->scrollToEnd:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 281
    iput-boolean v1, p1, Lorg/telegram/ui/LinkEditActivity;->scrollToEnd:Z

    .line 282
    invoke-static {p1}, Lorg/telegram/ui/LinkEditActivity;->-$$Nest$fgetscrollView(Lorg/telegram/ui/LinkEditActivity;)Lorg/telegram/ui/Components/SectionsScrollView;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/LinkEditActivity$3;->this$0:Lorg/telegram/ui/LinkEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/LinkEditActivity;->-$$Nest$fgetscrollView(Lorg/telegram/ui/LinkEditActivity;)Lorg/telegram/ui/Components/SectionsScrollView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget-object v2, p0, Lorg/telegram/ui/LinkEditActivity$3;->this$0:Lorg/telegram/ui/LinkEditActivity;

    invoke-static {v2}, Lorg/telegram/ui/LinkEditActivity;->-$$Nest$fgetscrollView(Lorg/telegram/ui/LinkEditActivity;)Lorg/telegram/ui/Components/SectionsScrollView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p1, v1, v0}, Landroid/widget/ScrollView;->smoothScrollTo(II)V

    return-void

    .line 283
    :cond_0
    iget-boolean v0, p1, Lorg/telegram/ui/LinkEditActivity;->scrollToStart:Z

    if-eqz v0, :cond_1

    .line 284
    iput-boolean v1, p1, Lorg/telegram/ui/LinkEditActivity;->scrollToStart:Z

    .line 285
    invoke-static {p1}, Lorg/telegram/ui/LinkEditActivity;->-$$Nest$fgetscrollView(Lorg/telegram/ui/LinkEditActivity;)Lorg/telegram/ui/Components/SectionsScrollView;

    move-result-object p1

    invoke-virtual {p1, v1, v1}, Landroid/widget/ScrollView;->smoothScrollTo(II)V

    :cond_1
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    .line 267
    iget-object v0, p0, Lorg/telegram/ui/LinkEditActivity$3;->this$0:Lorg/telegram/ui/LinkEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/LinkEditActivity;->-$$Nest$fgetscrollView(Lorg/telegram/ui/LinkEditActivity;)Lorg/telegram/ui/Components/SectionsScrollView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    move-result v0

    .line 268
    invoke-super/range {p0 .. p5}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->onLayout(ZIIII)V

    move-object p1, p0

    .line 270
    iget-object p2, p1, Lorg/telegram/ui/LinkEditActivity$3;->this$0:Lorg/telegram/ui/LinkEditActivity;

    invoke-static {p2}, Lorg/telegram/ui/LinkEditActivity;->-$$Nest$fgetscrollView(Lorg/telegram/ui/LinkEditActivity;)Lorg/telegram/ui/Components/SectionsScrollView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getScrollY()I

    move-result p2

    if-eq v0, p2, :cond_0

    iget-object p2, p1, Lorg/telegram/ui/LinkEditActivity$3;->this$0:Lorg/telegram/ui/LinkEditActivity;

    iget-boolean p3, p2, Lorg/telegram/ui/LinkEditActivity;->scrollToEnd:Z

    if-nez p3, :cond_0

    .line 271
    invoke-static {p2}, Lorg/telegram/ui/LinkEditActivity;->-$$Nest$fgetscrollView(Lorg/telegram/ui/LinkEditActivity;)Lorg/telegram/ui/Components/SectionsScrollView;

    move-result-object p2

    iget-object p3, p1, Lorg/telegram/ui/LinkEditActivity$3;->this$0:Lorg/telegram/ui/LinkEditActivity;

    invoke-static {p3}, Lorg/telegram/ui/LinkEditActivity;->-$$Nest$fgetscrollView(Lorg/telegram/ui/LinkEditActivity;)Lorg/telegram/ui/Components/SectionsScrollView;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/View;->getScrollY()I

    move-result p3

    sub-int/2addr p3, v0

    int-to-float p3, p3

    invoke-virtual {p2, p3}, Landroid/view/View;->setTranslationY(F)V

    .line 272
    iget-object p2, p1, Lorg/telegram/ui/LinkEditActivity$3;->this$0:Lorg/telegram/ui/LinkEditActivity;

    invoke-static {p2}, Lorg/telegram/ui/LinkEditActivity;->-$$Nest$fgetscrollView(Lorg/telegram/ui/LinkEditActivity;)Lorg/telegram/ui/Components/SectionsScrollView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 273
    iget-object p2, p1, Lorg/telegram/ui/LinkEditActivity$3;->this$0:Lorg/telegram/ui/LinkEditActivity;

    invoke-static {p2}, Lorg/telegram/ui/LinkEditActivity;->-$$Nest$fgetscrollView(Lorg/telegram/ui/LinkEditActivity;)Lorg/telegram/ui/Components/SectionsScrollView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    const-wide/16 p3, 0xfa

    invoke-virtual {p2, p3, p4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    sget-object p3, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->keyboardInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p2, p3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 245
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 246
    invoke-virtual {p0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->measureKeyboardHeight()I

    .line 256
    iget p1, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->keyboardHeight:I

    const/high16 p2, 0x41a00000    # 20.0f

    if-eqz p1, :cond_0

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 257
    iget-object p1, p0, Lorg/telegram/ui/LinkEditActivity$3;->this$0:Lorg/telegram/ui/LinkEditActivity;

    invoke-static {p1}, Lorg/telegram/ui/LinkEditActivity;->-$$Nest$fgetusesEditText(Lorg/telegram/ui/LinkEditActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->clearFocus()V

    .line 258
    iget-object p1, p0, Lorg/telegram/ui/LinkEditActivity$3;->this$0:Lorg/telegram/ui/LinkEditActivity;

    invoke-static {p1}, Lorg/telegram/ui/LinkEditActivity;->-$$Nest$fgetnameEditText(Lorg/telegram/ui/LinkEditActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->clearFocus()V

    .line 260
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/LinkEditActivity$3;->this$0:Lorg/telegram/ui/LinkEditActivity;

    invoke-static {p1}, Lorg/telegram/ui/LinkEditActivity;->-$$Nest$fgetbuttonLayout(Lorg/telegram/ui/LinkEditActivity;)Landroid/widget/FrameLayout;

    move-result-object p1

    iget v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->keyboardHeight:I

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    if-le v0, p2, :cond_1

    const/16 p2, 0x8

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
