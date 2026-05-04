.class Lorg/telegram/ui/LoginActivity$4;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/LoginActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/LoginActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/LoginActivity;Landroid/content/Context;)V
    .locals 0

    .line 632
    iput-object p1, p0, Lorg/telegram/ui/LoginActivity$4;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 5

    .line 635
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    move-object p1, p0

    .line 636
    iget-object p2, p1, Lorg/telegram/ui/LoginActivity$4;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {p2}, Lorg/telegram/ui/LoginActivity;->-$$Nest$fgetviews(Lorg/telegram/ui/LoginActivity;)[Lorg/telegram/ui/Components/SlideView;

    move-result-object p2

    array-length p3, p2

    const/4 p4, 0x0

    :goto_0
    if-ge p4, p3, :cond_1

    aget-object p5, p2, p4

    .line 637
    invoke-virtual {p5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 638
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    const/high16 v2, 0x41800000    # 16.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int/2addr v1, v2

    .line 639
    invoke-virtual {p5}, Lorg/telegram/ui/Components/SlideView;->hasCustomKeyboard()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p1, Lorg/telegram/ui/LoginActivity$4;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v2}, Lorg/telegram/ui/LoginActivity;->-$$Nest$fgetkeyboardView(Lorg/telegram/ui/LoginActivity;)Lorg/telegram/ui/Components/CustomPhoneKeyboardView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    const/high16 v2, 0x43660000    # 230.0f

    .line 640
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int/2addr v1, v2

    .line 642
    :cond_0
    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int/2addr v4, v0

    invoke-virtual {p5, v2, v3, v4, v1}, Landroid/view/View;->layout(IIII)V

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 7

    .line 648
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 649
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    .line 651
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$4;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v0}, Lorg/telegram/ui/LoginActivity;->-$$Nest$fgetviews(Lorg/telegram/ui/LoginActivity;)[Lorg/telegram/ui/Components/SlideView;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 652
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 653
    iget v5, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int v5, p2, v5

    const/high16 v6, 0x41800000    # 16.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    add-int/2addr v5, v6

    .line 654
    invoke-virtual {v3}, Lorg/telegram/ui/Components/SlideView;->hasCustomKeyboard()Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lorg/telegram/ui/LoginActivity$4;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v6}, Lorg/telegram/ui/LoginActivity;->-$$Nest$fgetkeyboardView(Lorg/telegram/ui/LoginActivity;)Lorg/telegram/ui/Components/CustomPhoneKeyboardView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_0

    const/high16 v6, 0x43660000    # 230.0f

    .line 655
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    add-int/2addr v5, v6

    .line 657
    :cond_0
    iget v6, v4, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int v6, p1, v6

    iget v4, v4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int/2addr v6, v4

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v6, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-static {v5, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v3, v6, v4}, Landroid/view/View;->measure(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
