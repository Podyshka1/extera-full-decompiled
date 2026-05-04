.class public Lorg/telegram/ui/GradientHeaderActivity$ContentView;
.super Lorg/telegram/ui/Components/NestedSizeNotifierLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/GradientHeaderActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ContentView"
.end annotation


# instance fields
.field private backgroundGradient:Landroid/graphics/LinearGradient;

.field private final backgroundGradientPaint:Landroid/graphics/Paint;

.field private final backgroundPaint:Landroid/graphics/Paint;

.field bottomInterceptedTouch:Z

.field lastSize:I

.field private lightStatusBar:Ljava/lang/Boolean;

.field subtitleInterceptedTouch:Z

.field final synthetic this$0:Lorg/telegram/ui/GradientHeaderActivity;

.field topInterceptedTouch:Z


# direct methods
.method public constructor <init>(Lorg/telegram/ui/GradientHeaderActivity;Landroid/content/Context;)V
    .locals 0

    .line 244
    iput-object p1, p0, Lorg/telegram/ui/GradientHeaderActivity$ContentView;->this$0:Lorg/telegram/ui/GradientHeaderActivity;

    .line 245
    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/NestedSizeNotifierLayout;-><init>(Landroid/content/Context;)V

    .line 330
    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/GradientHeaderActivity$ContentView;->backgroundPaint:Landroid/graphics/Paint;

    .line 331
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/GradientHeaderActivity$ContentView;->backgroundGradientPaint:Landroid/graphics/Paint;

    return-void
.end method

