.class public Lorg/telegram/ui/ActionBar/AlertDialog$AlertDialogView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ActionBar/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AlertDialogView"
.end annotation


# instance fields
.field private backgroundPaint:Landroid/graphics/Paint;

.field private blurPaintAlpha:Lorg/telegram/ui/Components/AnimatedFloat;

.field private inLayout:Z

.field final synthetic this$0:Lorg/telegram/ui/ActionBar/AlertDialog;


# direct methods
.method public static synthetic $r8$lambda$3x4uBCbBVkvcbKVprzs_N3nVF70(Lorg/telegram/ui/ActionBar/AlertDialog$AlertDialogView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/AlertDialog$AlertDialogView;->lambda$onMeasure$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$HzOmcjwFKrxi-bdjPArgJ8KpoP0(Lorg/telegram/ui/ActionBar/AlertDialog$AlertDialogView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/AlertDialog$AlertDialogView;->lambda$onLayout$1()V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/ActionBar/AlertDialog;Landroid/content/Context;)V
    .locals 0

    .line 344
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/AlertDialog$AlertDialogView;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    .line 345
    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 557
    new-instance p1, Lorg/telegram/ui/Components/AnimatedFloat;

    const/4 p2, 0x0

    invoke-direct {p1, p2, p0}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(FLandroid/view/View;)V

    iput-object p1, p0, Lorg/telegram/ui/ActionBar/AlertDialog$AlertDialogView;->blurPaintAlpha:Lorg/telegram/ui/Components/AnimatedFloat;

    .line 558
    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/ActionBar/AlertDialog$AlertDialogView;->backgroundPaint:Landroid/graphics/Paint;

    return-void
.end method

.method private synthetic lambda$onLayout$1()V
    .locals 5

    .line 526
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog$AlertDialogView;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->-$$Nest$fgettitleTextView(Lorg/telegram/ui/ActionBar/AlertDialog;)Lorg/telegram/ui/Components/spoilers/SpoilersTextView;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/AlertDialog$AlertDialogView;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/AlertDialog;->-$$Nest$fgetcontentScrollView(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/widget/ScrollView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getScrollY()I

    move-result v1

    iget-object v4, p0, Lorg/telegram/ui/ActionBar/AlertDialog$AlertDialogView;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/AlertDialog;->-$$Nest$fgetscrollContainer(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    if-le v1, v4, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-static {v0, v3, v1}, Lorg/telegram/ui/ActionBar/AlertDialog;->-$$Nest$mrunShadowAnimation(Lorg/telegram/ui/ActionBar/AlertDialog;IZ)V

    .line 527
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog$AlertDialogView;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    iget-object v1, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->buttonsLayout:Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->-$$Nest$fgetcontentScrollView(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/widget/ScrollView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getScrollY()I

    move-result v1

    iget-object v4, p0, Lorg/telegram/ui/ActionBar/AlertDialog$AlertDialogView;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/AlertDialog;->-$$Nest$fgetcontentScrollView(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/widget/ScrollView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v1, v4

    iget-object v4, p0, Lorg/telegram/ui/ActionBar/AlertDialog$AlertDialogView;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/AlertDialog;->-$$Nest$fgetscrollContainer(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v4

    if-ge v1, v4, :cond_1

    move v3, v2

    :cond_1
    invoke-static {v0, v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog;->-$$Nest$mrunShadowAnimation(Lorg/telegram/ui/ActionBar/AlertDialog;IZ)V

    .line 528
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog$AlertDialogView;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->-$$Nest$fgetcontentScrollView(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/widget/ScrollView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private synthetic lambda$onMeasure$0()V
    .locals 5

    .line 489
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog$AlertDialogView;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    invoke-static {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog;->-$$Nest$fputlastScreenWidth(Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    .line 490
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    const/high16 v1, 0x42600000    # 56.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int/2addr v0, v1

    .line 492
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 493
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isSmallTablet()Z

    move-result v1

    if-eqz v1, :cond_0

    const/high16 v1, 0x43df0000    # 446.0f

    .line 494
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    goto :goto_0

    :cond_0
    const/high16 v1, 0x43f80000    # 496.0f

    .line 496
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    goto :goto_0

    :cond_1
    const/high16 v1, 0x43b20000    # 356.0f

    .line 499
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    .line 502
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/AlertDialog$AlertDialogView;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 503
    new-instance v3, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v3}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 504
    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    .line 505
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/AlertDialog$AlertDialogView;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/AlertDialog;->-$$Nest$fgetbackgroundPaddings(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/AlertDialog$AlertDialogView;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/AlertDialog;->-$$Nest$fgetbackgroundPaddings(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    iput v0, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 507
    :try_start_0
    invoke-virtual {v2, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 509
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 603
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog$AlertDialogView;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->-$$Nest$fgetdrawBackground(Lorg/telegram/ui/ActionBar/AlertDialog;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog$AlertDialogView;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->-$$Nest$fgetblurredBackground(Lorg/telegram/ui/ActionBar/AlertDialog;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 604
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog$AlertDialogView;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->-$$Nest$fgetshadowDrawable(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 605
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog$AlertDialogView;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->-$$Nest$fgettopView(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog$AlertDialogView;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->-$$Nest$fgetnotDrawBackgroundOnTopView(Lorg/telegram/ui/ActionBar/AlertDialog;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 606
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog$AlertDialogView;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->-$$Nest$fgettopView(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 607
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 608
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p1, v3, v0, v1, v2}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 609
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog$AlertDialogView;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->-$$Nest$fgetshadowDrawable(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 610
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    .line 612
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog$AlertDialogView;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->-$$Nest$fgetshadowDrawable(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 615
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 562
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog$AlertDialogView;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->-$$Nest$fgetblurredBackground(Lorg/telegram/ui/ActionBar/AlertDialog;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog$AlertDialogView;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->-$$Nest$fgetblurredNativeBackground(Lorg/telegram/ui/ActionBar/AlertDialog;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 564
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog$AlertDialogView;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->-$$Nest$fgetprogressViewStyle(Lorg/telegram/ui/ActionBar/AlertDialog;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog$AlertDialogView;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->-$$Nest$fgetprogressViewContainer(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x41900000    # 18.0f

    .line 565
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    .line 566
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/AlertDialog$AlertDialogView;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/AlertDialog;->-$$Nest$fgetprogressViewContainer(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/AlertDialog$AlertDialogView;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/AlertDialog;->-$$Nest$fgetprogressViewContainer(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getScaleX()F

    move-result v2

    mul-float/2addr v1, v2

    .line 567
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/AlertDialog$AlertDialogView;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/AlertDialog;->-$$Nest$fgetprogressViewContainer(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lorg/telegram/ui/ActionBar/AlertDialog$AlertDialogView;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/AlertDialog;->-$$Nest$fgetprogressViewContainer(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/widget/FrameLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getScaleY()F

    move-result v3

    mul-float/2addr v2, v3

    .line 568
    sget-object v3, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    .line 569
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v4, v1

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    .line 570
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v6, v2

    div-float/2addr v6, v5

    .line 571
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v7, v1

    div-float/2addr v7, v5

    .line 572
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v1, v2

    div-float/2addr v1, v5

    .line 568
    invoke-virtual {v3, v4, v6, v7, v1}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_0

    :cond_0
    const/high16 v0, 0x41200000    # 10.0f

    .line 575
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    .line 576
    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 580
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/AlertDialog$AlertDialogView;->blurPaintAlpha:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/AlertDialog$AlertDialogView;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/AlertDialog;->-$$Nest$fgetblurPaint(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/graphics/Paint;

    move-result-object v2

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v2, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/AnimatedFloat;->set(F)F

    move-result v1

    .line 581
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/AlertDialog$AlertDialogView;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/AlertDialog;->-$$Nest$fgetblurPaint(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/graphics/Paint;

    move-result-object v2

    const/high16 v4, 0x437f0000    # 255.0f

    if-eqz v2, :cond_2

    .line 582
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/AlertDialog$AlertDialogView;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/AlertDialog;->-$$Nest$fgetblurPaint(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/graphics/Paint;

    move-result-object v2

    mul-float v5, v1, v4

    float-to-int v5, v5

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 583
    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    iget-object v5, p0, Lorg/telegram/ui/ActionBar/AlertDialog$AlertDialogView;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/AlertDialog;->-$$Nest$fgetblurPaint(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/graphics/Paint;

    move-result-object v5

    invoke-virtual {p1, v2, v0, v0, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 587
    :cond_2
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/AlertDialog$AlertDialogView;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/AlertDialog;->-$$Nest$fgetdimBlurPaint(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/graphics/Paint;

    move-result-object v2

    if-nez v2, :cond_3

    .line 588
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/AlertDialog$AlertDialogView;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    new-instance v5, Landroid/graphics/Paint;

    const/4 v6, 0x1

    invoke-direct {v5, v6}, Landroid/graphics/Paint;-><init>(I)V

    invoke-static {v2, v5}, Lorg/telegram/ui/ActionBar/AlertDialog;->-$$Nest$fputdimBlurPaint(Lorg/telegram/ui/ActionBar/AlertDialog;Landroid/graphics/Paint;)V

    .line 589
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/AlertDialog$AlertDialogView;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/AlertDialog;->-$$Nest$fgetdimBlurPaint(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/graphics/Paint;

    move-result-object v2

    iget-object v5, p0, Lorg/telegram/ui/ActionBar/AlertDialog$AlertDialogView;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/AlertDialog;->-$$Nest$fgetdimAlpha(Lorg/telegram/ui/ActionBar/AlertDialog;)F

    move-result v5

    mul-float/2addr v5, v4

    float-to-int v4, v5

    const/high16 v5, -0x1000000

    invoke-static {v5, v4}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 591
    :cond_3
    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    iget-object v4, p0, Lorg/telegram/ui/ActionBar/AlertDialog$AlertDialogView;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/AlertDialog;->-$$Nest$fgetdimBlurPaint(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/graphics/Paint;

    move-result-object v4

    invoke-virtual {p1, v2, v0, v0, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 594
    iget-object v4, p0, Lorg/telegram/ui/ActionBar/AlertDialog$AlertDialogView;->backgroundPaint:Landroid/graphics/Paint;

    iget-object v5, p0, Lorg/telegram/ui/ActionBar/AlertDialog$AlertDialogView;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/AlertDialog;->-$$Nest$fgetbackgroundColor(Lorg/telegram/ui/ActionBar/AlertDialog;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 595
    iget-object v4, p0, Lorg/telegram/ui/ActionBar/AlertDialog$AlertDialogView;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->getAlpha()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lorg/telegram/ui/ActionBar/AlertDialog$AlertDialogView;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v6}, Lorg/telegram/ui/ActionBar/AlertDialog;->-$$Nest$fgetblurOpacity(Lorg/telegram/ui/ActionBar/AlertDialog;)F

    move-result v6

    sub-float/2addr v6, v3

    mul-float/2addr v1, v6

    add-float/2addr v1, v3

    mul-float/2addr v5, v1

    float-to-int v1, v5

    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 596
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/AlertDialog$AlertDialogView;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0, v0, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 598
    :cond_4
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 361
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog$AlertDialogView;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->-$$Nest$fgetwithCancelDialog(Lorg/telegram/ui/ActionBar/AlertDialog;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 362
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/AlertDialog$AlertDialogView;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->showCancelAlert()V

    const/4 p1, 0x0

    return p1

    .line 365
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    .line 518
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    move-object p1, p0

    .line 519
    iget-object v0, p1, Lorg/telegram/ui/ActionBar/AlertDialog$AlertDialogView;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->-$$Nest$fgetprogressViewStyle(Lorg/telegram/ui/ActionBar/AlertDialog;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    sub-int/2addr p4, p2

    .line 520
    iget-object p2, p1, Lorg/telegram/ui/ActionBar/AlertDialog$AlertDialogView;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/AlertDialog;->-$$Nest$fgetprogressViewContainer(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/widget/FrameLayout;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    sub-int/2addr p4, p2

    div-int/lit8 p4, p4, 0x2

    sub-int/2addr p5, p3

    .line 521
    iget-object p2, p1, Lorg/telegram/ui/ActionBar/AlertDialog$AlertDialogView;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/AlertDialog;->-$$Nest$fgetprogressViewContainer(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/widget/FrameLayout;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    sub-int/2addr p5, p2

    div-int/lit8 p5, p5, 0x2

    .line 522
    iget-object p2, p1, Lorg/telegram/ui/ActionBar/AlertDialog$AlertDialogView;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/AlertDialog;->-$$Nest$fgetprogressViewContainer(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/widget/FrameLayout;

    move-result-object p2

    iget-object p3, p1, Lorg/telegram/ui/ActionBar/AlertDialog$AlertDialogView;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {p3}, Lorg/telegram/ui/ActionBar/AlertDialog;->-$$Nest$fgetprogressViewContainer(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/widget/FrameLayout;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredWidth()I

    move-result p3

    add-int/2addr p3, p4

    iget-object v0, p1, Lorg/telegram/ui/ActionBar/AlertDialog$AlertDialogView;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->-$$Nest$fgetprogressViewContainer(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int/2addr v0, p5

    invoke-virtual {p2, p4, p5, p3, v0}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    .line 523
    :cond_0
    iget-object p2, p1, Lorg/telegram/ui/ActionBar/AlertDialog$AlertDialogView;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/AlertDialog;->-$$Nest$fgetcontentScrollView(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/widget/ScrollView;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 524
    iget-object p2, p1, Lorg/telegram/ui/ActionBar/AlertDialog$AlertDialogView;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/AlertDialog;->-$$Nest$fgetonScrollChangedListener(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    move-result-object p2

    if-nez p2, :cond_1

    .line 525
    iget-object p2, p1, Lorg/telegram/ui/ActionBar/AlertDialog$AlertDialogView;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    new-instance p3, Lorg/telegram/ui/ActionBar/AlertDialog$AlertDialogView$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0}, Lorg/telegram/ui/ActionBar/AlertDialog$AlertDialogView$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/ActionBar/AlertDialog$AlertDialogView;)V

    invoke-static {p2, p3}, Lorg/telegram/ui/ActionBar/AlertDialog;->-$$Nest$fputonScrollChangedListener(Lorg/telegram/ui/ActionBar/AlertDialog;Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 530
    iget-object p2, p1, Lorg/telegram/ui/ActionBar/AlertDialog$AlertDialogView;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/AlertDialog;->-$$Nest$fgetcontentScrollView(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/widget/ScrollView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p2

    iget-object p3, p1, Lorg/telegram/ui/ActionBar/AlertDialog$AlertDialogView;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {p3}, Lorg/telegram/ui/ActionBar/AlertDialog;->-$$Nest$fgetonScrollChangedListener(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 532
    :cond_1
    iget-object p2, p1, Lorg/telegram/ui/ActionBar/AlertDialog$AlertDialogView;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/AlertDialog;->-$$Nest$fgetonScrollChangedListener(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    move-result-object p2

    invoke-interface {p2}, Landroid/view/ViewTreeObserver$OnScrollChangedListener;->onScrollChanged()V

    .line 535
    :cond_2
    :goto_0
    iget-object p2, p1, Lorg/telegram/ui/ActionBar/AlertDialog$AlertDialogView;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/AlertDialog;->-$$Nest$fgetcontainerViewLocation(Lorg/telegram/ui/ActionBar/AlertDialog;)[I

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 536
    iget-object p2, p1, Lorg/telegram/ui/ActionBar/AlertDialog$AlertDialogView;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/AlertDialog;->-$$Nest$fgetblurMatrix(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/graphics/Matrix;

    move-result-object p2

    if-eqz p2, :cond_3

    iget-object p2, p1, Lorg/telegram/ui/ActionBar/AlertDialog$AlertDialogView;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/AlertDialog;->-$$Nest$fgetblurShader(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/graphics/BitmapShader;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 537
    iget-object p2, p1, Lorg/telegram/ui/ActionBar/AlertDialog$AlertDialogView;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/AlertDialog;->-$$Nest$fgetblurMatrix(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/graphics/Matrix;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/Matrix;->reset()V

    .line 538
    iget-object p2, p1, Lorg/telegram/ui/ActionBar/AlertDialog$AlertDialogView;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/AlertDialog;->-$$Nest$fgetblurMatrix(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/graphics/Matrix;

    move-result-object p2

    const/high16 p3, 0x41000000    # 8.0f

    invoke-virtual {p2, p3, p3}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 539
    iget-object p2, p1, Lorg/telegram/ui/ActionBar/AlertDialog$AlertDialogView;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/AlertDialog;->-$$Nest$fgetblurMatrix(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/graphics/Matrix;

    move-result-object p2

    iget-object p3, p1, Lorg/telegram/ui/ActionBar/AlertDialog$AlertDialogView;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {p3}, Lorg/telegram/ui/ActionBar/AlertDialog;->-$$Nest$fgetcontainerViewLocation(Lorg/telegram/ui/ActionBar/AlertDialog;)[I

    move-result-object p3

    const/4 p4, 0x0

    aget p3, p3, p4

    neg-int p3, p3

    int-to-float p3, p3

    iget-object p4, p1, Lorg/telegram/ui/ActionBar/AlertDialog$AlertDialogView;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {p4}, Lorg/telegram/ui/ActionBar/AlertDialog;->-$$Nest$fgetcontainerViewLocation(Lorg/telegram/ui/ActionBar/AlertDialog;)[I

    move-result-object p4

    const/4 p5, 0x1

    aget p4, p4, p5

    neg-int p4, p4

    int-to-float p4, p4

    invoke-virtual {p2, p3, p4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 540
    iget-object p2, p1, Lorg/telegram/ui/ActionBar/AlertDialog$AlertDialogView;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/AlertDialog;->-$$Nest$fgetblurShader(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/graphics/BitmapShader;

    move-result-object p2

    iget-object p3, p1, Lorg/telegram/ui/ActionBar/AlertDialog$AlertDialogView;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {p3}, Lorg/telegram/ui/ActionBar/AlertDialog;->-$$Nest$fgetblurMatrix(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/graphics/Matrix;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    :cond_3
    return-void
.end method

.method protected onMeasure(II)V
    .locals 12

    .line 370
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog$AlertDialogView;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->-$$Nest$fgetprogressViewStyle(Lorg/telegram/ui/ActionBar/AlertDialog;)I

    move-result v0

    const/4 v1, 0x3

    const/high16 v2, 0x40000000    # 2.0f

    if-ne v0, v1, :cond_0

    .line 371
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog$AlertDialogView;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->-$$Nest$fgetprogressViewContainer(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/high16 v1, 0x42ac0000    # 86.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-static {v3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {v0, v3, v1}, Landroid/view/View;->measure(II)V

    .line 372
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 374
    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog$AlertDialogView;->inLayout:Z

    .line 375
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 376
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 378
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/AlertDialog$AlertDialogView;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/AlertDialog;->-$$Nest$fgetcustomWidth(Lorg/telegram/ui/ActionBar/AlertDialog;)I

    move-result v1

    if-lez v1, :cond_1

    .line 379
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/AlertDialog$AlertDialogView;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->-$$Nest$fgetcustomWidth(Lorg/telegram/ui/ActionBar/AlertDialog;)I

    move-result p1

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/AlertDialog$AlertDialogView;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/AlertDialog;->-$$Nest$fgetbackgroundPaddings(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr p1, v1

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/AlertDialog$AlertDialogView;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/AlertDialog;->-$$Nest$fgetbackgroundPaddings(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr p1, v1

    .line 383
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    .line 384
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    sub-int v1, p1, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    sub-int/2addr v1, v3

    const/high16 v3, 0x42400000    # 48.0f

    .line 386
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int v3, v1, v3

    invoke-static {v3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 387
    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 390
    iget-object v5, p0, Lorg/telegram/ui/ActionBar/AlertDialog$AlertDialogView;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    iget-object v5, v5, Lorg/telegram/ui/ActionBar/AlertDialog;->buttonsLayout:Landroid/view/ViewGroup;

    const/4 v6, 0x0

    if-eqz v5, :cond_4

    .line 391
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    move v7, v6

    :goto_0
    if-ge v7, v5, :cond_3

    .line 393
    iget-object v8, p0, Lorg/telegram/ui/ActionBar/AlertDialog$AlertDialogView;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    iget-object v8, v8, Lorg/telegram/ui/ActionBar/AlertDialog;->buttonsLayout:Landroid/view/ViewGroup;

    invoke-virtual {v8, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 394
    instance-of v9, v8, Landroid/widget/TextView;

    if-eqz v9, :cond_2

    .line 395
    check-cast v8, Landroid/widget/TextView;

    const/high16 v9, 0x41c00000    # 24.0f

    .line 396
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    sub-int v9, v1, v9

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setMaxWidth(I)V

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 399
    :cond_3
    iget-object v5, p0, Lorg/telegram/ui/ActionBar/AlertDialog$AlertDialogView;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    iget-object v5, v5, Lorg/telegram/ui/ActionBar/AlertDialog;->buttonsLayout:Landroid/view/ViewGroup;

    invoke-virtual {v5, v4, p2}, Landroid/view/View;->measure(II)V

    .line 400
    iget-object v5, p0, Lorg/telegram/ui/ActionBar/AlertDialog$AlertDialogView;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    iget-object v5, v5, Lorg/telegram/ui/ActionBar/AlertDialog;->buttonsLayout:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 401
    iget-object v7, p0, Lorg/telegram/ui/ActionBar/AlertDialog$AlertDialogView;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    iget-object v7, v7, Lorg/telegram/ui/ActionBar/AlertDialog;->buttonsLayout:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    iget v8, v5, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v7, v8

    iget v5, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v7, v5

    sub-int v5, v0, v7

    goto :goto_1

    :cond_4
    move v5, v0

    .line 403
    :goto_1
    iget-object v7, p0, Lorg/telegram/ui/ActionBar/AlertDialog$AlertDialogView;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v7}, Lorg/telegram/ui/ActionBar/AlertDialog;->-$$Nest$fgetsecondTitleTextView(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/widget/TextView;

    move-result-object v7

    const/high16 v8, -0x80000000

    if-eqz v7, :cond_5

    .line 404
    iget-object v7, p0, Lorg/telegram/ui/ActionBar/AlertDialog$AlertDialogView;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v7}, Lorg/telegram/ui/ActionBar/AlertDialog;->-$$Nest$fgetsecondTitleTextView(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/widget/TextView;

    move-result-object v7

    invoke-static {v3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v9

    invoke-static {v9, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    invoke-virtual {v7, v9, p2}, Landroid/view/View;->measure(II)V

    .line 406
    :cond_5
    iget-object v7, p0, Lorg/telegram/ui/ActionBar/AlertDialog$AlertDialogView;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v7}, Lorg/telegram/ui/ActionBar/AlertDialog;->-$$Nest$fgettitleTextView(Lorg/telegram/ui/ActionBar/AlertDialog;)Lorg/telegram/ui/Components/spoilers/SpoilersTextView;

    move-result-object v7

    const/high16 v9, 0x41000000    # 8.0f

    if-eqz v7, :cond_7

    .line 407
    iget-object v7, p0, Lorg/telegram/ui/ActionBar/AlertDialog$AlertDialogView;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v7}, Lorg/telegram/ui/ActionBar/AlertDialog;->-$$Nest$fgetsecondTitleTextView(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/widget/TextView;

    move-result-object v7

    if-eqz v7, :cond_6

    .line 408
    iget-object v7, p0, Lorg/telegram/ui/ActionBar/AlertDialog$AlertDialogView;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v7}, Lorg/telegram/ui/ActionBar/AlertDialog;->-$$Nest$fgettitleTextView(Lorg/telegram/ui/ActionBar/AlertDialog;)Lorg/telegram/ui/Components/spoilers/SpoilersTextView;

    move-result-object v7

    invoke-static {v3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v10

    iget-object v11, p0, Lorg/telegram/ui/ActionBar/AlertDialog$AlertDialogView;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v11}, Lorg/telegram/ui/ActionBar/AlertDialog;->-$$Nest$fgetsecondTitleTextView(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/widget/TextView;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    sub-int/2addr v10, v11

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    sub-int/2addr v10, v11

    invoke-static {v10, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    invoke-virtual {v7, v10, p2}, Landroid/view/View;->measure(II)V

    goto :goto_2

    .line 410
    :cond_6
    iget-object v7, p0, Lorg/telegram/ui/ActionBar/AlertDialog$AlertDialogView;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v7}, Lorg/telegram/ui/ActionBar/AlertDialog;->-$$Nest$fgettitleTextView(Lorg/telegram/ui/ActionBar/AlertDialog;)Lorg/telegram/ui/Components/spoilers/SpoilersTextView;

    move-result-object v7

    invoke-virtual {v7, v3, p2}, Landroid/view/View;->measure(II)V

    .line 413
    :cond_7
    :goto_2
    iget-object v7, p0, Lorg/telegram/ui/ActionBar/AlertDialog$AlertDialogView;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v7}, Lorg/telegram/ui/ActionBar/AlertDialog;->-$$Nest$fgettitleContainer(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/widget/FrameLayout;

    move-result-object v7

    if-eqz v7, :cond_8

    .line 414
    iget-object v7, p0, Lorg/telegram/ui/ActionBar/AlertDialog$AlertDialogView;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v7}, Lorg/telegram/ui/ActionBar/AlertDialog;->-$$Nest$fgettitleContainer(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/widget/FrameLayout;

    move-result-object v7

    invoke-virtual {v7, v3, p2}, Landroid/view/View;->measure(II)V

    .line 415
    iget-object v7, p0, Lorg/telegram/ui/ActionBar/AlertDialog$AlertDialogView;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v7}, Lorg/telegram/ui/ActionBar/AlertDialog;->-$$Nest$fgettitleContainer(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/widget/FrameLayout;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout$LayoutParams;

    .line 416
    iget-object v10, p0, Lorg/telegram/ui/ActionBar/AlertDialog$AlertDialogView;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v10}, Lorg/telegram/ui/ActionBar/AlertDialog;->-$$Nest$fgettitleContainer(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/widget/FrameLayout;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    iget v11, v7, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v10, v11

    iget v7, v7, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v10, v7

    sub-int/2addr v5, v10

    .line 418
    :cond_8
    iget-object v7, p0, Lorg/telegram/ui/ActionBar/AlertDialog$AlertDialogView;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v7}, Lorg/telegram/ui/ActionBar/AlertDialog;->-$$Nest$fgetsubtitleTextView(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/widget/TextView;

    move-result-object v7

    if-eqz v7, :cond_9

    .line 419
    iget-object v7, p0, Lorg/telegram/ui/ActionBar/AlertDialog$AlertDialogView;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v7}, Lorg/telegram/ui/ActionBar/AlertDialog;->-$$Nest$fgetsubtitleTextView(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7, v3, p2}, Landroid/view/View;->measure(II)V

    .line 420
    iget-object v7, p0, Lorg/telegram/ui/ActionBar/AlertDialog$AlertDialogView;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v7}, Lorg/telegram/ui/ActionBar/AlertDialog;->-$$Nest$fgetsubtitleTextView(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout$LayoutParams;

    .line 421
    iget-object v10, p0, Lorg/telegram/ui/ActionBar/AlertDialog$AlertDialogView;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v10}, Lorg/telegram/ui/ActionBar/AlertDialog;->-$$Nest$fgetsubtitleTextView(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/widget/TextView;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    iget v11, v7, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v10, v11

    iget v7, v7, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v10, v7

    sub-int/2addr v5, v10

    .line 423
    :cond_9
    iget-object v7, p0, Lorg/telegram/ui/ActionBar/AlertDialog$AlertDialogView;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v7}, Lorg/telegram/ui/ActionBar/AlertDialog;->-$$Nest$fgettopImageView(Lorg/telegram/ui/ActionBar/AlertDialog;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v7

    if-eqz v7, :cond_a

    .line 424
    iget-object v7, p0, Lorg/telegram/ui/ActionBar/AlertDialog$AlertDialogView;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v7}, Lorg/telegram/ui/ActionBar/AlertDialog;->-$$Nest$fgettopImageView(Lorg/telegram/ui/ActionBar/AlertDialog;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v7

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    iget-object v10, p0, Lorg/telegram/ui/ActionBar/AlertDialog$AlertDialogView;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v10}, Lorg/telegram/ui/ActionBar/AlertDialog;->-$$Nest$fgettopHeight(Lorg/telegram/ui/ActionBar/AlertDialog;)I

    move-result v10

    int-to-float v10, v10

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    invoke-static {v10, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    invoke-virtual {v7, v1, v10}, Landroid/view/View;->measure(II)V

    .line 425
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/AlertDialog$AlertDialogView;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/AlertDialog;->-$$Nest$fgettopImageView(Lorg/telegram/ui/ActionBar/AlertDialog;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    sub-int/2addr v5, v1

    .line 427
    :cond_a
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/AlertDialog$AlertDialogView;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/AlertDialog;->-$$Nest$fgettopView(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_d

    .line 430
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/AlertDialog$AlertDialogView;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/AlertDialog;->-$$Nest$fgetaspectRatio(Lorg/telegram/ui/ActionBar/AlertDialog;)F

    move-result v1

    const/4 v7, 0x0

    cmpl-float v1, v1, v7

    if-ltz v1, :cond_c

    .line 431
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/AlertDialog$AlertDialogView;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/AlertDialog;->-$$Nest$fgetaspectRatio(Lorg/telegram/ui/ActionBar/AlertDialog;)F

    move-result p2

    cmpl-float p2, p2, v7

    if-nez p2, :cond_b

    int-to-float p2, p1

    const/high16 v1, 0x446a0000    # 936.0f

    div-float/2addr p2, v1

    const/high16 v1, 0x43b10000    # 354.0f

    :goto_3
    mul-float/2addr p2, v1

    float-to-int p2, p2

    goto :goto_4

    :cond_b
    int-to-float p2, p1

    .line 435
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/AlertDialog$AlertDialogView;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/AlertDialog;->-$$Nest$fgetaspectRatio(Lorg/telegram/ui/ActionBar/AlertDialog;)F

    move-result v1

    goto :goto_3

    .line 437
    :goto_4
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/AlertDialog$AlertDialogView;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/AlertDialog;->-$$Nest$fgettopView(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/view/View;

    move-result-object v1

    invoke-static {p1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    invoke-static {p2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    invoke-virtual {v1, v7, v10}, Landroid/view/View;->measure(II)V

    .line 438
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/AlertDialog$AlertDialogView;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/AlertDialog;->-$$Nest$fgettopView(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput p2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_5

    .line 440
    :cond_c
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/AlertDialog$AlertDialogView;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/AlertDialog;->-$$Nest$fgettopView(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/view/View;

    move-result-object v1

    invoke-static {p1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    invoke-virtual {v1, v7, p2}, Landroid/view/View;->measure(II)V

    .line 442
    :goto_5
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/AlertDialog$AlertDialogView;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/AlertDialog;->-$$Nest$fgettopView(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    sub-int/2addr v5, p2

    .line 444
    :cond_d
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/AlertDialog$AlertDialogView;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/AlertDialog;->-$$Nest$fgetprogressViewStyle(Lorg/telegram/ui/ActionBar/AlertDialog;)I

    move-result p2

    const/16 v1, 0x8

    if-nez p2, :cond_15

    .line 445
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/AlertDialog$AlertDialogView;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/AlertDialog;->-$$Nest$fgetcontentScrollView(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/widget/ScrollView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout$LayoutParams;

    .line 447
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/AlertDialog$AlertDialogView;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/AlertDialog;->-$$Nest$fgetcustomView(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_10

    .line 448
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/AlertDialog$AlertDialogView;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/AlertDialog;->-$$Nest$fgettitleTextView(Lorg/telegram/ui/ActionBar/AlertDialog;)Lorg/telegram/ui/Components/spoilers/SpoilersTextView;

    move-result-object v2

    if-nez v2, :cond_e

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/AlertDialog$AlertDialogView;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/AlertDialog;->-$$Nest$fgetmessageTextView(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-ne v2, v1, :cond_e

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/AlertDialog$AlertDialogView;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/AlertDialog;->-$$Nest$fgetitems(Lorg/telegram/ui/ActionBar/AlertDialog;)[Ljava/lang/CharSequence;

    move-result-object v1

    if-nez v1, :cond_e

    const/high16 v1, 0x41800000    # 16.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    goto :goto_6

    :cond_e
    move v1, v6

    :goto_6
    iput v1, p2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 449
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/AlertDialog$AlertDialogView;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    iget-object v1, v1, Lorg/telegram/ui/ActionBar/AlertDialog;->buttonsLayout:Landroid/view/ViewGroup;

    if-nez v1, :cond_f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    goto :goto_7

    :cond_f
    move v1, v6

    :goto_7
    iput v1, p2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    goto :goto_a

    .line 450
    :cond_10
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/AlertDialog$AlertDialogView;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/AlertDialog;->-$$Nest$fgetitems(Lorg/telegram/ui/ActionBar/AlertDialog;)[Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_12

    .line 451
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/AlertDialog$AlertDialogView;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/AlertDialog;->-$$Nest$fgettitleTextView(Lorg/telegram/ui/ActionBar/AlertDialog;)Lorg/telegram/ui/Components/spoilers/SpoilersTextView;

    move-result-object v2

    if-nez v2, :cond_11

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/AlertDialog$AlertDialogView;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/AlertDialog;->-$$Nest$fgetmessageTextView(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-ne v2, v1, :cond_11

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    goto :goto_8

    :cond_11
    move v1, v6

    :goto_8
    iput v1, p2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 452
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    iput v1, p2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    goto :goto_a

    .line 453
    :cond_12
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/AlertDialog$AlertDialogView;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/AlertDialog;->-$$Nest$fgetmessageTextView(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_14

    .line 454
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/AlertDialog$AlertDialogView;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/AlertDialog;->-$$Nest$fgettitleTextView(Lorg/telegram/ui/ActionBar/AlertDialog;)Lorg/telegram/ui/Components/spoilers/SpoilersTextView;

    move-result-object v1

    if-nez v1, :cond_13

    const/high16 v1, 0x41980000    # 19.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    goto :goto_9

    :cond_13
    move v1, v6

    :goto_9
    iput v1, p2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    const/high16 v1, 0x41a00000    # 20.0f

    .line 455
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    iput v1, p2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 458
    :cond_14
    :goto_a
    iget v1, p2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    iget p2, p2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v1, p2

    sub-int/2addr v5, v1

    .line 459
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/AlertDialog$AlertDialogView;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/AlertDialog;->-$$Nest$fgetcontentScrollView(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/widget/ScrollView;

    move-result-object p2

    invoke-static {v5, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p2, v4, v1}, Landroid/view/View;->measure(II)V

    .line 460
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/AlertDialog$AlertDialogView;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/AlertDialog;->-$$Nest$fgetcontentScrollView(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/widget/ScrollView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    sub-int/2addr v5, p2

    goto/16 :goto_d

    .line 462
    :cond_15
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/AlertDialog$AlertDialogView;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/AlertDialog;->-$$Nest$fgetprogressViewContainer(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/widget/FrameLayout;

    move-result-object p2

    if-eqz p2, :cond_16

    .line 463
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/AlertDialog$AlertDialogView;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/AlertDialog;->-$$Nest$fgetprogressViewContainer(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/widget/FrameLayout;

    move-result-object p2

    invoke-static {v5, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p2, v3, v1}, Landroid/view/View;->measure(II)V

    .line 464
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/AlertDialog$AlertDialogView;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/AlertDialog;->-$$Nest$fgetprogressViewContainer(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/widget/FrameLayout;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout$LayoutParams;

    .line 465
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/AlertDialog$AlertDialogView;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/AlertDialog;->-$$Nest$fgetprogressViewContainer(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget v4, p2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v1, v4

    iget p2, p2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    :goto_b
    add-int/2addr v1, p2

    sub-int/2addr v5, v1

    goto :goto_c

    .line 466
    :cond_16
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/AlertDialog$AlertDialogView;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/AlertDialog;->-$$Nest$fgetmessageTextView(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/widget/TextView;

    move-result-object p2

    if-eqz p2, :cond_17

    .line 467
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/AlertDialog$AlertDialogView;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/AlertDialog;->-$$Nest$fgetmessageTextView(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/widget/TextView;

    move-result-object p2

    invoke-static {v5, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {p2, v3, v4}, Landroid/view/View;->measure(II)V

    .line 468
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/AlertDialog$AlertDialogView;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/AlertDialog;->-$$Nest$fgetmessageTextView(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result p2

    if-eq p2, v1, :cond_17

    .line 469
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/AlertDialog$AlertDialogView;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/AlertDialog;->-$$Nest$fgetmessageTextView(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout$LayoutParams;

    .line 470
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/AlertDialog$AlertDialogView;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/AlertDialog;->-$$Nest$fgetmessageTextView(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget v4, p2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v1, v4

    iget p2, p2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    goto :goto_b

    .line 473
    :cond_17
    :goto_c
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/AlertDialog$AlertDialogView;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/AlertDialog;->-$$Nest$fgetlineProgressView(Lorg/telegram/ui/ActionBar/AlertDialog;)Lorg/telegram/ui/Components/LineProgressView;

    move-result-object p2

    if-eqz p2, :cond_18

    .line 474
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/AlertDialog$AlertDialogView;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/AlertDialog;->-$$Nest$fgetlineProgressView(Lorg/telegram/ui/ActionBar/AlertDialog;)Lorg/telegram/ui/Components/LineProgressView;

    move-result-object p2

    const/high16 v1, 0x40800000    # 4.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p2, v3, v1}, Landroid/view/View;->measure(II)V

    .line 475
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/AlertDialog$AlertDialogView;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/AlertDialog;->-$$Nest$fgetlineProgressView(Lorg/telegram/ui/ActionBar/AlertDialog;)Lorg/telegram/ui/Components/LineProgressView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout$LayoutParams;

    .line 476
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/AlertDialog$AlertDialogView;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/AlertDialog;->-$$Nest$fgetlineProgressView(Lorg/telegram/ui/ActionBar/AlertDialog;)Lorg/telegram/ui/Components/LineProgressView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget v2, p2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v1, v2

    iget p2, p2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v1, p2

    sub-int/2addr v5, v1

    .line 478
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/AlertDialog$AlertDialogView;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/AlertDialog;->-$$Nest$fgetlineProgressViewPercent(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/widget/TextView;

    move-result-object p2

    invoke-static {v5, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p2, v3, v1}, Landroid/view/View;->measure(II)V

    .line 479
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/AlertDialog$AlertDialogView;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/AlertDialog;->-$$Nest$fgetlineProgressViewPercent(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout$LayoutParams;

    .line 480
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/AlertDialog$AlertDialogView;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/AlertDialog;->-$$Nest$fgetlineProgressViewPercent(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget v2, p2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v1, v2

    iget p2, p2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v1, p2

    sub-int/2addr v5, v1

    :cond_18
    :goto_d
    sub-int/2addr v0, v5

    .line 484
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p2

    add-int/2addr v0, p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p2

    add-int/2addr v0, p2

    iget-object p2, p0, Lorg/telegram/ui/ActionBar/AlertDialog$AlertDialogView;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/AlertDialog;->-$$Nest$fgettopAnimationIsNew(Lorg/telegram/ui/ActionBar/AlertDialog;)Z

    move-result p2

    if-eqz p2, :cond_19

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    goto :goto_e

    :cond_19
    move p2, v6

    :goto_e
    sub-int/2addr v0, p2

    invoke-virtual {p0, p1, v0}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 485
    iput-boolean v6, p0, Lorg/telegram/ui/ActionBar/AlertDialog$AlertDialogView;->inLayout:Z

    .line 487
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/AlertDialog$AlertDialogView;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->-$$Nest$fgetlastScreenWidth(Lorg/telegram/ui/ActionBar/AlertDialog;)I

    move-result p1

    sget-object p2, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget p2, p2, Landroid/graphics/Point;->x:I

    if-eq p1, p2, :cond_1a

    .line 488
    new-instance p1, Lorg/telegram/ui/ActionBar/AlertDialog$AlertDialogView$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lorg/telegram/ui/ActionBar/AlertDialog$AlertDialogView$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/ActionBar/AlertDialog$AlertDialogView;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_1a
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 352
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog$AlertDialogView;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->-$$Nest$fgetwithCancelDialog(Lorg/telegram/ui/ActionBar/AlertDialog;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 353
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/AlertDialog$AlertDialogView;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->showCancelAlert()V

    const/4 p1, 0x0

    return p1

    .line 356
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public requestLayout()V
    .locals 1

    .line 546
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog$AlertDialogView;->inLayout:Z

    if-eqz v0, :cond_0

    return-void

    .line 549
    :cond_0
    invoke-super {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    return-void
.end method
