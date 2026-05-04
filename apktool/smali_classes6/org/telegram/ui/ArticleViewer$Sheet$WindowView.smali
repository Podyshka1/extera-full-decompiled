.class public Lorg/telegram/ui/ArticleViewer$Sheet$WindowView;
.super Lorg/telegram/ui/Components/SizeNotifierFrameLayout;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/ActionBar/BaseFragment$AttachedSheetWindow;
.implements Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$SheetView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ArticleViewer$Sheet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WindowView"
.end annotation


# instance fields
.field private final attachedActionBar:Lorg/telegram/ui/Components/AnimatedFloat;

.field private final backgroundPaint:Landroid/graphics/Paint;

.field private final clipPath:Landroid/graphics/Path;

.field private clipPath2:Landroid/graphics/Path;

.field private clipRect:Landroid/graphics/RectF;

.field private drawingFromOverlay:Z

.field private final handlePaint:Landroid/graphics/Paint;

.field private final headerBackgroundPaint:Landroid/graphics/Paint;

.field private final rect:Landroid/graphics/RectF;

.field private final rect2:Landroid/graphics/RectF;

.field private final scrimPaint:Landroid/graphics/Paint;

.field private final shadowPaint:Landroid/graphics/Paint;

.field private stoppedAtFling:Z

.field final synthetic this$1:Lorg/telegram/ui/ArticleViewer$Sheet;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/ArticleViewer$Sheet;Landroid/content/Context;)V
    .locals 7

    .line 14196
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$Sheet$WindowView;->this$1:Lorg/telegram/ui/ArticleViewer$Sheet;

    .line 14197
    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;-><init>(Landroid/content/Context;)V

    .line 14200
    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$Sheet$WindowView;->scrimPaint:Landroid/graphics/Paint;

    .line 14201
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$Sheet$WindowView;->shadowPaint:Landroid/graphics/Paint;

    .line 14202
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$Sheet$WindowView;->backgroundPaint:Landroid/graphics/Paint;

    .line 14203
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$Sheet$WindowView;->handlePaint:Landroid/graphics/Paint;

    .line 14204
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$Sheet$WindowView;->headerBackgroundPaint:Landroid/graphics/Paint;

    .line 14205
    new-instance v0, Lorg/telegram/ui/Components/AnimatedFloat;

    const-wide/16 v4, 0x1a4

    sget-object v6, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const-wide/16 v2, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    iput-object v0, v1, Lorg/telegram/ui/ArticleViewer$Sheet$WindowView;->attachedActionBar:Lorg/telegram/ui/Components/AnimatedFloat;

    .line 14214
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, v1, Lorg/telegram/ui/ArticleViewer$Sheet$WindowView;->clipPath:Landroid/graphics/Path;

    .line 14215
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, v1, Lorg/telegram/ui/ArticleViewer$Sheet$WindowView;->rect:Landroid/graphics/RectF;

    .line 14216
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, v1, Lorg/telegram/ui/ArticleViewer$Sheet$WindowView;->rect2:Landroid/graphics/RectF;

    .line 14313
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, v1, Lorg/telegram/ui/ArticleViewer$Sheet$WindowView;->clipRect:Landroid/graphics/RectF;

    .line 14314
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, v1, Lorg/telegram/ui/ArticleViewer$Sheet$WindowView;->clipPath2:Landroid/graphics/Path;

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 19

    move-object/from16 v0, p0

    .line 14226
    iget-boolean v1, v0, Lorg/telegram/ui/ArticleViewer$Sheet$WindowView;->drawingFromOverlay:Z

    if-eqz v1, :cond_0

    return-void

    .line 14230
    :cond_0
    iget-object v1, v0, Lorg/telegram/ui/ArticleViewer$Sheet$WindowView;->this$1:Lorg/telegram/ui/ArticleViewer$Sheet;

    invoke-static {v1}, Lorg/telegram/ui/ArticleViewer$Sheet;->-$$Nest$fgetopenProgress(Lorg/telegram/ui/ArticleViewer$Sheet;)F

    move-result v1

    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer$Sheet$WindowView;->this$1:Lorg/telegram/ui/ArticleViewer$Sheet;

    invoke-static {v2}, Lorg/telegram/ui/ArticleViewer$Sheet;->-$$Nest$fgetdismissProgress(Lorg/telegram/ui/ArticleViewer$Sheet;)F

    move-result v2

    const/high16 v7, 0x3f800000    # 1.0f

    sub-float v2, v7, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v8

    .line 14232
    iget-object v1, v0, Lorg/telegram/ui/ArticleViewer$Sheet$WindowView;->scrimPaint:Landroid/graphics/Paint;

    const/high16 v9, -0x1000000

    invoke-virtual {v1, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 14233
    iget-object v1, v0, Lorg/telegram/ui/ArticleViewer$Sheet$WindowView;->scrimPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x42c00000    # 96.0f

    mul-float/2addr v2, v8

    iget-object v3, v0, Lorg/telegram/ui/ArticleViewer$Sheet$WindowView;->this$1:Lorg/telegram/ui/ArticleViewer$Sheet;

    invoke-static {v3}, Lorg/telegram/ui/ArticleViewer$Sheet;->-$$Nest$fgetbackProgress(Lorg/telegram/ui/ArticleViewer$Sheet;)F

    move-result v3

    sub-float v3, v7, v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 14234
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v4, v1

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v5, v1

    iget-object v6, v0, Lorg/telegram/ui/ArticleViewer$Sheet$WindowView;->scrimPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 14236
    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer$Sheet$WindowView;->this$1:Lorg/telegram/ui/ArticleViewer$Sheet;

    invoke-static {v2}, Lorg/telegram/ui/ArticleViewer$Sheet;->-$$Nest$mgetListTop(Lorg/telegram/ui/ArticleViewer$Sheet;)I

    move-result v2

    iget-object v3, v0, Lorg/telegram/ui/ArticleViewer$Sheet$WindowView;->this$1:Lorg/telegram/ui/ArticleViewer$Sheet;

    invoke-static {v3}, Lorg/telegram/ui/ArticleViewer$Sheet;->-$$Nest$mgetListPaddingTop(Lorg/telegram/ui/ArticleViewer$Sheet;)I

    move-result v3

    sub-int/2addr v2, v3

    .line 14237
    sget v3, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v4

    add-int/2addr v3, v4

    const/4 v11, 0x0

    if-ge v2, v3, :cond_1

    const v3, 0x3f733333    # 0.95f

    cmpl-float v3, v8, v3

    if-lez v3, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    move v3, v11

    .line 14238
    :goto_0
    iget-object v4, v0, Lorg/telegram/ui/ArticleViewer$Sheet$WindowView;->this$1:Lorg/telegram/ui/ArticleViewer$Sheet;

    iget-boolean v5, v4, Lorg/telegram/ui/ArticleViewer$Sheet;->attachedToActionBar:Z

    if-eq v5, v3, :cond_2

    .line 14239
    iput-boolean v3, v4, Lorg/telegram/ui/ArticleViewer$Sheet;->attachedToActionBar:Z

    .line 14240
    invoke-virtual {v4}, Lorg/telegram/ui/ArticleViewer$Sheet;->checkNavColor()V

    .line 14242
    :cond_2
    iget-object v4, v0, Lorg/telegram/ui/ArticleViewer$Sheet$WindowView;->attachedActionBar:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {v4, v3}, Lorg/telegram/ui/Components/AnimatedFloat;->set(Z)F

    move-result v5

    .line 14243
    iget-object v4, v0, Lorg/telegram/ui/ArticleViewer$Sheet$WindowView;->this$1:Lorg/telegram/ui/ArticleViewer$Sheet;

    iget-boolean v6, v4, Lorg/telegram/ui/ArticleViewer$Sheet;->fullyAttachedToActionBar:Z

    const v12, 0x3f7fbe77    # 0.999f

    cmpl-float v12, v5, v12

    if-ltz v12, :cond_3

    const/4 v13, 0x1

    goto :goto_1

    :cond_3
    move v13, v11

    :goto_1
    if-eq v6, v13, :cond_5

    if-ltz v12, :cond_4

    const/4 v6, 0x1

    goto :goto_2

    :cond_4
    move v6, v11

    .line 14244
    :goto_2
    iput-boolean v6, v4, Lorg/telegram/ui/ArticleViewer$Sheet;->fullyAttachedToActionBar:Z

    .line 14245
    invoke-virtual {v4}, Lorg/telegram/ui/ArticleViewer$Sheet;->checkFullyVisible()V

    .line 14247
    :cond_5
    invoke-static {v5}, Lorg/telegram/messenger/Utilities;->clamp01(F)F

    move-result v4

    invoke-static {v2, v11, v4}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v4

    .line 14249
    iget-object v6, v0, Lorg/telegram/ui/ArticleViewer$Sheet$WindowView;->this$1:Lorg/telegram/ui/ArticleViewer$Sheet;

    invoke-virtual {v6}, Lorg/telegram/ui/ArticleViewer$Sheet;->getEmptyPadding()I

    move-result v6

    int-to-float v6, v6

    iget-object v12, v0, Lorg/telegram/ui/ArticleViewer$Sheet$WindowView;->this$1:Lorg/telegram/ui/ArticleViewer$Sheet;

    invoke-static {v12}, Lorg/telegram/ui/ArticleViewer$Sheet;->-$$Nest$fgetopenProgress(Lorg/telegram/ui/ArticleViewer$Sheet;)F

    move-result v12

    sub-float v12, v7, v12

    iget-object v13, v0, Lorg/telegram/ui/ArticleViewer$Sheet$WindowView;->this$1:Lorg/telegram/ui/ArticleViewer$Sheet;

    invoke-static {v13}, Lorg/telegram/ui/ArticleViewer$Sheet;->-$$Nest$fgetdismissProgress(Lorg/telegram/ui/ArticleViewer$Sheet;)F

    move-result v13

    invoke-static {v12, v13}, Ljava/lang/Math;->max(FF)F

    move-result v12

    mul-float/2addr v12, v6

    .line 14250
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 14251
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v6

    int-to-float v6, v6

    iget-object v13, v0, Lorg/telegram/ui/ArticleViewer$Sheet$WindowView;->this$1:Lorg/telegram/ui/ArticleViewer$Sheet;

    invoke-static {v13}, Lorg/telegram/ui/ArticleViewer$Sheet;->-$$Nest$fgetbackProgress(Lorg/telegram/ui/ArticleViewer$Sheet;)F

    move-result v13

    mul-float/2addr v6, v13

    invoke-virtual {v1, v6, v12}, Landroid/graphics/Canvas;->translate(FF)V

    .line 14252
    iget-object v6, v0, Lorg/telegram/ui/ArticleViewer$Sheet$WindowView;->rect:Landroid/graphics/RectF;

    int-to-float v13, v4

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v14

    const/high16 v15, 0x41800000    # 16.0f

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v16

    add-int v14, v14, v16

    int-to-float v14, v14

    move/from16 v16, v7

    const/4 v7, 0x0

    invoke-virtual {v6, v7, v13, v4, v14}, Landroid/graphics/RectF;->set(FFFF)V

    .line 14253
    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    sub-float v14, v16, v5

    mul-float/2addr v4, v14

    cmpg-float v15, v5, v16

    if-gez v15, :cond_6

    .line 14255
    iget-object v6, v0, Lorg/telegram/ui/ArticleViewer$Sheet$WindowView;->shadowPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v11}, Landroid/graphics/Paint;->setColor(I)V

    .line 14256
    iget-object v6, v0, Lorg/telegram/ui/ArticleViewer$Sheet$WindowView;->shadowPaint:Landroid/graphics/Paint;

    const/high16 v16, 0x41900000    # 18.0f

    const/16 v17, 0x1

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    int-to-float v10, v10

    const/high16 v16, 0x40400000    # 3.0f

    move/from16 v18, v11

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    neg-int v11, v11

    int-to-float v11, v11

    const v16, 0x3e851eb8    # 0.26f

    mul-float v8, v8, v16

    invoke-static {v9, v8}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v8

    invoke-virtual {v6, v10, v7, v11, v8}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 14257
    iget-object v6, v0, Lorg/telegram/ui/ArticleViewer$Sheet$WindowView;->rect:Landroid/graphics/RectF;

    iget-object v8, v0, Lorg/telegram/ui/ArticleViewer$Sheet$WindowView;->shadowPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v6, v4, v4, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_3

    :cond_6
    move/from16 v18, v11

    const/16 v17, 0x1

    :goto_3
    cmpg-float v6, v4, v7

    if-gtz v6, :cond_7

    .line 14261
    iget-object v4, v0, Lorg/telegram/ui/ArticleViewer$Sheet$WindowView;->rect:Landroid/graphics/RectF;

    invoke-virtual {v1, v4}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    goto :goto_4

    .line 14263
    :cond_7
    iget-object v6, v0, Lorg/telegram/ui/ArticleViewer$Sheet$WindowView;->clipPath:Landroid/graphics/Path;

    invoke-virtual {v6}, Landroid/graphics/Path;->rewind()V

    .line 14264
    iget-object v6, v0, Lorg/telegram/ui/ArticleViewer$Sheet$WindowView;->clipPath:Landroid/graphics/Path;

    iget-object v8, v0, Lorg/telegram/ui/ArticleViewer$Sheet$WindowView;->rect:Landroid/graphics/RectF;

    sget-object v10, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v6, v8, v4, v4, v10}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 14265
    iget-object v4, v0, Lorg/telegram/ui/ArticleViewer$Sheet$WindowView;->clipPath:Landroid/graphics/Path;

    invoke-virtual {v1, v4}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 14268
    :goto_4
    iget-object v4, v0, Lorg/telegram/ui/ArticleViewer$Sheet$WindowView;->backgroundPaint:Landroid/graphics/Paint;

    iget-object v6, v0, Lorg/telegram/ui/ArticleViewer$Sheet$WindowView;->this$1:Lorg/telegram/ui/ArticleViewer$Sheet;

    iget-object v6, v6, Lorg/telegram/ui/ArticleViewer$Sheet;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v6, v6, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v6, v6, v17

    invoke-virtual {v6}, Lorg/telegram/ui/ArticleViewer$PageLayout;->getBackgroundColor()I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 14269
    iget-object v4, v0, Lorg/telegram/ui/ArticleViewer$Sheet$WindowView;->rect:Landroid/graphics/RectF;

    iget-object v6, v0, Lorg/telegram/ui/ArticleViewer$Sheet$WindowView;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4, v6}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 14270
    iget-object v4, v0, Lorg/telegram/ui/ArticleViewer$Sheet$WindowView;->backgroundPaint:Landroid/graphics/Paint;

    iget-object v6, v0, Lorg/telegram/ui/ArticleViewer$Sheet$WindowView;->this$1:Lorg/telegram/ui/ArticleViewer$Sheet;

    iget-object v6, v6, Lorg/telegram/ui/ArticleViewer$Sheet;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v6, v6, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v6, v6, v18

    invoke-virtual {v6}, Lorg/telegram/ui/ArticleViewer$PageLayout;->getBackgroundColor()I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 14271
    sget-object v4, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    iget-object v6, v0, Lorg/telegram/ui/ArticleViewer$Sheet$WindowView;->rect:Landroid/graphics/RectF;

    invoke-virtual {v4, v6}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 14272
    iget-object v6, v0, Lorg/telegram/ui/ArticleViewer$Sheet$WindowView;->this$1:Lorg/telegram/ui/ArticleViewer$Sheet;

    iget-object v6, v6, Lorg/telegram/ui/ArticleViewer$Sheet;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v6, v6, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v6, v6, v18

    invoke-virtual {v6}, Landroid/view/View;->getX()F

    move-result v6

    iput v6, v4, Landroid/graphics/RectF;->left:F

    .line 14273
    iget-object v6, v0, Lorg/telegram/ui/ArticleViewer$Sheet$WindowView;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4, v6}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 14275
    iget-object v4, v0, Lorg/telegram/ui/ArticleViewer$Sheet$WindowView;->this$1:Lorg/telegram/ui/ArticleViewer$Sheet;

    iget-object v4, v4, Lorg/telegram/ui/ArticleViewer$Sheet;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v4}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$fgetactionBar(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/ui/web/WebActionBar;

    move-result-object v4

    if-eqz v3, :cond_8

    iget-object v3, v0, Lorg/telegram/ui/ArticleViewer$Sheet$WindowView;->this$1:Lorg/telegram/ui/ArticleViewer$Sheet;

    invoke-static {v3}, Lorg/telegram/ui/ArticleViewer$Sheet;->-$$Nest$mgetListPaddingTop(Lorg/telegram/ui/ArticleViewer$Sheet;)I

    move-result v3

    add-int/2addr v3, v2

    sget v6, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    iget-object v8, v0, Lorg/telegram/ui/ArticleViewer$Sheet$WindowView;->this$1:Lorg/telegram/ui/ArticleViewer$Sheet;

    iget-object v8, v8, Lorg/telegram/ui/ArticleViewer$Sheet;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v8}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$fgetcurrentHeaderHeight(Lorg/telegram/ui/ArticleViewer;)I

    move-result v8

    add-int/2addr v6, v8

    if-gt v3, v6, :cond_8

    move/from16 v3, v17

    goto :goto_5

    :cond_8
    move/from16 v3, v18

    :goto_5
    iput-boolean v3, v4, Lorg/telegram/ui/web/WebActionBar;->drawShadow:Z

    cmpl-float v3, v5, v7

    if-lez v3, :cond_9

    .line 14277
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 14278
    iget-object v3, v0, Lorg/telegram/ui/ArticleViewer$Sheet$WindowView;->this$1:Lorg/telegram/ui/ArticleViewer$Sheet;

    invoke-static {v3}, Lorg/telegram/ui/ArticleViewer$Sheet;->-$$Nest$mgetListPaddingTop(Lorg/telegram/ui/ArticleViewer$Sheet;)I

    move-result v3

    add-int/2addr v3, v2

    add-int/lit8 v3, v3, 0x1

    move/from16 v4, v18

    invoke-static {v3, v4, v5}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v3

    int-to-float v3, v3

    .line 14279
    invoke-virtual {v1, v7, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 14280
    iget-object v4, v0, Lorg/telegram/ui/ArticleViewer$Sheet$WindowView;->this$1:Lorg/telegram/ui/ArticleViewer$Sheet;

    iget-object v4, v4, Lorg/telegram/ui/ArticleViewer$Sheet;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v4}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$fgetactionBar(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/ui/web/WebActionBar;

    move-result-object v4

    iget-object v6, v0, Lorg/telegram/ui/ArticleViewer$Sheet$WindowView;->this$1:Lorg/telegram/ui/ArticleViewer$Sheet;

    invoke-static {v6}, Lorg/telegram/ui/ArticleViewer$Sheet;->-$$Nest$mgetListPaddingTop(Lorg/telegram/ui/ArticleViewer$Sheet;)I

    move-result v6

    add-int/2addr v2, v6

    add-int/lit8 v2, v2, 0x1

    int-to-float v2, v2

    sub-float v3, v2, v3

    move-object v1, v4

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v6, 0x1

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lorg/telegram/ui/web/WebActionBar;->drawBackground(Landroid/graphics/Canvas;FFFZ)V

    move-object v1, v2

    .line 14281
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    :cond_9
    neg-float v2, v12

    .line 14284
    invoke-virtual {v1, v7, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 14285
    sget-boolean v2, Lorg/telegram/messenger/AndroidUtilities;->makingGlobalBlurBitmap:Z

    if-nez v2, :cond_b

    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer$Sheet$WindowView;->this$1:Lorg/telegram/ui/ArticleViewer$Sheet;

    iget-object v2, v2, Lorg/telegram/ui/ArticleViewer$Sheet;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v2, v2, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    const/16 v18, 0x0

    aget-object v2, v2, v18

    invoke-virtual {v2}, Lorg/telegram/ui/ArticleViewer$PageLayout;->isWeb()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-virtual {v1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 14286
    :cond_a
    invoke-super/range {p0 .. p1}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    goto :goto_6

    :cond_b
    const/16 v18, 0x0

    .line 14288
    :cond_c
    :goto_6
    invoke-virtual {v1, v7, v12}, Landroid/graphics/Canvas;->translate(FF)V

    if-gez v15, :cond_f

    .line 14293
    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer$Sheet$WindowView;->this$1:Lorg/telegram/ui/ArticleViewer$Sheet;

    invoke-virtual {v2}, Lorg/telegram/ui/ArticleViewer$Sheet;->getBackgroundColor()I

    move-result v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->computePerceivedBrightness(I)F

    move-result v2

    const v3, 0x3f389375    # 0.721f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_d

    move/from16 v10, v17

    goto :goto_7

    :cond_d
    move/from16 v10, v18

    .line 14294
    :goto_7
    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer$Sheet$WindowView;->handlePaint:Landroid/graphics/Paint;

    if-eqz v10, :cond_e

    const/4 v3, -0x1

    goto :goto_8

    :cond_e
    move v3, v9

    :goto_8
    const v4, 0x3e19999a    # 0.15f

    invoke-static {v3, v4}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v3

    invoke-static {v3, v9, v5}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 14295
    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer$Sheet$WindowView;->handlePaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getAlpha()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v14

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 14296
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    iget-object v4, v0, Lorg/telegram/ui/ArticleViewer$Sheet$WindowView;->this$1:Lorg/telegram/ui/ArticleViewer$Sheet;

    invoke-static {v4}, Lorg/telegram/ui/ArticleViewer$Sheet;->-$$Nest$mgetListPaddingTop(Lorg/telegram/ui/ArticleViewer$Sheet;)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v3

    add-float/2addr v13, v4

    const/high16 v4, 0x41000000    # 8.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v5

    sub-float/2addr v13, v4

    const/high16 v4, 0x42000000    # 32.0f

    .line 14297
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    const/high16 v6, 0x42400000    # 48.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-static {v4, v6, v5}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v4

    int-to-float v4, v4

    .line 14298
    iget-object v5, v0, Lorg/telegram/ui/ArticleViewer$Sheet$WindowView;->rect:Landroid/graphics/RectF;

    div-float/2addr v4, v3

    sub-float v6, v2, v4

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    sub-float v7, v13, v7

    add-float/2addr v2, v4

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v13, v4

    invoke-virtual {v5, v6, v7, v2, v13}, Landroid/graphics/RectF;->set(FFFF)V

    .line 14299
    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer$Sheet$WindowView;->rect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v4

    div-float/2addr v4, v3

    iget-object v5, v0, Lorg/telegram/ui/ArticleViewer$Sheet$WindowView;->rect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    div-float/2addr v5, v3

    iget-object v3, v0, Lorg/telegram/ui/ArticleViewer$Sheet$WindowView;->handlePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v4, v5, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 14302
    :cond_f
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 14368
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$Sheet$WindowView;->this$1:Lorg/telegram/ui/ArticleViewer$Sheet;

    iget-boolean v2, v1, Lorg/telegram/ui/ArticleViewer$Sheet;->attachedToActionBar:Z

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lorg/telegram/ui/ArticleViewer$Sheet;->-$$Nest$mgetListTop(Lorg/telegram/ui/ArticleViewer$Sheet;)I

    move-result v1

    :goto_0
    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 14369
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$Sheet$WindowView;->this$1:Lorg/telegram/ui/ArticleViewer$Sheet;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ArticleViewer$Sheet;->dismiss(Z)V

    return v0

    .line 14372
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public drawInto(Landroid/graphics/Canvas;Landroid/graphics/RectF;FLandroid/graphics/RectF;FZ)F
    .locals 7

    .line 14324
    invoke-virtual {p0}, Lorg/telegram/ui/ArticleViewer$Sheet$WindowView;->getRect()Landroid/graphics/RectF;

    move-result-object p5

    invoke-virtual {p4, p5}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 14325
    invoke-static {p4, p2, p3, p4}, Lorg/telegram/messenger/AndroidUtilities;->lerp(Landroid/graphics/RectF;Landroid/graphics/RectF;FLandroid/graphics/RectF;)V

    .line 14327
    iget-object p2, p0, Lorg/telegram/ui/ArticleViewer$Sheet$WindowView;->this$1:Lorg/telegram/ui/ArticleViewer$Sheet;

    invoke-static {p2}, Lorg/telegram/ui/ArticleViewer$Sheet;->-$$Nest$fgetopenProgress(Lorg/telegram/ui/ArticleViewer$Sheet;)F

    move-result p2

    iget-object p5, p0, Lorg/telegram/ui/ArticleViewer$Sheet$WindowView;->this$1:Lorg/telegram/ui/ArticleViewer$Sheet;

    invoke-static {p5}, Lorg/telegram/ui/ArticleViewer$Sheet;->-$$Nest$fgetdismissProgress(Lorg/telegram/ui/ArticleViewer$Sheet;)F

    move-result p5

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float p5, v0, p5

    invoke-static {p2, p5}, Ljava/lang/Math;->min(FF)F

    move-result p2

    sub-float p5, v0, p3

    mul-float/2addr p2, p5

    .line 14328
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$Sheet$WindowView;->scrimPaint:Landroid/graphics/Paint;

    const/high16 v2, -0x1000000

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 14329
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$Sheet$WindowView;->scrimPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x42c00000    # 96.0f

    mul-float/2addr p2, v2

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$Sheet$WindowView;->this$1:Lorg/telegram/ui/ArticleViewer$Sheet;

    invoke-static {v2}, Lorg/telegram/ui/ArticleViewer$Sheet;->-$$Nest$fgetbackProgress(Lorg/telegram/ui/ArticleViewer$Sheet;)F

    move-result v2

    sub-float v2, v0, v2

    mul-float/2addr p2, v2

    float-to-int p2, p2

    invoke-virtual {v1, p2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 14330
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p2

    int-to-float v4, p2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p2

    int-to-float v5, p2

    iget-object v6, p0, Lorg/telegram/ui/ArticleViewer$Sheet$WindowView;->scrimPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    const/high16 p1, 0x41800000    # 16.0f

    .line 14332
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    const/high16 p2, 0x41200000    # 10.0f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    invoke-static {p1, p2, p3}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result p1

    int-to-float p1, p1

    .line 14334
    iget-object p2, p0, Lorg/telegram/ui/ArticleViewer$Sheet$WindowView;->backgroundPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$Sheet$WindowView;->this$1:Lorg/telegram/ui/ArticleViewer$Sheet;

    iget-object v2, v2, Lorg/telegram/ui/ArticleViewer$Sheet;->this$0:Lorg/telegram/ui/ArticleViewer;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ArticleViewer;->getThemedColor(I)I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 14335
    iget-object p2, p0, Lorg/telegram/ui/ArticleViewer$Sheet$WindowView;->clipPath2:Landroid/graphics/Path;

    invoke-virtual {p2}, Landroid/graphics/Path;->rewind()V

    .line 14336
    iget-object p2, p0, Lorg/telegram/ui/ArticleViewer$Sheet$WindowView;->clipPath2:Landroid/graphics/Path;

    sget-object v2, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {p2, p4, p1, p1, v2}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 14337
    iget-object p2, p0, Lorg/telegram/ui/ArticleViewer$Sheet$WindowView;->clipPath2:Landroid/graphics/Path;

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$Sheet$WindowView;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, p2, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 14339
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    const/4 v2, 0x1

    if-ne p2, v2, :cond_5

    .line 14340
    iget-object p2, p0, Lorg/telegram/ui/ArticleViewer$Sheet$WindowView;->this$1:Lorg/telegram/ui/ArticleViewer$Sheet;

    iget-boolean p2, p2, Lorg/telegram/ui/ArticleViewer$Sheet;->attachedToActionBar:Z

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    .line 14341
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 14342
    iget-object p2, p0, Lorg/telegram/ui/ArticleViewer$Sheet$WindowView;->clipPath2:Landroid/graphics/Path;

    invoke-virtual {v1, p2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 14343
    iget p2, p4, Landroid/graphics/RectF;->top:F

    invoke-virtual {v1, v2, p2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 14344
    iget-object p2, p0, Lorg/telegram/ui/ArticleViewer$Sheet$WindowView;->this$1:Lorg/telegram/ui/ArticleViewer$Sheet;

    iget-object p2, p2, Lorg/telegram/ui/ArticleViewer$Sheet;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {p2}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$fgetactionBar(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/ui/web/WebActionBar;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 14345
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    :cond_0
    const/4 p2, 0x0

    .line 14348
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 14349
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    if-eqz p6, :cond_1

    move p3, v0

    goto :goto_0

    :cond_1
    const p6, 0x3f7d70a4    # 0.99f

    .line 14350
    invoke-static {v0, p6, p3}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result p3

    :goto_0
    sub-float p6, p3, v0

    .line 14351
    invoke-static {p6}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const v5, 0x3c23d70a    # 0.01f

    cmpl-float v4, v4, v5

    if-lez v4, :cond_2

    .line 14352
    invoke-virtual {p4}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    invoke-virtual {p4}, Landroid/graphics/RectF;->centerY()F

    move-result v6

    invoke-virtual {v1, p3, p3, v4, v6}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 14354
    :cond_2
    iget-object v4, p0, Lorg/telegram/ui/ArticleViewer$Sheet$WindowView;->clipPath2:Landroid/graphics/Path;

    invoke-virtual {v1, v4}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 14355
    invoke-static {p6}, Ljava/lang/Math;->abs(F)F

    move-result p6

    cmpl-float p6, p6, v5

    if-lez p6, :cond_3

    div-float/2addr v0, p3

    .line 14356
    invoke-virtual {p4}, Landroid/graphics/RectF;->centerX()F

    move-result p3

    invoke-virtual {p4}, Landroid/graphics/RectF;->centerY()F

    move-result p6

    invoke-virtual {v1, v0, v0, p3, p6}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 14358
    :cond_3
    iget-object p3, p0, Lorg/telegram/ui/ArticleViewer$Sheet$WindowView;->this$1:Lorg/telegram/ui/ArticleViewer$Sheet;

    invoke-static {p3}, Lorg/telegram/ui/ArticleViewer$Sheet;->-$$Nest$mgetListTop(Lorg/telegram/ui/ArticleViewer$Sheet;)I

    move-result p3

    neg-int p3, p3

    int-to-float p3, p3

    iget p4, p4, Landroid/graphics/RectF;->top:F

    add-float/2addr p3, p4

    iget-object p4, p0, Lorg/telegram/ui/ArticleViewer$Sheet$WindowView;->this$1:Lorg/telegram/ui/ArticleViewer$Sheet;

    iget-boolean p6, p4, Lorg/telegram/ui/ArticleViewer$Sheet;->attachedToActionBar:Z

    if-eqz p6, :cond_4

    iget-object p2, p4, Lorg/telegram/ui/ArticleViewer$Sheet;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {p2}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$fgetactionBar(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/ui/web/WebActionBar;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    :cond_4
    int-to-float p2, p2

    mul-float/2addr p2, p5

    add-float/2addr p3, p2

    invoke-virtual {v1, v2, p3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 14359
    invoke-virtual {v3, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 14360
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    :cond_5
    return p1
.end method

.method public getRect()Landroid/graphics/RectF;
    .locals 5

    .line 14318
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$Sheet$WindowView;->clipRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$Sheet$WindowView;->this$1:Lorg/telegram/ui/ArticleViewer$Sheet;

    iget-boolean v2, v1, Lorg/telegram/ui/ArticleViewer$Sheet;->attachedToActionBar:Z

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lorg/telegram/ui/ArticleViewer$Sheet;->-$$Nest$mgetListTop(Lorg/telegram/ui/ArticleViewer$Sheet;)I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$Sheet$WindowView;->this$1:Lorg/telegram/ui/ArticleViewer$Sheet;

    invoke-static {v2}, Lorg/telegram/ui/ArticleViewer$Sheet;->-$$Nest$mgetListPaddingTop(Lorg/telegram/ui/ArticleViewer$Sheet;)I

    move-result v2

    sub-int/2addr v1, v2

    :goto_0
    int-to-float v1, v1

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$Sheet$WindowView;->this$1:Lorg/telegram/ui/ArticleViewer$Sheet;

    invoke-virtual {v2}, Lorg/telegram/ui/ArticleViewer$Sheet;->getEmptyPadding()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer$Sheet$WindowView;->this$1:Lorg/telegram/ui/ArticleViewer$Sheet;

    invoke-static {v3}, Lorg/telegram/ui/ArticleViewer$Sheet;->-$$Nest$fgetopenProgress(Lorg/telegram/ui/ArticleViewer$Sheet;)F

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v4, v3

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer$Sheet$WindowView;->this$1:Lorg/telegram/ui/ArticleViewer$Sheet;

    invoke-static {v3}, Lorg/telegram/ui/ArticleViewer$Sheet;->-$$Nest$fgetdismissProgress(Lorg/telegram/ui/ArticleViewer$Sheet;)F

    move-result v3

    invoke-static {v4, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 14319
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$Sheet$WindowView;->clipRect:Landroid/graphics/RectF;

    return-object v0
.end method

.method public isVisible()Z
    .locals 3

    .line 14219
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$Sheet$WindowView;->this$1:Lorg/telegram/ui/ArticleViewer$Sheet;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer$Sheet;->-$$Nest$mgetListTop(Lorg/telegram/ui/ArticleViewer$Sheet;)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$Sheet$WindowView;->this$1:Lorg/telegram/ui/ArticleViewer$Sheet;

    invoke-static {v1}, Lorg/telegram/ui/ArticleViewer$Sheet;->-$$Nest$mgetListPaddingTop(Lorg/telegram/ui/ArticleViewer$Sheet;)I

    move-result v1

    sub-int/2addr v0, v1

    .line 14220
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$Sheet$WindowView;->attachedActionBar:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/AnimatedFloat;->get()F

    move-result v1

    invoke-static {v1}, Lorg/telegram/messenger/Utilities;->clamp01(F)F

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v0

    .line 14221
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    return v2
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 14210
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 14211
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$Sheet$WindowView;->this$1:Lorg/telegram/ui/ArticleViewer$Sheet;

    invoke-virtual {p1}, Lorg/telegram/ui/ArticleViewer$Sheet;->updateTranslation()V

    return-void
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
    .locals 0

    .line 14377
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onNestedFling(Landroid/view/View;FFZ)Z

    move-result p1

    return p1
.end method

.method public onNestedPreFling(Landroid/view/View;FF)Z
    .locals 2

    .line 14384
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->onNestedPreFling(Landroid/view/View;FF)Z

    move-result p1

    .line 14385
    iget-object p2, p0, Lorg/telegram/ui/ArticleViewer$Sheet$WindowView;->this$1:Lorg/telegram/ui/ArticleViewer$Sheet;

    invoke-virtual {p2}, Lorg/telegram/ui/ArticleViewer$Sheet;->halfSize()Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_1

    .line 14386
    iget-object p2, p0, Lorg/telegram/ui/ArticleViewer$Sheet$WindowView;->this$1:Lorg/telegram/ui/ArticleViewer$Sheet;

    iget-object p2, p2, Lorg/telegram/ui/ArticleViewer$Sheet;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object p2, p2, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    const/4 v1, 0x0

    aget-object p2, p2, v1

    invoke-virtual {p2}, Lorg/telegram/ui/ArticleViewer$PageLayout;->isAtTop()Z

    move-result p2

    if-eqz p2, :cond_0

    const/high16 p2, -0x3b860000    # -1000.0f

    cmpg-float p2, p3, p2

    if-gez p2, :cond_0

    .line 14387
    iget-object p2, p0, Lorg/telegram/ui/ArticleViewer$Sheet$WindowView;->this$1:Lorg/telegram/ui/ArticleViewer$Sheet;

    invoke-virtual {p2, v0}, Lorg/telegram/ui/ArticleViewer$Sheet;->dismiss(Z)V

    goto :goto_0

    .line 14389
    :cond_0
    iget-object p2, p0, Lorg/telegram/ui/ArticleViewer$Sheet$WindowView;->this$1:Lorg/telegram/ui/ArticleViewer$Sheet;

    const/4 p3, 0x0

    invoke-virtual {p2, v1, v0, p3}, Lorg/telegram/ui/ArticleViewer$Sheet;->animateDismiss(ZZLjava/lang/Runnable;)V

    .line 14392
    :cond_1
    :goto_0
    iput-boolean v0, p0, Lorg/telegram/ui/ArticleViewer$Sheet$WindowView;->stoppedAtFling:Z

    return p1
.end method

.method public onNestedPreScroll(Landroid/view/View;II[I)V
    .locals 2

    .line 14403
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$Sheet$WindowView;->this$1:Lorg/telegram/ui/ArticleViewer$Sheet;

    iget-boolean p2, p1, Lorg/telegram/ui/ArticleViewer$Sheet;->nestedVerticalScroll:Z

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_1

    if-eqz p3, :cond_0

    move p2, v1

    goto :goto_0

    :cond_0
    move p2, v0

    .line 14404
    :goto_0
    iput-boolean p2, p1, Lorg/telegram/ui/ArticleViewer$Sheet;->nestedVerticalScroll:Z

    .line 14406
    :cond_1
    iget-object p1, p1, Lorg/telegram/ui/ArticleViewer$Sheet;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object p1, p1, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object p1, p1, v0

    invoke-virtual {p1}, Lorg/telegram/ui/ArticleViewer$PageLayout;->isAtTop()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$Sheet$WindowView;->this$1:Lorg/telegram/ui/ArticleViewer$Sheet;

    invoke-virtual {p1}, Lorg/telegram/ui/ArticleViewer$Sheet;->halfSize()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 14407
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$Sheet$WindowView;->this$1:Lorg/telegram/ui/ArticleViewer$Sheet;

    invoke-virtual {p1}, Lorg/telegram/ui/ArticleViewer$Sheet;->getEmptyPadding()I

    move-result p1

    int-to-float p1, p1

    iget-object p2, p0, Lorg/telegram/ui/ArticleViewer$Sheet$WindowView;->this$1:Lorg/telegram/ui/ArticleViewer$Sheet;

    invoke-static {p2}, Lorg/telegram/ui/ArticleViewer$Sheet;->-$$Nest$fgetdismissProgress(Lorg/telegram/ui/ArticleViewer$Sheet;)F

    move-result p2

    mul-float/2addr p1, p2

    float-to-int p1, p1

    invoke-static {p1, p3}, Ljava/lang/Math;->min(II)I

    move-result p1

    aput p1, p4, v1

    .line 14408
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$Sheet$WindowView;->this$1:Lorg/telegram/ui/ArticleViewer$Sheet;

    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer$Sheet;->-$$Nest$fgetdismissProgress(Lorg/telegram/ui/ArticleViewer$Sheet;)F

    move-result p2

    int-to-float p3, p3

    iget-object p4, p0, Lorg/telegram/ui/ArticleViewer$Sheet$WindowView;->this$1:Lorg/telegram/ui/ArticleViewer$Sheet;

    invoke-virtual {p4}, Lorg/telegram/ui/ArticleViewer$Sheet;->getEmptyPadding()I

    move-result p4

    int-to-float p4, p4

    div-float/2addr p3, p4

    sub-float/2addr p2, p3

    const/high16 p3, 0x3f800000    # 1.0f

    const/4 p4, 0x0

    invoke-static {p2, p3, p4}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result p2

    invoke-static {p1, p2}, Lorg/telegram/ui/ArticleViewer$Sheet;->-$$Nest$fputdismissProgress(Lorg/telegram/ui/ArticleViewer$Sheet;F)V

    .line 14409
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$Sheet$WindowView;->this$1:Lorg/telegram/ui/ArticleViewer$Sheet;

    invoke-virtual {p1}, Lorg/telegram/ui/ArticleViewer$Sheet;->updateTranslation()V

    .line 14410
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$Sheet$WindowView;->this$1:Lorg/telegram/ui/ArticleViewer$Sheet;

    invoke-virtual {p1}, Lorg/telegram/ui/ArticleViewer$Sheet;->checkFullyVisible()V

    :cond_2
    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIII)V
    .locals 0

    .line 14398
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onNestedScroll(Landroid/view/View;IIII)V

    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .locals 0

    .line 14416
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V

    return-void
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .locals 0

    const/4 p1, 0x0

    .line 14421
    iput-boolean p1, p0, Lorg/telegram/ui/ArticleViewer$Sheet$WindowView;->stoppedAtFling:Z

    .line 14422
    iget-object p2, p0, Lorg/telegram/ui/ArticleViewer$Sheet$WindowView;->this$1:Lorg/telegram/ui/ArticleViewer$Sheet;

    invoke-virtual {p2}, Lorg/telegram/ui/ArticleViewer$Sheet;->halfSize()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x2

    if-ne p3, p2, :cond_0

    const/4 p1, 0x1

    :cond_0
    return p1
.end method

.method public onStopNestedScroll(Landroid/view/View;)V
    .locals 4

    .line 14427
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$Sheet$WindowView;->this$1:Lorg/telegram/ui/ArticleViewer$Sheet;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lorg/telegram/ui/ArticleViewer$Sheet;->nestedVerticalScroll:Z

    .line 14428
    invoke-virtual {v0}, Lorg/telegram/ui/ArticleViewer$Sheet;->halfSize()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/ArticleViewer$Sheet$WindowView;->stoppedAtFling:Z

    if-nez v0, :cond_1

    .line 14429
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$Sheet$WindowView;->this$1:Lorg/telegram/ui/ArticleViewer$Sheet;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer$Sheet;->-$$Nest$fgetdismissProgress(Lorg/telegram/ui/ArticleViewer$Sheet;)F

    move-result v0

    const/high16 v2, 0x3e800000    # 0.25f

    cmpl-float v0, v0, v2

    const/4 v2, 0x1

    if-lez v0, :cond_0

    .line 14430
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$Sheet$WindowView;->this$1:Lorg/telegram/ui/ArticleViewer$Sheet;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ArticleViewer$Sheet;->dismiss(Z)V

    goto :goto_0

    .line 14432
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$Sheet$WindowView;->this$1:Lorg/telegram/ui/ArticleViewer$Sheet;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/ArticleViewer$Sheet;->animateDismiss(ZZLjava/lang/Runnable;)V

    .line 14435
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onStopNestedScroll(Landroid/view/View;)V

    return-void
.end method

.method public setDrawingFromOverlay(Z)V
    .locals 1

    .line 14307
    iget-boolean v0, p0, Lorg/telegram/ui/ArticleViewer$Sheet$WindowView;->drawingFromOverlay:Z

    if-eq v0, p1, :cond_0

    .line 14308
    iput-boolean p1, p0, Lorg/telegram/ui/ArticleViewer$Sheet$WindowView;->drawingFromOverlay:Z

    .line 14309
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method
