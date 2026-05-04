.class Lorg/telegram/ui/ProfileActivity$8;
.super Lorg/telegram/ui/ProfileActivity$NestedFrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ProfileActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private grayPaint:Landroid/graphics/Paint;

.field private ignoreLayout:Z

.field private final sortedChildren:Ljava/util/ArrayList;

.field final synthetic this$0:Lorg/telegram/ui/ProfileActivity;

.field private final viewComparator:Ljava/util/Comparator;

.field private wasPortrait:Z


# direct methods
.method public static synthetic $r8$lambda$9JGOUMeK95Ei3_sJ3PhRhGChc4Y(Lorg/telegram/ui/ProfileActivity$8;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/ProfileActivity$8;->lambda$onMeasure$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$dJdy5rbfADzdnBQpqHlhnpYjyAY(Landroid/view/View;Landroid/view/View;)I
    .locals 0

    .line 3424
    invoke-virtual {p0}, Landroid/view/View;->getY()F

    move-result p0

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result p1

    sub-float/2addr p0, p1

    float-to-int p0, p0

    return p0
.end method

.method constructor <init>(Lorg/telegram/ui/ProfileActivity;Landroid/content/Context;)V
    .locals 0

    .line 3144
    iput-object p1, p0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ProfileActivity$NestedFrameLayout;-><init>(Lorg/telegram/ui/ProfileActivity;Landroid/content/Context;)V

    .line 3161
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ProfileActivity$8;->grayPaint:Landroid/graphics/Paint;

    .line 3423
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ProfileActivity$8;->sortedChildren:Ljava/util/ArrayList;

    .line 3424
    new-instance p1, Lorg/telegram/ui/ProfileActivity$8$$ExternalSyntheticLambda0;

    invoke-direct {p1}, Lorg/telegram/ui/ProfileActivity$8$$ExternalSyntheticLambda0;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ProfileActivity$8;->viewComparator:Ljava/util/Comparator;

    return-void
.end method

.method private synthetic lambda$onMeasure$0()V
    .locals 2

    .line 3397
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetselectAnimatedEmojiDialog(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectAnimatedEmojiDialogWindow;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3398
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetselectAnimatedEmojiDialog(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectAnimatedEmojiDialogWindow;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectAnimatedEmojiDialogWindow;->dismiss()V

    .line 3399
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fputselectAnimatedEmojiDialog(Lorg/telegram/ui/ProfileActivity;Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectAnimatedEmojiDialogWindow;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 9

    .line 3429
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    const/4 v2, 0x0

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetscrollableViewNoiseSuppressor(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/blur3/DownscaleScrollableNoiseSuppressor;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 3430
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$mblur3_InvalidateBlur(Lorg/telegram/ui/ProfileActivity;)V

    .line 3432
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 3433
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 3434
    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetiBlur3SourceGlass(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetiBlur3SourceGlass(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;->inRecording()Z

    move-result v3

    if-nez v3, :cond_1

    .line 3436
    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetiBlur3SourceGlass(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;->beginRecording(II)Landroid/graphics/RecordingCanvas;

    move-result-object v0

    .line 3437
    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    invoke-virtual {v1, v3}, Lorg/telegram/ui/ProfileActivity;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 3438
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->chatBlurEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3439
    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetscrollableViewNoiseSuppressor(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/blur3/DownscaleScrollableNoiseSuppressor;

    move-result-object v1

    const/4 v3, -0x2

    invoke-virtual {v1, v0, v3}, Lorg/telegram/ui/Components/blur3/DownscaleScrollableNoiseSuppressor;->draw(Landroid/graphics/Canvas;I)V

    .line 3441
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetiBlur3SourceGlass(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;->endRecording()V

    .line 3444
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0, v2}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fputiBlur3Invalidated(Lorg/telegram/ui/ProfileActivity;Z)V

    .line 3447
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetwhitePaint(Lorg/telegram/ui/ProfileActivity;)Landroid/graphics/Paint;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    invoke-virtual {v1, v3}, Lorg/telegram/ui/ProfileActivity;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 3448
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetlistView(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/high16 v6, 0x437f0000    # 255.0f

    if-nez v0, :cond_a

    .line 3449
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$8;->grayPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {v1, v3}, Lorg/telegram/ui/ProfileActivity;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 3450
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgettransitionAnimationInProress(Lorg/telegram/ui/ProfileActivity;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3451
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetwhitePaint(Lorg/telegram/ui/ProfileActivity;)Landroid/graphics/Paint;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetlistView(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getAlpha()F

    move-result v1

    mul-float/2addr v1, v6

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 3453
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgettransitionAnimationInProress(Lorg/telegram/ui/ProfileActivity;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3454
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$8;->grayPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetlistView(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getAlpha()F

    move-result v1

    mul-float/2addr v1, v6

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 3457
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetlistView(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 3458
    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$8;->sortedChildren:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    move v1, v2

    move v3, v1

    :goto_0
    const/4 v4, 0x1

    if-ge v1, v0, :cond_6

    .line 3461
    iget-object v5, p0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v5}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetlistView(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 3462
    iget-object v7, p0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v7}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetlistView(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v5

    const/4 v7, -0x1

    if-eq v5, v7, :cond_5

    .line 3463
    iget-object v4, p0, Lorg/telegram/ui/ProfileActivity$8;->sortedChildren:Ljava/util/ArrayList;

    iget-object v5, p0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v5}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetlistView(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    move v3, v4

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3468
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$8;->sortedChildren:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$8;->viewComparator:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 3470
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetlistView(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    .line 3471
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$8;->sortedChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3472
    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetopenAnimationInProgress(Lorg/telegram/ui/ProfileActivity;)Z

    move-result v1

    if-nez v1, :cond_7

    if-lez v0, :cond_7

    if-nez v3, :cond_7

    .line 3473
    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$8;->sortedChildren:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    :cond_7
    move v1, v2

    move v3, v1

    :goto_2
    if-ge v1, v0, :cond_a

    .line 3477
    iget-object v5, p0, Lorg/telegram/ui/ProfileActivity$8;->sortedChildren:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 3478
    invoke-virtual {v5}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    if-eqz v7, :cond_8

    move v7, v4

    goto :goto_3

    :cond_8
    move v7, v2

    .line 3479
    :goto_3
    iget-object v8, p0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v8}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetlistView(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getY()F

    invoke-virtual {v5}, Landroid/view/View;->getY()F

    if-ne v3, v7, :cond_9

    .line 3481
    invoke-virtual {v5}, Landroid/view/View;->getAlpha()F

    goto :goto_4

    .line 3500
    :cond_9
    invoke-virtual {v5}, Landroid/view/View;->getAlpha()F

    move v3, v7

    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 3519
    :cond_a
    invoke-super/range {p0 .. p1}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 3544
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetscrimPaint(Lorg/telegram/ui/ProfileActivity;)Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    if-lez v0, :cond_b

    .line 3545
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetscrimPaint(Lorg/telegram/ui/ProfileActivity;)Landroid/graphics/Paint;

    move-result-object v5

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 3547
    :cond_b
    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetscrimView(Lorg/telegram/ui/ProfileActivity;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_d

    .line 3548
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 3549
    iget-object v2, p0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetscrimView(Lorg/telegram/ui/ProfileActivity;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetscrimView(Lorg/telegram/ui/ProfileActivity;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3550
    iget-object v2, p0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetscrimView(Lorg/telegram/ui/ProfileActivity;)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$3300(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/ActionBar;->getBackButton()Landroid/widget/ImageView;

    move-result-object v3

    if-ne v2, v3, :cond_c

    .line 3551
    iget-object v2, p0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetscrimView(Lorg/telegram/ui/ProfileActivity;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetscrimView(Lorg/telegram/ui/ProfileActivity;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    .line 3552
    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetactionBarBackgroundPaint(Lorg/telegram/ui/ProfileActivity;)Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Paint;->getAlpha()I

    move-result v3

    .line 3553
    iget-object v4, p0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v4}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetactionBarBackgroundPaint(Lorg/telegram/ui/ProfileActivity;)Landroid/graphics/Paint;

    move-result-object v4

    int-to-float v5, v3

    iget-object v7, p0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v7}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetscrimPaint(Lorg/telegram/ui/ProfileActivity;)Landroid/graphics/Paint;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Paint;->getAlpha()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v6

    mul-float/2addr v5, v7

    const v7, 0x3e99999a    # 0.3f

    div-float/2addr v5, v7

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    int-to-float v2, v2

    const v4, 0x3f333333    # 0.7f

    mul-float/2addr v4, v2

    .line 3554
    iget-object v5, p0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v5}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetactionBarBackgroundPaint(Lorg/telegram/ui/ProfileActivity;)Landroid/graphics/Paint;

    move-result-object v5

    invoke-virtual {p1, v2, v2, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 3555
    iget-object v2, p0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetactionBarBackgroundPaint(Lorg/telegram/ui/ProfileActivity;)Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 3557
    :cond_c
    iget-object v2, p0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetscrimView(Lorg/telegram/ui/ProfileActivity;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 3558
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 3560
    :cond_d
    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetblurredView(Lorg/telegram/ui/ProfileActivity;)Landroid/view/View;

    move-result-object v1

    const/4 v7, 0x0

    if-eqz v1, :cond_f

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetblurredView(Lorg/telegram/ui/ProfileActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_f

    .line 3561
    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetblurredView(Lorg/telegram/ui/ProfileActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getAlpha()F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_e

    .line 3562
    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetblurredView(Lorg/telegram/ui/ProfileActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getAlpha()F

    move-result v1

    cmpl-float v1, v1, v7

    if-eqz v1, :cond_f

    .line 3563
    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetblurredView(Lorg/telegram/ui/ProfileActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetblurredView(Lorg/telegram/ui/ProfileActivity;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetblurredView(Lorg/telegram/ui/ProfileActivity;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v4}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetblurredView(Lorg/telegram/ui/ProfileActivity;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v5}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetblurredView(Lorg/telegram/ui/ProfileActivity;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getAlpha()F

    move-result v5

    mul-float/2addr v5, v6

    float-to-int v5, v5

    const/16 v6, 0x1f

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    .line 3564
    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetblurredView(Lorg/telegram/ui/ProfileActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetblurredView(Lorg/telegram/ui/ProfileActivity;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3565
    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetblurredView(Lorg/telegram/ui/ProfileActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 3566
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_5

    .line 3569
    :cond_e
    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetblurredView(Lorg/telegram/ui/ProfileActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 3573
    :cond_f
    :goto_5
    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    iget-boolean v1, v1, Lorg/telegram/ui/ProfileActivity;->hasMainTabs:Z

    if-nez v1, :cond_10

    .line 3574
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 3575
    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ProfileActivity;->getInternalTranslationX()F

    move-result v1

    invoke-virtual {p1, v1, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3576
    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ProfileActivity;->getThemedColor(I)I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetnavigationBarHeight(Lorg/telegram/ui/ProfileActivity;)I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ProfileActivity;->getInternalVisibility()F

    move-result v3

    invoke-static {p1, p0, v1, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->drawNavigationBarProtection(Landroid/graphics/Canvas;Landroid/view/View;IIF)V

    .line 3577
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_10
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 3148
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->pinchToZoomHelper:Lorg/telegram/ui/PinchToZoomHelper;

    invoke-virtual {v0}, Lorg/telegram/ui/PinchToZoomHelper;->isInOverlayMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3149
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->pinchToZoomHelper:Lorg/telegram/ui/PinchToZoomHelper;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/PinchToZoomHelper;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 3151
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->sharedMediaLayout:Lorg/telegram/ui/Components/SharedMediaLayout;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->isInFastScroll()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->sharedMediaLayout:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->isPinnedToTop()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3152
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->sharedMediaLayout:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->dispatchFastScrollEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 3154
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->sharedMediaLayout:Lorg/telegram/ui/Components/SharedMediaLayout;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->checkPinchToZoom(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p1, 0x1

    return p1

    .line 3157
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 2

    .line 3583
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->pinchToZoomHelper:Lorg/telegram/ui/PinchToZoomHelper;

    invoke-virtual {v0}, Lorg/telegram/ui/PinchToZoomHelper;->isInOverlayMode()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetavatarContainer2(Lorg/telegram/ui/ProfileActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-eq p2, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$3400(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v0

    if-eq p2, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetwriteButton(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v0

    if-ne p2, v0, :cond_1

    :cond_0
    return v1

    .line 3586
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetblurredView(Lorg/telegram/ui/ProfileActivity;)Landroid/view/View;

    move-result-object v0

    if-ne p2, v0, :cond_2

    return v1

    .line 3589
    :cond_2
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p1

    return p1
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 4

    .line 3594
    invoke-super {p0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->onAttachedToWindow()V

    .line 3595
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fputfragmentViewAttached(Lorg/telegram/ui/ProfileActivity;Z)V

    const/4 v0, 0x0

    move v1, v0

    .line 3596
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetemojiStatusDrawable(Lorg/telegram/ui/ProfileActivity;)[Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    move-result-object v2

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 3597
    iget-object v2, p0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetemojiStatusDrawable(Lorg/telegram/ui/ProfileActivity;)[Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    move-result-object v2

    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    .line 3598
    iget-object v2, p0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetemojiStatusDrawable(Lorg/telegram/ui/ProfileActivity;)[Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    move-result-object v2

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->attach()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v0

    .line 3601
    :goto_1
    iget-object v2, p0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetbotVerificationDrawable(Lorg/telegram/ui/ProfileActivity;)[Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    move-result-object v2

    array-length v2, v2

    if-ge v1, v2, :cond_3

    .line 3602
    iget-object v2, p0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetbotVerificationDrawable(Lorg/telegram/ui/ProfileActivity;)[Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    move-result-object v2

    aget-object v2, v2, v1

    if-eqz v2, :cond_2

    .line 3603
    iget-object v2, p0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetbotVerificationDrawable(Lorg/telegram/ui/ProfileActivity;)[Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    move-result-object v2

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->attach()V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3606
    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetbadgeDrawable(Lorg/telegram/ui/ProfileActivity;)[Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    move-result-object v1

    array-length v2, v1

    :goto_2
    if-ge v0, v2, :cond_5

    aget-object v3, v1, v0

    if-eqz v3, :cond_4

    .line 3608
    invoke-virtual {v3}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->attach()V

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 4

    .line 3615
    invoke-super {p0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->onDetachedFromWindow()V

    .line 3616
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fputfragmentViewAttached(Lorg/telegram/ui/ProfileActivity;Z)V

    move v0, v1

    .line 3617
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetemojiStatusDrawable(Lorg/telegram/ui/ProfileActivity;)[Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    move-result-object v2

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 3618
    iget-object v2, p0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetemojiStatusDrawable(Lorg/telegram/ui/ProfileActivity;)[Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    move-result-object v2

    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    .line 3619
    iget-object v2, p0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetemojiStatusDrawable(Lorg/telegram/ui/ProfileActivity;)[Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->detach()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 3622
    :goto_1
    iget-object v2, p0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetbotVerificationDrawable(Lorg/telegram/ui/ProfileActivity;)[Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    move-result-object v2

    array-length v2, v2

    if-ge v0, v2, :cond_3

    .line 3623
    iget-object v2, p0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetbotVerificationDrawable(Lorg/telegram/ui/ProfileActivity;)[Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    move-result-object v2

    aget-object v2, v2, v0

    if-eqz v2, :cond_2

    .line 3624
    iget-object v2, p0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetbotVerificationDrawable(Lorg/telegram/ui/ProfileActivity;)[Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->detach()V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3627
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetbadgeDrawable(Lorg/telegram/ui/ProfileActivity;)[Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    move-result-object v0

    array-length v2, v0

    :goto_2
    if-ge v1, v2, :cond_5

    aget-object v3, v0, v1

    if-eqz v3, :cond_4

    .line 3629
    invoke-virtual {v3}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->detach()V

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 3408
    invoke-super/range {p0 .. p5}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->onLayout(ZIIII)V

    move-object p1, p0

    .line 3409
    iget-object p2, p1, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    const/4 p3, -0x1

    iput p3, p2, Lorg/telegram/ui/ProfileActivity;->savedScrollPosition:I

    const/4 p3, 0x0

    .line 3410
    invoke-static {p2, p3}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fputfirstLayout(Lorg/telegram/ui/ProfileActivity;Z)V

    .line 3411
    iget-object p2, p1, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p2, p3}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fputinvalidateScroll(Lorg/telegram/ui/ProfileActivity;Z)V

    .line 3412
    iget-object p2, p1, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p2}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$mcheckListViewScroll(Lorg/telegram/ui/ProfileActivity;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 16

    move-object/from16 v1, p0

    .line 3172
    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v0

    iget-object v2, v1, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->access$2900(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBar;->getOccupyStatusBar()Z

    move-result v2

    const/4 v7, 0x0

    if-eqz v2, :cond_0

    sget v2, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    goto :goto_0

    :cond_0
    move v2, v7

    :goto_0
    add-int/2addr v0, v2

    .line 3173
    iget-object v2, v1, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetlistView(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 3174
    iget-object v2, v1, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetlistView(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 3175
    iget v3, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    if-eq v3, v0, :cond_1

    .line 3176
    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 3179
    :cond_1
    iget-object v2, v1, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetsearchListView(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 3180
    iget-object v2, v1, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetsearchListView(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 3181
    iget v3, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    if-eq v3, v0, :cond_2

    .line 3182
    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 3186
    :cond_2
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v8

    const/high16 v2, 0x40000000    # 2.0f

    .line 3187
    invoke-static {v8, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    move/from16 v4, p1

    invoke-super {v1, v4, v3}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 3190
    iget-object v3, v1, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetlastMeasuredContentWidth(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    const/4 v6, 0x0

    const/4 v9, 0x1

    if-ne v3, v5, :cond_4

    iget-object v3, v1, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetlastMeasuredContentHeight(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    if-eq v3, v5, :cond_3

    goto :goto_1

    :cond_3
    move v3, v7

    goto/16 :goto_5

    .line 3191
    :cond_4
    :goto_1
    iget-object v3, v1, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetlastMeasuredContentWidth(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, v1, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetlastMeasuredContentWidth(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    if-eq v3, v5, :cond_5

    move v3, v9

    goto :goto_2

    :cond_5
    move v3, v7

    .line 3192
    :goto_2
    iget-object v5, v1, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v5, v7}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fputlistContentHeight(Lorg/telegram/ui/ProfileActivity;I)V

    .line 3193
    iget-object v5, v1, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v5}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetlistAdapter(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ProfileActivity$ListAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/ui/ProfileActivity$ListAdapter;->getItemCount()I

    move-result v5

    .line 3194
    iget-object v10, v1, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    invoke-static {v10, v11}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fputlastMeasuredContentWidth(Lorg/telegram/ui/ProfileActivity;I)V

    .line 3195
    iget-object v10, v1, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    invoke-static {v10, v11}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fputlastMeasuredContentHeight(Lorg/telegram/ui/ProfileActivity;I)V

    .line 3196
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    invoke-static {v10, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 3197
    iget-object v10, v1, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v10}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetlistView(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    invoke-static {v10, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    .line 3198
    iget-object v11, v1, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v11}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetpositionToOffset(Lorg/telegram/ui/ProfileActivity;)Ljava/util/HashMap;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/HashMap;->clear()V

    move v11, v7

    :goto_3
    if-ge v11, v5, :cond_7

    .line 3200
    iget-object v12, v1, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v12}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetlistAdapter(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ProfileActivity$ListAdapter;

    move-result-object v12

    invoke-virtual {v12, v11}, Lorg/telegram/ui/ProfileActivity$ListAdapter;->getItemViewType(I)I

    move-result v12

    .line 3201
    iget-object v13, v1, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v13}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetpositionToOffset(Lorg/telegram/ui/ProfileActivity;)Ljava/util/HashMap;

    move-result-object v13

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    iget-object v15, v1, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v15}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetlistContentHeight(Lorg/telegram/ui/ProfileActivity;)I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v13, 0xd

    if-ne v12, v13, :cond_6

    .line 3203
    iget-object v12, v1, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v12}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetlistContentHeight(Lorg/telegram/ui/ProfileActivity;)I

    move-result v13

    iget-object v14, v1, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v14}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetlistView(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v14

    invoke-virtual {v14}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    add-int/2addr v13, v14

    invoke-static {v12, v13}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fputlistContentHeight(Lorg/telegram/ui/ProfileActivity;I)V

    goto :goto_4

    .line 3205
    :cond_6
    iget-object v13, v1, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v13}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetlistAdapter(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ProfileActivity$ListAdapter;

    move-result-object v13

    invoke-virtual {v13, v6, v12}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->createViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v12

    .line 3206
    iget-object v13, v1, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v13}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetlistAdapter(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ProfileActivity$ListAdapter;

    move-result-object v13

    invoke-virtual {v13, v12, v11}, Lorg/telegram/ui/ProfileActivity$ListAdapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    .line 3207
    iget-object v13, v12, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v13, v2, v10}, Landroid/view/View;->measure(II)V

    .line 3208
    iget-object v13, v1, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v13}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetlistContentHeight(Lorg/telegram/ui/ProfileActivity;)I

    move-result v14

    iget-object v12, v12, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    add-int/2addr v14, v12

    invoke-static {v13, v14}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fputlistContentHeight(Lorg/telegram/ui/ProfileActivity;I)V

    :goto_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 3212
    :cond_7
    iget-object v2, v1, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetemptyView(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/StickerEmptyView;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 3213
    iget-object v2, v1, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetemptyView(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/StickerEmptyView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v5, v1, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v5}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$mgetHeaderExtraHeight(Lorg/telegram/ui/ProfileActivity;)I

    move-result v5

    sget v10, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    add-int/2addr v5, v10

    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 3217
    :cond_8
    :goto_5
    iget-object v2, v1, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    iget-object v5, v2, Lorg/telegram/ui/ProfileActivity;->previousTransitionFragment:Lorg/telegram/ui/Components/ChatActivityInterface;

    if-eqz v5, :cond_9

    .line 3218
    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetnameTextView(Lorg/telegram/ui/ProfileActivity;)[Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object v2

    aget-object v2, v2, v7

    iget-object v5, v1, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v5}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetnameTextView(Lorg/telegram/ui/ProfileActivity;)[Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object v5

    aget-object v5, v5, v7

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    iget-object v10, v1, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    iget-object v10, v10, Lorg/telegram/ui/ProfileActivity;->previousTransitionFragment:Lorg/telegram/ui/Components/ChatActivityInterface;

    invoke-interface {v10}, Lorg/telegram/ui/Components/ChatActivityInterface;->getAvatarContainer()Lorg/telegram/ui/Components/ChatAvatarContainer;

    move-result-object v10

    invoke-virtual {v10}, Lorg/telegram/ui/Components/ChatAvatarContainer;->getTitleTextView()Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    sub-int/2addr v5, v10

    invoke-virtual {v2, v5}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setRightPadding(I)V

    .line 3221
    :cond_9
    iget-object v2, v1, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetfragmentOpened(Lorg/telegram/ui/ProfileActivity;)Z

    move-result v2

    const-wide/16 v10, 0x0

    const/high16 v5, 0x42400000    # 48.0f

    const/4 v12, -0x1

    if-nez v2, :cond_1b

    iget-object v2, v1, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetexpandPhoto(Lorg/telegram/ui/ProfileActivity;)Z

    move-result v2

    if-nez v2, :cond_a

    iget-object v2, v1, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetopenAnimationInProgress(Lorg/telegram/ui/ProfileActivity;)Z

    move-result v2

    if-eqz v2, :cond_1b

    iget-object v2, v1, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetplayProfileAnimation(Lorg/telegram/ui/ProfileActivity;)I

    move-result v2

    const/4 v13, 0x2

    if-ne v2, v13, :cond_1b

    .line 3222
    :cond_a
    iput-boolean v9, v1, Lorg/telegram/ui/ProfileActivity$8;->ignoreLayout:Z

    .line 3224
    iget-object v2, v1, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetexpandPhoto(Lorg/telegram/ui/ProfileActivity;)Z

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v2, :cond_15

    .line 3225
    iget-object v2, v1, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetsearchItem(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v2

    if-eqz v2, :cond_b

    .line 3226
    iget-object v2, v1, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetsearchItem(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v2

    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setAlpha(F)V

    .line 3227
    iget-object v2, v1, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetsearchItem(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/view/View;->setEnabled(Z)V

    .line 3228
    iget-object v2, v1, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetsearchItem(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v2

    const/16 v6, 0x8

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 3230
    :cond_b
    iget-object v2, v1, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetnameTextView(Lorg/telegram/ui/ProfileActivity;)[Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object v2

    aget-object v2, v2, v9

    invoke-virtual {v2, v12}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 3231
    iget-object v2, v1, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetnameTextView(Lorg/telegram/ui/ProfileActivity;)[Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object v2

    aget-object v2, v2, v9

    iget-object v6, v1, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v6}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetnameTextView(Lorg/telegram/ui/ProfileActivity;)[Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object v6

    aget-object v6, v6, v9

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v2, v6}, Landroid/view/View;->setPivotY(F)V

    .line 3232
    iget-object v2, v1, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetnameTextView(Lorg/telegram/ui/ProfileActivity;)[Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object v2

    aget-object v2, v2, v9

    const v6, 0x3fb0a3d7    # 1.38f

    invoke-virtual {v2, v6}, Landroid/view/View;->setScaleX(F)V

    .line 3233
    iget-object v2, v1, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetnameTextView(Lorg/telegram/ui/ProfileActivity;)[Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object v2

    aget-object v2, v2, v9

    invoke-virtual {v2, v6}, Landroid/view/View;->setScaleY(F)V

    .line 3234
    iget-object v2, v1, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetscamDrawable(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/ScamDrawable;

    move-result-object v2

    if-eqz v2, :cond_c

    .line 3235
    iget-object v2, v1, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetscamDrawable(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/ScamDrawable;

    move-result-object v2

    const/16 v6, 0xb3

    const/16 v13, 0xff

    invoke-static {v6, v13, v13, v13}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    invoke-virtual {v2, v6}, Lorg/telegram/ui/Components/ScamDrawable;->setColor(I)V

    .line 3237
    :cond_c
    iget-object v2, v1, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetlockIconDrawable(Lorg/telegram/ui/ProfileActivity;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_d

    .line 3238
    iget-object v2, v1, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetlockIconDrawable(Lorg/telegram/ui/ProfileActivity;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v12, v6}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 3240
    :cond_d
    iget-object v2, v1, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetverifiedCrossfadeDrawable(Lorg/telegram/ui/ProfileActivity;)[Lorg/telegram/ui/Components/CrossfadeDrawable;

    move-result-object v2

    aget-object v2, v2, v7

    if-eqz v2, :cond_e

    .line 3241
    iget-object v2, v1, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetverifiedCrossfadeDrawable(Lorg/telegram/ui/ProfileActivity;)[Lorg/telegram/ui/Components/CrossfadeDrawable;

    move-result-object v2

    aget-object v2, v2, v7

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/CrossfadeDrawable;->setProgress(F)V

    .line 3243
    :cond_e
    iget-object v2, v1, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetverifiedCrossfadeDrawable(Lorg/telegram/ui/ProfileActivity;)[Lorg/telegram/ui/Components/CrossfadeDrawable;

    move-result-object v2

    aget-object v2, v2, v9

    if-eqz v2, :cond_f

    .line 3244
    iget-object v2, v1, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetverifiedCrossfadeDrawable(Lorg/telegram/ui/ProfileActivity;)[Lorg/telegram/ui/Components/CrossfadeDrawable;

    move-result-object v2

    aget-object v2, v2, v9

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/CrossfadeDrawable;->setProgress(F)V

    .line 3246
    :cond_f
    iget-object v2, v1, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetpremiumCrossfadeDrawable(Lorg/telegram/ui/ProfileActivity;)[Lorg/telegram/ui/Components/CrossfadeDrawable;

    move-result-object v2

    aget-object v2, v2, v7

    if-eqz v2, :cond_10

    .line 3247
    iget-object v2, v1, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetpremiumCrossfadeDrawable(Lorg/telegram/ui/ProfileActivity;)[Lorg/telegram/ui/Components/CrossfadeDrawable;

    move-result-object v2

    aget-object v2, v2, v7

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/CrossfadeDrawable;->setProgress(F)V

    .line 3249
    :cond_10
    iget-object v2, v1, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetpremiumCrossfadeDrawable(Lorg/telegram/ui/ProfileActivity;)[Lorg/telegram/ui/Components/CrossfadeDrawable;

    move-result-object v2

    aget-object v2, v2, v9

    if-eqz v2, :cond_11

    .line 3250
    iget-object v2, v1, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetpremiumCrossfadeDrawable(Lorg/telegram/ui/ProfileActivity;)[Lorg/telegram/ui/Components/CrossfadeDrawable;

    move-result-object v2

    aget-object v2, v2, v9

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/CrossfadeDrawable;->setProgress(F)V

    .line 3252
    :cond_11
    iget-object v2, v1, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2, v3}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$mupdateEmojiStatusDrawableColor(Lorg/telegram/ui/ProfileActivity;F)V

    .line 3253
    iget-object v2, v1, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetonlineTextView(Lorg/telegram/ui/ProfileActivity;)[Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object v2

    aget-object v2, v2, v9

    const v6, -0x4c000001

    invoke-virtual {v2, v6}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 3254
    iget-object v2, v1, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->access$3000(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v2

    const v6, 0x40ffffff    # 7.9999995f

    invoke-virtual {v2, v6, v7}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsBackgroundColor(IZ)V

    .line 3255
    iget-object v2, v1, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->access$3100(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v12, v7}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsColor(IZ)V

    .line 3256
    iget-object v2, v1, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetoverlaysView(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ProfileActivity$OverlaysView;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/ProfileActivity$OverlaysView;->setOverlaysVisible()V

    .line 3257
    iget-object v2, v1, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetoverlaysView(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ProfileActivity$OverlaysView;

    move-result-object v2

    invoke-virtual {v2, v3, v7}, Lorg/telegram/ui/ProfileActivity$OverlaysView;->setAlphaValue(FZ)V

    .line 3258
    iget-object v2, v1, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetavatarImage(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ProfileActivity$AvatarImageView;

    move-result-object v2

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->setForegroundAlpha(F)V

    .line 3259
    iget-object v2, v1, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetavatarContainer(Lorg/telegram/ui/ProfileActivity;)Landroid/widget/FrameLayout;

    move-result-object v2

    const/4 v6, 0x4

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 3260
    iget-object v2, v1, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetavatarsViewPager(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/ProfileGalleryView;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Components/ProfileGalleryView;->resetCurrentItem()V

    .line 3261
    iget-object v2, v1, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetavatarsViewPager(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/ProfileGalleryView;

    move-result-object v2

    invoke-virtual {v2, v7}, Lorg/telegram/ui/Components/ProfileGalleryView;->setVisibility(I)V

    .line 3262
    iget-object v2, v1, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetshowStatusButton(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ProfileActivity$ShowDrawable;

    move-result-object v2

    if-eqz v2, :cond_12

    .line 3263
    iget-object v2, v1, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetshowStatusButton(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ProfileActivity$ShowDrawable;

    move-result-object v2

    const v6, 0x23ffffff

    invoke-virtual {v2, v6}, Lorg/telegram/ui/ProfileActivity$ShowDrawable;->setBackgroundColor(I)V

    .line 3265
    :cond_12
    iget-object v2, v1, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetstoryView(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Stories/ProfileStoriesView;

    move-result-object v2

    if-eqz v2, :cond_13

    .line 3266
    iget-object v2, v1, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetstoryView(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Stories/ProfileStoriesView;

    move-result-object v2

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Stories/ProfileStoriesView;->setExpandProgress(F)V

    .line 3268
    :cond_13
    iget-object v2, v1, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    iget-object v2, v2, Lorg/telegram/ui/ProfileActivity;->giftsView:Lorg/telegram/ui/Stars/ProfileGiftsView;

    if-eqz v2, :cond_14

    .line 3269
    invoke-virtual {v2, v3}, Lorg/telegram/ui/Stars/ProfileGiftsView;->setExpandProgress(F)V

    .line 3271
    :cond_14
    iget-object v2, v1, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2, v7}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fputexpandPhoto(Lorg/telegram/ui/ProfileActivity;Z)V

    .line 3272
    iget-object v2, v1, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ProfileActivity;->updateCollectibleHint()V

    .line 3275
    :cond_15
    iget-object v2, v1, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ProfileActivity;->calculatePositionsOnFirstLoad()V

    .line 3277
    iget-object v2, v1, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2, v9}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fputallowPullingDown(Lorg/telegram/ui/ProfileActivity;Z)V

    .line 3278
    iget-object v2, v1, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2, v9}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fputisPulledDown(Lorg/telegram/ui/ProfileActivity;Z)V

    .line 3279
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v6, Lorg/telegram/messenger/NotificationCenter;->needCheckSystemBarColors:I

    new-array v12, v9, [Ljava/lang/Object;

    sget-object v13, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v13, v12, v7

    invoke-virtual {v2, v6, v12}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 3280
    iget-object v2, v1, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetotherItem(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v2

    if-eqz v2, :cond_17

    .line 3281
    iget-object v2, v1, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ProfileActivity;->isPeerNoForwards()Z

    move-result v2

    const/16 v6, 0x15

    if-nez v2, :cond_16

    .line 3282
    iget-object v2, v1, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetotherItem(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v2

    invoke-virtual {v2, v6}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->showSubItem(I)V

    goto :goto_6

    .line 3284
    :cond_16
    iget-object v2, v1, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetotherItem(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v2

    invoke-virtual {v2, v6}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->hideSubItem(I)V

    .line 3286
    :goto_6
    iget-object v2, v1, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetimageUpdater(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/ImageUpdater;

    move-result-object v2

    if-eqz v2, :cond_17

    .line 3287
    iget-object v2, v1, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetotherItem(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v2

    const/16 v6, 0x22

    invoke-virtual {v2, v6}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->showSubItem(I)V

    .line 3288
    iget-object v2, v1, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetotherItem(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v2

    const/16 v6, 0x23

    invoke-virtual {v2, v6}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->showSubItem(I)V

    .line 3289
    iget-object v2, v1, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetotherItem(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v2

    const/16 v6, 0x1f

    invoke-virtual {v2, v6}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->hideSubItem(I)V

    .line 3292
    :cond_17
    iget-object v2, v1, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2, v3}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fputcurrentExpanAnimatorFracture(Lorg/telegram/ui/ProfileActivity;F)V

    .line 3296
    iget-object v2, v1, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetisInLandscapeMode(Lorg/telegram/ui/ProfileActivity;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 3297
    iget-object v2, v1, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$mgetHeaderExtraHeight(Lorg/telegram/ui/ProfileActivity;)I

    move-result v2

    add-int/2addr v2, v0

    move v3, v7

    goto :goto_7

    .line 3300
    :cond_18
    iget-object v2, v1, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetlistView(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    iget-object v3, v1, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$mgetActionsExtraHeight(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    add-int/2addr v2, v3

    .line 3301
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    iget-object v6, v1, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v6}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetlistContentHeight(Lorg/telegram/ui/ProfileActivity;)I

    move-result v6

    iget-object v12, v1, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v12}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$mgetHeaderExtraHeight(Lorg/telegram/ui/ProfileActivity;)I

    move-result v12

    add-int/2addr v6, v12

    add-int/2addr v6, v0

    sub-int/2addr v3, v6

    invoke-static {v7, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 3303
    :goto_7
    iget-object v6, v1, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v6}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetbanFromGroup(Lorg/telegram/ui/ProfileActivity;)J

    move-result-wide v12

    cmp-long v6, v12, v10

    if-eqz v6, :cond_19

    .line 3304
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    sget v10, Lorg/telegram/messenger/AndroidUtilities;->navigationBarHeight:I

    add-int/2addr v6, v10

    add-int/2addr v3, v6

    .line 3305
    iget-object v6, v1, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v6}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetlistView(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v6

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    sget v10, Lorg/telegram/messenger/AndroidUtilities;->navigationBarHeight:I

    add-int/2addr v5, v10

    invoke-virtual {v6, v5}, Landroidx/recyclerview/widget/RecyclerView;->setBottomGlowOffset(I)V

    goto :goto_8

    .line 3307
    :cond_19
    iget-object v5, v1, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v5}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetlistView(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroidx/recyclerview/widget/RecyclerView;->setBottomGlowOffset(I)V

    .line 3309
    :goto_8
    iget-object v5, v1, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    sub-int v6, v2, v0

    int-to-float v6, v6

    invoke-static {v5, v6}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fputinitialAnimationExtraHeight(Lorg/telegram/ui/ProfileActivity;F)V

    .line 3310
    iget-object v5, v1, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v5}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetplayProfileAnimation(Lorg/telegram/ui/ProfileActivity;)I

    move-result v5

    if-nez v5, :cond_1a

    .line 3311
    iget-object v5, v1, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v5}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetinitialAnimationExtraHeight(Lorg/telegram/ui/ProfileActivity;)F

    move-result v6

    invoke-static {v5, v6}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fputextraHeight(Lorg/telegram/ui/ProfileActivity;F)V

    .line 3313
    :cond_1a
    iget-object v5, v1, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v5}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetlayoutManager(Lorg/telegram/ui/ProfileActivity;)Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object v5

    neg-int v6, v0

    invoke-virtual {v5, v7, v6}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 3314
    iget-object v5, v1, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v5}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetlistView(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v5

    invoke-virtual {v5, v7, v2, v7, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 3315
    iget-object v2, v1, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetlistView(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v6, 0x0

    move/from16 v3, p1

    move/from16 v5, p2

    invoke-virtual/range {v1 .. v6}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 3316
    iget-object v2, v1, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetlistView(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v2

    iget-object v3, v1, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetlistView(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    iget-object v4, v1, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v4}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetlistView(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, v0

    invoke-virtual {v2, v7, v0, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 3317
    iput-boolean v7, v1, Lorg/telegram/ui/ProfileActivity$8;->ignoreLayout:Z

    goto/16 :goto_12

    .line 3318
    :cond_1b
    iget-object v2, v1, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetfragmentOpened(Lorg/telegram/ui/ProfileActivity;)Z

    move-result v2

    if-eqz v2, :cond_2e

    iget-object v2, v1, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetopenAnimationInProgress(Lorg/telegram/ui/ProfileActivity;)Z

    move-result v2

    if-nez v2, :cond_2e

    iget-object v2, v1, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetfirstLayout(Lorg/telegram/ui/ProfileActivity;)Z

    move-result v2

    if-nez v2, :cond_2e

    .line 3319
    iput-boolean v9, v1, Lorg/telegram/ui/ProfileActivity$8;->ignoreLayout:Z

    .line 3323
    iget-object v2, v1, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    iget-boolean v4, v2, Lorg/telegram/ui/ProfileActivity;->hasMainTabs:Z

    if-nez v4, :cond_1d

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetisInLandscapeMode(Lorg/telegram/ui/ProfileActivity;)Z

    move-result v2

    if-nez v2, :cond_1c

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 3324
    :cond_1c
    iget-object v2, v1, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$mgetHeaderExtraHeight(Lorg/telegram/ui/ProfileActivity;)I

    move-result v2

    move v4, v7

    goto :goto_9

    .line 3327
    :cond_1d
    iget-object v2, v1, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetlistView(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    iget-object v4, v1, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v4}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$mgetActionsExtraHeight(Lorg/telegram/ui/ProfileActivity;)I

    move-result v4

    add-int/2addr v2, v4

    .line 3328
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    iget-object v13, v1, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v13}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetlistContentHeight(Lorg/telegram/ui/ProfileActivity;)I

    move-result v13

    iget-object v14, v1, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v14}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$mgetHeaderExtraHeight(Lorg/telegram/ui/ProfileActivity;)I

    move-result v14

    add-int/2addr v13, v14

    add-int/2addr v13, v0

    sub-int/2addr v4, v13

    invoke-static {v7, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 3330
    :goto_9
    iget-object v13, v1, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v13}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetbanFromGroup(Lorg/telegram/ui/ProfileActivity;)J

    move-result-wide v13

    cmp-long v10, v13, v10

    if-eqz v10, :cond_1e

    .line 3331
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    sget v11, Lorg/telegram/messenger/AndroidUtilities;->navigationBarHeight:I

    add-int/2addr v10, v11

    add-int/2addr v4, v10

    .line 3332
    iget-object v10, v1, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v10}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetlistView(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v10

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    sget v11, Lorg/telegram/messenger/AndroidUtilities;->navigationBarHeight:I

    add-int/2addr v5, v11

    invoke-virtual {v10, v5}, Landroidx/recyclerview/widget/RecyclerView;->setBottomGlowOffset(I)V

    goto :goto_a

    .line 3334
    :cond_1e
    iget-object v5, v1, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v5}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetlistView(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroidx/recyclerview/widget/RecyclerView;->setBottomGlowOffset(I)V

    .line 3336
    :goto_a
    iget-object v5, v1, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v5}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetlistView(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    move v10, v7

    .line 3339
    :goto_b
    iget-object v11, v1, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v11}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetlistView(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v11

    if-ge v10, v11, :cond_20

    .line 3340
    iget-object v11, v1, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v11}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetlistView(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v11

    iget-object v13, v1, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v13}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetlistView(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v13

    invoke-virtual {v13, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v11, v13}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v11

    if-eq v11, v12, :cond_1f

    .line 3342
    iget-object v6, v1, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v6}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetlistView(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    goto :goto_c

    :cond_1f
    add-int/lit8 v10, v10, 0x1

    goto :goto_b

    :cond_20
    move v11, v12

    :goto_c
    if-nez v6, :cond_21

    .line 3348
    iget-object v6, v1, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v6}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetlistView(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_21

    .line 3350
    iget-object v10, v1, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v10}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetlistView(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v10

    invoke-virtual {v10, v6}, Landroidx/recyclerview/widget/RecyclerView;->findContainingViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v10

    .line 3351
    invoke-virtual {v10}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v11

    if-ne v11, v12, :cond_21

    .line 3353
    invoke-virtual {v10}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getPosition()I

    move-result v11

    :cond_21
    if-eqz v6, :cond_22

    .line 3360
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v10

    goto :goto_d

    :cond_22
    move v10, v2

    .line 3363
    :goto_d
    iget-object v12, v1, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v12}, Lorg/telegram/ui/ProfileActivity;->access$3200(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/ui/ActionBar/ActionBar;->isSearchFieldVisible()Z

    move-result v12

    if-nez v12, :cond_23

    iget-object v12, v1, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v12}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetopenSimilar(Lorg/telegram/ui/ProfileActivity;)Z

    move-result v12

    if-eqz v12, :cond_24

    :cond_23
    iget-object v12, v1, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v12}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetsharedMediaRow(Lorg/telegram/ui/ProfileActivity;)I

    move-result v12

    if-ltz v12, :cond_24

    .line 3364
    iget-object v3, v1, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetlayoutManager(Lorg/telegram/ui/ProfileActivity;)Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object v3

    iget-object v6, v1, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v6}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetsharedMediaRow(Lorg/telegram/ui/ProfileActivity;)I

    move-result v6

    neg-int v10, v2

    invoke-virtual {v3, v6, v10}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    :goto_e
    move v3, v9

    goto :goto_10

    .line 3366
    :cond_24
    iget-object v12, v1, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v12}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetinvalidateScroll(Lorg/telegram/ui/ProfileActivity;)Z

    move-result v12

    if-nez v12, :cond_25

    if-eq v5, v2, :cond_2a

    .line 3367
    :cond_25
    iget-object v12, v1, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    iget v13, v12, Lorg/telegram/ui/ProfileActivity;->savedScrollPosition:I

    if-ltz v13, :cond_26

    .line 3368
    invoke-static {v12}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetlayoutManager(Lorg/telegram/ui/ProfileActivity;)Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object v3

    iget-object v6, v1, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    iget v10, v6, Lorg/telegram/ui/ProfileActivity;->savedScrollPosition:I

    iget v6, v6, Lorg/telegram/ui/ProfileActivity;->savedScrollOffset:I

    sub-int/2addr v6, v2

    invoke-virtual {v3, v10, v6}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    goto :goto_f

    :cond_26
    if-eqz v3, :cond_27

    .line 3369
    invoke-static {v12}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetallowPullingDown(Lorg/telegram/ui/ProfileActivity;)Z

    move-result v3

    if-nez v3, :cond_29

    :cond_27
    if-eqz v6, :cond_29

    if-nez v11, :cond_28

    .line 3370
    iget-object v3, v1, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetallowPullingDown(Lorg/telegram/ui/ProfileActivity;)Z

    move-result v3

    if-nez v3, :cond_28

    iget-object v3, v1, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$mgetHeaderExtraHeight(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    if-le v10, v3, :cond_28

    .line 3371
    iget-object v3, v1, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$mgetHeaderExtraHeight(Lorg/telegram/ui/ProfileActivity;)I

    move-result v10

    .line 3373
    :cond_28
    iget-object v3, v1, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetlayoutManager(Lorg/telegram/ui/ProfileActivity;)Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object v3

    sub-int/2addr v10, v2

    invoke-virtual {v3, v11, v10}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    goto :goto_e

    .line 3376
    :cond_29
    iget-object v3, v1, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetlayoutManager(Lorg/telegram/ui/ProfileActivity;)Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object v3

    iget-object v6, v1, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v6}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$mgetHeaderExtraHeight(Lorg/telegram/ui/ProfileActivity;)I

    move-result v6

    sub-int/2addr v6, v2

    invoke-virtual {v3, v7, v6}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    :cond_2a
    :goto_f
    move v3, v7

    :goto_10
    if-ne v5, v2, :cond_2b

    .line 3379
    iget-object v5, v1, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v5}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetlistView(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    if-eq v5, v4, :cond_2c

    .line 3380
    :cond_2b
    iget-object v3, v1, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetlistView(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v3

    invoke-virtual {v3, v7, v2, v7, v4}, Landroid/view/View;->setPadding(IIII)V

    move v3, v9

    :cond_2c
    if-eqz v3, :cond_2d

    .line 3384
    iget-object v2, v1, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetlistView(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v6, 0x0

    move/from16 v3, p1

    move/from16 v5, p2

    invoke-virtual/range {v1 .. v6}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 3386
    :try_start_0
    iget-object v2, v1, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetlistView(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v2

    iget-object v3, v1, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetlistView(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    iget-object v4, v1, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v4}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetlistView(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, v0

    invoke-virtual {v2, v7, v0, v3, v4}, Landroid/view/View;->layout(IIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_11

    :catch_0
    move-exception v0

    .line 3388
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 3391
    :cond_2d
    :goto_11
    iput-boolean v7, v1, Lorg/telegram/ui/ProfileActivity$8;->ignoreLayout:Z

    .line 3394
    :cond_2e
    :goto_12
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    if-le v8, v0, :cond_2f

    move v7, v9

    .line 3395
    :cond_2f
    iget-boolean v0, v1, Lorg/telegram/ui/ProfileActivity$8;->wasPortrait:Z

    if-eq v7, v0, :cond_30

    .line 3396
    new-instance v0, Lorg/telegram/ui/ProfileActivity$8$$ExternalSyntheticLambda1;

    invoke-direct {v0, v1}, Lorg/telegram/ui/ProfileActivity$8$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/ProfileActivity$8;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 3402
    iput-boolean v7, v1, Lorg/telegram/ui/ProfileActivity$8;->wasPortrait:Z

    :cond_30
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .line 3417
    iget-boolean v0, p0, Lorg/telegram/ui/ProfileActivity$8;->ignoreLayout:Z

    if-eqz v0, :cond_0

    return-void

    .line 3420
    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method