.method private setLightStatusBar(I)V
    .locals 2

    .line 428
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->computePerceivedBrightness(I)F

    move-result p1

    const v0, 0x3f389375    # 0.721f

    cmpl-float p1, p1, v0

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 429
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/GradientHeaderActivity$ContentView;->lightStatusBar:Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eq v0, p1, :cond_1

    goto :goto_1

    :cond_1
    return-void

    .line 430
    :cond_2
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/GradientHeaderActivity$ContentView;->this$0:Lorg/telegram/ui/GradientHeaderActivity;

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/GradientHeaderActivity$ContentView;->lightStatusBar:Ljava/lang/Boolean;

    invoke-static {v0, p1}, Lorg/telegram/messenger/AndroidUtilities;->setLightStatusBar(Landroid/view/View;Z)V

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 17

    move-object/from16 v0, p0

    .line 336
    iget-object v1, v0, Lorg/telegram/ui/GradientHeaderActivity$ContentView;->this$0:Lorg/telegram/ui/GradientHeaderActivity;

    iget-object v2, v1, Lorg/telegram/ui/GradientHeaderActivity;->backgroundView:Lorg/telegram/ui/GradientHeaderActivity$BackgroundView;

    .line 337
    invoke-static {v1}, Lorg/telegram/ui/GradientHeaderActivity;->-$$Nest$fgetisDialogVisible(Lorg/telegram/ui/GradientHeaderActivity;)Z

    move-result v1

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    if-nez v1, :cond_1

    .line 338
    iget-object v1, v0, Lorg/telegram/ui/GradientHeaderActivity$ContentView;->this$0:Lorg/telegram/ui/GradientHeaderActivity;

    invoke-static {v1}, Lorg/telegram/ui/GradientHeaderActivity;->-$$Nest$fgetinc(Lorg/telegram/ui/GradientHeaderActivity;)Z

    move-result v1

    const v5, 0x3c83126f    # 0.016f

    if-eqz v1, :cond_0

    .line 339
    iget-object v1, v0, Lorg/telegram/ui/GradientHeaderActivity$ContentView;->this$0:Lorg/telegram/ui/GradientHeaderActivity;

    invoke-static {v1}, Lorg/telegram/ui/GradientHeaderActivity;->-$$Nest$fgetprogress(Lorg/telegram/ui/GradientHeaderActivity;)F

    move-result v6

    add-float/2addr v6, v5

    invoke-static {v1, v6}, Lorg/telegram/ui/GradientHeaderActivity;->-$$Nest$fputprogress(Lorg/telegram/ui/GradientHeaderActivity;F)V

    .line 340
    iget-object v1, v0, Lorg/telegram/ui/GradientHeaderActivity$ContentView;->this$0:Lorg/telegram/ui/GradientHeaderActivity;

    invoke-static {v1}, Lorg/telegram/ui/GradientHeaderActivity;->-$$Nest$fgetprogress(Lorg/telegram/ui/GradientHeaderActivity;)F

    move-result v1

    const/high16 v5, 0x40400000    # 3.0f

    cmpl-float v1, v1, v5

    if-lez v1, :cond_1

    .line 341
    iget-object v1, v0, Lorg/telegram/ui/GradientHeaderActivity$ContentView;->this$0:Lorg/telegram/ui/GradientHeaderActivity;

    invoke-static {v1, v3}, Lorg/telegram/ui/GradientHeaderActivity;->-$$Nest$fputinc(Lorg/telegram/ui/GradientHeaderActivity;Z)V

    goto :goto_0

    .line 344
    :cond_0
    iget-object v1, v0, Lorg/telegram/ui/GradientHeaderActivity$ContentView;->this$0:Lorg/telegram/ui/GradientHeaderActivity;

    invoke-static {v1}, Lorg/telegram/ui/GradientHeaderActivity;->-$$Nest$fgetprogress(Lorg/telegram/ui/GradientHeaderActivity;)F

    move-result v6

    sub-float/2addr v6, v5

    invoke-static {v1, v6}, Lorg/telegram/ui/GradientHeaderActivity;->-$$Nest$fputprogress(Lorg/telegram/ui/GradientHeaderActivity;F)V

    .line 345
    iget-object v1, v0, Lorg/telegram/ui/GradientHeaderActivity$ContentView;->this$0:Lorg/telegram/ui/GradientHeaderActivity;

    invoke-static {v1}, Lorg/telegram/ui/GradientHeaderActivity;->-$$Nest$fgetprogress(Lorg/telegram/ui/GradientHeaderActivity;)F

    move-result v1

    cmpg-float v1, v1, v4

    if-gez v1, :cond_1

    .line 346
    iget-object v1, v0, Lorg/telegram/ui/GradientHeaderActivity$ContentView;->this$0:Lorg/telegram/ui/GradientHeaderActivity;

    const/4 v5, 0x1

    invoke-static {v1, v5}, Lorg/telegram/ui/GradientHeaderActivity;->-$$Nest$fputinc(Lorg/telegram/ui/GradientHeaderActivity;Z)V

    .line 351
    :cond_1
    :goto_0
    iget-object v1, v0, Lorg/telegram/ui/GradientHeaderActivity$ContentView;->this$0:Lorg/telegram/ui/GradientHeaderActivity;

    iget-object v1, v1, Lorg/telegram/ui/GradientHeaderActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 352
    iget-object v1, v0, Lorg/telegram/ui/GradientHeaderActivity$ContentView;->this$0:Lorg/telegram/ui/GradientHeaderActivity;

    iget-object v1, v1, Lorg/telegram/ui/GradientHeaderActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    .line 355
    :goto_1
    iget-object v5, v0, Lorg/telegram/ui/GradientHeaderActivity$ContentView;->this$0:Lorg/telegram/ui/GradientHeaderActivity;

    if-nez v1, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v3

    :goto_2
    invoke-static {v5, v3}, Lorg/telegram/ui/GradientHeaderActivity;->-$$Nest$fputcurrentYOffset(Lorg/telegram/ui/GradientHeaderActivity;I)V

    .line 356
    iget-object v1, v0, Lorg/telegram/ui/GradientHeaderActivity$ContentView;->this$0:Lorg/telegram/ui/GradientHeaderActivity;

    invoke-static {v1}, Lorg/telegram/ui/GradientHeaderActivity;->access$300(Lorg/telegram/ui/GradientHeaderActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    const/high16 v3, 0x41800000    # 16.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    add-int/2addr v1, v5

    .line 357
    iget-object v5, v0, Lorg/telegram/ui/GradientHeaderActivity$ContentView;->this$0:Lorg/telegram/ui/GradientHeaderActivity;

    invoke-static {v5}, Lorg/telegram/ui/GradientHeaderActivity;->-$$Nest$fgetcurrentYOffset(Lorg/telegram/ui/GradientHeaderActivity;)I

    move-result v6

    sub-int/2addr v6, v1

    int-to-float v6, v6

    iget-object v7, v0, Lorg/telegram/ui/GradientHeaderActivity$ContentView;->this$0:Lorg/telegram/ui/GradientHeaderActivity;

    invoke-static {v7}, Lorg/telegram/ui/GradientHeaderActivity;->-$$Nest$fgetfirstViewHeight(Lorg/telegram/ui/GradientHeaderActivity;)I

    move-result v7

    sub-int/2addr v7, v1

    int-to-float v1, v7

    div-float/2addr v6, v1

    sub-float v1, v4, v6

    invoke-static {v5, v1}, Lorg/telegram/ui/GradientHeaderActivity;->-$$Nest$fputtotalProgress(Lorg/telegram/ui/GradientHeaderActivity;F)V

    .line 358
    iget-object v1, v0, Lorg/telegram/ui/GradientHeaderActivity$ContentView;->this$0:Lorg/telegram/ui/GradientHeaderActivity;

    invoke-static {v1}, Lorg/telegram/ui/GradientHeaderActivity;->-$$Nest$fgettotalProgress(Lorg/telegram/ui/GradientHeaderActivity;)F

    move-result v5

    const/4 v6, 0x0

    invoke-static {v5, v4, v6}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v5

    invoke-static {v1, v5}, Lorg/telegram/ui/GradientHeaderActivity;->-$$Nest$fputtotalProgress(Lorg/telegram/ui/GradientHeaderActivity;F)V

    .line 360
    iget-object v1, v0, Lorg/telegram/ui/GradientHeaderActivity$ContentView;->this$0:Lorg/telegram/ui/GradientHeaderActivity;

    invoke-static {v1}, Lorg/telegram/ui/GradientHeaderActivity;->access$400(Lorg/telegram/ui/GradientHeaderActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    add-int/2addr v1, v5

    .line 361
    iget-object v5, v0, Lorg/telegram/ui/GradientHeaderActivity$ContentView;->this$0:Lorg/telegram/ui/GradientHeaderActivity;

    invoke-static {v5}, Lorg/telegram/ui/GradientHeaderActivity;->-$$Nest$fgetcurrentYOffset(Lorg/telegram/ui/GradientHeaderActivity;)I

    move-result v5

    if-ge v5, v1, :cond_4

    .line 362
    iget-object v5, v0, Lorg/telegram/ui/GradientHeaderActivity$ContentView;->this$0:Lorg/telegram/ui/GradientHeaderActivity;

    invoke-static {v5, v1}, Lorg/telegram/ui/GradientHeaderActivity;->-$$Nest$fputcurrentYOffset(Lorg/telegram/ui/GradientHeaderActivity;I)V

    .line 365
    :cond_4
    iget-object v5, v0, Lorg/telegram/ui/GradientHeaderActivity$ContentView;->this$0:Lorg/telegram/ui/GradientHeaderActivity;

    invoke-static {v5}, Lorg/telegram/ui/GradientHeaderActivity;->-$$Nest$fgetprogressToFull(Lorg/telegram/ui/GradientHeaderActivity;)F

    move-result v5

    .line 366
    iget-object v7, v0, Lorg/telegram/ui/GradientHeaderActivity$ContentView;->this$0:Lorg/telegram/ui/GradientHeaderActivity;

    invoke-static {v7, v6}, Lorg/telegram/ui/GradientHeaderActivity;->-$$Nest$fputprogressToFull(Lorg/telegram/ui/GradientHeaderActivity;F)V

    .line 367
    iget-object v7, v0, Lorg/telegram/ui/GradientHeaderActivity$ContentView;->this$0:Lorg/telegram/ui/GradientHeaderActivity;

    invoke-static {v7}, Lorg/telegram/ui/GradientHeaderActivity;->-$$Nest$fgetcurrentYOffset(Lorg/telegram/ui/GradientHeaderActivity;)I

    move-result v7

    const/high16 v8, 0x41f00000    # 30.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    add-int/2addr v9, v1

    if-ge v7, v9, :cond_5

    .line 368
    iget-object v7, v0, Lorg/telegram/ui/GradientHeaderActivity$ContentView;->this$0:Lorg/telegram/ui/GradientHeaderActivity;

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    add-int/2addr v1, v9

    iget-object v9, v0, Lorg/telegram/ui/GradientHeaderActivity$ContentView;->this$0:Lorg/telegram/ui/GradientHeaderActivity;

    invoke-static {v9}, Lorg/telegram/ui/GradientHeaderActivity;->-$$Nest$fgetcurrentYOffset(Lorg/telegram/ui/GradientHeaderActivity;)I

    move-result v9

    sub-int/2addr v1, v9

    int-to-float v1, v1

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v1, v9

    invoke-static {v7, v1}, Lorg/telegram/ui/GradientHeaderActivity;->-$$Nest$fputprogressToFull(Lorg/telegram/ui/GradientHeaderActivity;F)V

    .line 371
    :cond_5
    iget-object v1, v0, Lorg/telegram/ui/GradientHeaderActivity$ContentView;->this$0:Lorg/telegram/ui/GradientHeaderActivity;

    iget-boolean v7, v1, Lorg/telegram/ui/GradientHeaderActivity;->isLandscapeMode:Z

    if-eqz v7, :cond_6

    .line 372
    invoke-static {v1, v4}, Lorg/telegram/ui/GradientHeaderActivity;->-$$Nest$fputprogressToFull(Lorg/telegram/ui/GradientHeaderActivity;F)V

    .line 373
    iget-object v1, v0, Lorg/telegram/ui/GradientHeaderActivity$ContentView;->this$0:Lorg/telegram/ui/GradientHeaderActivity;

    invoke-static {v1, v4}, Lorg/telegram/ui/GradientHeaderActivity;->-$$Nest$fputtotalProgress(Lorg/telegram/ui/GradientHeaderActivity;F)V

    .line 375
    :cond_6
    iget-object v1, v0, Lorg/telegram/ui/GradientHeaderActivity$ContentView;->this$0:Lorg/telegram/ui/GradientHeaderActivity;

    invoke-static {v1}, Lorg/telegram/ui/GradientHeaderActivity;->-$$Nest$fgetprogressToFull(Lorg/telegram/ui/GradientHeaderActivity;)F

    move-result v1

    cmpl-float v1, v5, v1

    if-eqz v1, :cond_7

    .line 376
    iget-object v1, v0, Lorg/telegram/ui/GradientHeaderActivity$ContentView;->this$0:Lorg/telegram/ui/GradientHeaderActivity;

    iget-object v1, v1, Lorg/telegram/ui/GradientHeaderActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 378
    :cond_7
    iget-object v1, v0, Lorg/telegram/ui/GradientHeaderActivity$ContentView;->this$0:Lorg/telegram/ui/GradientHeaderActivity;

    invoke-static {v1}, Lorg/telegram/ui/GradientHeaderActivity;->-$$Nest$fgetcurrentYOffset(Lorg/telegram/ui/GradientHeaderActivity;)I

    move-result v1

    iget-object v5, v0, Lorg/telegram/ui/GradientHeaderActivity$ContentView;->this$0:Lorg/telegram/ui/GradientHeaderActivity;

    invoke-static {v5}, Lorg/telegram/ui/GradientHeaderActivity;->access$500(Lorg/telegram/ui/GradientHeaderActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v5, v7

    iget-object v7, v0, Lorg/telegram/ui/GradientHeaderActivity$ContentView;->this$0:Lorg/telegram/ui/GradientHeaderActivity;

    iget v7, v7, Lorg/telegram/ui/GradientHeaderActivity;->statusBarHeight:I

    sub-int/2addr v5, v7

    sub-int/2addr v1, v5

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    add-int/2addr v1, v5

    int-to-float v1, v1

    .line 379
    iget-object v5, v0, Lorg/telegram/ui/GradientHeaderActivity$ContentView;->this$0:Lorg/telegram/ui/GradientHeaderActivity;

    invoke-static {v5}, Lorg/telegram/ui/GradientHeaderActivity;->access$600(Lorg/telegram/ui/GradientHeaderActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    iget-object v7, v0, Lorg/telegram/ui/GradientHeaderActivity$ContentView;->this$0:Lorg/telegram/ui/GradientHeaderActivity;

    iget v7, v7, Lorg/telegram/ui/GradientHeaderActivity;->statusBarHeight:I

    sub-int/2addr v5, v7

    invoke-static {v2}, Lorg/telegram/ui/GradientHeaderActivity$BackgroundView;->-$$Nest$fgettitleView(Lorg/telegram/ui/GradientHeaderActivity$BackgroundView;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    sub-int/2addr v5, v7

    int-to-float v5, v5

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v5, v7

    iget-object v7, v0, Lorg/telegram/ui/GradientHeaderActivity$ContentView;->this$0:Lorg/telegram/ui/GradientHeaderActivity;

    iget v7, v7, Lorg/telegram/ui/GradientHeaderActivity;->statusBarHeight:I

    int-to-float v7, v7

    add-float/2addr v5, v7

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v5, v7

    invoke-static {v2}, Lorg/telegram/ui/GradientHeaderActivity$BackgroundView;->-$$Nest$fgettitleView(Lorg/telegram/ui/GradientHeaderActivity$BackgroundView;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v5, v7

    .line 381
    invoke-static {v5, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    neg-float v5, v1

    const/high16 v7, 0x40800000    # 4.0f

    div-float/2addr v5, v7

    .line 382
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v5, v7

    .line 383
    invoke-virtual {v2, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 385
    invoke-static {v2}, Lorg/telegram/ui/GradientHeaderActivity$BackgroundView;->-$$Nest$fgetaboveTitleLayout(Lorg/telegram/ui/GradientHeaderActivity$BackgroundView;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v5, v3

    invoke-virtual {v1, v5}, Landroid/view/View;->setTranslationY(F)V

    .line 386
    iget-object v1, v0, Lorg/telegram/ui/GradientHeaderActivity$ContentView;->this$0:Lorg/telegram/ui/GradientHeaderActivity;

    invoke-static {v1}, Lorg/telegram/ui/GradientHeaderActivity;->-$$Nest$fgettotalProgress(Lorg/telegram/ui/GradientHeaderActivity;)F

    move-result v1

    sub-float v1, v4, v1

    const v3, 0x3ecccccd    # 0.4f

    mul-float/2addr v1, v3

    const v3, 0x3f19999a    # 0.6f

    add-float/2addr v1, v3

    .line 387
    iget-object v3, v0, Lorg/telegram/ui/GradientHeaderActivity$ContentView;->this$0:Lorg/telegram/ui/GradientHeaderActivity;

    invoke-static {v3}, Lorg/telegram/ui/GradientHeaderActivity;->-$$Nest$fgettotalProgress(Lorg/telegram/ui/GradientHeaderActivity;)F

    move-result v3

    const/high16 v5, 0x3f000000    # 0.5f

    cmpl-float v3, v3, v5

    if-lez v3, :cond_8

    iget-object v3, v0, Lorg/telegram/ui/GradientHeaderActivity$ContentView;->this$0:Lorg/telegram/ui/GradientHeaderActivity;

    invoke-static {v3}, Lorg/telegram/ui/GradientHeaderActivity;->-$$Nest$fgettotalProgress(Lorg/telegram/ui/GradientHeaderActivity;)F

    move-result v3

    sub-float/2addr v3, v5

    div-float/2addr v3, v5

    goto :goto_3

    :cond_8
    move v3, v6

    :goto_3
    sub-float v3, v4, v3

    .line 388
    invoke-static {v2}, Lorg/telegram/ui/GradientHeaderActivity$BackgroundView;->-$$Nest$fgetaboveTitleLayout(Lorg/telegram/ui/GradientHeaderActivity$BackgroundView;)Landroid/widget/FrameLayout;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/view/View;->setScaleX(F)V

    .line 389
    invoke-static {v2}, Lorg/telegram/ui/GradientHeaderActivity$BackgroundView;->-$$Nest$fgetaboveTitleLayout(Lorg/telegram/ui/GradientHeaderActivity$BackgroundView;)Landroid/widget/FrameLayout;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/view/View;->setScaleY(F)V

    .line 390
    invoke-static {v2}, Lorg/telegram/ui/GradientHeaderActivity$BackgroundView;->-$$Nest$fgetaboveTitleLayout(Lorg/telegram/ui/GradientHeaderActivity$BackgroundView;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setAlpha(F)V

    .line 391
    invoke-static {v2}, Lorg/telegram/ui/GradientHeaderActivity$BackgroundView;->-$$Nest$fgetbelowSubTitleLayout(Lorg/telegram/ui/GradientHeaderActivity$BackgroundView;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setAlpha(F)V

    .line 392
    iget-object v1, v2, Lorg/telegram/ui/GradientHeaderActivity$BackgroundView;->subtitleView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {v1, v3}, Landroid/view/View;->setAlpha(F)V

    .line 393
    iget-object v1, v0, Lorg/telegram/ui/GradientHeaderActivity$ContentView;->this$0:Lorg/telegram/ui/GradientHeaderActivity;

    iget-object v5, v1, Lorg/telegram/ui/GradientHeaderActivity;->particlesView:Lorg/telegram/ui/Components/Premium/StarParticlesView;

    invoke-static {v1}, Lorg/telegram/ui/GradientHeaderActivity;->-$$Nest$fgettotalProgress(Lorg/telegram/ui/GradientHeaderActivity;)F

    move-result v1

    sub-float v1, v4, v1

    invoke-virtual {v5, v1}, Landroid/view/View;->setAlpha(F)V

    .line 394
    iget-object v1, v0, Lorg/telegram/ui/GradientHeaderActivity$ContentView;->this$0:Lorg/telegram/ui/GradientHeaderActivity;

    iget-object v1, v1, Lorg/telegram/ui/GradientHeaderActivity;->particlesView:Lorg/telegram/ui/Components/Premium/StarParticlesView;

    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v5

    invoke-static {v2}, Lorg/telegram/ui/GradientHeaderActivity$BackgroundView;->-$$Nest$fgetaboveTitleLayout(Lorg/telegram/ui/GradientHeaderActivity$BackgroundView;)Landroid/widget/FrameLayout;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getY()F

    move-result v7

    add-float/2addr v5, v7

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v5, v7

    invoke-virtual {v1, v5}, Landroid/view/View;->setTranslationY(F)V

    const/high16 v1, 0x42900000    # 72.0f

    .line 395
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-static {v2}, Lorg/telegram/ui/GradientHeaderActivity$BackgroundView;->-$$Nest$fgettitleView(Lorg/telegram/ui/GradientHeaderActivity$BackgroundView;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v5

    sub-int/2addr v1, v5

    int-to-float v1, v1

    .line 396
    iget-object v5, v0, Lorg/telegram/ui/GradientHeaderActivity$ContentView;->this$0:Lorg/telegram/ui/GradientHeaderActivity;

    invoke-static {v5}, Lorg/telegram/ui/GradientHeaderActivity;->-$$Nest$fgettotalProgress(Lorg/telegram/ui/GradientHeaderActivity;)F

    move-result v5

    const v7, 0x3e99999a    # 0.3f

    cmpl-float v5, v5, v7

    if-lez v5, :cond_9

    iget-object v5, v0, Lorg/telegram/ui/GradientHeaderActivity$ContentView;->this$0:Lorg/telegram/ui/GradientHeaderActivity;

    invoke-static {v5}, Lorg/telegram/ui/GradientHeaderActivity;->-$$Nest$fgettotalProgress(Lorg/telegram/ui/GradientHeaderActivity;)F

    move-result v5

    sub-float/2addr v5, v7

    const v6, 0x3f333333    # 0.7f

    div-float v6, v5, v6

    .line 397
    :cond_9
    invoke-static {v2}, Lorg/telegram/ui/GradientHeaderActivity$BackgroundView;->-$$Nest$fgettitleView(Lorg/telegram/ui/GradientHeaderActivity$BackgroundView;)Landroid/widget/TextView;

    move-result-object v5

    sget-object v7, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    sub-float v6, v4, v6

    invoke-virtual {v7, v6}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result v6

    sub-float v6, v4, v6

    mul-float/2addr v1, v6

    invoke-virtual {v5, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 399
    iget-object v1, v0, Lorg/telegram/ui/GradientHeaderActivity$ContentView;->this$0:Lorg/telegram/ui/GradientHeaderActivity;

    invoke-static {v1}, Lorg/telegram/ui/GradientHeaderActivity;->-$$Nest$fgetisDialogVisible(Lorg/telegram/ui/GradientHeaderActivity;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 400
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 403
    :cond_a
    iget-object v1, v0, Lorg/telegram/ui/GradientHeaderActivity$ContentView;->this$0:Lorg/telegram/ui/GradientHeaderActivity;

    invoke-static {v1}, Lorg/telegram/ui/GradientHeaderActivity;->-$$Nest$fgetgradientTools(Lorg/telegram/ui/GradientHeaderActivity;)Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;

    move-result-object v5

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    const v6, 0x3dcccccd    # 0.1f

    mul-float/2addr v1, v6

    iget-object v6, v0, Lorg/telegram/ui/GradientHeaderActivity$ContentView;->this$0:Lorg/telegram/ui/GradientHeaderActivity;

    invoke-static {v6}, Lorg/telegram/ui/GradientHeaderActivity;->-$$Nest$fgetprogress(Lorg/telegram/ui/GradientHeaderActivity;)F

    move-result v6

    mul-float v10, v1, v6

    const/4 v11, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v5 .. v11}, Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;->gradientMatrix(IIIIFF)V

    .line 404
    iget-object v1, v0, Lorg/telegram/ui/GradientHeaderActivity$ContentView;->this$0:Lorg/telegram/ui/GradientHeaderActivity;

    iget-boolean v1, v1, Lorg/telegram/ui/GradientHeaderActivity;->whiteBackground:Z

    if-eqz v1, :cond_c

    .line 405
    iget-object v1, v0, Lorg/telegram/ui/GradientHeaderActivity$ContentView;->backgroundGradient:Landroid/graphics/LinearGradient;

    if-nez v1, :cond_b

    .line 406
    new-instance v5, Landroid/graphics/LinearGradient;

    const/high16 v1, 0x43af0000    # 350.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v9, v1

    iget-object v1, v0, Lorg/telegram/ui/GradientHeaderActivity$ContentView;->this$0:Lorg/telegram/ui/GradientHeaderActivity;

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-virtual {v1, v6}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v1

    iget-object v6, v0, Lorg/telegram/ui/GradientHeaderActivity$ContentView;->this$0:Lorg/telegram/ui/GradientHeaderActivity;

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    invoke-virtual {v6, v7}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v6

    filled-new-array {v1, v6}, [I

    move-result-object v10

    const/4 v1, 0x2

    new-array v11, v1, [F

    fill-array-data v11, :array_0

    sget-object v12, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v5 .. v12}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v5, v0, Lorg/telegram/ui/GradientHeaderActivity$ContentView;->backgroundGradient:Landroid/graphics/LinearGradient;

    .line 407
    iget-object v1, v0, Lorg/telegram/ui/GradientHeaderActivity$ContentView;->backgroundGradientPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 409
    :cond_b
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v8, v1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v9, v1

    iget-object v10, v0, Lorg/telegram/ui/GradientHeaderActivity$ContentView;->backgroundGradientPaint:Landroid/graphics/Paint;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_4

    .line 411
    :cond_c
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v14, v1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v15, v1

    iget-object v1, v0, Lorg/telegram/ui/GradientHeaderActivity$ContentView;->this$0:Lorg/telegram/ui/GradientHeaderActivity;

    invoke-static {v1}, Lorg/telegram/ui/GradientHeaderActivity;->-$$Nest$fgetgradientTools(Lorg/telegram/ui/GradientHeaderActivity;)Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;->paint:Landroid/graphics/Paint;

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v11, p1

    move-object/from16 v16, v1

    invoke-virtual/range {v11 .. v16}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 414
    :goto_4
    iget-object v1, v0, Lorg/telegram/ui/GradientHeaderActivity$ContentView;->this$0:Lorg/telegram/ui/GradientHeaderActivity;

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlack:I

    invoke-virtual {v1, v5}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v1

    iget-object v5, v0, Lorg/telegram/ui/GradientHeaderActivity$ContentView;->this$0:Lorg/telegram/ui/GradientHeaderActivity;

    iget-boolean v6, v5, Lorg/telegram/ui/GradientHeaderActivity;->whiteBackground:Z

    if-eqz v6, :cond_d

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    goto :goto_5

    :cond_d
    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_premiumGradientBackgroundOverlay:I

    :goto_5
    invoke-virtual {v5, v6}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v5

    invoke-static {v1, v5, v3}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v1

    .line 415
    iget-object v5, v0, Lorg/telegram/ui/GradientHeaderActivity$ContentView;->this$0:Lorg/telegram/ui/GradientHeaderActivity;

    invoke-static {v5}, Lorg/telegram/ui/GradientHeaderActivity;->access$700(Lorg/telegram/ui/GradientHeaderActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/ActionBar;->getBackButton()Landroid/widget/ImageView;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 416
    invoke-static {v2}, Lorg/telegram/ui/GradientHeaderActivity$BackgroundView;->-$$Nest$fgettitleView(Lorg/telegram/ui/GradientHeaderActivity$BackgroundView;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 417
    iget-object v1, v0, Lorg/telegram/ui/GradientHeaderActivity$ContentView;->this$0:Lorg/telegram/ui/GradientHeaderActivity;

    invoke-static {v1}, Lorg/telegram/ui/GradientHeaderActivity;->-$$Nest$fgetheaderBgPaint(Lorg/telegram/ui/GradientHeaderActivity;)Landroid/graphics/Paint;

    move-result-object v1

    const/high16 v2, 0x437f0000    # 255.0f

    sub-float/2addr v4, v3

    mul-float/2addr v4, v2

    float-to-int v2, v4

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 418
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_premiumGradientBackground4:I

    iget-object v2, v0, Lorg/telegram/ui/GradientHeaderActivity$ContentView;->this$0:Lorg/telegram/ui/GradientHeaderActivity;

    invoke-static {v2}, Lorg/telegram/ui/GradientHeaderActivity;->access$800(Lorg/telegram/ui/GradientHeaderActivity;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    iget-object v2, v0, Lorg/telegram/ui/GradientHeaderActivity$ContentView;->this$0:Lorg/telegram/ui/GradientHeaderActivity;

    invoke-static {v2}, Lorg/telegram/ui/GradientHeaderActivity;->-$$Nest$fgetheaderBgPaint(Lorg/telegram/ui/GradientHeaderActivity;)Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Paint;->getColor()I

    move-result v2

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->blendOver(II)I

    move-result v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/GradientHeaderActivity$ContentView;->setLightStatusBar(I)V

    .line 419
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v14, v1

    iget-object v1, v0, Lorg/telegram/ui/GradientHeaderActivity$ContentView;->this$0:Lorg/telegram/ui/GradientHeaderActivity;

    invoke-static {v1}, Lorg/telegram/ui/GradientHeaderActivity;->access$900(Lorg/telegram/ui/GradientHeaderActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v15, v1

    iget-object v1, v0, Lorg/telegram/ui/GradientHeaderActivity$ContentView;->this$0:Lorg/telegram/ui/GradientHeaderActivity;

    invoke-static {v1}, Lorg/telegram/ui/GradientHeaderActivity;->-$$Nest$fgetheaderBgPaint(Lorg/telegram/ui/GradientHeaderActivity;)Landroid/graphics/Paint;

    move-result-object v16

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v11, p1

    invoke-virtual/range {v11 .. v16}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 420
    invoke-super/range {p0 .. p1}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    const v1, 0x3c23d70a    # 0.01f

    cmpg-float v1, v3, v1

    if-gtz v1, :cond_e

    .line 421
    iget-object v1, v0, Lorg/telegram/ui/GradientHeaderActivity$ContentView;->this$0:Lorg/telegram/ui/GradientHeaderActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/GradientHeaderActivity;->drawActionBarShadow()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 422
    iget-object v1, v0, Lorg/telegram/ui/GradientHeaderActivity$ContentView;->this$0:Lorg/telegram/ui/GradientHeaderActivity;

    invoke-static {v1}, Lorg/telegram/ui/GradientHeaderActivity;->access$1100(Lorg/telegram/ui/GradientHeaderActivity;)Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/ui/GradientHeaderActivity$ContentView;->this$0:Lorg/telegram/ui/GradientHeaderActivity;

    invoke-static {v2}, Lorg/telegram/ui/GradientHeaderActivity;->access$1000(Lorg/telegram/ui/GradientHeaderActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    const/16 v3, 0xff

    move-object/from16 v11, p1

    invoke-interface {v1, v11, v3, v2}, Lorg/telegram/ui/ActionBar/INavigationLayout;->drawHeaderShadow(Landroid/graphics/Canvas;II)V

    :cond_e
    return-void

    nop

    :array_0
    .array-data 4
        0x3e99999a    # 0.3f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12

    .line 275
    iget-object v0, p0, Lorg/telegram/ui/GradientHeaderActivity$ContentView;->this$0:Lorg/telegram/ui/GradientHeaderActivity;

    iget-object v0, v0, Lorg/telegram/ui/GradientHeaderActivity;->backgroundView:Lorg/telegram/ui/GradientHeaderActivity$BackgroundView;

    .line 277
    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v1

    iget-object v2, v0, Lorg/telegram/ui/GradientHeaderActivity$BackgroundView;->subtitleView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {v2}, Landroid/view/View;->getX()F

    move-result v2

    add-float/2addr v1, v2

    .line 278
    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v2

    iget-object v3, v0, Lorg/telegram/ui/GradientHeaderActivity$BackgroundView;->subtitleView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {v3}, Landroid/view/View;->getY()F

    move-result v3

    add-float/2addr v2, v3

    .line 279
    sget-object v3, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    iget-object v4, v0, Lorg/telegram/ui/GradientHeaderActivity$BackgroundView;->subtitleView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    .line 280
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v4, v1

    iget-object v5, v0, Lorg/telegram/ui/GradientHeaderActivity$BackgroundView;->subtitleView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    .line 281
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v2

    .line 279
    invoke-virtual {v3, v1, v2, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 282
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v4

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x3

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x1

    if-nez v4, :cond_0

    iget-boolean v4, p0, Lorg/telegram/ui/GradientHeaderActivity$ContentView;->subtitleInterceptedTouch:Z

    if-eqz v4, :cond_5

    :cond_0
    iget-object v4, p0, Lorg/telegram/ui/GradientHeaderActivity$ContentView;->this$0:Lorg/telegram/ui/GradientHeaderActivity;

    iget-object v4, v4, Lorg/telegram/ui/GradientHeaderActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-boolean v4, v4, Lorg/telegram/ui/Components/RecyclerListView;->scrollingByUser:Z

    if-nez v4, :cond_5

    iget-object v4, v0, Lorg/telegram/ui/GradientHeaderActivity$BackgroundView;->subtitleView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;->hasLinks()Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lorg/telegram/ui/GradientHeaderActivity$ContentView;->this$0:Lorg/telegram/ui/GradientHeaderActivity;

    invoke-static {v4}, Lorg/telegram/ui/GradientHeaderActivity;->-$$Nest$fgetprogressToFull(Lorg/telegram/ui/GradientHeaderActivity;)F

    move-result v4

    cmpg-float v4, v4, v8

    if-gez v4, :cond_5

    neg-float v1, v1

    neg-float v2, v2

    .line 283
    invoke-virtual {p1, v1, v2}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 284
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v5, :cond_1

    goto :goto_0

    .line 286
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-eq v1, v9, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v7, :cond_4

    .line 287
    :cond_2
    iput-boolean v6, p0, Lorg/telegram/ui/GradientHeaderActivity$ContentView;->subtitleInterceptedTouch:Z

    goto :goto_1

    .line 285
    :cond_3
    :goto_0
    iput-boolean v9, p0, Lorg/telegram/ui/GradientHeaderActivity$ContentView;->subtitleInterceptedTouch:Z

    .line 289
    :cond_4
    :goto_1
    iget-object v0, v0, Lorg/telegram/ui/GradientHeaderActivity$BackgroundView;->subtitleView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    return v9

    .line 293
    :cond_5
    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v1

    invoke-static {v0}, Lorg/telegram/ui/GradientHeaderActivity$BackgroundView;->-$$Nest$fgetaboveTitleLayout(Lorg/telegram/ui/GradientHeaderActivity$BackgroundView;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getX()F

    move-result v2

    add-float/2addr v1, v2

    .line 294
    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v2

    invoke-static {v0}, Lorg/telegram/ui/GradientHeaderActivity$BackgroundView;->-$$Nest$fgetaboveTitleLayout(Lorg/telegram/ui/GradientHeaderActivity$BackgroundView;)Landroid/widget/FrameLayout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getY()F

    move-result v4

    add-float/2addr v2, v4

    .line 295
    invoke-static {v0}, Lorg/telegram/ui/GradientHeaderActivity$BackgroundView;->-$$Nest$fgetaboveTitleLayout(Lorg/telegram/ui/GradientHeaderActivity$BackgroundView;)Landroid/widget/FrameLayout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->isClickable()Z

    move-result v4

    .line 296
    invoke-static {v0}, Lorg/telegram/ui/GradientHeaderActivity$BackgroundView;->-$$Nest$fgetaboveTitleLayout(Lorg/telegram/ui/GradientHeaderActivity$BackgroundView;)Landroid/widget/FrameLayout;

    move-result-object v10

    .line 297
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v10, v1

    invoke-static {v0}, Lorg/telegram/ui/GradientHeaderActivity$BackgroundView;->-$$Nest$fgetaboveTitleLayout(Lorg/telegram/ui/GradientHeaderActivity$BackgroundView;)Landroid/widget/FrameLayout;

    move-result-object v11

    .line 298
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    int-to-float v11, v11

    add-float/2addr v11, v2

    .line 296
    invoke-virtual {v3, v1, v2, v10, v11}, Landroid/graphics/RectF;->set(FFFF)V

    .line 299
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    invoke-virtual {v3, v10, v11}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v10

    if-nez v10, :cond_6

    iget-boolean v10, p0, Lorg/telegram/ui/GradientHeaderActivity$ContentView;->topInterceptedTouch:Z

    if-eqz v10, :cond_b

    :cond_6
    iget-object v10, p0, Lorg/telegram/ui/GradientHeaderActivity$ContentView;->this$0:Lorg/telegram/ui/GradientHeaderActivity;

    iget-object v11, v10, Lorg/telegram/ui/GradientHeaderActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-boolean v11, v11, Lorg/telegram/ui/Components/RecyclerListView;->scrollingByUser:Z

    if-nez v11, :cond_b

    if-eqz v4, :cond_b

    invoke-static {v10}, Lorg/telegram/ui/GradientHeaderActivity;->-$$Nest$fgetprogressToFull(Lorg/telegram/ui/GradientHeaderActivity;)F

    move-result v4

    cmpg-float v4, v4, v8

    if-gez v4, :cond_b

    neg-float v1, v1

    neg-float v2, v2

    .line 300
    invoke-virtual {p1, v1, v2}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 301
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v5, :cond_7

    goto :goto_2

    .line 303
    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-eq v1, v9, :cond_8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v7, :cond_a

    .line 304
    :cond_8
    iput-boolean v6, p0, Lorg/telegram/ui/GradientHeaderActivity$ContentView;->topInterceptedTouch:Z

    goto :goto_3

    .line 302
    :cond_9
    :goto_2
    iput-boolean v9, p0, Lorg/telegram/ui/GradientHeaderActivity$ContentView;->topInterceptedTouch:Z

    .line 306
    :cond_a
    :goto_3
    invoke-static {v0}, Lorg/telegram/ui/GradientHeaderActivity$BackgroundView;->-$$Nest$fgetaboveTitleLayout(Lorg/telegram/ui/GradientHeaderActivity$BackgroundView;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    return v9

    .line 310
    :cond_b
    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v1

    invoke-static {v0}, Lorg/telegram/ui/GradientHeaderActivity$BackgroundView;->-$$Nest$fgetbelowSubTitleLayout(Lorg/telegram/ui/GradientHeaderActivity$BackgroundView;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getX()F

    move-result v2

    add-float/2addr v1, v2

    .line 311
    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v2

    invoke-static {v0}, Lorg/telegram/ui/GradientHeaderActivity$BackgroundView;->-$$Nest$fgetbelowSubTitleLayout(Lorg/telegram/ui/GradientHeaderActivity$BackgroundView;)Landroid/widget/FrameLayout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getY()F

    move-result v4

    add-float/2addr v2, v4

    .line 312
    invoke-static {v0}, Lorg/telegram/ui/GradientHeaderActivity$BackgroundView;->-$$Nest$fgetbelowSubTitleLayout(Lorg/telegram/ui/GradientHeaderActivity$BackgroundView;)Landroid/widget/FrameLayout;

    move-result-object v4

    .line 313
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v4, v1

    invoke-static {v0}, Lorg/telegram/ui/GradientHeaderActivity$BackgroundView;->-$$Nest$fgetbelowSubTitleLayout(Lorg/telegram/ui/GradientHeaderActivity$BackgroundView;)Landroid/widget/FrameLayout;

    move-result-object v5

    .line 314
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v2

    .line 312
    invoke-virtual {v3, v1, v2, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 315
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v3

    if-nez v3, :cond_c

    iget-boolean v3, p0, Lorg/telegram/ui/GradientHeaderActivity$ContentView;->bottomInterceptedTouch:Z

    if-eqz v3, :cond_10

    :cond_c
    iget-object v3, p0, Lorg/telegram/ui/GradientHeaderActivity$ContentView;->this$0:Lorg/telegram/ui/GradientHeaderActivity;

    iget-object v4, v3, Lorg/telegram/ui/GradientHeaderActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-boolean v4, v4, Lorg/telegram/ui/Components/RecyclerListView;->scrollingByUser:Z

    if-nez v4, :cond_10

    invoke-static {v3}, Lorg/telegram/ui/GradientHeaderActivity;->-$$Nest$fgetprogressToFull(Lorg/telegram/ui/GradientHeaderActivity;)F

    move-result v3

    cmpg-float v3, v3, v8

    if-gez v3, :cond_10

    neg-float v1, v1

    neg-float v2, v2

    .line 316
    invoke-virtual {p1, v1, v2}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 317
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_d

    .line 318
    iput-boolean v9, p0, Lorg/telegram/ui/GradientHeaderActivity$ContentView;->bottomInterceptedTouch:Z

    goto :goto_4

    .line 319
    :cond_d
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-eq v1, v9, :cond_e

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v7, :cond_f

    .line 320
    :cond_e
    iput-boolean v6, p0, Lorg/telegram/ui/GradientHeaderActivity$ContentView;->bottomInterceptedTouch:Z

    .line 322
    :cond_f
    :goto_4
    invoke-static {v0}, Lorg/telegram/ui/GradientHeaderActivity$BackgroundView;->-$$Nest$fgetbelowSubTitleLayout(Lorg/telegram/ui/GradientHeaderActivity$BackgroundView;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 323
    iget-boolean v0, p0, Lorg/telegram/ui/GradientHeaderActivity$ContentView;->bottomInterceptedTouch:Z

    if-eqz v0, :cond_10

    return v9

    .line 327
    :cond_10
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 4

    .line 436
    iget-object v0, p0, Lorg/telegram/ui/GradientHeaderActivity$ContentView;->this$0:Lorg/telegram/ui/GradientHeaderActivity;

    iget-object v0, v0, Lorg/telegram/ui/GradientHeaderActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    if-ne p2, v0, :cond_0

    .line 437
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 438
    iget-object v0, p0, Lorg/telegram/ui/GradientHeaderActivity$ContentView;->this$0:Lorg/telegram/ui/GradientHeaderActivity;

    invoke-static {v0}, Lorg/telegram/ui/GradientHeaderActivity;->access$1200(Lorg/telegram/ui/GradientHeaderActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v0, v1, v2}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 439
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 440
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    const/4 p1, 0x1

    return p1

    .line 443
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p1

    return p1
.end method

.method protected onMeasure(II)V
    .locals 5

    .line 255
    iget-object v0, p0, Lorg/telegram/ui/GradientHeaderActivity$ContentView;->this$0:Lorg/telegram/ui/GradientHeaderActivity;

    iget-object v1, v0, Lorg/telegram/ui/GradientHeaderActivity;->backgroundView:Lorg/telegram/ui/GradientHeaderActivity$BackgroundView;

    .line 256
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    const/4 v4, 0x0

    if-le v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    iput-boolean v2, v0, Lorg/telegram/ui/GradientHeaderActivity;->isLandscapeMode:Z

    .line 258
    iget-object v0, p0, Lorg/telegram/ui/GradientHeaderActivity$ContentView;->this$0:Lorg/telegram/ui/GradientHeaderActivity;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v4

    goto :goto_1

    :cond_1
    sget v2, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    :goto_1
    iput v2, v0, Lorg/telegram/ui/GradientHeaderActivity;->statusBarHeight:I

    .line 260
    invoke-static {v4, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {v1, p1, v0}, Landroid/view/View;->measure(II)V

    .line 261
    iget-object v0, p0, Lorg/telegram/ui/GradientHeaderActivity$ContentView;->this$0:Lorg/telegram/ui/GradientHeaderActivity;

    iget-object v0, v0, Lorg/telegram/ui/GradientHeaderActivity;->particlesView:Lorg/telegram/ui/Components/Premium/StarParticlesView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/GradientHeaderActivity$ContentView;->this$0:Lorg/telegram/ui/GradientHeaderActivity;

    iget v2, v2, Lorg/telegram/ui/GradientHeaderActivity;->particlesViewHeight:I

    if-lez v2, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    :goto_2
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 262
    iget-object v0, p0, Lorg/telegram/ui/GradientHeaderActivity$ContentView;->this$0:Lorg/telegram/ui/GradientHeaderActivity;

    iget-object v1, v0, Lorg/telegram/ui/GradientHeaderActivity;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    instance-of v2, v1, Lorg/telegram/ui/Components/FillLastLinearLayoutManager;

    if-eqz v2, :cond_3

    .line 263
    check-cast v1, Lorg/telegram/ui/Components/FillLastLinearLayoutManager;

    invoke-static {v0}, Lorg/telegram/ui/GradientHeaderActivity;->access$200(Lorg/telegram/ui/GradientHeaderActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/FillLastLinearLayoutManager;->setAdditionalHeight(I)V

    .line 264
    iget-object v0, p0, Lorg/telegram/ui/GradientHeaderActivity$ContentView;->this$0:Lorg/telegram/ui/GradientHeaderActivity;

    iget-object v0, v0, Lorg/telegram/ui/GradientHeaderActivity;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    check-cast v0, Lorg/telegram/ui/Components/FillLastLinearLayoutManager;

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Components/FillLastLinearLayoutManager;->setMinimumLastViewHeight(I)V

    .line 266
    :cond_3
    invoke-super {p0, p1, p2}, Lorg/telegram/ui/Components/NestedSizeNotifierLayout;->onMeasure(II)V

    .line 267
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    add-int/2addr p1, p2

    shl-int/lit8 p1, p1, 0x10

    .line 268
    iget p2, p0, Lorg/telegram/ui/GradientHeaderActivity$ContentView;->lastSize:I

    if-eq p2, p1, :cond_4

    .line 269
    iget-object p1, p0, Lorg/telegram/ui/GradientHeaderActivity$ContentView;->this$0:Lorg/telegram/ui/GradientHeaderActivity;

    invoke-static {p1}, Lorg/telegram/ui/GradientHeaderActivity;->-$$Nest$mupdateBackgroundImage(Lorg/telegram/ui/GradientHeaderActivity;)V

    :cond_4
    return-void
.end method
