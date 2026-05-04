.class Lorg/telegram/ui/ArticleViewer$BlockPreformattedCell$2;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ArticleViewer$BlockPreformattedCell;-><init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ArticleViewer$BlockPreformattedCell;

.field final synthetic val$this$0:Lorg/telegram/ui/ArticleViewer;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ArticleViewer$BlockPreformattedCell;Landroid/content/Context;Lorg/telegram/ui/ArticleViewer;)V
    .locals 0

    .line 12254
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockPreformattedCell$2;->this$1:Lorg/telegram/ui/ArticleViewer$BlockPreformattedCell;

    iput-object p3, p0, Lorg/telegram/ui/ArticleViewer$BlockPreformattedCell$2;->val$this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 12281
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockPreformattedCell$2;->this$1:Lorg/telegram/ui/ArticleViewer$BlockPreformattedCell;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer$BlockPreformattedCell;->-$$Nest$fgettextLayout(Lorg/telegram/ui/ArticleViewer$BlockPreformattedCell;)Lorg/telegram/ui/ArticleViewer$DrawingText;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 12282
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 12283
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockPreformattedCell$2;->this$1:Lorg/telegram/ui/ArticleViewer$BlockPreformattedCell;

    iget-object v1, v0, Lorg/telegram/ui/ArticleViewer$BlockPreformattedCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v1, p1, v0}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$mdrawTextSelection(Lorg/telegram/ui/ArticleViewer;Landroid/graphics/Canvas;Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;)V

    .line 12284
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockPreformattedCell$2;->this$1:Lorg/telegram/ui/ArticleViewer$BlockPreformattedCell;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer$BlockPreformattedCell;->-$$Nest$fgettextLayout(Lorg/telegram/ui/ArticleViewer$BlockPreformattedCell;)Lorg/telegram/ui/ArticleViewer$DrawingText;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Lorg/telegram/ui/ArticleViewer$DrawingText;->draw(Landroid/graphics/Canvas;Landroid/view/View;)V

    .line 12285
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 12286
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockPreformattedCell$2;->this$1:Lorg/telegram/ui/ArticleViewer$BlockPreformattedCell;

    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer$BlockPreformattedCell;->-$$Nest$fgettextLayout(Lorg/telegram/ui/ArticleViewer$BlockPreformattedCell;)Lorg/telegram/ui/ArticleViewer$DrawingText;

    move-result-object p1

    invoke-virtual {p0}, Landroid/view/View;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p1, Lorg/telegram/ui/ArticleViewer$DrawingText;->x:I

    .line 12287
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockPreformattedCell$2;->this$1:Lorg/telegram/ui/ArticleViewer$BlockPreformattedCell;

    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer$BlockPreformattedCell;->-$$Nest$fgettextLayout(Lorg/telegram/ui/ArticleViewer$BlockPreformattedCell;)Lorg/telegram/ui/ArticleViewer$DrawingText;

    move-result-object p1

    invoke-virtual {p0}, Landroid/view/View;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p1, Lorg/telegram/ui/ArticleViewer$DrawingText;->y:I

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 8

    .line 12260
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockPreformattedCell$2;->this$1:Lorg/telegram/ui/ArticleViewer$BlockPreformattedCell;

    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer$BlockPreformattedCell;->-$$Nest$fgetcurrentBlock(Lorg/telegram/ui/ArticleViewer$BlockPreformattedCell;)Lorg/telegram/tgnet/TLRPC$TL_pageBlockPreformatted;

    move-result-object p1

    const/4 p2, 0x1

    if-eqz p1, :cond_1

    .line 12261
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockPreformattedCell$2;->this$1:Lorg/telegram/ui/ArticleViewer$BlockPreformattedCell;

    iget-object v0, p1, Lorg/telegram/ui/ArticleViewer$BlockPreformattedCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer$BlockPreformattedCell;->-$$Nest$fgetcurrentBlock(Lorg/telegram/ui/ArticleViewer$BlockPreformattedCell;)Lorg/telegram/tgnet/TLRPC$TL_pageBlockPreformatted;

    move-result-object v1

    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockPreformatted;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    const v1, 0x459c4000    # 5000.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$BlockPreformattedCell$2;->this$1:Lorg/telegram/ui/ArticleViewer$BlockPreformattedCell;

    invoke-static {v1}, Lorg/telegram/ui/ArticleViewer$BlockPreformattedCell;->-$$Nest$fgetcurrentBlock(Lorg/telegram/ui/ArticleViewer$BlockPreformattedCell;)Lorg/telegram/tgnet/TLRPC$TL_pageBlockPreformatted;

    move-result-object v6

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$BlockPreformattedCell$2;->this$1:Lorg/telegram/ui/ArticleViewer$BlockPreformattedCell;

    invoke-static {v1}, Lorg/telegram/ui/ArticleViewer$BlockPreformattedCell;->-$$Nest$fgetparentAdapter(Lorg/telegram/ui/ArticleViewer$BlockPreformattedCell;)Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    move-result-object v7

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    invoke-static/range {v0 .. v7}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$mcreateLayoutForText(Lorg/telegram/ui/ArticleViewer;Landroid/view/View;Ljava/lang/CharSequence;Lorg/telegram/tgnet/TLRPC$RichText;IILorg/telegram/tgnet/TLRPC$PageBlock;Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Lorg/telegram/ui/ArticleViewer$DrawingText;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/telegram/ui/ArticleViewer$BlockPreformattedCell;->-$$Nest$fputtextLayout(Lorg/telegram/ui/ArticleViewer$BlockPreformattedCell;Lorg/telegram/ui/ArticleViewer$DrawingText;)V

    .line 12262
    iget-object p1, v1, Lorg/telegram/ui/ArticleViewer$BlockPreformattedCell$2;->this$1:Lorg/telegram/ui/ArticleViewer$BlockPreformattedCell;

    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer$BlockPreformattedCell;->-$$Nest$fgettextLayout(Lorg/telegram/ui/ArticleViewer$BlockPreformattedCell;)Lorg/telegram/ui/ArticleViewer$DrawingText;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 12263
    iget-object p1, v1, Lorg/telegram/ui/ArticleViewer$BlockPreformattedCell$2;->this$1:Lorg/telegram/ui/ArticleViewer$BlockPreformattedCell;

    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer$BlockPreformattedCell;->-$$Nest$fgettextLayout(Lorg/telegram/ui/ArticleViewer$BlockPreformattedCell;)Lorg/telegram/ui/ArticleViewer$DrawingText;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/ArticleViewer$DrawingText;->getHeight()I

    move-result p1

    .line 12264
    iget-object v2, v1, Lorg/telegram/ui/ArticleViewer$BlockPreformattedCell$2;->this$1:Lorg/telegram/ui/ArticleViewer$BlockPreformattedCell;

    invoke-static {v2}, Lorg/telegram/ui/ArticleViewer$BlockPreformattedCell;->-$$Nest$fgettextLayout(Lorg/telegram/ui/ArticleViewer$BlockPreformattedCell;)Lorg/telegram/ui/ArticleViewer$DrawingText;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/ArticleViewer$DrawingText;->getLineCount()I

    move-result v2

    :goto_0
    if-ge v0, v2, :cond_2

    .line 12265
    iget-object v3, v1, Lorg/telegram/ui/ArticleViewer$BlockPreformattedCell$2;->this$1:Lorg/telegram/ui/ArticleViewer$BlockPreformattedCell;

    invoke-static {v3}, Lorg/telegram/ui/ArticleViewer$BlockPreformattedCell;->-$$Nest$fgettextLayout(Lorg/telegram/ui/ArticleViewer$BlockPreformattedCell;)Lorg/telegram/ui/ArticleViewer$DrawingText;

    move-result-object v3

    invoke-virtual {v3, v0}, Lorg/telegram/ui/ArticleViewer$DrawingText;->getLineWidth(I)F

    move-result v3

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    invoke-static {v3, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move p1, v0

    goto :goto_1

    :cond_1
    move-object v1, p0

    move p1, p2

    :cond_2
    :goto_1
    const/high16 v0, 0x42000000    # 32.0f

    .line 12271
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    add-int/2addr p2, v0

    invoke-virtual {p0, p2, p1}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .line 12276
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockPreformattedCell$2;->this$1:Lorg/telegram/ui/ArticleViewer$BlockPreformattedCell;

    iget-object v1, v0, Lorg/telegram/ui/ArticleViewer$BlockPreformattedCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer$BlockPreformattedCell;->-$$Nest$fgetparentAdapter(Lorg/telegram/ui/ArticleViewer$BlockPreformattedCell;)Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    move-result-object v2

    iget-object v4, p0, Lorg/telegram/ui/ArticleViewer$BlockPreformattedCell$2;->this$1:Lorg/telegram/ui/ArticleViewer$BlockPreformattedCell;

    invoke-static {v4}, Lorg/telegram/ui/ArticleViewer$BlockPreformattedCell;->-$$Nest$fgettextLayout(Lorg/telegram/ui/ArticleViewer$BlockPreformattedCell;)Lorg/telegram/ui/ArticleViewer$DrawingText;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p1

    invoke-static/range {v1 .. v7}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$mcheckLayoutForLinks(Lorg/telegram/ui/ArticleViewer;Lorg/telegram/ui/ArticleViewer$WebpageAdapter;Landroid/view/MotionEvent;Landroid/view/View;Lorg/telegram/ui/ArticleViewer$DrawingText;II)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-super {p0, v3}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method
