.class Lorg/telegram/ui/TodoItemMenu$7;
.super Lorg/telegram/ui/Cells/ChatMessageCell;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/TodoItemMenu;->setCell(Lorg/telegram/ui/ChatActivity;Lorg/telegram/ui/Cells/ChatMessageCell;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final clipPath:Landroid/graphics/Path;

.field private final shadowPaint:Landroid/graphics/Paint;

.field final synthetic this$0:Lorg/telegram/ui/TodoItemMenu;

.field final synthetic val$finalHeight:I

.field final synthetic val$finalWidth:I

.field final synthetic val$taskId:I


# direct methods
.method constructor <init>(Lorg/telegram/ui/TodoItemMenu;Landroid/content/Context;IZLorg/telegram/messenger/ChatMessageSharedResources;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;III)V
    .locals 0

    .line 360
    iput-object p1, p0, Lorg/telegram/ui/TodoItemMenu$7;->this$0:Lorg/telegram/ui/TodoItemMenu;

    iput p7, p0, Lorg/telegram/ui/TodoItemMenu$7;->val$taskId:I

    iput p8, p0, Lorg/telegram/ui/TodoItemMenu$7;->val$finalWidth:I

    iput p9, p0, Lorg/telegram/ui/TodoItemMenu$7;->val$finalHeight:I

    move-object p1, p0

    invoke-direct/range {p1 .. p6}, Lorg/telegram/ui/Cells/ChatMessageCell;-><init>(Landroid/content/Context;IZLorg/telegram/messenger/ChatMessageSharedResources;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 364
    new-instance p2, Landroid/graphics/Path;

    invoke-direct {p2}, Landroid/graphics/Path;-><init>()V

    iput-object p2, p1, Lorg/telegram/ui/TodoItemMenu$7;->clipPath:Landroid/graphics/Path;

    .line 365
    new-instance p2, Landroid/graphics/Paint;

    const/4 p3, 0x1

    invoke-direct {p2, p3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p1, Lorg/telegram/ui/TodoItemMenu$7;->shadowPaint:Landroid/graphics/Paint;

    return-void
.end method


# virtual methods
.method public drawOverlays(Landroid/graphics/Canvas;)V
    .locals 1

    const/4 v0, 0x0

    .line 390
    iput v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell;->firstVisiblePollButton:I

    .line 391
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell;->pollButtons:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell;->lastVisiblePollButton:I

    .line 392
    invoke-super {p0, p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->drawOverlays(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 368
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 369
    iget v0, p0, Lorg/telegram/ui/TodoItemMenu$7;->val$taskId:I

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->getTodoIndex(I)I

    move-result v0

    .line 370
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->getPollButtonTop(I)F

    move-result v1

    .line 371
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->getPollButtonBottom(I)F

    move-result v0

    .line 372
    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/ChatMessageCell;->getPollButtonsLeft()F

    move-result v3

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/ChatMessageCell;->getPollButtonsRight()F

    move-result v4

    invoke-virtual {v2, v3, v1, v4, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 373
    iget-object v0, p0, Lorg/telegram/ui/TodoItemMenu$7;->clipPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    .line 374
    iget-object v0, p0, Lorg/telegram/ui/TodoItemMenu$7;->clipPath:Landroid/graphics/Path;

    const/high16 v1, 0x41000000    # 8.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 375
    iget-object v0, p0, Lorg/telegram/ui/TodoItemMenu$7;->shadowPaint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 376
    iget-object v0, p0, Lorg/telegram/ui/TodoItemMenu$7;->shadowPaint:Landroid/graphics/Paint;

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    const v4, 0x3f28f5c3    # 0.66f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lorg/telegram/ui/TodoItemMenu$7;->this$0:Lorg/telegram/ui/TodoItemMenu;

    invoke-static {v5}, Lorg/telegram/ui/TodoItemMenu;->-$$Nest$fgetopenProgress(Lorg/telegram/ui/TodoItemMenu;)F

    move-result v5

    const v6, 0x3e4ccccd    # 0.2f

    mul-float/2addr v5, v6

    const/high16 v6, -0x1000000

    invoke-static {v6, v5}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v0, v3, v6, v4, v5}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 377
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    iget-object v3, p0, Lorg/telegram/ui/TodoItemMenu$7;->shadowPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0, v1, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 378
    iget-object v0, p0, Lorg/telegram/ui/TodoItemMenu$7;->clipPath:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 379
    invoke-super {p0, p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->onDraw(Landroid/graphics/Canvas;)V

    .line 380
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 385
    iget p1, p0, Lorg/telegram/ui/TodoItemMenu$7;->val$finalWidth:I

    iget p2, p0, Lorg/telegram/ui/TodoItemMenu$7;->val$finalHeight:I

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public setPressed(Z)V
    .locals 0

    return-void
.end method
