.class Lorg/telegram/ui/AvatarPreviewer$Layout$1;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/AvatarPreviewer$Layout;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/AvatarPreviewer$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/AvatarPreviewer$Layout;


# direct methods
.method constructor <init>(Lorg/telegram/ui/AvatarPreviewer$Layout;Landroid/content/Context;)V
    .locals 0

    .line 390
    iput-object p1, p0, Lorg/telegram/ui/AvatarPreviewer$Layout$1;->this$0:Lorg/telegram/ui/AvatarPreviewer$Layout;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 8

    sub-int v0, p4, p2

    .line 398
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    sub-int v1, p5, p3

    .line 399
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    .line 401
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/high16 v3, 0x41800000    # 16.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int/2addr v2, v3

    const/high16 v3, 0x42700000    # 60.0f

    .line 402
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    sub-int v4, v1, v3

    const/high16 v5, 0x42200000    # 40.0f

    .line 404
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    sub-int/2addr v4, v6

    .line 405
    iget-object v6, p0, Lorg/telegram/ui/AvatarPreviewer$Layout$1;->this$0:Lorg/telegram/ui/AvatarPreviewer$Layout;

    invoke-static {v6}, Lorg/telegram/ui/AvatarPreviewer$Layout;->-$$Nest$fgetmenu(Lorg/telegram/ui/AvatarPreviewer$Layout;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    move-result-object v6

    const/high16 v7, -0x80000000

    invoke-static {v0, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-static {v4, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v6, v0, v4}, Landroid/view/View;->measure(II)V

    .line 407
    iget-object v0, p0, Lorg/telegram/ui/AvatarPreviewer$Layout$1;->this$0:Lorg/telegram/ui/AvatarPreviewer$Layout;

    invoke-static {v0}, Lorg/telegram/ui/AvatarPreviewer$Layout;->-$$Nest$fgetmenu(Lorg/telegram/ui/AvatarPreviewer$Layout;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    sub-int v0, v1, v0

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int/2addr v0, v4

    invoke-static {v0, v3, v2}, Landroidx/core/math/MathUtils;->clamp(III)I

    move-result v0

    .line 408
    iget-object v2, p0, Lorg/telegram/ui/AvatarPreviewer$Layout$1;->this$0:Lorg/telegram/ui/AvatarPreviewer$Layout;

    invoke-static {v2}, Lorg/telegram/ui/AvatarPreviewer$Layout;->-$$Nest$fgetavatarView(Lorg/telegram/ui/AvatarPreviewer$Layout;)Lorg/telegram/ui/AvatarPreviewer$AvatarView;

    move-result-object v2

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v2, v4, v3}, Landroid/view/View;->measure(II)V

    sub-int/2addr v1, v0

    .line 410
    iget-object v2, p0, Lorg/telegram/ui/AvatarPreviewer$Layout$1;->this$0:Lorg/telegram/ui/AvatarPreviewer$Layout;

    invoke-static {v2}, Lorg/telegram/ui/AvatarPreviewer$Layout;->-$$Nest$fgetmenu(Lorg/telegram/ui/AvatarPreviewer$Layout;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    .line 412
    iget-object v2, p0, Lorg/telegram/ui/AvatarPreviewer$Layout$1;->this$0:Lorg/telegram/ui/AvatarPreviewer$Layout;

    invoke-static {v2}, Lorg/telegram/ui/AvatarPreviewer$Layout;->-$$Nest$fgetavatarView(Lorg/telegram/ui/AvatarPreviewer$Layout;)Lorg/telegram/ui/AvatarPreviewer$AvatarView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 413
    iget-object v3, p0, Lorg/telegram/ui/AvatarPreviewer$Layout$1;->this$0:Lorg/telegram/ui/AvatarPreviewer$Layout;

    invoke-static {v3}, Lorg/telegram/ui/AvatarPreviewer$Layout;->-$$Nest$fgetmenu(Lorg/telegram/ui/AvatarPreviewer$Layout;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    const/high16 v4, 0x41000000    # 8.0f

    .line 415
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    add-int/2addr v5, v1

    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 416
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v1, v0

    iput v1, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 418
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 393
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method
