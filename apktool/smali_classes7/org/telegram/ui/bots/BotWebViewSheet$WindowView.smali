.class public Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;
.super Lorg/telegram/ui/Components/SizeNotifierFrameLayout;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$SheetView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/bots/BotWebViewSheet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WindowView"
.end annotation


# instance fields
.field private final clipPath:Landroid/graphics/Path;

.field private drawingFromOverlay:Z

.field private final navbarPaint:Landroid/graphics/Paint;

.field private final rect:Landroid/graphics/RectF;

.field final synthetic this$0:Lorg/telegram/ui/bots/BotWebViewSheet;


# direct methods
.method static bridge synthetic -$$Nest$fgetdrawingFromOverlay(Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;->drawingFromOverlay:Z

    return p0
.end method

.method public constructor <init>(Lorg/telegram/ui/bots/BotWebViewSheet;Landroid/content/Context;)V
    .locals 0

    .line 2438
    iput-object p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    .line 2439
    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2443
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 2444
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 2445
    invoke-virtual {p0, p1}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 2479
    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;->navbarPaint:Landroid/graphics/Paint;

    .line 2632
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;->rect:Landroid/graphics/RectF;

    .line 2633
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;->clipPath:Landroid/graphics/Path;

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 9

    .line 2482
    iget-boolean v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;->drawingFromOverlay:Z

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 2484
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {v0}, Lorg/telegram/ui/bots/BotWebViewSheet;->-$$Nest$fgetpasscodeView(Lorg/telegram/ui/bots/BotWebViewSheet;)Lorg/telegram/ui/Components/PasscodeView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {v0}, Lorg/telegram/ui/bots/BotWebViewSheet;->-$$Nest$fgetfullscreenProgress(Lorg/telegram/ui/bots/BotWebViewSheet;)F

    move-result v0

    cmpg-float v0, v0, v8

    if-gez v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {v0}, Lorg/telegram/ui/bots/BotWebViewSheet;->-$$Nest$fgetfullscreenProgress(Lorg/telegram/ui/bots/BotWebViewSheet;)F

    move-result v0

    cmpl-float v0, v0, v7

    if-lez v0, :cond_4

    .line 2485
    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;->navbarPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {v1}, Lorg/telegram/ui/bots/BotWebViewSheet;->-$$Nest$fgetnavBarColor(Lorg/telegram/ui/bots/BotWebViewSheet;)I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {v2}, Lorg/telegram/ui/bots/BotWebViewSheet;->-$$Nest$fgetopenedProgress(Lorg/telegram/ui/bots/BotWebViewSheet;)F

    move-result v2

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 2486
    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {v0}, Lorg/telegram/ui/bots/BotWebViewSheet;->-$$Nest$fgetnavInsets(Lorg/telegram/ui/bots/BotWebViewSheet;)Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->left:I

    if-lez v0, :cond_1

    .line 2487
    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {v0}, Lorg/telegram/ui/bots/BotWebViewSheet;->-$$Nest$fgetnavInsets(Lorg/telegram/ui/bots/BotWebViewSheet;)Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v3, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;->navbarPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 2489
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {v0}, Lorg/telegram/ui/bots/BotWebViewSheet;->-$$Nest$fgetnavInsets(Lorg/telegram/ui/bots/BotWebViewSheet;)Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    if-lez v0, :cond_2

    .line 2490
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v3, v0

    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {v0}, Lorg/telegram/ui/bots/BotWebViewSheet;->-$$Nest$fgetnavInsets(Lorg/telegram/ui/bots/BotWebViewSheet;)Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v4, v0

    iget-object v5, p0, Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;->navbarPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 2492
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {v0}, Lorg/telegram/ui/bots/BotWebViewSheet;->-$$Nest$fgetnavInsets(Lorg/telegram/ui/bots/BotWebViewSheet;)Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    if-lez v0, :cond_3

    .line 2493
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {v1}, Lorg/telegram/ui/bots/BotWebViewSheet;->-$$Nest$fgetnavInsets(Lorg/telegram/ui/bots/BotWebViewSheet;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    int-to-float v2, v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;->navbarPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 2495
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {v0}, Lorg/telegram/ui/bots/BotWebViewSheet;->-$$Nest$fgetnavInsets(Lorg/telegram/ui/bots/BotWebViewSheet;)Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->right:I

    if-lez v0, :cond_4

    .line 2496
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {v1}, Lorg/telegram/ui/bots/BotWebViewSheet;->-$$Nest$fgetnavInsets(Lorg/telegram/ui/bots/BotWebViewSheet;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    int-to-float v1, v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;->navbarPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 2501
    :cond_4
    iget-object v1, p0, Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {v1}, Lorg/telegram/ui/bots/BotWebViewSheet;->-$$Nest$fgetbottomTabsClip(Lorg/telegram/ui/bots/BotWebViewSheet;)Lorg/telegram/ui/ActionBar/BottomSheetTabs$ClipTools;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v1

    if-nez v1, :cond_5

    .line 2502
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 2503
    iget-object v1, p0, Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {v1}, Lorg/telegram/ui/bots/BotWebViewSheet;->-$$Nest$fgetinsets(Lorg/telegram/ui/bots/BotWebViewSheet;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {v2}, Lorg/telegram/ui/bots/BotWebViewSheet;->-$$Nest$fgetfullscreenProgress(Lorg/telegram/ui/bots/BotWebViewSheet;)F

    move-result v2

    sub-float v2, v8, v2

    mul-float/2addr v1, v2

    invoke-virtual {p1, v1, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2504
    iget-object v1, p0, Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {v1}, Lorg/telegram/ui/bots/BotWebViewSheet;->-$$Nest$fgetbottomTabsClip(Lorg/telegram/ui/bots/BotWebViewSheet;)Lorg/telegram/ui/ActionBar/BottomSheetTabs$ClipTools;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {v3}, Lorg/telegram/ui/bots/BotWebViewSheet;->-$$Nest$fgetinsets(Lorg/telegram/ui/bots/BotWebViewSheet;)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {v3}, Lorg/telegram/ui/bots/BotWebViewSheet;->-$$Nest$fgetinsets(Lorg/telegram/ui/bots/BotWebViewSheet;)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {v4}, Lorg/telegram/ui/bots/BotWebViewSheet;->-$$Nest$fgetfullscreenProgress(Lorg/telegram/ui/bots/BotWebViewSheet;)F

    move-result v4

    invoke-static {v2, v3, v4}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    iget-object v2, p0, Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {v2}, Lorg/telegram/ui/bots/BotWebViewSheet;->-$$Nest$fgetfullscreenProgress(Lorg/telegram/ui/bots/BotWebViewSheet;)F

    move-result v2

    sub-float v6, v8, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    move-object v0, v1

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/ui/ActionBar/BottomSheetTabs$ClipTools;->clip(Landroid/graphics/Canvas;ZZIIF)V

    .line 2505
    iget-object v1, p0, Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {v1}, Lorg/telegram/ui/bots/BotWebViewSheet;->-$$Nest$fgetinsets(Lorg/telegram/ui/bots/BotWebViewSheet;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    neg-int v1, v1

    int-to-float v1, v1

    iget-object v2, p0, Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {v2}, Lorg/telegram/ui/bots/BotWebViewSheet;->-$$Nest$fgetfullscreenProgress(Lorg/telegram/ui/bots/BotWebViewSheet;)F

    move-result v2

    sub-float v2, v8, v2

    mul-float/2addr v1, v2

    invoke-virtual {p1, v1, v7}, Landroid/graphics/Canvas;->translate(FF)V

    const/4 v1, 0x1

    goto :goto_0

    :cond_5
    const/4 v1, 0x0

    .line 2508
    :goto_0
    invoke-super/range {p0 .. p1}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    if-eqz v1, :cond_6

    .line 2510
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 2513
    :cond_6
    iget-object v1, p0, Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {v1}, Lorg/telegram/ui/bots/BotWebViewSheet;->-$$Nest$fgetpasscodeView(Lorg/telegram/ui/bots/BotWebViewSheet;)Lorg/telegram/ui/Components/PasscodeView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_b

    .line 2514
    iget-object v1, p0, Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;->navbarPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {v2}, Lorg/telegram/ui/bots/BotWebViewSheet;->-$$Nest$fgetnavBarColor(Lorg/telegram/ui/bots/BotWebViewSheet;)I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {v3}, Lorg/telegram/ui/bots/BotWebViewSheet;->-$$Nest$fgetopenedProgress(Lorg/telegram/ui/bots/BotWebViewSheet;)F

    move-result v3

    invoke-static {v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 2515
    iget-object v1, p0, Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {v1}, Lorg/telegram/ui/bots/BotWebViewSheet;->-$$Nest$fgetnavInsets(Lorg/telegram/ui/bots/BotWebViewSheet;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    if-lez v1, :cond_7

    .line 2516
    iget-object v1, p0, Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {v1}, Lorg/telegram/ui/bots/BotWebViewSheet;->-$$Nest$fgetnavInsets(Lorg/telegram/ui/bots/BotWebViewSheet;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {v2}, Lorg/telegram/ui/bots/BotWebViewSheet;->-$$Nest$fgetfullscreenProgress(Lorg/telegram/ui/bots/BotWebViewSheet;)F

    move-result v2

    sub-float v2, v8, v2

    mul-float v3, v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v4, v1

    iget-object v5, p0, Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;->navbarPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 2518
    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {v0}, Lorg/telegram/ui/bots/BotWebViewSheet;->-$$Nest$fgetnavInsets(Lorg/telegram/ui/bots/BotWebViewSheet;)Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    if-lez v0, :cond_8

    .line 2519
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v3, v0

    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {v0}, Lorg/telegram/ui/bots/BotWebViewSheet;->-$$Nest$fgetnavInsets(Lorg/telegram/ui/bots/BotWebViewSheet;)Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    iget-object v1, p0, Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {v1}, Lorg/telegram/ui/bots/BotWebViewSheet;->-$$Nest$fgetfullscreenProgress(Lorg/telegram/ui/bots/BotWebViewSheet;)F

    move-result v1

    sub-float v1, v8, v1

    mul-float v4, v0, v1

    iget-object v5, p0, Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;->navbarPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 2521
    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {v0}, Lorg/telegram/ui/bots/BotWebViewSheet;->-$$Nest$fgetnavInsets(Lorg/telegram/ui/bots/BotWebViewSheet;)Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    if-lez v0, :cond_a

    .line 2522
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {v1}, Lorg/telegram/ui/bots/BotWebViewSheet;->-$$Nest$fgetnavInsets(Lorg/telegram/ui/bots/BotWebViewSheet;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    iget-object v2, p0, Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {v2}, Lorg/telegram/ui/bots/BotWebViewSheet;->-$$Nest$fgetbotButtons(Lorg/telegram/ui/bots/BotWebViewSheet;)Lorg/telegram/ui/bots/BotButtons;

    move-result-object v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {v2}, Lorg/telegram/ui/bots/BotWebViewSheet;->-$$Nest$fgetbotButtons(Lorg/telegram/ui/bots/BotWebViewSheet;)Lorg/telegram/ui/bots/BotButtons;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/bots/BotButtons;->getTotalHeight()I

    move-result v2

    if-lez v2, :cond_9

    move v2, v8

    goto :goto_1

    :cond_9
    iget-object v2, p0, Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {v2}, Lorg/telegram/ui/bots/BotWebViewSheet;->-$$Nest$fgetfullscreenProgress(Lorg/telegram/ui/bots/BotWebViewSheet;)F

    move-result v2

    sub-float v2, v8, v2

    :goto_1
    mul-float/2addr v1, v2

    sub-float v2, v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;->navbarPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 2524
    :cond_a
    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {v0}, Lorg/telegram/ui/bots/BotWebViewSheet;->-$$Nest$fgetnavInsets(Lorg/telegram/ui/bots/BotWebViewSheet;)Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->right:I

    if-lez v0, :cond_b

    .line 2525
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {v1}, Lorg/telegram/ui/bots/BotWebViewSheet;->-$$Nest$fgetnavInsets(Lorg/telegram/ui/bots/BotWebViewSheet;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    iget-object v2, p0, Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {v2}, Lorg/telegram/ui/bots/BotWebViewSheet;->-$$Nest$fgetfullscreenProgress(Lorg/telegram/ui/bots/BotWebViewSheet;)F

    move-result v2

    sub-float/2addr v8, v2

    mul-float/2addr v1, v8

    sub-float v1, v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;->navbarPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_b
    :goto_2
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 2469
    sget-object v0, Lorg/telegram/ui/LaunchActivity;->instance:Lorg/telegram/ui/LaunchActivity;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/LaunchActivity;->getBottomSheetTabs()Lorg/telegram/ui/ActionBar/BottomSheetTabs;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 2470
    iget-object v1, p0, Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {v1}, Lorg/telegram/ui/bots/BotWebViewSheet;->-$$Nest$fgetinsets(Lorg/telegram/ui/bots/BotWebViewSheet;)Landroid/graphics/Rect;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    .line 2471
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->getHeight(Z)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {v2}, Lorg/telegram/ui/bots/BotWebViewSheet;->-$$Nest$fgetfullscreenProgress(Lorg/telegram/ui/bots/BotWebViewSheet;)F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v3, v2

    mul-float/2addr v1, v3

    float-to-int v1, v1

    .line 2472
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {v4}, Lorg/telegram/ui/bots/BotWebViewSheet;->-$$Nest$fgetinsets(Lorg/telegram/ui/bots/BotWebViewSheet;)Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    sub-int/2addr v3, v1

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {v4}, Lorg/telegram/ui/bots/BotWebViewSheet;->-$$Nest$fgetinsets(Lorg/telegram/ui/bots/BotWebViewSheet;)Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_1

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2473
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    iget-object v5, p0, Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {v5}, Lorg/telegram/ui/bots/BotWebViewSheet;->-$$Nest$fgetinsets(Lorg/telegram/ui/bots/BotWebViewSheet;)Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v5

    sub-int/2addr v4, v1

    int-to-float v1, v4

    sub-float/2addr p1, v1

    invoke-virtual {v0, v2, v3, p1}, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->touchEvent(IFF)Z

    move-result p1

    return p1

    .line 2476
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 11

    .line 2570
    iget-boolean v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;->drawingFromOverlay:Z

    if-eqz v0, :cond_0

    return-void

    .line 2572
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 2574
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {v0}, Lorg/telegram/ui/bots/BotWebViewSheet;->-$$Nest$fgetactionBarTransitionProgress(Lorg/telegram/ui/bots/BotWebViewSheet;)F

    move-result v0

    .line 2575
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {v1}, Lorg/telegram/ui/bots/BotWebViewSheet;->-$$Nest$fgetlinePaint(Lorg/telegram/ui/bots/BotWebViewSheet;)Landroid/graphics/Paint;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {v2}, Lorg/telegram/ui/bots/BotWebViewSheet;->-$$Nest$fgetlineColor(Lorg/telegram/ui/bots/BotWebViewSheet;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 2576
    iget-object v1, p0, Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {v1}, Lorg/telegram/ui/bots/BotWebViewSheet;->-$$Nest$fgetlinePaint(Lorg/telegram/ui/bots/BotWebViewSheet;)Landroid/graphics/Paint;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {v2}, Lorg/telegram/ui/bots/BotWebViewSheet;->-$$Nest$fgetlinePaint(Lorg/telegram/ui/bots/BotWebViewSheet;)Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Paint;->getAlpha()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-static {v3, v0}, Ljava/lang/Math;->min(FF)F

    move-result v4

    div-float/2addr v4, v3

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v4, v3, v4

    mul-float/2addr v2, v4

    iget-object v4, p0, Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {v4}, Lorg/telegram/ui/bots/BotWebViewSheet;->-$$Nest$fgetfullscreenProgress(Lorg/telegram/ui/bots/BotWebViewSheet;)F

    move-result v4

    sub-float v4, v3, v4

    mul-float/2addr v2, v4

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 2578
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    sub-float/2addr v3, v0

    .line 2580
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v1

    const/high16 v2, 0x41400000    # 12.0f

    const/high16 v4, 0x40000000    # 2.0f

    if-eqz v1, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {v0}, Lorg/telegram/ui/bots/BotWebViewSheet;->-$$Nest$fgetswipeContainer(Lorg/telegram/ui/bots/BotWebViewSheet;)Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    sget v1, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    int-to-float v1, v1

    div-float/2addr v1, v4

    iget-object v2, p0, Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {v2}, Lorg/telegram/ui/bots/BotWebViewSheet;->-$$Nest$fgetactionBarTransitionProgress(Lorg/telegram/ui/bots/BotWebViewSheet;)F

    move-result v2

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v0

    :goto_1
    move v7, v0

    goto :goto_2

    .line 2581
    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {v1}, Lorg/telegram/ui/bots/BotWebViewSheet;->-$$Nest$fgetswipeContainer(Lorg/telegram/ui/bots/BotWebViewSheet;)Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v1

    sget v5, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    int-to-float v5, v5

    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v4

    add-float/2addr v5, v6

    invoke-static {v1, v5, v0}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v0

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    goto :goto_1

    .line 2582
    :goto_2
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v4

    invoke-virtual {p1, v3, v3, v0, v7}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 2583
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v4

    const/high16 v1, 0x41800000    # 16.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    sub-float v6, v0, v2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v4

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    add-float v8, v0, v1

    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {v0}, Lorg/telegram/ui/bots/BotWebViewSheet;->-$$Nest$fgetlinePaint(Lorg/telegram/ui/bots/BotWebViewSheet;)Landroid/graphics/Paint;

    move-result-object v10

    move v9, v7

    move-object v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 2584
    invoke-virtual {v5}, Landroid/graphics/Canvas;->restore()V

    .line 2586
    iget-object p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {p1}, Lorg/telegram/ui/bots/BotWebViewSheet;->-$$Nest$fgetactionBarShadow(Lorg/telegram/ui/bots/BotWebViewSheet;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {v0}, Lorg/telegram/ui/bots/BotWebViewSheet;->-$$Nest$fgetactionBar(Lorg/telegram/ui/bots/BotWebViewSheet;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 2587
    iget-object p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {p1}, Lorg/telegram/ui/bots/BotWebViewSheet;->-$$Nest$fgetactionBar(Lorg/telegram/ui/bots/BotWebViewSheet;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result p1

    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {v0}, Lorg/telegram/ui/bots/BotWebViewSheet;->-$$Nest$fgetactionBar(Lorg/telegram/ui/bots/BotWebViewSheet;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    add-float/2addr p1, v0

    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {v0}, Lorg/telegram/ui/bots/BotWebViewSheet;->-$$Nest$fgetactionBar(Lorg/telegram/ui/bots/BotWebViewSheet;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p1, v0

    .line 2588
    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {v0}, Lorg/telegram/ui/bots/BotWebViewSheet;->-$$Nest$fgetactionBarShadow(Lorg/telegram/ui/bots/BotWebViewSheet;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {v1}, Lorg/telegram/ui/bots/BotWebViewSheet;->-$$Nest$fgetinsets(Lorg/telegram/ui/bots/BotWebViewSheet;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    float-to-int v2, p1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {v4}, Lorg/telegram/ui/bots/BotWebViewSheet;->-$$Nest$fgetinsets(Lorg/telegram/ui/bots/BotWebViewSheet;)Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {v4}, Lorg/telegram/ui/bots/BotWebViewSheet;->-$$Nest$fgetactionBarShadow(Lorg/telegram/ui/bots/BotWebViewSheet;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr p1, v4

    float-to-int p1, p1

    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2589
    iget-object p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {p1}, Lorg/telegram/ui/bots/BotWebViewSheet;->-$$Nest$fgetactionBarShadow(Lorg/telegram/ui/bots/BotWebViewSheet;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 7

    .line 2451
    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {v0}, Lorg/telegram/ui/bots/BotWebViewSheet;->-$$Nest$fgetswipeContainer(Lorg/telegram/ui/bots/BotWebViewSheet;)Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    move-result-object v0

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {v0}, Lorg/telegram/ui/bots/BotWebViewSheet;->-$$Nest$fgetfullscreenInProgress(Lorg/telegram/ui/bots/BotWebViewSheet;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {v0}, Lorg/telegram/ui/bots/BotWebViewSheet;->-$$Nest$fgetswipeContainerFromHeight(Lorg/telegram/ui/bots/BotWebViewSheet;)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {v0}, Lorg/telegram/ui/bots/BotWebViewSheet;->-$$Nest$fgetswipeContainerFromWidth(Lorg/telegram/ui/bots/BotWebViewSheet;)I

    move-result v0

    if-lez v0, :cond_0

    .line 2452
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 2454
    invoke-virtual {p2}, Landroid/view/View;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/View;->getY()F

    move-result v1

    .line 2455
    invoke-virtual {p2}, Landroid/view/View;->getX()F

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {v3}, Lorg/telegram/ui/bots/BotWebViewSheet;->-$$Nest$fgetswipeContainerFromWidth(Lorg/telegram/ui/bots/BotWebViewSheet;)I

    move-result v3

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v4

    iget-object v5, p0, Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {v5}, Lorg/telegram/ui/bots/BotWebViewSheet;->-$$Nest$fgetfullscreenTransitionProgress(Lorg/telegram/ui/bots/BotWebViewSheet;)F

    move-result v5

    invoke-static {v3, v4, v5}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    .line 2456
    invoke-virtual {p2}, Landroid/view/View;->getY()F

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {v4}, Lorg/telegram/ui/bots/BotWebViewSheet;->-$$Nest$fgetswipeContainerFromHeight(Lorg/telegram/ui/bots/BotWebViewSheet;)I

    move-result v4

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v5

    iget-object v6, p0, Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {v6}, Lorg/telegram/ui/bots/BotWebViewSheet;->-$$Nest$fgetfullscreenTransitionProgress(Lorg/telegram/ui/bots/BotWebViewSheet;)F

    move-result v6

    invoke-static {v4, v5, v6}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    .line 2453
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2460
    :goto_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p2

    if-eqz v0, :cond_1

    .line 2462
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_1
    return p2
.end method

.method public drawInto(Landroid/graphics/Canvas;Landroid/graphics/RectF;FLandroid/graphics/RectF;FZ)F
    .locals 3

    .line 2640
    iget-object p5, p0, Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;->rect:Landroid/graphics/RectF;

    iget-object p6, p0, Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {p6}, Lorg/telegram/ui/bots/BotWebViewSheet;->-$$Nest$fgetswipeContainer(Lorg/telegram/ui/bots/BotWebViewSheet;)Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    move-result-object p6

    invoke-virtual {p6}, Landroid/view/View;->getLeft()I

    move-result p6

    int-to-float p6, p6

    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {v0}, Lorg/telegram/ui/bots/BotWebViewSheet;->-$$Nest$fgetswipeContainer(Lorg/telegram/ui/bots/BotWebViewSheet;)Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    const/high16 v1, 0x41c00000    # 24.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget-object v1, p0, Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {v1}, Lorg/telegram/ui/bots/BotWebViewSheet;->-$$Nest$fgetswipeContainer(Lorg/telegram/ui/bots/BotWebViewSheet;)Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p5, p6, v0, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 2641
    iget-object p5, p0, Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;->rect:Landroid/graphics/RectF;

    invoke-static {p5, p2, p3, p4}, Lorg/telegram/messenger/AndroidUtilities;->lerpCentered(Landroid/graphics/RectF;Landroid/graphics/RectF;FLandroid/graphics/RectF;)V

    .line 2643
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 2645
    iget-object p2, p0, Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;->clipPath:Landroid/graphics/Path;

    invoke-virtual {p2}, Landroid/graphics/Path;->rewind()V

    const/high16 p2, 0x41800000    # 16.0f

    .line 2646
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    int-to-float p2, p2

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result p5

    const/high16 p6, 0x3f800000    # 1.0f

    if-eqz p5, :cond_0

    goto :goto_0

    :cond_0
    iget-object p5, p0, Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {p5}, Lorg/telegram/ui/bots/BotWebViewSheet;->-$$Nest$fgetactionBarTransitionProgress(Lorg/telegram/ui/bots/BotWebViewSheet;)F

    move-result p5

    sub-float/2addr p6, p5

    :goto_0
    mul-float/2addr p2, p6

    const/high16 p5, 0x41200000    # 10.0f

    .line 2647
    invoke-static {p5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p5

    int-to-float p5, p5

    invoke-static {p2, p5, p3}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result p2

    .line 2648
    iget-object p5, p0, Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;->clipPath:Landroid/graphics/Path;

    sget-object p6, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {p5, p4, p2, p2, p6}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 2649
    iget-object p5, p0, Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;->clipPath:Landroid/graphics/Path;

    invoke-virtual {p1, p5}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 2650
    iget-object p5, p0, Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {p5}, Lorg/telegram/ui/bots/BotWebViewSheet;->-$$Nest$fgetbackgroundPaint(Lorg/telegram/ui/bots/BotWebViewSheet;)Landroid/graphics/Paint;

    move-result-object p5

    invoke-virtual {p1, p5}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    .line 2652
    iget-object p5, p0, Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {p5}, Lorg/telegram/ui/bots/BotWebViewSheet;->-$$Nest$fgetswipeContainer(Lorg/telegram/ui/bots/BotWebViewSheet;)Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    move-result-object p5

    if-eqz p5, :cond_1

    .line 2653
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 2654
    iget p5, p4, Landroid/graphics/RectF;->left:F

    iget-object p6, p0, Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {p6}, Lorg/telegram/ui/bots/BotWebViewSheet;->-$$Nest$fgetswipeContainer(Lorg/telegram/ui/bots/BotWebViewSheet;)Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    move-result-object p6

    invoke-virtual {p6}, Landroid/view/View;->getY()F

    move-result p6

    iget p4, p4, Landroid/graphics/RectF;->top:F

    invoke-static {p6, p4}, Ljava/lang/Math;->max(FF)F

    move-result p4

    const/high16 p6, 0x424c0000    # 51.0f

    invoke-static {p6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p6

    int-to-float p6, p6

    mul-float/2addr p3, p6

    add-float/2addr p4, p3

    invoke-virtual {p1, p5, p4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2655
    iget-object p3, p0, Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {p3}, Lorg/telegram/ui/bots/BotWebViewSheet;->-$$Nest$fgetswipeContainer(Lorg/telegram/ui/bots/BotWebViewSheet;)Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    move-result-object p3

    invoke-virtual {p3, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 2656
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 2659
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return p2
.end method

.method public getRect()Landroid/graphics/RectF;
    .locals 5

    .line 2636
    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;->rect:Landroid/graphics/RectF;

    iget-object v1, p0, Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {v1}, Lorg/telegram/ui/bots/BotWebViewSheet;->-$$Nest$fgetswipeContainer(Lorg/telegram/ui/bots/BotWebViewSheet;)Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {v2}, Lorg/telegram/ui/bots/BotWebViewSheet;->-$$Nest$fgetswipeContainer(Lorg/telegram/ui/bots/BotWebViewSheet;)Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTranslationY()F

    move-result v2

    const/high16 v3, 0x41c00000    # 24.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget-object v3, p0, Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {v3}, Lorg/telegram/ui/bots/BotWebViewSheet;->-$$Nest$fgetswipeContainer(Lorg/telegram/ui/bots/BotWebViewSheet;)Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 2637
    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;->rect:Landroid/graphics/RectF;

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 2605
    invoke-super {p0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->onAttachedToWindow()V

    .line 2606
    new-instance v0, Lorg/telegram/ui/bots/BotWebViewSheet$WindowView$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/bots/BotWebViewSheet$WindowView$1;-><init>(Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;)V

    invoke-static {p0, v0}, Lorg/telegram/ui/Components/Bulletin;->addDelegate(Landroid/widget/FrameLayout;Lorg/telegram/ui/Components/Bulletin$Delegate;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 2616
    invoke-super {p0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->onDetachedFromWindow()V

    .line 2617
    invoke-static {p0}, Lorg/telegram/ui/Components/Bulletin;->removeDelegate(Landroid/widget/FrameLayout;)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    .line 2532
    iget-boolean v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;->drawingFromOverlay:Z

    if-eqz v0, :cond_0

    goto/16 :goto_4

    .line 2534
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 2536
    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {v0}, Lorg/telegram/ui/bots/BotWebViewSheet;->-$$Nest$fgetpasscodeView(Lorg/telegram/ui/bots/BotWebViewSheet;)Lorg/telegram/ui/Components/PasscodeView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_6

    .line 2537
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 2538
    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {v0}, Lorg/telegram/ui/bots/BotWebViewSheet;->-$$Nest$fgetbottomTabsClip(Lorg/telegram/ui/bots/BotWebViewSheet;)Lorg/telegram/ui/ActionBar/BottomSheetTabs$ClipTools;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_1

    .line 2539
    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {v0}, Lorg/telegram/ui/bots/BotWebViewSheet;->-$$Nest$fgetbottomTabsClip(Lorg/telegram/ui/bots/BotWebViewSheet;)Lorg/telegram/ui/ActionBar/BottomSheetTabs$ClipTools;

    move-result-object v2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v7

    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {v0}, Lorg/telegram/ui/bots/BotWebViewSheet;->-$$Nest$fgetfullscreenProgress(Lorg/telegram/ui/bots/BotWebViewSheet;)F

    move-result v0

    sub-float v8, v1, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, p1

    invoke-virtual/range {v2 .. v8}, Lorg/telegram/ui/ActionBar/BottomSheetTabs$ClipTools;->clip(Landroid/graphics/Canvas;ZZIIF)V

    goto :goto_0

    :cond_1
    move-object v3, p1

    .line 2542
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {p1}, Lorg/telegram/ui/bots/BotWebViewSheet;->-$$Nest$fgetoverrideBackgroundColor(Lorg/telegram/ui/bots/BotWebViewSheet;)Z

    move-result p1

    const/4 v0, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_3

    .line 2543
    iget-object p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {p1, v4}, Lorg/telegram/ui/bots/BotWebViewSheet;->-$$Nest$mgetColor(Lorg/telegram/ui/bots/BotWebViewSheet;I)I

    move-result p1

    .line 2544
    iget-object v4, p0, Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {v4}, Lorg/telegram/ui/bots/BotWebViewSheet;->-$$Nest$fgetbackgroundPaint(Lorg/telegram/ui/bots/BotWebViewSheet;)Landroid/graphics/Paint;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 2545
    iget-object v4, p0, Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {v4}, Lorg/telegram/ui/bots/BotWebViewSheet;->-$$Nest$fgetwebViewContainer(Lorg/telegram/ui/bots/BotWebViewSheet;)Lorg/telegram/ui/web/BotWebViewContainer;

    move-result-object v4

    invoke-virtual {v4, p1}, Lorg/telegram/ui/web/BotWebViewContainer;->setFlickerViewColor(I)V

    .line 2546
    iget-object p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {p1}, Lorg/telegram/ui/bots/BotWebViewSheet;->-$$Nest$fgeterrorContainer(Lorg/telegram/ui/bots/BotWebViewSheet;)Lorg/telegram/ui/ArticleViewer$ErrorContainer;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 2547
    iget-object p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {p1}, Lorg/telegram/ui/bots/BotWebViewSheet;->-$$Nest$fgeterrorContainer(Lorg/telegram/ui/bots/BotWebViewSheet;)Lorg/telegram/ui/ArticleViewer$ErrorContainer;

    move-result-object p1

    iget-object v4, p0, Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {v4}, Lorg/telegram/ui/bots/BotWebViewSheet;->-$$Nest$fgetbackgroundPaint(Lorg/telegram/ui/bots/BotWebViewSheet;)Landroid/graphics/Paint;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Paint;->getColor()I

    move-result v4

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->computePerceivedBrightness(I)F

    move-result v4

    const v5, 0x3f389375    # 0.721f

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_2

    move v4, v0

    goto :goto_1

    :cond_2
    move v4, v2

    :goto_1
    invoke-virtual {p1, v4, v2}, Lorg/telegram/ui/ArticleViewer$ErrorContainer;->setDark(ZZ)V

    .line 2548
    iget-object p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {p1}, Lorg/telegram/ui/bots/BotWebViewSheet;->-$$Nest$fgeterrorContainer(Lorg/telegram/ui/bots/BotWebViewSheet;)Lorg/telegram/ui/ArticleViewer$ErrorContainer;

    move-result-object p1

    iget-object v4, p0, Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {v4}, Lorg/telegram/ui/bots/BotWebViewSheet;->-$$Nest$fgetbackgroundPaint(Lorg/telegram/ui/bots/BotWebViewSheet;)Landroid/graphics/Paint;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Paint;->getColor()I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 2551
    :cond_3
    sget-object p1, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    const/4 v6, 0x0

    invoke-virtual {p1, v6, v6, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 2552
    iget-object v4, p0, Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {v4}, Lorg/telegram/ui/bots/BotWebViewSheet;->-$$Nest$fgetdimPaint(Lorg/telegram/ui/bots/BotWebViewSheet;)Landroid/graphics/Paint;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 2554
    iget-object v4, p0, Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {v4}, Lorg/telegram/ui/bots/BotWebViewSheet;->-$$Nest$fgetbottomTabs(Lorg/telegram/ui/bots/BotWebViewSheet;)Lorg/telegram/ui/ActionBar/BottomSheetTabs;

    move-result-object v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {v4}, Lorg/telegram/ui/bots/BotWebViewSheet;->-$$Nest$fgetbottomTabs(Lorg/telegram/ui/bots/BotWebViewSheet;)Lorg/telegram/ui/ActionBar/BottomSheetTabs;

    move-result-object v4

    invoke-virtual {v4, v0}, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->getHeight(Z)I

    move-result v0

    goto :goto_2

    :cond_4
    move v0, v2

    .line 2556
    :goto_2
    iget-object v4, p0, Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {v4}, Lorg/telegram/ui/bots/BotWebViewSheet;->-$$Nest$fgetactionBarPaint(Lorg/telegram/ui/bots/BotWebViewSheet;)Landroid/graphics/Paint;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {v5}, Lorg/telegram/ui/bots/BotWebViewSheet;->-$$Nest$fgetactionBarColor(Lorg/telegram/ui/bots/BotWebViewSheet;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v4, 0x41800000    # 16.0f

    .line 2557
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v5

    if-eqz v5, :cond_5

    goto :goto_3

    :cond_5
    iget-object v5, p0, Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {v5}, Lorg/telegram/ui/bots/BotWebViewSheet;->-$$Nest$fgetactionBarTransitionProgress(Lorg/telegram/ui/bots/BotWebViewSheet;)F

    move-result v5

    sub-float/2addr v1, v5

    :goto_3
    mul-float/2addr v4, v1

    .line 2558
    iget-object v1, p0, Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {v1}, Lorg/telegram/ui/bots/BotWebViewSheet;->-$$Nest$fgetswipeContainer(Lorg/telegram/ui/bots/BotWebViewSheet;)Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    iget-object v5, p0, Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {v5}, Lorg/telegram/ui/bots/BotWebViewSheet;->-$$Nest$fgetfullscreenProgress(Lorg/telegram/ui/bots/BotWebViewSheet;)F

    move-result v5

    invoke-static {v1, v2, v5}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v1

    int-to-float v1, v1

    iget-object v5, p0, Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {v5}, Lorg/telegram/ui/bots/BotWebViewSheet;->-$$Nest$fgetswipeContainer(Lorg/telegram/ui/bots/BotWebViewSheet;)Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getTranslationY()F

    move-result v5

    iget-object v7, p0, Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {v7}, Lorg/telegram/ui/bots/BotWebViewSheet;->-$$Nest$fgetactionBarTransitionProgress(Lorg/telegram/ui/bots/BotWebViewSheet;)F

    move-result v7

    invoke-static {v5, v6, v7}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v5

    iget-object v6, p0, Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {v6}, Lorg/telegram/ui/bots/BotWebViewSheet;->-$$Nest$fgetswipeContainer(Lorg/telegram/ui/bots/BotWebViewSheet;)Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v6

    int-to-float v6, v6

    iget-object v7, p0, Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {v7}, Lorg/telegram/ui/bots/BotWebViewSheet;->-$$Nest$fgetswipeContainer(Lorg/telegram/ui/bots/BotWebViewSheet;)Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getTranslationY()F

    move-result v7

    const/high16 v8, 0x41c00000    # 24.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v7, v9

    add-float/2addr v7, v4

    invoke-virtual {p1, v1, v5, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 2559
    iget-object v1, p0, Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {v1}, Lorg/telegram/ui/bots/BotWebViewSheet;->-$$Nest$fgetactionBarPaint(Lorg/telegram/ui/bots/BotWebViewSheet;)Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v3, p1, v4, v4, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 2561
    iget-object v1, p0, Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {v1}, Lorg/telegram/ui/bots/BotWebViewSheet;->-$$Nest$fgetswipeContainer(Lorg/telegram/ui/bots/BotWebViewSheet;)Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    iget-object v4, p0, Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {v4}, Lorg/telegram/ui/bots/BotWebViewSheet;->-$$Nest$fgetfullscreenProgress(Lorg/telegram/ui/bots/BotWebViewSheet;)F

    move-result v4

    invoke-static {v1, v2, v4}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {v2}, Lorg/telegram/ui/bots/BotWebViewSheet;->-$$Nest$fgetswipeContainer(Lorg/telegram/ui/bots/BotWebViewSheet;)Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTranslationY()F

    move-result v2

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v2, v4

    iget-object v4, p0, Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {v4}, Lorg/telegram/ui/bots/BotWebViewSheet;->-$$Nest$fgetswipeContainer(Lorg/telegram/ui/bots/BotWebViewSheet;)Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v5

    iget-object v6, p0, Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {v6}, Lorg/telegram/ui/bots/BotWebViewSheet;->-$$Nest$fgetfullscreenProgress(Lorg/telegram/ui/bots/BotWebViewSheet;)F

    move-result v6

    invoke-static {v4, v5, v6}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    sub-int/2addr v5, v0

    int-to-float v0, v5

    invoke-virtual {p1, v1, v2, v4, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 2562
    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {v0}, Lorg/telegram/ui/bots/BotWebViewSheet;->-$$Nest$fgetbackgroundPaint(Lorg/telegram/ui/bots/BotWebViewSheet;)Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v3, p1, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 2564
    invoke-virtual {v3}, Landroid/graphics/Canvas;->restore()V

    :cond_6
    :goto_4
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 2595
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {v1}, Lorg/telegram/ui/bots/BotWebViewSheet;->-$$Nest$fgetswipeContainer(Lorg/telegram/ui/bots/BotWebViewSheet;)Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v1

    const/high16 v2, 0x41c00000    # 24.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget-object v2, p0, Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {v2}, Lorg/telegram/ui/bots/BotWebViewSheet;->-$$Nest$fgetactionBarTransitionProgress(Lorg/telegram/ui/bots/BotWebViewSheet;)F

    move-result v2

    const/4 v3, 0x0

    invoke-static {v1, v3, v2}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v1

    cmpg-float v0, v0, v1

    if-lez v0, :cond_0

    .line 2596
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {v1}, Lorg/telegram/ui/bots/BotWebViewSheet;->-$$Nest$fgetswipeContainer(Lorg/telegram/ui/bots/BotWebViewSheet;)Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {v1}, Lorg/telegram/ui/bots/BotWebViewSheet;->-$$Nest$fgetswipeContainer(Lorg/telegram/ui/bots/BotWebViewSheet;)Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 2597
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lorg/telegram/ui/bots/BotWebViewSheet;->dismiss(ZLjava/lang/Runnable;)V

    return v1

    .line 2600
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setDrawingFromOverlay(Z)V
    .locals 1

    .line 2622
    iget-boolean v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;->drawingFromOverlay:Z

    if-eq v0, p1, :cond_0

    .line 2623
    iput-boolean p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;->drawingFromOverlay:Z

    .line 2624
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 2625
    iget-object p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-virtual {p1}, Lorg/telegram/ui/bots/BotWebViewSheet;->updateWindowFlags()V

    .line 2626
    sget-object p1, Lorg/telegram/ui/LaunchActivity;->instance:Lorg/telegram/ui/LaunchActivity;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {p1}, Lorg/telegram/ui/bots/BotWebViewSheet;->-$$Nest$fgetfullscreen(Lorg/telegram/ui/bots/BotWebViewSheet;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2627
    sget-object p1, Lorg/telegram/ui/LaunchActivity;->instance:Lorg/telegram/ui/LaunchActivity;

    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {v0}, Lorg/telegram/ui/bots/BotWebViewSheet;->-$$Nest$fgetnavBarColor(Lorg/telegram/ui/bots/BotWebViewSheet;)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/LaunchActivity;->setNavigationBarColor(I)V

    :cond_0
    return-void
.end method
