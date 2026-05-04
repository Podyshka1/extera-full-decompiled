.class Lorg/telegram/ui/LaunchActivity$11;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/LaunchActivity;->setupActionBarLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private inLayout:Z

.field private path:Landroid/graphics/Path;

.field final synthetic this$0:Lorg/telegram/ui/LaunchActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/LaunchActivity;Landroid/content/Context;)V
    .locals 0

    .line 932
    iput-object p1, p0, Lorg/telegram/ui/LaunchActivity$11;->this$0:Lorg/telegram/ui/LaunchActivity;

    invoke-direct {p0, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 933
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/LaunchActivity$11;->path:Landroid/graphics/Path;

    return-void
.end method


# virtual methods
.method public dispatchApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 0

    .line 1007
    invoke-static {p1, p0}, Lorg/telegram/messenger/AndroidUtilities;->fixedDispatchApplyWindowInsets(Landroid/view/WindowInsets;Landroid/view/ViewGroup;)Landroid/view/WindowInsets;

    move-result-object p1

    return-object p1
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 999
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity$11;->this$0:Lorg/telegram/ui/LaunchActivity;

    invoke-static {v0}, Lorg/telegram/ui/LaunchActivity;->-$$Nest$fgetlayersActionBarLayout(Lorg/telegram/ui/LaunchActivity;)Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1000
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity$11;->this$0:Lorg/telegram/ui/LaunchActivity;

    invoke-static {v0}, Lorg/telegram/ui/LaunchActivity;->-$$Nest$fgetlayersActionBarLayout(Lorg/telegram/ui/LaunchActivity;)Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->parentDraw(Landroid/view/View;Landroid/graphics/Canvas;)V

    .line 1002
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    sub-int/2addr p4, p2

    .line 979
    sget-boolean p1, Lorg/telegram/messenger/AndroidUtilities;->isInMultiwindow:Z

    const/4 p2, 0x2

    const/4 p3, 0x0

    if-nez p1, :cond_2

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isSmallTablet()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne p1, p2, :cond_2

    .line 980
    :cond_0
    div-int/lit8 p1, p4, 0x64

    mul-int/lit8 p1, p1, 0x23

    const/high16 p5, 0x43a00000    # 320.0f

    .line 981
    invoke-static {p5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 982
    invoke-static {p5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    .line 984
    :cond_1
    iget-object p5, p0, Lorg/telegram/ui/LaunchActivity$11;->this$0:Lorg/telegram/ui/LaunchActivity;

    invoke-static {p5}, Lorg/telegram/ui/LaunchActivity;->-$$Nest$fgetshadowTabletSide(Lorg/telegram/ui/LaunchActivity;)Landroid/widget/FrameLayout;

    move-result-object p5

    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity$11;->this$0:Lorg/telegram/ui/LaunchActivity;

    invoke-static {v0}, Lorg/telegram/ui/LaunchActivity;->-$$Nest$fgetshadowTabletSide(Lorg/telegram/ui/LaunchActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int/2addr v0, p1

    iget-object v1, p0, Lorg/telegram/ui/LaunchActivity$11;->this$0:Lorg/telegram/ui/LaunchActivity;

    invoke-static {v1}, Lorg/telegram/ui/LaunchActivity;->-$$Nest$fgetshadowTabletSide(Lorg/telegram/ui/LaunchActivity;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p5, p1, p3, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 985
    iget-object p5, p0, Lorg/telegram/ui/LaunchActivity$11;->this$0:Lorg/telegram/ui/LaunchActivity;

    iget-object p5, p5, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {p5}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->getView()Landroid/view/ViewGroup;

    move-result-object p5

    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity$11;->this$0:Lorg/telegram/ui/LaunchActivity;

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->getView()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/LaunchActivity$11;->this$0:Lorg/telegram/ui/LaunchActivity;

    iget-object v1, v1, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->getView()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p5, p3, p3, v0, v1}, Landroid/view/ViewGroup;->layout(IIII)V

    .line 986
    iget-object p5, p0, Lorg/telegram/ui/LaunchActivity$11;->this$0:Lorg/telegram/ui/LaunchActivity;

    iget-object p5, p5, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {p5}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->getView()Landroid/view/ViewGroup;

    move-result-object p5

    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity$11;->this$0:Lorg/telegram/ui/LaunchActivity;

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->getView()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int/2addr v0, p1

    iget-object v1, p0, Lorg/telegram/ui/LaunchActivity$11;->this$0:Lorg/telegram/ui/LaunchActivity;

    iget-object v1, v1, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->getView()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p5, p1, p3, v0, v1}, Landroid/view/ViewGroup;->layout(IIII)V

    goto :goto_0

    .line 988
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/LaunchActivity$11;->this$0:Lorg/telegram/ui/LaunchActivity;

    iget-object p1, p1, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->getView()Landroid/view/ViewGroup;

    move-result-object p1

    iget-object p5, p0, Lorg/telegram/ui/LaunchActivity$11;->this$0:Lorg/telegram/ui/LaunchActivity;

    iget-object p5, p5, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {p5}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->getView()Landroid/view/ViewGroup;

    move-result-object p5

    invoke-virtual {p5}, Landroid/view/View;->getMeasuredWidth()I

    move-result p5

    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity$11;->this$0:Lorg/telegram/ui/LaunchActivity;

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->getView()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p1, p3, p3, p5, v0}, Landroid/view/ViewGroup;->layout(IIII)V

    .line 990
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/LaunchActivity$11;->this$0:Lorg/telegram/ui/LaunchActivity;

    invoke-static {p1}, Lorg/telegram/ui/LaunchActivity;->-$$Nest$fgetlayersActionBarLayout(Lorg/telegram/ui/LaunchActivity;)Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->getView()Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    sub-int/2addr p4, p1

    div-int/2addr p4, p2

    .line 991
    sget p1, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    const/high16 p2, 0x41000000    # 8.0f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    add-int/2addr p1, p2

    .line 992
    iget-object p2, p0, Lorg/telegram/ui/LaunchActivity$11;->this$0:Lorg/telegram/ui/LaunchActivity;

    invoke-static {p2}, Lorg/telegram/ui/LaunchActivity;->-$$Nest$fgetlayersActionBarLayout(Lorg/telegram/ui/LaunchActivity;)Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->getView()Landroid/view/ViewGroup;

    move-result-object p2

    iget-object p5, p0, Lorg/telegram/ui/LaunchActivity$11;->this$0:Lorg/telegram/ui/LaunchActivity;

    invoke-static {p5}, Lorg/telegram/ui/LaunchActivity;->-$$Nest$fgetlayersActionBarLayout(Lorg/telegram/ui/LaunchActivity;)Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-result-object p5

    invoke-virtual {p5}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->getView()Landroid/view/ViewGroup;

    move-result-object p5

    invoke-virtual {p5}, Landroid/view/View;->getMeasuredWidth()I

    move-result p5

    add-int/2addr p5, p4

    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity$11;->this$0:Lorg/telegram/ui/LaunchActivity;

    invoke-static {v0}, Lorg/telegram/ui/LaunchActivity;->-$$Nest$fgetlayersActionBarLayout(Lorg/telegram/ui/LaunchActivity;)Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->getView()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p2, p4, p1, p5, v0}, Landroid/view/ViewGroup;->layout(IIII)V

    .line 993
    iget-object p1, p0, Lorg/telegram/ui/LaunchActivity$11;->this$0:Lorg/telegram/ui/LaunchActivity;

    invoke-static {p1}, Lorg/telegram/ui/LaunchActivity;->-$$Nest$fgetbackgroundTablet(Lorg/telegram/ui/LaunchActivity;)Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/LaunchActivity$11;->this$0:Lorg/telegram/ui/LaunchActivity;

    invoke-static {p2}, Lorg/telegram/ui/LaunchActivity;->-$$Nest$fgetbackgroundTablet(Lorg/telegram/ui/LaunchActivity;)Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    iget-object p4, p0, Lorg/telegram/ui/LaunchActivity$11;->this$0:Lorg/telegram/ui/LaunchActivity;

    invoke-static {p4}, Lorg/telegram/ui/LaunchActivity;->-$$Nest$fgetbackgroundTablet(Lorg/telegram/ui/LaunchActivity;)Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    move-result-object p4

    invoke-virtual {p4}, Landroid/view/View;->getMeasuredHeight()I

    move-result p4

    invoke-virtual {p1, p3, p3, p2, p4}, Landroid/view/View;->layout(IIII)V

    .line 994
    iget-object p1, p0, Lorg/telegram/ui/LaunchActivity$11;->this$0:Lorg/telegram/ui/LaunchActivity;

    invoke-static {p1}, Lorg/telegram/ui/LaunchActivity;->-$$Nest$fgetshadowTablet(Lorg/telegram/ui/LaunchActivity;)Landroid/widget/FrameLayout;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/LaunchActivity$11;->this$0:Lorg/telegram/ui/LaunchActivity;

    invoke-static {p2}, Lorg/telegram/ui/LaunchActivity;->-$$Nest$fgetshadowTablet(Lorg/telegram/ui/LaunchActivity;)Landroid/widget/FrameLayout;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    iget-object p4, p0, Lorg/telegram/ui/LaunchActivity$11;->this$0:Lorg/telegram/ui/LaunchActivity;

    invoke-static {p4}, Lorg/telegram/ui/LaunchActivity;->-$$Nest$fgetshadowTablet(Lorg/telegram/ui/LaunchActivity;)Landroid/widget/FrameLayout;

    move-result-object p4

    invoke-virtual {p4}, Landroid/view/View;->getMeasuredHeight()I

    move-result p4

    invoke-virtual {p1, p3, p3, p2, p4}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 6

    const/4 v0, 0x1

    .line 946
    iput-boolean v0, p0, Lorg/telegram/ui/LaunchActivity$11;->inLayout:Z

    .line 947
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 948
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    .line 949
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 951
    sget-boolean v1, Lorg/telegram/messenger/AndroidUtilities;->isInMultiwindow:Z

    const/4 v2, 0x0

    const/high16 v3, 0x40000000    # 2.0f

    if-nez v1, :cond_2

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isSmallTablet()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-ne v1, v4, :cond_2

    .line 952
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity$11;->this$0:Lorg/telegram/ui/LaunchActivity;

    invoke-static {v0, v2}, Lorg/telegram/ui/LaunchActivity;->-$$Nest$fputtabletFullSize(Lorg/telegram/ui/LaunchActivity;Z)V

    .line 953
    div-int/lit8 v0, p1, 0x64

    mul-int/lit8 v0, v0, 0x23

    const/high16 v1, 0x43a00000    # 320.0f

    .line 954
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 955
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    .line 957
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/LaunchActivity$11;->this$0:Lorg/telegram/ui/LaunchActivity;

    iget-object v1, v1, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->getView()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-static {p2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v1, v4, v5}, Landroid/view/View;->measure(II)V

    .line 958
    iget-object v1, p0, Lorg/telegram/ui/LaunchActivity$11;->this$0:Lorg/telegram/ui/LaunchActivity;

    invoke-static {v1}, Lorg/telegram/ui/LaunchActivity;->-$$Nest$fgetshadowTabletSide(Lorg/telegram/ui/LaunchActivity;)Landroid/widget/FrameLayout;

    move-result-object v1

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-static {v4, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-static {p2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v1, v4, v5}, Landroid/view/View;->measure(II)V

    .line 959
    iget-object v1, p0, Lorg/telegram/ui/LaunchActivity$11;->this$0:Lorg/telegram/ui/LaunchActivity;

    iget-object v1, v1, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->getView()Landroid/view/ViewGroup;

    move-result-object v1

    sub-int v0, p1, v0

    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-static {p2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v1, v0, v4}, Landroid/view/View;->measure(II)V

    goto :goto_0

    .line 961
    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/LaunchActivity$11;->this$0:Lorg/telegram/ui/LaunchActivity;

    invoke-static {v1, v0}, Lorg/telegram/ui/LaunchActivity;->-$$Nest$fputtabletFullSize(Lorg/telegram/ui/LaunchActivity;Z)V

    .line 962
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity$11;->this$0:Lorg/telegram/ui/LaunchActivity;

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->getView()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-static {p1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {p2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v0, v1, v4}, Landroid/view/View;->measure(II)V

    .line 964
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity$11;->this$0:Lorg/telegram/ui/LaunchActivity;

    invoke-static {v0}, Lorg/telegram/ui/LaunchActivity;->-$$Nest$fgetbackgroundTablet(Lorg/telegram/ui/LaunchActivity;)Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    move-result-object v0

    invoke-static {p1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {p2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v0, v1, v4}, Landroid/view/View;->measure(II)V

    .line 965
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity$11;->this$0:Lorg/telegram/ui/LaunchActivity;

    invoke-static {v0}, Lorg/telegram/ui/LaunchActivity;->-$$Nest$fgetshadowTablet(Lorg/telegram/ui/LaunchActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-static {p1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {p2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v0, v1, v4}, Landroid/view/View;->measure(II)V

    .line 966
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity$11;->this$0:Lorg/telegram/ui/LaunchActivity;

    invoke-static {v0}, Lorg/telegram/ui/LaunchActivity;->-$$Nest$fgetlayersActionBarLayout(Lorg/telegram/ui/LaunchActivity;)Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->getView()Landroid/view/ViewGroup;

    move-result-object v0

    const v1, 0x44048000    # 530.0f

    .line 967
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    const/high16 v4, 0x41800000    # 16.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    sub-int/2addr p1, v5

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {p1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    sget v1, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    sub-int/2addr p2, v1

    sget v1, Lorg/telegram/messenger/AndroidUtilities;->navigationBarHeight:I

    sub-int/2addr p2, v1

    .line 968
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int/2addr p2, v1

    invoke-static {p2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 966
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->measure(II)V

    .line 971
    iput-boolean v2, p0, Lorg/telegram/ui/LaunchActivity$11;->inLayout:Z

    return-void
.end method

.method public requestLayout()V
    .locals 1

    .line 938
    iget-boolean v0, p0, Lorg/telegram/ui/LaunchActivity$11;->inLayout:Z

    if-eqz v0, :cond_0

    return-void

    .line 941
    :cond_0
    invoke-super {p0}, Landroid/widget/RelativeLayout;->requestLayout()V

    return-void
.end method
