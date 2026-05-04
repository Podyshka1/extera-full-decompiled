.class Lorg/telegram/ui/SecretMediaViewer$4;
.super Lorg/telegram/ui/SecretMediaViewer$FrameLayoutDrawer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/SecretMediaViewer;->setParentActivity(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/SecretMediaViewer;


# direct methods
.method constructor <init>(Lorg/telegram/ui/SecretMediaViewer;Landroid/content/Context;)V
    .locals 0

    .line 792
    iput-object p1, p0, Lorg/telegram/ui/SecretMediaViewer$4;->this$0:Lorg/telegram/ui/SecretMediaViewer;

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/SecretMediaViewer$FrameLayoutDrawer;-><init>(Lorg/telegram/ui/SecretMediaViewer;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 5

    .line 795
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    move-object p1, p0

    .line 796
    iget-object v0, p1, Lorg/telegram/ui/SecretMediaViewer$4;->this$0:Lorg/telegram/ui/SecretMediaViewer;

    invoke-static {v0}, Lorg/telegram/ui/SecretMediaViewer;->-$$Nest$fgetsecretDeleteTimer(Lorg/telegram/ui/SecretMediaViewer;)Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 797
    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v0

    iget-object v1, p1, Lorg/telegram/ui/SecretMediaViewer$4;->this$0:Lorg/telegram/ui/SecretMediaViewer;

    invoke-static {v1}, Lorg/telegram/ui/SecretMediaViewer;->-$$Nest$fgetsecretDeleteTimer(Lorg/telegram/ui/SecretMediaViewer;)Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    sget v1, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    add-int/2addr v0, v1

    .line 798
    iget-object v1, p1, Lorg/telegram/ui/SecretMediaViewer$4;->this$0:Lorg/telegram/ui/SecretMediaViewer;

    invoke-static {v1}, Lorg/telegram/ui/SecretMediaViewer;->-$$Nest$fgetsecretDeleteTimer(Lorg/telegram/ui/SecretMediaViewer;)Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;

    move-result-object v1

    iget-object v2, p1, Lorg/telegram/ui/SecretMediaViewer$4;->this$0:Lorg/telegram/ui/SecretMediaViewer;

    invoke-static {v2}, Lorg/telegram/ui/SecretMediaViewer;->-$$Nest$fgetsecretDeleteTimer(Lorg/telegram/ui/SecretMediaViewer;)Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    iget-object v3, p1, Lorg/telegram/ui/SecretMediaViewer$4;->this$0:Lorg/telegram/ui/SecretMediaViewer;

    invoke-static {v3}, Lorg/telegram/ui/SecretMediaViewer;->-$$Nest$fgetsecretDeleteTimer(Lorg/telegram/ui/SecretMediaViewer;)Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    iget-object v4, p1, Lorg/telegram/ui/SecretMediaViewer$4;->this$0:Lorg/telegram/ui/SecretMediaViewer;

    invoke-static {v4}, Lorg/telegram/ui/SecretMediaViewer;->-$$Nest$fgetsecretDeleteTimer(Lorg/telegram/ui/SecretMediaViewer;)Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, v0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 800
    :cond_0
    iget-object v0, p1, Lorg/telegram/ui/SecretMediaViewer$4;->this$0:Lorg/telegram/ui/SecretMediaViewer;

    invoke-static {v0}, Lorg/telegram/ui/SecretMediaViewer;->-$$Nest$fgetsecretHint(Lorg/telegram/ui/SecretMediaViewer;)Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lorg/telegram/ui/SecretMediaViewer$4;->this$0:Lorg/telegram/ui/SecretMediaViewer;

    invoke-static {v0}, Lorg/telegram/ui/SecretMediaViewer;->-$$Nest$fgetsecretDeleteTimer(Lorg/telegram/ui/SecretMediaViewer;)Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 801
    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v0

    iget-object v1, p1, Lorg/telegram/ui/SecretMediaViewer$4;->this$0:Lorg/telegram/ui/SecretMediaViewer;

    invoke-static {v1}, Lorg/telegram/ui/SecretMediaViewer;->-$$Nest$fgetsecretDeleteTimer(Lorg/telegram/ui/SecretMediaViewer;)Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    sget v1, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    add-int/2addr v0, v1

    iget-object v1, p1, Lorg/telegram/ui/SecretMediaViewer$4;->this$0:Lorg/telegram/ui/SecretMediaViewer;

    invoke-static {v1}, Lorg/telegram/ui/SecretMediaViewer;->-$$Nest$fgetsecretDeleteTimer(Lorg/telegram/ui/SecretMediaViewer;)Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v0, v1

    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int/2addr v0, v1

    .line 802
    iget-object v1, p1, Lorg/telegram/ui/SecretMediaViewer$4;->this$0:Lorg/telegram/ui/SecretMediaViewer;

    invoke-static {v1}, Lorg/telegram/ui/SecretMediaViewer;->-$$Nest$fgetsecretHint(Lorg/telegram/ui/SecretMediaViewer;)Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object v1

    iget-object v2, p1, Lorg/telegram/ui/SecretMediaViewer$4;->this$0:Lorg/telegram/ui/SecretMediaViewer;

    invoke-static {v2}, Lorg/telegram/ui/SecretMediaViewer;->-$$Nest$fgetsecretHint(Lorg/telegram/ui/SecretMediaViewer;)Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    iget-object v3, p1, Lorg/telegram/ui/SecretMediaViewer$4;->this$0:Lorg/telegram/ui/SecretMediaViewer;

    invoke-static {v3}, Lorg/telegram/ui/SecretMediaViewer;->-$$Nest$fgetsecretHint(Lorg/telegram/ui/SecretMediaViewer;)Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    iget-object v4, p1, Lorg/telegram/ui/SecretMediaViewer$4;->this$0:Lorg/telegram/ui/SecretMediaViewer;

    invoke-static {v4}, Lorg/telegram/ui/SecretMediaViewer;->-$$Nest$fgetsecretHint(Lorg/telegram/ui/SecretMediaViewer;)Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, v0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 804
    :cond_1
    iget-object v0, p1, Lorg/telegram/ui/SecretMediaViewer$4;->this$0:Lorg/telegram/ui/SecretMediaViewer;

    invoke-static {v0}, Lorg/telegram/ui/SecretMediaViewer;->-$$Nest$fgetcaptionScrollView(Lorg/telegram/ui/SecretMediaViewer;)Lorg/telegram/ui/PhotoViewer$CaptionScrollView;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 805
    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v0

    sget v1, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    add-int/2addr v0, v1

    .line 806
    iget-object v1, p1, Lorg/telegram/ui/SecretMediaViewer$4;->this$0:Lorg/telegram/ui/SecretMediaViewer;

    invoke-static {v1}, Lorg/telegram/ui/SecretMediaViewer;->-$$Nest$fgetcaptionScrollView(Lorg/telegram/ui/SecretMediaViewer;)Lorg/telegram/ui/PhotoViewer$CaptionScrollView;

    move-result-object v1

    iget-object v2, p1, Lorg/telegram/ui/SecretMediaViewer$4;->this$0:Lorg/telegram/ui/SecretMediaViewer;

    invoke-static {v2}, Lorg/telegram/ui/SecretMediaViewer;->-$$Nest$fgetcaptionScrollView(Lorg/telegram/ui/SecretMediaViewer;)Lorg/telegram/ui/PhotoViewer$CaptionScrollView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    iget-object v3, p1, Lorg/telegram/ui/SecretMediaViewer$4;->this$0:Lorg/telegram/ui/SecretMediaViewer;

    invoke-static {v3}, Lorg/telegram/ui/SecretMediaViewer;->-$$Nest$fgetcaptionScrollView(Lorg/telegram/ui/SecretMediaViewer;)Lorg/telegram/ui/PhotoViewer$CaptionScrollView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    iget-object v4, p1, Lorg/telegram/ui/SecretMediaViewer$4;->this$0:Lorg/telegram/ui/SecretMediaViewer;

    invoke-static {v4}, Lorg/telegram/ui/SecretMediaViewer;->-$$Nest$fgetcaptionScrollView(Lorg/telegram/ui/SecretMediaViewer;)Lorg/telegram/ui/PhotoViewer$CaptionScrollView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, v0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 808
    :cond_2
    iget-object v0, p1, Lorg/telegram/ui/SecretMediaViewer$4;->this$0:Lorg/telegram/ui/SecretMediaViewer;

    invoke-static {v0}, Lorg/telegram/ui/SecretMediaViewer;->-$$Nest$fgetnavigationBar(Lorg/telegram/ui/SecretMediaViewer;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 809
    iget-object v0, p1, Lorg/telegram/ui/SecretMediaViewer$4;->this$0:Lorg/telegram/ui/SecretMediaViewer;

    invoke-static {v0}, Lorg/telegram/ui/SecretMediaViewer;->-$$Nest$fgetnavigationBar(Lorg/telegram/ui/SecretMediaViewer;)Landroid/view/View;

    move-result-object v0

    sub-int/2addr p5, p3

    sub-int/2addr p4, p2

    sget p2, Lorg/telegram/messenger/AndroidUtilities;->navigationBarHeight:I

    add-int/2addr p2, p5

    const/4 p3, 0x0

    invoke-virtual {v0, p3, p5, p4, p2}, Landroid/view/View;->layout(IIII)V

    :cond_3
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    .line 815
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 816
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    .line 817
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    .line 818
    iget-object v0, p0, Lorg/telegram/ui/SecretMediaViewer$4;->this$0:Lorg/telegram/ui/SecretMediaViewer;

    invoke-static {v0}, Lorg/telegram/ui/SecretMediaViewer;->-$$Nest$fgetcaptionScrollView(Lorg/telegram/ui/SecretMediaViewer;)Lorg/telegram/ui/PhotoViewer$CaptionScrollView;

    move-result-object v0

    const/high16 v1, 0x40000000    # 2.0f

    if-eqz v0, :cond_1

    .line 819
    iget-object v0, p0, Lorg/telegram/ui/SecretMediaViewer$4;->this$0:Lorg/telegram/ui/SecretMediaViewer;

    invoke-static {v0}, Lorg/telegram/ui/SecretMediaViewer;->-$$Nest$fgetcaptionScrollView(Lorg/telegram/ui/SecretMediaViewer;)Lorg/telegram/ui/PhotoViewer$CaptionScrollView;

    move-result-object v0

    .line 820
    invoke-static {p1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 821
    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v3

    sub-int/2addr p2, v3

    sget v3, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    sub-int/2addr p2, v3

    iget-object v3, p0, Lorg/telegram/ui/SecretMediaViewer$4;->this$0:Lorg/telegram/ui/SecretMediaViewer;

    invoke-static {v3}, Lorg/telegram/ui/SecretMediaViewer;->-$$Nest$fgetseekbarContainer(Lorg/telegram/ui/SecretMediaViewer;)Lorg/telegram/ui/SecretMediaViewer$VideoPlayerControlFrameLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lorg/telegram/ui/SecretMediaViewer$4;->this$0:Lorg/telegram/ui/SecretMediaViewer;

    invoke-static {v3}, Lorg/telegram/ui/SecretMediaViewer;->-$$Nest$fgetseekbarContainer(Lorg/telegram/ui/SecretMediaViewer;)Lorg/telegram/ui/SecretMediaViewer$VideoPlayerControlFrameLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    :goto_0
    sub-int/2addr p2, v3

    invoke-static {p2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 819
    invoke-virtual {v0, v2, p2}, Landroid/view/View;->measure(II)V

    .line 824
    :cond_1
    iget-object p2, p0, Lorg/telegram/ui/SecretMediaViewer$4;->this$0:Lorg/telegram/ui/SecretMediaViewer;

    invoke-static {p2}, Lorg/telegram/ui/SecretMediaViewer;->-$$Nest$fgetnavigationBar(Lorg/telegram/ui/SecretMediaViewer;)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 825
    iget-object p2, p0, Lorg/telegram/ui/SecretMediaViewer$4;->this$0:Lorg/telegram/ui/SecretMediaViewer;

    invoke-static {p2}, Lorg/telegram/ui/SecretMediaViewer;->-$$Nest$fgetnavigationBar(Lorg/telegram/ui/SecretMediaViewer;)Landroid/view/View;

    move-result-object p2

    .line 826
    invoke-static {p1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    sget v0, Lorg/telegram/messenger/AndroidUtilities;->navigationBarHeight:I

    .line 827
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 825
    invoke-virtual {p2, p1, v0}, Landroid/view/View;->measure(II)V

    :cond_2
    return-void
.end method
