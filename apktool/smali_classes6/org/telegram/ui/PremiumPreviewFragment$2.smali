.class Lorg/telegram/ui/PremiumPreviewFragment$2;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PremiumPreviewFragment;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final backgroundPaint:Landroid/graphics/Paint;

.field iconInterceptedTouch:Z

.field ignoreLayout:Z

.field lastSize:I

.field listInterceptedTouch:Z

.field final synthetic this$0:Lorg/telegram/ui/PremiumPreviewFragment;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PremiumPreviewFragment;Landroid/content/Context;)V
    .locals 0

    .line 564
    iput-object p1, p0, Lorg/telegram/ui/PremiumPreviewFragment$2;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 654
    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/PremiumPreviewFragment$2;->backgroundPaint:Landroid/graphics/Paint;

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 16

    move-object/from16 v0, p0

    .line 658
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1f

    if-lt v1, v2, :cond_0

    iget-object v1, v0, Lorg/telegram/ui/PremiumPreviewFragment$2;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    invoke-static {v1}, Lorg/telegram/ui/PremiumPreviewFragment;->-$$Nest$fgetscrollableViewNoiseSuppressor(Lorg/telegram/ui/PremiumPreviewFragment;)Lorg/telegram/ui/Components/blur3/DownscaleScrollableNoiseSuppressor;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 659
    iget-object v1, v0, Lorg/telegram/ui/PremiumPreviewFragment$2;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    invoke-static {v1}, Lorg/telegram/ui/PremiumPreviewFragment;->-$$Nest$mblur3_InvalidateBlur(Lorg/telegram/ui/PremiumPreviewFragment;)V

    .line 662
    :cond_0
    iget-object v1, v0, Lorg/telegram/ui/PremiumPreviewFragment$2;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    invoke-static {v1}, Lorg/telegram/ui/PremiumPreviewFragment;->-$$Nest$fgetisDialogVisible(Lorg/telegram/ui/PremiumPreviewFragment;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v7, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    if-nez v1, :cond_2

    .line 663
    iget-object v1, v0, Lorg/telegram/ui/PremiumPreviewFragment$2;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    iget-boolean v4, v1, Lorg/telegram/ui/PremiumPreviewFragment;->inc:Z

    const v5, 0x3c83126f    # 0.016f

    if-eqz v4, :cond_1

    .line 664
    iget v4, v1, Lorg/telegram/ui/PremiumPreviewFragment;->progress:F

    add-float/2addr v4, v5

    iput v4, v1, Lorg/telegram/ui/PremiumPreviewFragment;->progress:F

    const/high16 v5, 0x40400000    # 3.0f

    cmpl-float v4, v4, v5

    if-lez v4, :cond_2

    .line 666
    iput-boolean v7, v1, Lorg/telegram/ui/PremiumPreviewFragment;->inc:Z

    goto :goto_0

    .line 669
    :cond_1
    iget v4, v1, Lorg/telegram/ui/PremiumPreviewFragment;->progress:F

    sub-float/2addr v4, v5

    iput v4, v1, Lorg/telegram/ui/PremiumPreviewFragment;->progress:F

    cmpg-float v4, v4, v3

    if-gez v4, :cond_2

    .line 671
    iput-boolean v2, v1, Lorg/telegram/ui/PremiumPreviewFragment;->inc:Z

    .line 676
    :cond_2
    :goto_0
    iget-object v1, v0, Lorg/telegram/ui/PremiumPreviewFragment$2;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    iget-object v1, v1, Lorg/telegram/ui/PremiumPreviewFragment;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 677
    iget-object v1, v0, Lorg/telegram/ui/PremiumPreviewFragment$2;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    iget-object v1, v1, Lorg/telegram/ui/PremiumPreviewFragment;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    .line 680
    :goto_1
    iget-object v4, v0, Lorg/telegram/ui/PremiumPreviewFragment$2;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    if-nez v1, :cond_4

    move v1, v7

    goto :goto_2

    :cond_4
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    :goto_2
    invoke-static {v4, v1}, Lorg/telegram/ui/PremiumPreviewFragment;->-$$Nest$fputcurrentYOffset(Lorg/telegram/ui/PremiumPreviewFragment;I)V

    .line 681
    iget-object v1, v0, Lorg/telegram/ui/PremiumPreviewFragment$2;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    invoke-static {v1}, Lorg/telegram/ui/PremiumPreviewFragment;->access$000(Lorg/telegram/ui/PremiumPreviewFragment;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    const/high16 v4, 0x41800000    # 16.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    add-int/2addr v1, v5

    .line 682
    iget-object v5, v0, Lorg/telegram/ui/PremiumPreviewFragment$2;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    invoke-static {v5}, Lorg/telegram/ui/PremiumPreviewFragment;->-$$Nest$fgetcurrentYOffset(Lorg/telegram/ui/PremiumPreviewFragment;)I

    move-result v6

    sub-int/2addr v6, v1

    int-to-float v6, v6

    iget-object v8, v0, Lorg/telegram/ui/PremiumPreviewFragment$2;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    invoke-static {v8}, Lorg/telegram/ui/PremiumPreviewFragment;->-$$Nest$fgetfirstViewHeight(Lorg/telegram/ui/PremiumPreviewFragment;)I

    move-result v8

    sub-int/2addr v8, v1

    int-to-float v1, v8

    div-float/2addr v6, v1

    sub-float v1, v3, v6

    iput v1, v5, Lorg/telegram/ui/PremiumPreviewFragment;->totalProgress:F

    .line 683
    iget-object v1, v0, Lorg/telegram/ui/PremiumPreviewFragment$2;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    iget v5, v1, Lorg/telegram/ui/PremiumPreviewFragment;->totalProgress:F

    const/4 v8, 0x0

    invoke-static {v5, v3, v8}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v5

    iput v5, v1, Lorg/telegram/ui/PremiumPreviewFragment;->totalProgress:F

    .line 685
    iget-object v1, v0, Lorg/telegram/ui/PremiumPreviewFragment$2;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    invoke-static {v1}, Lorg/telegram/ui/PremiumPreviewFragment;->access$100(Lorg/telegram/ui/PremiumPreviewFragment;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    add-int/2addr v1, v5

    .line 686
    iget-object v5, v0, Lorg/telegram/ui/PremiumPreviewFragment$2;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    invoke-static {v5}, Lorg/telegram/ui/PremiumPreviewFragment;->-$$Nest$fgetcurrentYOffset(Lorg/telegram/ui/PremiumPreviewFragment;)I

    move-result v5

    if-ge v5, v1, :cond_5

    .line 687
    iget-object v5, v0, Lorg/telegram/ui/PremiumPreviewFragment$2;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    invoke-static {v5, v1}, Lorg/telegram/ui/PremiumPreviewFragment;->-$$Nest$fputcurrentYOffset(Lorg/telegram/ui/PremiumPreviewFragment;I)V

    .line 690
    :cond_5
    iget-object v5, v0, Lorg/telegram/ui/PremiumPreviewFragment$2;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    iget v6, v5, Lorg/telegram/ui/PremiumPreviewFragment;->progressToFull:F

    .line 691
    iput v8, v5, Lorg/telegram/ui/PremiumPreviewFragment;->progressToFull:F

    .line 692
    invoke-static {v5}, Lorg/telegram/ui/PremiumPreviewFragment;->-$$Nest$fgetcurrentYOffset(Lorg/telegram/ui/PremiumPreviewFragment;)I

    move-result v5

    const/high16 v9, 0x41f00000    # 30.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    add-int/2addr v10, v1

    if-ge v5, v10, :cond_6

    .line 693
    iget-object v5, v0, Lorg/telegram/ui/PremiumPreviewFragment$2;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    add-int/2addr v1, v10

    iget-object v10, v0, Lorg/telegram/ui/PremiumPreviewFragment$2;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    invoke-static {v10}, Lorg/telegram/ui/PremiumPreviewFragment;->-$$Nest$fgetcurrentYOffset(Lorg/telegram/ui/PremiumPreviewFragment;)I

    move-result v10

    sub-int/2addr v1, v10

    int-to-float v1, v1

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v1, v9

    iput v1, v5, Lorg/telegram/ui/PremiumPreviewFragment;->progressToFull:F

    .line 696
    :cond_6
    iget-object v1, v0, Lorg/telegram/ui/PremiumPreviewFragment$2;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    iget-boolean v5, v1, Lorg/telegram/ui/PremiumPreviewFragment;->isLandscapeMode:Z

    if-eqz v5, :cond_7

    .line 697
    iput v3, v1, Lorg/telegram/ui/PremiumPreviewFragment;->progressToFull:F

    .line 698
    iput v3, v1, Lorg/telegram/ui/PremiumPreviewFragment;->totalProgress:F

    .line 700
    :cond_7
    iget v5, v1, Lorg/telegram/ui/PremiumPreviewFragment;->progressToFull:F

    cmpl-float v5, v6, v5

    if-eqz v5, :cond_8

    .line 701
    iget-object v1, v1, Lorg/telegram/ui/PremiumPreviewFragment;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 703
    :cond_8
    iget-object v1, v0, Lorg/telegram/ui/PremiumPreviewFragment$2;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    invoke-static {v1}, Lorg/telegram/ui/PremiumPreviewFragment;->-$$Nest$fgetcurrentYOffset(Lorg/telegram/ui/PremiumPreviewFragment;)I

    move-result v1

    iget-object v5, v0, Lorg/telegram/ui/PremiumPreviewFragment$2;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    .line 704
    invoke-static {v5}, Lorg/telegram/ui/PremiumPreviewFragment;->access$200(Lorg/telegram/ui/PremiumPreviewFragment;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    iget-object v6, v0, Lorg/telegram/ui/PremiumPreviewFragment$2;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    iget-object v6, v6, Lorg/telegram/ui/PremiumPreviewFragment;->backgroundView:Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v5, v6

    iget-object v6, v0, Lorg/telegram/ui/PremiumPreviewFragment$2;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    invoke-static {v6}, Lorg/telegram/ui/PremiumPreviewFragment;->-$$Nest$fgetstatusBarHeight(Lorg/telegram/ui/PremiumPreviewFragment;)I

    move-result v6

    sub-int/2addr v5, v6

    sub-int/2addr v1, v5

    .line 705
    iget-object v5, v0, Lorg/telegram/ui/PremiumPreviewFragment$2;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    iget-object v5, v5, Lorg/telegram/ui/PremiumPreviewFragment;->backgroundView:Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;

    invoke-static {v5}, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->-$$Nest$fgettierListView(Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/high16 v6, 0x41c00000    # 24.0f

    if-nez v5, :cond_9

    move v5, v6

    goto :goto_3

    :cond_9
    move v5, v4

    :goto_3
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    add-int/2addr v1, v5

    .line 706
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    add-int/2addr v1, v5

    int-to-float v1, v1

    .line 707
    iget-object v5, v0, Lorg/telegram/ui/PremiumPreviewFragment$2;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    invoke-static {v5}, Lorg/telegram/ui/PremiumPreviewFragment;->access$300(Lorg/telegram/ui/PremiumPreviewFragment;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    iget-object v6, v0, Lorg/telegram/ui/PremiumPreviewFragment$2;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    invoke-static {v6}, Lorg/telegram/ui/PremiumPreviewFragment;->-$$Nest$fgetstatusBarHeight(Lorg/telegram/ui/PremiumPreviewFragment;)I

    move-result v6

    sub-int/2addr v5, v6

    iget-object v6, v0, Lorg/telegram/ui/PremiumPreviewFragment$2;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    iget-object v6, v6, Lorg/telegram/ui/PremiumPreviewFragment;->backgroundView:Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;

    iget-object v6, v6, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->titleView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    iget-object v9, v0, Lorg/telegram/ui/PremiumPreviewFragment$2;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    invoke-static {v9}, Lorg/telegram/ui/PremiumPreviewFragment;->-$$Nest$fgetstatusBarHeight(Lorg/telegram/ui/PremiumPreviewFragment;)I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v5, v9

    iget-object v9, v0, Lorg/telegram/ui/PremiumPreviewFragment$2;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    iget-object v9, v9, Lorg/telegram/ui/PremiumPreviewFragment;->backgroundView:Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;

    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v9

    int-to-float v9, v9

    sub-float/2addr v5, v9

    iget-object v9, v0, Lorg/telegram/ui/PremiumPreviewFragment$2;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    iget-object v9, v9, Lorg/telegram/ui/PremiumPreviewFragment;->backgroundView:Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;

    iget-object v9, v9, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->titleView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v9

    int-to-float v9, v9

    sub-float/2addr v5, v9

    .line 709
    invoke-static {v5, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    neg-float v5, v1

    const/high16 v9, 0x40800000    # 4.0f

    div-float/2addr v5, v9

    .line 710
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v5, v9

    .line 711
    iget-object v9, v0, Lorg/telegram/ui/PremiumPreviewFragment$2;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    iget-object v9, v9, Lorg/telegram/ui/PremiumPreviewFragment;->backgroundView:Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;

    invoke-virtual {v9, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 713
    iget-object v1, v0, Lorg/telegram/ui/PremiumPreviewFragment$2;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    iget-object v1, v1, Lorg/telegram/ui/PremiumPreviewFragment;->backgroundView:Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;

    invoke-static {v1}, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->-$$Nest$fgetimageView(Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;)Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    move-result-object v1

    iget-object v9, v0, Lorg/telegram/ui/PremiumPreviewFragment$2;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    invoke-static {v9}, Lorg/telegram/ui/PremiumPreviewFragment;->-$$Nest$fgettype(Lorg/telegram/ui/PremiumPreviewFragment;)I

    move-result v9

    if-ne v9, v2, :cond_a

    const/high16 v4, 0x41100000    # 9.0f

    :cond_a
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v5, v2

    invoke-virtual {v1, v5}, Landroid/view/View;->setTranslationY(F)V

    .line 714
    iget-object v1, v0, Lorg/telegram/ui/PremiumPreviewFragment$2;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    iget v2, v1, Lorg/telegram/ui/PremiumPreviewFragment;->totalProgress:F

    sub-float v4, v3, v2

    const v5, 0x3ecccccd    # 0.4f

    mul-float/2addr v4, v5

    const v5, 0x3f19999a    # 0.6f

    add-float/2addr v4, v5

    const/high16 v5, 0x3f000000    # 0.5f

    cmpl-float v9, v2, v5

    if-lez v9, :cond_b

    sub-float/2addr v2, v5

    div-float/2addr v2, v5

    goto :goto_4

    :cond_b
    move v2, v8

    :goto_4
    sub-float v2, v3, v2

    .line 716
    iget-object v1, v1, Lorg/telegram/ui/PremiumPreviewFragment;->backgroundView:Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;

    invoke-static {v1}, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->-$$Nest$fgetimageView(Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;)Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setScaleX(F)V

    .line 717
    iget-object v1, v0, Lorg/telegram/ui/PremiumPreviewFragment$2;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    iget-object v1, v1, Lorg/telegram/ui/PremiumPreviewFragment;->backgroundView:Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;

    invoke-static {v1}, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->-$$Nest$fgetimageView(Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;)Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setScaleY(F)V

    .line 718
    iget-object v1, v0, Lorg/telegram/ui/PremiumPreviewFragment$2;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    iget-object v1, v1, Lorg/telegram/ui/PremiumPreviewFragment;->backgroundView:Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;

    invoke-static {v1}, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->-$$Nest$fgetimageView(Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;)Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 719
    iget-object v1, v0, Lorg/telegram/ui/PremiumPreviewFragment$2;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    iget-object v1, v1, Lorg/telegram/ui/PremiumPreviewFragment;->backgroundView:Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;

    invoke-static {v1}, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->-$$Nest$fgetsubtitleView(Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 720
    iget-object v1, v0, Lorg/telegram/ui/PremiumPreviewFragment$2;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    iget-object v1, v1, Lorg/telegram/ui/PremiumPreviewFragment;->backgroundView:Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;

    invoke-static {v1}, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->-$$Nest$fgettierListView(Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 721
    iget-object v1, v0, Lorg/telegram/ui/PremiumPreviewFragment$2;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    iget-object v2, v1, Lorg/telegram/ui/PremiumPreviewFragment;->particlesView:Lorg/telegram/ui/Components/Premium/StarParticlesView;

    iget v1, v1, Lorg/telegram/ui/PremiumPreviewFragment;->totalProgress:F

    sub-float v1, v3, v1

    invoke-virtual {v2, v1}, Landroid/view/View;->setAlpha(F)V

    .line 723
    iget-object v1, v0, Lorg/telegram/ui/PremiumPreviewFragment$2;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    iget-object v1, v1, Lorg/telegram/ui/PremiumPreviewFragment;->particlesView:Lorg/telegram/ui/Components/Premium/StarParticlesView;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    iget-object v4, v0, Lorg/telegram/ui/PremiumPreviewFragment$2;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    iget-object v4, v4, Lorg/telegram/ui/PremiumPreviewFragment;->backgroundView:Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;

    invoke-static {v4}, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->-$$Nest$fgetimageView(Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;)Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    sub-int/2addr v2, v4

    neg-int v2, v2

    int-to-float v2, v2

    div-float/2addr v2, v6

    iget-object v4, v0, Lorg/telegram/ui/PremiumPreviewFragment$2;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    iget-object v4, v4, Lorg/telegram/ui/PremiumPreviewFragment;->backgroundView:Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;

    invoke-virtual {v4}, Landroid/view/View;->getY()F

    move-result v4

    add-float/2addr v2, v4

    iget-object v4, v0, Lorg/telegram/ui/PremiumPreviewFragment$2;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    iget-object v4, v4, Lorg/telegram/ui/PremiumPreviewFragment;->backgroundView:Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;

    invoke-static {v4}, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->-$$Nest$fgetimageFrameLayout(Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;)Landroid/widget/FrameLayout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getY()F

    move-result v4

    add-float/2addr v2, v4

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    const/high16 v1, 0x42900000    # 72.0f

    .line 724
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    iget-object v2, v0, Lorg/telegram/ui/PremiumPreviewFragment$2;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    iget-object v2, v2, Lorg/telegram/ui/PremiumPreviewFragment;->backgroundView:Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;

    iget-object v2, v2, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->titleView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    .line 725
    iget-object v2, v0, Lorg/telegram/ui/PremiumPreviewFragment$2;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    iget v4, v2, Lorg/telegram/ui/PremiumPreviewFragment;->totalProgress:F

    const v5, 0x3e99999a    # 0.3f

    cmpl-float v6, v4, v5

    if-lez v6, :cond_c

    sub-float/2addr v4, v5

    const v5, 0x3f333333    # 0.7f

    div-float/2addr v4, v5

    goto :goto_5

    :cond_c
    move v4, v8

    .line 726
    :goto_5
    iget-object v2, v2, Lorg/telegram/ui/PremiumPreviewFragment;->backgroundView:Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;

    iget-object v2, v2, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->titleView:Landroid/widget/TextView;

    sget-object v5, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    sub-float v4, v3, v4

    invoke-virtual {v5, v4}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result v4

    sub-float/2addr v3, v4

    mul-float/2addr v1, v3

    invoke-virtual {v2, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 728
    iget-object v1, v0, Lorg/telegram/ui/PremiumPreviewFragment$2;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    iget-object v1, v1, Lorg/telegram/ui/PremiumPreviewFragment;->backgroundView:Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;

    invoke-static {v1}, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->-$$Nest$fgetimageView(Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;)Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->mRenderer:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconRenderer;

    iget-object v2, v0, Lorg/telegram/ui/PremiumPreviewFragment$2;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    iget-object v2, v2, Lorg/telegram/ui/PremiumPreviewFragment;->backgroundView:Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;

    invoke-virtual {v2}, Landroid/view/View;->getX()F

    move-result v2

    iget-object v3, v0, Lorg/telegram/ui/PremiumPreviewFragment$2;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    iget-object v3, v3, Lorg/telegram/ui/PremiumPreviewFragment;->backgroundView:Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;

    invoke-static {v3}, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->-$$Nest$fgetimageFrameLayout(Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;)Landroid/widget/FrameLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getX()F

    move-result v3

    add-float/2addr v2, v3

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    const v4, 0x3dcccccd    # 0.1f

    mul-float/2addr v3, v4

    iget-object v5, v0, Lorg/telegram/ui/PremiumPreviewFragment$2;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    iget v5, v5, Lorg/telegram/ui/PremiumPreviewFragment;->progress:F

    mul-float/2addr v3, v5

    add-float/2addr v2, v3

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    iput v2, v1, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconRenderer;->gradientStartX:F

    .line 729
    iget-object v1, v0, Lorg/telegram/ui/PremiumPreviewFragment$2;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    iget-object v1, v1, Lorg/telegram/ui/PremiumPreviewFragment;->backgroundView:Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;

    invoke-static {v1}, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->-$$Nest$fgetimageView(Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;)Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->mRenderer:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconRenderer;

    iget-object v2, v0, Lorg/telegram/ui/PremiumPreviewFragment$2;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    iget-object v2, v2, Lorg/telegram/ui/PremiumPreviewFragment;->backgroundView:Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;

    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v2

    iget-object v3, v0, Lorg/telegram/ui/PremiumPreviewFragment$2;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    iget-object v3, v3, Lorg/telegram/ui/PremiumPreviewFragment;->backgroundView:Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;

    invoke-static {v3}, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->-$$Nest$fgetimageFrameLayout(Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;)Landroid/widget/FrameLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getY()F

    move-result v3

    add-float/2addr v2, v3

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    iput v2, v1, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconRenderer;->gradientStartY:F

    .line 731
    iget-object v1, v0, Lorg/telegram/ui/PremiumPreviewFragment$2;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    invoke-static {v1}, Lorg/telegram/ui/PremiumPreviewFragment;->-$$Nest$fgetisDialogVisible(Lorg/telegram/ui/PremiumPreviewFragment;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 732
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 733
    iget-object v1, v0, Lorg/telegram/ui/PremiumPreviewFragment$2;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    invoke-static {v1}, Lorg/telegram/ui/PremiumPreviewFragment;->-$$Nest$fgetbuttonContainerInternal(Lorg/telegram/ui/PremiumPreviewFragment;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 734
    iget-object v1, v0, Lorg/telegram/ui/PremiumPreviewFragment$2;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    invoke-static {v1}, Lorg/telegram/ui/PremiumPreviewFragment;->-$$Nest$fgetbuttonContainer(Lorg/telegram/ui/PremiumPreviewFragment;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 736
    :cond_d
    iget-object v1, v0, Lorg/telegram/ui/PremiumPreviewFragment$2;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    iget-object v9, v1, Lorg/telegram/ui/PremiumPreviewFragment;->gradientTools:Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v12

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    mul-float/2addr v1, v4

    iget-object v2, v0, Lorg/telegram/ui/PremiumPreviewFragment$2;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    iget v2, v2, Lorg/telegram/ui/PremiumPreviewFragment;->progress:F

    mul-float v14, v1, v2

    const/4 v15, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v9 .. v15}, Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;->gradientMatrix(IIIIFF)V

    .line 737
    iget-object v1, v0, Lorg/telegram/ui/PremiumPreviewFragment$2;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    invoke-static {v1}, Lorg/telegram/ui/PremiumPreviewFragment;->-$$Nest$fgetwhiteBackground(Lorg/telegram/ui/PremiumPreviewFragment;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 738
    iget-object v1, v0, Lorg/telegram/ui/PremiumPreviewFragment$2;->backgroundPaint:Landroid/graphics/Paint;

    iget-object v2, v0, Lorg/telegram/ui/PremiumPreviewFragment$2;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    invoke-virtual {v2, v9}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 739
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v4, v1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v5, v1

    iget-object v6, v0, Lorg/telegram/ui/PremiumPreviewFragment$2;->backgroundPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 740
    iget-object v1, v0, Lorg/telegram/ui/PremiumPreviewFragment$2;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    iget v2, v1, Lorg/telegram/ui/PremiumPreviewFragment;->progressToFull:F

    cmpl-float v2, v2, v8

    if-lez v2, :cond_e

    invoke-static {v1}, Lorg/telegram/ui/PremiumPreviewFragment;->access$400(Lorg/telegram/ui/PremiumPreviewFragment;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v1

    if-eqz v1, :cond_e

    .line 741
    iget-object v1, v0, Lorg/telegram/ui/PremiumPreviewFragment$2;->backgroundPaint:Landroid/graphics/Paint;

    iget-object v2, v0, Lorg/telegram/ui/PremiumPreviewFragment$2;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    invoke-virtual {v2, v9}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v2

    iget-object v3, v0, Lorg/telegram/ui/PremiumPreviewFragment$2;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v3

    iget-object v4, v0, Lorg/telegram/ui/PremiumPreviewFragment$2;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    iget v4, v4, Lorg/telegram/ui/PremiumPreviewFragment;->progressToFull:F

    invoke-static {v2, v3, v4}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 742
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v4, v1

    iget-object v1, v0, Lorg/telegram/ui/PremiumPreviewFragment$2;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    invoke-static {v1}, Lorg/telegram/ui/PremiumPreviewFragment;->access$500(Lorg/telegram/ui/PremiumPreviewFragment;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v5, v1

    iget-object v6, v0, Lorg/telegram/ui/PremiumPreviewFragment$2;->backgroundPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_6

    :cond_e
    move-object/from16 v1, p1

    goto :goto_6

    .line 745
    :cond_f
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v4, v1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v5, v1

    iget-object v1, v0, Lorg/telegram/ui/PremiumPreviewFragment$2;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    iget-object v1, v1, Lorg/telegram/ui/PremiumPreviewFragment;->gradientTools:Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;

    iget-object v6, v1, Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;->paint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 748
    :goto_6
    invoke-super/range {p0 .. p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 750
    iget-object v2, v0, Lorg/telegram/ui/PremiumPreviewFragment$2;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    invoke-static {v2}, Lorg/telegram/ui/PremiumPreviewFragment;->-$$Nest$fgetbuttonContainer(Lorg/telegram/ui/PremiumPreviewFragment;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_10

    .line 751
    iget-object v2, v0, Lorg/telegram/ui/PremiumPreviewFragment$2;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    invoke-static {v2}, Lorg/telegram/ui/PremiumPreviewFragment;->-$$Nest$fgetnavbarProtectionDrawable(Lorg/telegram/ui/PremiumPreviewFragment;)Lorg/telegram/ui/Components/blur3/BlurredBackgroundWithFadeDrawable;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/AndroidUtilities;->navigationBarHeight:I

    invoke-virtual {v2, v3, v7}, Lorg/telegram/ui/Components/blur3/BlurredBackgroundWithFadeDrawable;->setFadeHeight(IZ)V

    .line 752
    iget-object v2, v0, Lorg/telegram/ui/PremiumPreviewFragment$2;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    invoke-static {v2}, Lorg/telegram/ui/PremiumPreviewFragment;->-$$Nest$fgetnavbarProtectionDrawable(Lorg/telegram/ui/PremiumPreviewFragment;)Lorg/telegram/ui/Components/blur3/BlurredBackgroundWithFadeDrawable;

    move-result-object v2

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v3

    sget v4, Lorg/telegram/messenger/AndroidUtilities;->navigationBarHeight:I

    sub-int/2addr v3, v4

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-virtual {v2, v7, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 753
    iget-object v2, v0, Lorg/telegram/ui/PremiumPreviewFragment$2;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    invoke-static {v2}, Lorg/telegram/ui/PremiumPreviewFragment;->-$$Nest$fgetnavbarProtectionDrawable(Lorg/telegram/ui/PremiumPreviewFragment;)Lorg/telegram/ui/Components/blur3/BlurredBackgroundWithFadeDrawable;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/blur3/BlurredBackgroundWithFadeDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 756
    :cond_10
    iget-object v2, v0, Lorg/telegram/ui/PremiumPreviewFragment$2;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    invoke-static {v2}, Lorg/telegram/ui/PremiumPreviewFragment;->access$600(Lorg/telegram/ui/PremiumPreviewFragment;)Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v2

    if-eqz v2, :cond_11

    iget-object v2, v0, Lorg/telegram/ui/PremiumPreviewFragment$2;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    invoke-static {v2}, Lorg/telegram/ui/PremiumPreviewFragment;->-$$Nest$fgetwhiteBackground(Lorg/telegram/ui/PremiumPreviewFragment;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 757
    iget-object v2, v0, Lorg/telegram/ui/PremiumPreviewFragment$2;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    invoke-static {v2}, Lorg/telegram/ui/PremiumPreviewFragment;->access$800(Lorg/telegram/ui/PremiumPreviewFragment;)Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v2

    iget-object v3, v0, Lorg/telegram/ui/PremiumPreviewFragment$2;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    iget v4, v3, Lorg/telegram/ui/PremiumPreviewFragment;->progressToFull:F

    const/high16 v5, 0x437f0000    # 255.0f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-static {v3}, Lorg/telegram/ui/PremiumPreviewFragment;->access$700(Lorg/telegram/ui/PremiumPreviewFragment;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    invoke-interface {v2, v1, v4, v3}, Lorg/telegram/ui/ActionBar/INavigationLayout;->drawHeaderShadow(Landroid/graphics/Canvas;II)V

    :cond_11
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .line 573
    iget-object v0, p0, Lorg/telegram/ui/PremiumPreviewFragment$2;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    iget-object v0, v0, Lorg/telegram/ui/PremiumPreviewFragment;->backgroundView:Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;

    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/PremiumPreviewFragment$2;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    iget-object v1, v1, Lorg/telegram/ui/PremiumPreviewFragment;->backgroundView:Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;

    invoke-static {v1}, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->-$$Nest$fgetimageFrameLayout(Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getX()F

    move-result v1

    add-float/2addr v0, v1

    .line 574
    iget-object v1, p0, Lorg/telegram/ui/PremiumPreviewFragment$2;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    iget-object v1, v1, Lorg/telegram/ui/PremiumPreviewFragment;->backgroundView:Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/PremiumPreviewFragment$2;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    iget-object v2, v2, Lorg/telegram/ui/PremiumPreviewFragment;->backgroundView:Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;

    invoke-static {v2}, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->-$$Nest$fgetimageFrameLayout(Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v2

    add-float/2addr v1, v2

    .line 575
    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    iget-object v3, p0, Lorg/telegram/ui/PremiumPreviewFragment$2;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    iget-object v3, v3, Lorg/telegram/ui/PremiumPreviewFragment;->backgroundView:Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;

    invoke-static {v3}, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->-$$Nest$fgetimageView(Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;)Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    move-result-object v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lorg/telegram/ui/PremiumPreviewFragment$2;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    iget-object v3, v3, Lorg/telegram/ui/PremiumPreviewFragment;->backgroundView:Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;

    invoke-static {v3}, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->-$$Nest$fgetimageView(Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;)Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    :goto_0
    int-to-float v3, v3

    add-float/2addr v3, v0

    iget-object v5, p0, Lorg/telegram/ui/PremiumPreviewFragment$2;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    iget-object v5, v5, Lorg/telegram/ui/PremiumPreviewFragment;->backgroundView:Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;

    invoke-static {v5}, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->-$$Nest$fgetimageView(Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;)Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    move-result-object v5

    if-nez v5, :cond_1

    move v5, v4

    goto :goto_1

    :cond_1
    iget-object v5, p0, Lorg/telegram/ui/PremiumPreviewFragment$2;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    iget-object v5, v5, Lorg/telegram/ui/PremiumPreviewFragment;->backgroundView:Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;

    invoke-static {v5}, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->-$$Nest$fgetimageView(Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;)Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    :goto_1
    int-to-float v5, v5

    add-float/2addr v5, v1

    invoke-virtual {v2, v0, v1, v3, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 576
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-virtual {v2, v3, v5}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v3

    const/4 v5, 0x3

    const/4 v6, 0x1

    if-nez v3, :cond_2

    iget-boolean v3, p0, Lorg/telegram/ui/PremiumPreviewFragment$2;->iconInterceptedTouch:Z

    if-eqz v3, :cond_7

    :cond_2
    iget-object v3, p0, Lorg/telegram/ui/PremiumPreviewFragment$2;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    iget-object v3, v3, Lorg/telegram/ui/PremiumPreviewFragment;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-boolean v3, v3, Lorg/telegram/ui/Components/RecyclerListView;->scrollingByUser:Z

    if-nez v3, :cond_7

    neg-float v0, v0

    neg-float v1, v1

    .line 577
    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 578
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    goto :goto_2

    .line 580
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v6, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v5, :cond_6

    .line 581
    :cond_4
    iput-boolean v4, p0, Lorg/telegram/ui/PremiumPreviewFragment$2;->iconInterceptedTouch:Z

    goto :goto_3

    .line 579
    :cond_5
    :goto_2
    iput-boolean v6, p0, Lorg/telegram/ui/PremiumPreviewFragment$2;->iconInterceptedTouch:Z

    .line 583
    :cond_6
    :goto_3
    iget-object v0, p0, Lorg/telegram/ui/PremiumPreviewFragment$2;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    iget-object v0, v0, Lorg/telegram/ui/PremiumPreviewFragment;->backgroundView:Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;

    invoke-static {v0}, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->-$$Nest$fgetimageView(Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;)Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    return v6

    .line 587
    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/PremiumPreviewFragment$2;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    iget-object v0, v0, Lorg/telegram/ui/PremiumPreviewFragment;->backgroundView:Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;

    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/PremiumPreviewFragment$2;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    iget-object v1, v1, Lorg/telegram/ui/PremiumPreviewFragment;->backgroundView:Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;

    invoke-static {v1}, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->-$$Nest$fgettierListView(Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getX()F

    move-result v1

    add-float/2addr v0, v1

    iget-object v1, p0, Lorg/telegram/ui/PremiumPreviewFragment$2;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    iget-object v1, v1, Lorg/telegram/ui/PremiumPreviewFragment;->backgroundView:Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v1

    iget-object v3, p0, Lorg/telegram/ui/PremiumPreviewFragment$2;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    iget-object v3, v3, Lorg/telegram/ui/PremiumPreviewFragment;->backgroundView:Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;

    invoke-static {v3}, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->-$$Nest$fgettierListView(Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getY()F

    move-result v3

    add-float/2addr v1, v3

    .line 588
    iget-object v3, p0, Lorg/telegram/ui/PremiumPreviewFragment$2;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    iget-object v3, v3, Lorg/telegram/ui/PremiumPreviewFragment;->backgroundView:Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;

    invoke-static {v3}, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->-$$Nest$fgettierListView(Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v3, v0

    iget-object v7, p0, Lorg/telegram/ui/PremiumPreviewFragment$2;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    iget-object v7, v7, Lorg/telegram/ui/PremiumPreviewFragment;->backgroundView:Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;

    invoke-static {v7}, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->-$$Nest$fgettierListView(Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v7, v1

    invoke-virtual {v2, v0, v1, v3, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 589
    iget-object v3, p0, Lorg/telegram/ui/PremiumPreviewFragment$2;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    iget v3, v3, Lorg/telegram/ui/PremiumPreviewFragment;->progressToFull:F

    const/high16 v7, 0x3f800000    # 1.0f

    cmpg-float v3, v3, v7

    if-gez v3, :cond_c

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    invoke-virtual {v2, v3, v7}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v2

    if-nez v2, :cond_8

    iget-boolean v2, p0, Lorg/telegram/ui/PremiumPreviewFragment$2;->listInterceptedTouch:Z

    if-eqz v2, :cond_c

    :cond_8
    iget-object v2, p0, Lorg/telegram/ui/PremiumPreviewFragment$2;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    iget-object v2, v2, Lorg/telegram/ui/PremiumPreviewFragment;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-boolean v2, v2, Lorg/telegram/ui/Components/RecyclerListView;->scrollingByUser:Z

    if-nez v2, :cond_c

    neg-float v0, v0

    neg-float v1, v1

    .line 590
    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 591
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_9

    .line 592
    iput-boolean v6, p0, Lorg/telegram/ui/PremiumPreviewFragment$2;->listInterceptedTouch:Z

    goto :goto_4

    .line 593
    :cond_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v6, :cond_a

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v5, :cond_b

    .line 594
    :cond_a
    iput-boolean v4, p0, Lorg/telegram/ui/PremiumPreviewFragment$2;->listInterceptedTouch:Z

    .line 596
    :cond_b
    :goto_4
    iget-object v0, p0, Lorg/telegram/ui/PremiumPreviewFragment$2;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    iget-object v0, v0, Lorg/telegram/ui/PremiumPreviewFragment;->backgroundView:Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;

    invoke-static {v0}, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->-$$Nest$fgettierListView(Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/RecyclerListView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 598
    iget-boolean v0, p0, Lorg/telegram/ui/PremiumPreviewFragment$2;->listInterceptedTouch:Z

    if-eqz v0, :cond_c

    return v6

    .line 602
    :cond_c
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 641
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    move-object p1, p0

    .line 642
    iget-object p2, p1, Lorg/telegram/ui/PremiumPreviewFragment$2;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    iget-object p2, p2, Lorg/telegram/ui/PremiumPreviewFragment;->backgroundView:Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;

    invoke-static {p2}, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->-$$Nest$fgetimageView(Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;)Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    move-result-object p2

    iget-object p2, p2, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->mRenderer:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconRenderer;

    iget-object p3, p1, Lorg/telegram/ui/PremiumPreviewFragment$2;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    iget-object p3, p3, Lorg/telegram/ui/PremiumPreviewFragment;->backgroundView:Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;

    invoke-static {p3}, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->-$$Nest$fgetimageView(Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;)Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredWidth()I

    move-result p3

    int-to-float p3, p3

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p4

    int-to-float p4, p4

    div-float/2addr p3, p4

    iput p3, p2, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconRenderer;->gradientScaleX:F

    .line 643
    iget-object p2, p1, Lorg/telegram/ui/PremiumPreviewFragment$2;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    iget-object p2, p2, Lorg/telegram/ui/PremiumPreviewFragment;->backgroundView:Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;

    invoke-static {p2}, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->-$$Nest$fgetimageView(Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;)Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    move-result-object p2

    iget-object p2, p2, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->mRenderer:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconRenderer;

    iget-object p3, p1, Lorg/telegram/ui/PremiumPreviewFragment$2;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    iget-object p3, p3, Lorg/telegram/ui/PremiumPreviewFragment;->backgroundView:Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;

    invoke-static {p3}, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->-$$Nest$fgetimageView(Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;)Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredHeight()I

    move-result p3

    int-to-float p3, p3

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p4

    int-to-float p4, p4

    div-float/2addr p3, p4

    iput p3, p2, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconRenderer;->gradientScaleY:F

    .line 644
    iget-object p2, p1, Lorg/telegram/ui/PremiumPreviewFragment$2;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    iget-object p2, p2, Lorg/telegram/ui/PremiumPreviewFragment;->backgroundView:Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;

    invoke-static {p2}, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->-$$Nest$fgetimageView(Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;)Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    move-result-object p2

    iget-object p2, p2, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->mRenderer:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconRenderer;

    iget-object p3, p1, Lorg/telegram/ui/PremiumPreviewFragment$2;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    iget-object p3, p3, Lorg/telegram/ui/PremiumPreviewFragment;->backgroundView:Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;

    invoke-virtual {p3}, Landroid/view/View;->getX()F

    move-result p3

    iget-object p4, p1, Lorg/telegram/ui/PremiumPreviewFragment$2;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    iget-object p4, p4, Lorg/telegram/ui/PremiumPreviewFragment;->backgroundView:Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;

    invoke-static {p4}, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->-$$Nest$fgetimageView(Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;)Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    move-result-object p4

    invoke-virtual {p4}, Landroid/view/View;->getX()F

    move-result p4

    add-float/2addr p3, p4

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p4

    int-to-float p4, p4

    div-float/2addr p3, p4

    iput p3, p2, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconRenderer;->gradientStartX:F

    .line 645
    iget-object p2, p1, Lorg/telegram/ui/PremiumPreviewFragment$2;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    iget-object p2, p2, Lorg/telegram/ui/PremiumPreviewFragment;->backgroundView:Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;

    invoke-static {p2}, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->-$$Nest$fgetimageView(Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;)Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    move-result-object p2

    iget-object p2, p2, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->mRenderer:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconRenderer;

    iget-object p3, p1, Lorg/telegram/ui/PremiumPreviewFragment$2;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    iget-object p3, p3, Lorg/telegram/ui/PremiumPreviewFragment;->backgroundView:Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;

    invoke-virtual {p3}, Landroid/view/View;->getY()F

    move-result p3

    iget-object p4, p1, Lorg/telegram/ui/PremiumPreviewFragment$2;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    iget-object p4, p4, Lorg/telegram/ui/PremiumPreviewFragment;->backgroundView:Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;

    invoke-static {p4}, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->-$$Nest$fgetimageView(Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;)Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    move-result-object p4

    invoke-virtual {p4}, Landroid/view/View;->getY()F

    move-result p4

    add-float/2addr p3, p4

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p4

    int-to-float p4, p4

    div-float/2addr p3, p4

    iput p3, p2, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconRenderer;->gradientStartY:F

    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    .line 607
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-le v0, v1, :cond_0

    .line 608
    iget-object v0, p0, Lorg/telegram/ui/PremiumPreviewFragment$2;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    iput-boolean v2, v0, Lorg/telegram/ui/PremiumPreviewFragment;->isLandscapeMode:Z

    goto :goto_0

    .line 610
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/PremiumPreviewFragment$2;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    iput-boolean v3, v0, Lorg/telegram/ui/PremiumPreviewFragment;->isLandscapeMode:Z

    .line 612
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/PremiumPreviewFragment$2;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    sget v1, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    :goto_1
    invoke-static {v0, v1}, Lorg/telegram/ui/PremiumPreviewFragment;->-$$Nest$fputstatusBarHeight(Lorg/telegram/ui/PremiumPreviewFragment;I)V

    .line 613
    iget-object v0, p0, Lorg/telegram/ui/PremiumPreviewFragment$2;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    iget-object v0, v0, Lorg/telegram/ui/PremiumPreviewFragment;->backgroundView:Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;

    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/view/View;->measure(II)V

    .line 614
    iget-object v0, p0, Lorg/telegram/ui/PremiumPreviewFragment$2;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    iget-object v0, v0, Lorg/telegram/ui/PremiumPreviewFragment;->particlesView:Lorg/telegram/ui/Components/Premium/StarParticlesView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/PremiumPreviewFragment$2;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    iget-object v1, v1, Lorg/telegram/ui/PremiumPreviewFragment;->backgroundView:Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 615
    iget-object v0, p0, Lorg/telegram/ui/PremiumPreviewFragment$2;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    invoke-static {v0}, Lorg/telegram/ui/PremiumPreviewFragment;->-$$Nest$fgetbuttonContainer(Lorg/telegram/ui/PremiumPreviewFragment;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 616
    iput-boolean v2, p0, Lorg/telegram/ui/PremiumPreviewFragment$2;->ignoreLayout:Z

    .line 617
    iget-object v0, p0, Lorg/telegram/ui/PremiumPreviewFragment$2;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    invoke-static {v0}, Lorg/telegram/ui/PremiumPreviewFragment;->-$$Nest$fgetbuttonContainer(Lorg/telegram/ui/PremiumPreviewFragment;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/high16 v1, 0x41600000    # 14.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sget v2, Lorg/telegram/messenger/AndroidUtilities;->navigationBarHeight:I

    invoke-virtual {v0, v3, v1, v3, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 618
    iput-boolean v3, p0, Lorg/telegram/ui/PremiumPreviewFragment$2;->ignoreLayout:Z

    .line 621
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/PremiumPreviewFragment$2;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    invoke-static {v0}, Lorg/telegram/ui/PremiumPreviewFragment;->-$$Nest$fgetbuttonContainer(Lorg/telegram/ui/PremiumPreviewFragment;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/PremiumPreviewFragment$2;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    invoke-static {v0}, Lorg/telegram/ui/PremiumPreviewFragment;->-$$Nest$fgetbuttonContainer(Lorg/telegram/ui/PremiumPreviewFragment;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    goto :goto_2

    :cond_3
    const/high16 v0, 0x42880000    # 68.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    .line 622
    :cond_4
    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/PremiumPreviewFragment$2;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    iget-object v1, v0, Lorg/telegram/ui/PremiumPreviewFragment;->layoutManager:Lorg/telegram/ui/Components/FillLastLinearLayoutManager;

    invoke-static {v0}, Lorg/telegram/ui/PremiumPreviewFragment;->-$$Nest$fgetstatusBarHeight(Lorg/telegram/ui/PremiumPreviewFragment;)I

    move-result v0

    add-int/2addr v0, v3

    const/high16 v2, 0x41800000    # 16.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/FillLastLinearLayoutManager;->setAdditionalHeight(I)V

    .line 623
    iget-object v0, p0, Lorg/telegram/ui/PremiumPreviewFragment$2;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    iget-object v0, v0, Lorg/telegram/ui/PremiumPreviewFragment;->layoutManager:Lorg/telegram/ui/Components/FillLastLinearLayoutManager;

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/FillLastLinearLayoutManager;->setMinimumLastViewHeight(I)V

    .line 624
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 625
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    add-int/2addr p1, p2

    shl-int/lit8 p1, p1, 0x10

    .line 626
    iget p2, p0, Lorg/telegram/ui/PremiumPreviewFragment$2;->lastSize:I

    if-eq p2, p1, :cond_5

    .line 627
    iget-object p1, p0, Lorg/telegram/ui/PremiumPreviewFragment$2;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    invoke-static {p1}, Lorg/telegram/ui/PremiumPreviewFragment;->-$$Nest$mupdateBackgroundImage(Lorg/telegram/ui/PremiumPreviewFragment;)V

    :cond_5
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 650
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 651
    iget-object p3, p0, Lorg/telegram/ui/PremiumPreviewFragment$2;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    invoke-static {p3, p1, p2}, Lorg/telegram/ui/PremiumPreviewFragment;->-$$Nest$mmeasureGradient(Lorg/telegram/ui/PremiumPreviewFragment;II)V

    return-void
.end method

.method public requestLayout()V
    .locals 1

    .line 633
    iget-boolean v0, p0, Lorg/telegram/ui/PremiumPreviewFragment$2;->ignoreLayout:Z

    if-eqz v0, :cond_0

    return-void

    .line 636
    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method
