.class public Lorg/telegram/ui/Components/TableLayout$Child;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/TableLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Child"
.end annotation


# instance fields
.field private cell:Lorg/telegram/tgnet/TLRPC$TL_pageTableCell;

.field private fixedHeight:I

.field private index:I

.field private layoutParams:Lorg/telegram/ui/Components/TableLayout$LayoutParams;

.field private measuredHeight:I

.field private measuredWidth:I

.field public rowspan:I

.field private selectionIndex:I

.field public textHeight:I

.field public textLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

.field public textLeft:I

.field public textWidth:I

.field public textX:I

.field public textY:I

.field final synthetic this$0:Lorg/telegram/ui/Components/TableLayout;

.field public x:I

.field public y:I


# direct methods
.method static bridge synthetic -$$Nest$fgetcell(Lorg/telegram/ui/Components/TableLayout$Child;)Lorg/telegram/tgnet/TLRPC$TL_pageTableCell;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/TableLayout$Child;->cell:Lorg/telegram/tgnet/TLRPC$TL_pageTableCell;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetfixedHeight(Lorg/telegram/ui/Components/TableLayout$Child;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Components/TableLayout$Child;->fixedHeight:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetindex(Lorg/telegram/ui/Components/TableLayout$Child;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Components/TableLayout$Child;->index:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetlayoutParams(Lorg/telegram/ui/Components/TableLayout$Child;)Lorg/telegram/ui/Components/TableLayout$LayoutParams;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/TableLayout$Child;->layoutParams:Lorg/telegram/ui/Components/TableLayout$LayoutParams;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmeasuredHeight(Lorg/telegram/ui/Components/TableLayout$Child;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Components/TableLayout$Child;->measuredHeight:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmeasuredWidth(Lorg/telegram/ui/Components/TableLayout$Child;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Components/TableLayout$Child;->measuredWidth:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputcell(Lorg/telegram/ui/Components/TableLayout$Child;Lorg/telegram/tgnet/TLRPC$TL_pageTableCell;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/Components/TableLayout$Child;->cell:Lorg/telegram/tgnet/TLRPC$TL_pageTableCell;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputlayoutParams(Lorg/telegram/ui/Components/TableLayout$Child;Lorg/telegram/ui/Components/TableLayout$LayoutParams;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/Components/TableLayout$Child;->layoutParams:Lorg/telegram/ui/Components/TableLayout$LayoutParams;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmeasuredHeight(Lorg/telegram/ui/Components/TableLayout$Child;I)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/Components/TableLayout$Child;->measuredHeight:I

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/Components/TableLayout;I)V
    .locals 0

    .line 100
    iput-object p1, p0, Lorg/telegram/ui/Components/TableLayout$Child;->this$0:Lorg/telegram/ui/Components/TableLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    .line 98
    iput p1, p0, Lorg/telegram/ui/Components/TableLayout$Child;->selectionIndex:I

    .line 101
    iput p2, p0, Lorg/telegram/ui/Components/TableLayout$Child;->index:I

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Landroid/view/View;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 196
    iget-object v2, v0, Lorg/telegram/ui/Components/TableLayout$Child;->cell:Lorg/telegram/tgnet/TLRPC$TL_pageTableCell;

    if-nez v2, :cond_0

    goto/16 :goto_10

    .line 200
    :cond_0
    iget v2, v0, Lorg/telegram/ui/Components/TableLayout$Child;->x:I

    iget v3, v0, Lorg/telegram/ui/Components/TableLayout$Child;->measuredWidth:I

    add-int/2addr v2, v3

    iget-object v3, v0, Lorg/telegram/ui/Components/TableLayout$Child;->this$0:Lorg/telegram/ui/Components/TableLayout;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v2, v3, :cond_1

    move v7, v5

    goto :goto_0

    :cond_1
    move v7, v4

    .line 201
    :goto_0
    iget v2, v0, Lorg/telegram/ui/Components/TableLayout$Child;->y:I

    iget v3, v0, Lorg/telegram/ui/Components/TableLayout$Child;->measuredHeight:I

    add-int/2addr v2, v3

    iget-object v3, v0, Lorg/telegram/ui/Components/TableLayout$Child;->this$0:Lorg/telegram/ui/Components/TableLayout;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    if-ne v2, v3, :cond_2

    move v8, v5

    goto :goto_1

    :cond_2
    move v8, v4

    :goto_1
    const/high16 v2, 0x40400000    # 3.0f

    .line 202
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    .line 203
    iget-object v2, v0, Lorg/telegram/ui/Components/TableLayout$Child;->cell:Lorg/telegram/tgnet/TLRPC$TL_pageTableCell;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$TL_pageTableCell;->header:Z

    const/4 v10, 0x2

    if-nez v2, :cond_3

    iget-object v2, v0, Lorg/telegram/ui/Components/TableLayout$Child;->this$0:Lorg/telegram/ui/Components/TableLayout;

    invoke-static {v2}, Lorg/telegram/ui/Components/TableLayout;->-$$Nest$fgetisStriped(Lorg/telegram/ui/Components/TableLayout;)Z

    move-result v2

    if-eqz v2, :cond_b

    iget-object v2, v0, Lorg/telegram/ui/Components/TableLayout$Child;->layoutParams:Lorg/telegram/ui/Components/TableLayout$LayoutParams;

    iget-object v2, v2, Lorg/telegram/ui/Components/TableLayout$LayoutParams;->rowSpec:Lorg/telegram/ui/Components/TableLayout$Spec;

    iget-object v2, v2, Lorg/telegram/ui/Components/TableLayout$Spec;->span:Lorg/telegram/ui/Components/TableLayout$Interval;

    iget v2, v2, Lorg/telegram/ui/Components/TableLayout$Interval;->min:I

    rem-int/2addr v2, v10

    if-nez v2, :cond_b

    .line 205
    :cond_3
    iget v2, v0, Lorg/telegram/ui/Components/TableLayout$Child;->x:I

    const/4 v3, 0x0

    if-nez v2, :cond_4

    iget v2, v0, Lorg/telegram/ui/Components/TableLayout$Child;->y:I

    if-nez v2, :cond_4

    .line 206
    iget-object v2, v0, Lorg/telegram/ui/Components/TableLayout$Child;->this$0:Lorg/telegram/ui/Components/TableLayout;

    invoke-static {v2}, Lorg/telegram/ui/Components/TableLayout;->-$$Nest$fgetradii(Lorg/telegram/ui/Components/TableLayout;)[F

    move-result-object v2

    iget-object v6, v0, Lorg/telegram/ui/Components/TableLayout$Child;->this$0:Lorg/telegram/ui/Components/TableLayout;

    invoke-static {v6}, Lorg/telegram/ui/Components/TableLayout;->-$$Nest$fgetradii(Lorg/telegram/ui/Components/TableLayout;)[F

    move-result-object v6

    int-to-float v11, v9

    aput v11, v6, v5

    aput v11, v2, v4

    move v4, v5

    goto :goto_2

    .line 209
    :cond_4
    iget-object v2, v0, Lorg/telegram/ui/Components/TableLayout$Child;->this$0:Lorg/telegram/ui/Components/TableLayout;

    invoke-static {v2}, Lorg/telegram/ui/Components/TableLayout;->-$$Nest$fgetradii(Lorg/telegram/ui/Components/TableLayout;)[F

    move-result-object v2

    iget-object v6, v0, Lorg/telegram/ui/Components/TableLayout$Child;->this$0:Lorg/telegram/ui/Components/TableLayout;

    invoke-static {v6}, Lorg/telegram/ui/Components/TableLayout;->-$$Nest$fgetradii(Lorg/telegram/ui/Components/TableLayout;)[F

    move-result-object v6

    aput v3, v6, v5

    aput v3, v2, v4

    :goto_2
    const/4 v2, 0x3

    if-eqz v7, :cond_5

    .line 211
    iget v6, v0, Lorg/telegram/ui/Components/TableLayout$Child;->y:I

    if-nez v6, :cond_5

    .line 212
    iget-object v4, v0, Lorg/telegram/ui/Components/TableLayout$Child;->this$0:Lorg/telegram/ui/Components/TableLayout;

    invoke-static {v4}, Lorg/telegram/ui/Components/TableLayout;->-$$Nest$fgetradii(Lorg/telegram/ui/Components/TableLayout;)[F

    move-result-object v4

    iget-object v6, v0, Lorg/telegram/ui/Components/TableLayout$Child;->this$0:Lorg/telegram/ui/Components/TableLayout;

    invoke-static {v6}, Lorg/telegram/ui/Components/TableLayout;->-$$Nest$fgetradii(Lorg/telegram/ui/Components/TableLayout;)[F

    move-result-object v6

    int-to-float v11, v9

    aput v11, v6, v2

    aput v11, v4, v10

    move v4, v5

    goto :goto_3

    .line 215
    :cond_5
    iget-object v6, v0, Lorg/telegram/ui/Components/TableLayout$Child;->this$0:Lorg/telegram/ui/Components/TableLayout;

    invoke-static {v6}, Lorg/telegram/ui/Components/TableLayout;->-$$Nest$fgetradii(Lorg/telegram/ui/Components/TableLayout;)[F

    move-result-object v6

    iget-object v11, v0, Lorg/telegram/ui/Components/TableLayout$Child;->this$0:Lorg/telegram/ui/Components/TableLayout;

    invoke-static {v11}, Lorg/telegram/ui/Components/TableLayout;->-$$Nest$fgetradii(Lorg/telegram/ui/Components/TableLayout;)[F

    move-result-object v11

    aput v3, v11, v2

    aput v3, v6, v10

    :goto_3
    const/4 v2, 0x5

    const/4 v6, 0x4

    if-eqz v7, :cond_6

    if-eqz v8, :cond_6

    .line 218
    iget-object v4, v0, Lorg/telegram/ui/Components/TableLayout$Child;->this$0:Lorg/telegram/ui/Components/TableLayout;

    invoke-static {v4}, Lorg/telegram/ui/Components/TableLayout;->-$$Nest$fgetradii(Lorg/telegram/ui/Components/TableLayout;)[F

    move-result-object v4

    iget-object v11, v0, Lorg/telegram/ui/Components/TableLayout$Child;->this$0:Lorg/telegram/ui/Components/TableLayout;

    invoke-static {v11}, Lorg/telegram/ui/Components/TableLayout;->-$$Nest$fgetradii(Lorg/telegram/ui/Components/TableLayout;)[F

    move-result-object v11

    int-to-float v12, v9

    aput v12, v11, v2

    aput v12, v4, v6

    move v4, v5

    goto :goto_4

    .line 221
    :cond_6
    iget-object v11, v0, Lorg/telegram/ui/Components/TableLayout$Child;->this$0:Lorg/telegram/ui/Components/TableLayout;

    invoke-static {v11}, Lorg/telegram/ui/Components/TableLayout;->-$$Nest$fgetradii(Lorg/telegram/ui/Components/TableLayout;)[F

    move-result-object v11

    iget-object v12, v0, Lorg/telegram/ui/Components/TableLayout$Child;->this$0:Lorg/telegram/ui/Components/TableLayout;

    invoke-static {v12}, Lorg/telegram/ui/Components/TableLayout;->-$$Nest$fgetradii(Lorg/telegram/ui/Components/TableLayout;)[F

    move-result-object v12

    aput v3, v12, v2

    aput v3, v11, v6

    .line 223
    :goto_4
    iget v2, v0, Lorg/telegram/ui/Components/TableLayout$Child;->x:I

    const/4 v6, 0x7

    const/4 v11, 0x6

    if-nez v2, :cond_7

    if-eqz v8, :cond_7

    .line 224
    iget-object v2, v0, Lorg/telegram/ui/Components/TableLayout$Child;->this$0:Lorg/telegram/ui/Components/TableLayout;

    invoke-static {v2}, Lorg/telegram/ui/Components/TableLayout;->-$$Nest$fgetradii(Lorg/telegram/ui/Components/TableLayout;)[F

    move-result-object v2

    iget-object v3, v0, Lorg/telegram/ui/Components/TableLayout$Child;->this$0:Lorg/telegram/ui/Components/TableLayout;

    invoke-static {v3}, Lorg/telegram/ui/Components/TableLayout;->-$$Nest$fgetradii(Lorg/telegram/ui/Components/TableLayout;)[F

    move-result-object v3

    int-to-float v4, v9

    aput v4, v3, v6

    aput v4, v2, v11

    goto :goto_5

    .line 227
    :cond_7
    iget-object v2, v0, Lorg/telegram/ui/Components/TableLayout$Child;->this$0:Lorg/telegram/ui/Components/TableLayout;

    invoke-static {v2}, Lorg/telegram/ui/Components/TableLayout;->-$$Nest$fgetradii(Lorg/telegram/ui/Components/TableLayout;)[F

    move-result-object v2

    iget-object v5, v0, Lorg/telegram/ui/Components/TableLayout$Child;->this$0:Lorg/telegram/ui/Components/TableLayout;

    invoke-static {v5}, Lorg/telegram/ui/Components/TableLayout;->-$$Nest$fgetradii(Lorg/telegram/ui/Components/TableLayout;)[F

    move-result-object v5

    aput v3, v5, v6

    aput v3, v2, v11

    move v5, v4

    :goto_5
    if-eqz v5, :cond_9

    .line 230
    iget-object v2, v0, Lorg/telegram/ui/Components/TableLayout$Child;->this$0:Lorg/telegram/ui/Components/TableLayout;

    invoke-static {v2}, Lorg/telegram/ui/Components/TableLayout;->-$$Nest$fgetrect(Lorg/telegram/ui/Components/TableLayout;)Landroid/graphics/RectF;

    move-result-object v2

    iget v3, v0, Lorg/telegram/ui/Components/TableLayout$Child;->x:I

    int-to-float v4, v3

    iget v5, v0, Lorg/telegram/ui/Components/TableLayout$Child;->y:I

    int-to-float v6, v5

    iget v11, v0, Lorg/telegram/ui/Components/TableLayout$Child;->measuredWidth:I

    add-int/2addr v3, v11

    int-to-float v3, v3

    iget v11, v0, Lorg/telegram/ui/Components/TableLayout$Child;->measuredHeight:I

    add-int/2addr v5, v11

    int-to-float v5, v5

    invoke-virtual {v2, v4, v6, v3, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 231
    iget-object v2, v0, Lorg/telegram/ui/Components/TableLayout$Child;->this$0:Lorg/telegram/ui/Components/TableLayout;

    invoke-static {v2}, Lorg/telegram/ui/Components/TableLayout;->-$$Nest$fgetbackgroundPath(Lorg/telegram/ui/Components/TableLayout;)Landroid/graphics/Path;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 232
    iget-object v2, v0, Lorg/telegram/ui/Components/TableLayout$Child;->this$0:Lorg/telegram/ui/Components/TableLayout;

    invoke-static {v2}, Lorg/telegram/ui/Components/TableLayout;->-$$Nest$fgetbackgroundPath(Lorg/telegram/ui/Components/TableLayout;)Landroid/graphics/Path;

    move-result-object v2

    iget-object v3, v0, Lorg/telegram/ui/Components/TableLayout$Child;->this$0:Lorg/telegram/ui/Components/TableLayout;

    invoke-static {v3}, Lorg/telegram/ui/Components/TableLayout;->-$$Nest$fgetrect(Lorg/telegram/ui/Components/TableLayout;)Landroid/graphics/RectF;

    move-result-object v3

    iget-object v4, v0, Lorg/telegram/ui/Components/TableLayout$Child;->this$0:Lorg/telegram/ui/Components/TableLayout;

    invoke-static {v4}, Lorg/telegram/ui/Components/TableLayout;->-$$Nest$fgetradii(Lorg/telegram/ui/Components/TableLayout;)[F

    move-result-object v4

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v2, v3, v4, v5}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 233
    iget-object v2, v0, Lorg/telegram/ui/Components/TableLayout$Child;->cell:Lorg/telegram/tgnet/TLRPC$TL_pageTableCell;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$TL_pageTableCell;->header:Z

    if-eqz v2, :cond_8

    .line 234
    iget-object v2, v0, Lorg/telegram/ui/Components/TableLayout$Child;->this$0:Lorg/telegram/ui/Components/TableLayout;

    invoke-static {v2}, Lorg/telegram/ui/Components/TableLayout;->-$$Nest$fgetbackgroundPath(Lorg/telegram/ui/Components/TableLayout;)Landroid/graphics/Path;

    move-result-object v2

    iget-object v3, v0, Lorg/telegram/ui/Components/TableLayout$Child;->this$0:Lorg/telegram/ui/Components/TableLayout;

    invoke-static {v3}, Lorg/telegram/ui/Components/TableLayout;->-$$Nest$fgetdelegate(Lorg/telegram/ui/Components/TableLayout;)Lorg/telegram/ui/Components/TableLayout$TableLayoutDelegate;

    move-result-object v3

    invoke-interface {v3}, Lorg/telegram/ui/Components/TableLayout$TableLayoutDelegate;->getHeaderPaint()Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_6

    .line 236
    :cond_8
    iget-object v2, v0, Lorg/telegram/ui/Components/TableLayout$Child;->this$0:Lorg/telegram/ui/Components/TableLayout;

    invoke-static {v2}, Lorg/telegram/ui/Components/TableLayout;->-$$Nest$fgetbackgroundPath(Lorg/telegram/ui/Components/TableLayout;)Landroid/graphics/Path;

    move-result-object v2

    iget-object v3, v0, Lorg/telegram/ui/Components/TableLayout$Child;->this$0:Lorg/telegram/ui/Components/TableLayout;

    invoke-static {v3}, Lorg/telegram/ui/Components/TableLayout;->-$$Nest$fgetdelegate(Lorg/telegram/ui/Components/TableLayout;)Lorg/telegram/ui/Components/TableLayout$TableLayoutDelegate;

    move-result-object v3

    invoke-interface {v3}, Lorg/telegram/ui/Components/TableLayout$TableLayoutDelegate;->getStripPaint()Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_6

    .line 239
    :cond_9
    iget-object v2, v0, Lorg/telegram/ui/Components/TableLayout$Child;->cell:Lorg/telegram/tgnet/TLRPC$TL_pageTableCell;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$TL_pageTableCell;->header:Z

    if-eqz v2, :cond_a

    .line 240
    iget v2, v0, Lorg/telegram/ui/Components/TableLayout$Child;->x:I

    move v3, v2

    int-to-float v2, v3

    iget v4, v0, Lorg/telegram/ui/Components/TableLayout$Child;->y:I

    move v5, v3

    int-to-float v3, v4

    iget v6, v0, Lorg/telegram/ui/Components/TableLayout$Child;->measuredWidth:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    iget v6, v0, Lorg/telegram/ui/Components/TableLayout$Child;->measuredHeight:I

    add-int/2addr v4, v6

    int-to-float v4, v4

    iget-object v6, v0, Lorg/telegram/ui/Components/TableLayout$Child;->this$0:Lorg/telegram/ui/Components/TableLayout;

    invoke-static {v6}, Lorg/telegram/ui/Components/TableLayout;->-$$Nest$fgetdelegate(Lorg/telegram/ui/Components/TableLayout;)Lorg/telegram/ui/Components/TableLayout$TableLayoutDelegate;

    move-result-object v6

    invoke-interface {v6}, Lorg/telegram/ui/Components/TableLayout$TableLayoutDelegate;->getHeaderPaint()Landroid/graphics/Paint;

    move-result-object v6

    move v15, v5

    move v5, v4

    move v4, v15

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    move-object/from16 v1, p1

    goto :goto_6

    .line 242
    :cond_a
    iget v1, v0, Lorg/telegram/ui/Components/TableLayout$Child;->x:I

    int-to-float v2, v1

    iget v3, v0, Lorg/telegram/ui/Components/TableLayout$Child;->y:I

    move v4, v3

    int-to-float v3, v4

    iget v5, v0, Lorg/telegram/ui/Components/TableLayout$Child;->measuredWidth:I

    add-int/2addr v1, v5

    int-to-float v1, v1

    iget v5, v0, Lorg/telegram/ui/Components/TableLayout$Child;->measuredHeight:I

    add-int/2addr v4, v5

    int-to-float v5, v4

    iget-object v4, v0, Lorg/telegram/ui/Components/TableLayout$Child;->this$0:Lorg/telegram/ui/Components/TableLayout;

    invoke-static {v4}, Lorg/telegram/ui/Components/TableLayout;->-$$Nest$fgetdelegate(Lorg/telegram/ui/Components/TableLayout;)Lorg/telegram/ui/Components/TableLayout$TableLayoutDelegate;

    move-result-object v4

    invoke-interface {v4}, Lorg/telegram/ui/Components/TableLayout$TableLayoutDelegate;->getStripPaint()Landroid/graphics/Paint;

    move-result-object v6

    move v4, v1

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 246
    :cond_b
    :goto_6
    iget-object v2, v0, Lorg/telegram/ui/Components/TableLayout$Child;->textLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    if-eqz v2, :cond_d

    .line 247
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 248
    invoke-virtual {v0}, Lorg/telegram/ui/Components/TableLayout$Child;->getTextX()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0}, Lorg/telegram/ui/Components/TableLayout$Child;->getTextY()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 249
    iget v2, v0, Lorg/telegram/ui/Components/TableLayout$Child;->selectionIndex:I

    if-ltz v2, :cond_c

    .line 250
    iget-object v2, v0, Lorg/telegram/ui/Components/TableLayout$Child;->this$0:Lorg/telegram/ui/Components/TableLayout;

    invoke-static {v2}, Lorg/telegram/ui/Components/TableLayout;->-$$Nest$fgettextSelectionHelper(Lorg/telegram/ui/Components/TableLayout;)Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;

    move-result-object v2

    iget-object v3, v0, Lorg/telegram/ui/Components/TableLayout$Child;->this$0:Lorg/telegram/ui/Components/TableLayout;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;

    iget v4, v0, Lorg/telegram/ui/Components/TableLayout$Child;->selectionIndex:I

    invoke-virtual {v2, v1, v3, v4}, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->draw(Landroid/graphics/Canvas;Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;I)V

    .line 252
    :cond_c
    iget-object v2, v0, Lorg/telegram/ui/Components/TableLayout$Child;->textLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    move-object/from16 v3, p2

    invoke-virtual {v2, v1, v3}, Lorg/telegram/ui/ArticleViewer$DrawingText;->draw(Landroid/graphics/Canvas;Landroid/view/View;)V

    .line 253
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 255
    :cond_d
    iget-object v2, v0, Lorg/telegram/ui/Components/TableLayout$Child;->this$0:Lorg/telegram/ui/Components/TableLayout;

    invoke-static {v2}, Lorg/telegram/ui/Components/TableLayout;->-$$Nest$fgetdrawLines(Lorg/telegram/ui/Components/TableLayout;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 256
    iget-object v2, v0, Lorg/telegram/ui/Components/TableLayout$Child;->this$0:Lorg/telegram/ui/Components/TableLayout;

    invoke-static {v2}, Lorg/telegram/ui/Components/TableLayout;->-$$Nest$fgetdelegate(Lorg/telegram/ui/Components/TableLayout;)Lorg/telegram/ui/Components/TableLayout$TableLayoutDelegate;

    move-result-object v2

    invoke-interface {v2}, Lorg/telegram/ui/Components/TableLayout$TableLayoutDelegate;->getLinePaint()Landroid/graphics/Paint;

    move-result-object v6

    .line 257
    iget-object v2, v0, Lorg/telegram/ui/Components/TableLayout$Child;->this$0:Lorg/telegram/ui/Components/TableLayout;

    invoke-static {v2}, Lorg/telegram/ui/Components/TableLayout;->-$$Nest$fgetdelegate(Lorg/telegram/ui/Components/TableLayout;)Lorg/telegram/ui/Components/TableLayout$TableLayoutDelegate;

    move-result-object v2

    invoke-interface {v2}, Lorg/telegram/ui/Components/TableLayout$TableLayoutDelegate;->getLinePaint()Landroid/graphics/Paint;

    move-result-object v11

    .line 258
    invoke-virtual {v6}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float v12, v2, v3

    .line 259
    invoke-virtual {v11}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v2

    div-float v13, v2, v3

    .line 263
    iget v2, v0, Lorg/telegram/ui/Components/TableLayout$Child;->x:I

    if-nez v2, :cond_10

    .line 264
    iget v2, v0, Lorg/telegram/ui/Components/TableLayout$Child;->y:I

    int-to-float v3, v2

    .line 265
    iget v4, v0, Lorg/telegram/ui/Components/TableLayout$Child;->measuredHeight:I

    add-int/2addr v4, v2

    int-to-float v4, v4

    if-nez v2, :cond_e

    int-to-float v2, v9

    add-float/2addr v3, v2

    .line 269
    :cond_e
    iget-object v2, v0, Lorg/telegram/ui/Components/TableLayout$Child;->this$0:Lorg/telegram/ui/Components/TableLayout;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v2, v4, v2

    if-nez v2, :cond_f

    int-to-float v2, v9

    sub-float/2addr v4, v2

    :cond_f
    move v5, v4

    .line 272
    iget v2, v0, Lorg/telegram/ui/Components/TableLayout$Child;->x:I

    int-to-float v4, v2

    add-float/2addr v4, v12

    int-to-float v2, v2

    add-float/2addr v2, v12

    move v15, v4

    move v4, v2

    move v2, v15

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move-object v14, v6

    move-object v6, v11

    goto :goto_7

    :cond_10
    move-object v14, v6

    int-to-float v1, v2

    sub-float/2addr v1, v13

    .line 274
    iget v3, v0, Lorg/telegram/ui/Components/TableLayout$Child;->y:I

    move v4, v3

    int-to-float v3, v4

    int-to-float v2, v2

    sub-float/2addr v2, v13

    iget v5, v0, Lorg/telegram/ui/Components/TableLayout$Child;->measuredHeight:I

    add-int/2addr v4, v5

    int-to-float v5, v4

    move v4, v2

    move-object v6, v11

    move v2, v1

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 276
    :goto_7
    iget v1, v0, Lorg/telegram/ui/Components/TableLayout$Child;->y:I

    if-nez v1, :cond_13

    .line 277
    iget v1, v0, Lorg/telegram/ui/Components/TableLayout$Child;->x:I

    int-to-float v2, v1

    .line 278
    iget v3, v0, Lorg/telegram/ui/Components/TableLayout$Child;->measuredWidth:I

    add-int/2addr v3, v1

    int-to-float v3, v3

    if-nez v1, :cond_11

    int-to-float v1, v9

    add-float/2addr v2, v1

    .line 282
    :cond_11
    iget-object v1, v0, Lorg/telegram/ui/Components/TableLayout$Child;->this$0:Lorg/telegram/ui/Components/TableLayout;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v1, v3, v1

    if-nez v1, :cond_12

    int-to-float v1, v9

    sub-float/2addr v3, v1

    :cond_12
    move v4, v3

    .line 285
    iget v1, v0, Lorg/telegram/ui/Components/TableLayout$Child;->y:I

    int-to-float v3, v1

    add-float/2addr v3, v12

    int-to-float v1, v1

    add-float v5, v1, v12

    move-object/from16 v1, p1

    move-object v6, v14

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_8

    .line 287
    :cond_13
    iget v2, v0, Lorg/telegram/ui/Components/TableLayout$Child;->x:I

    move v3, v2

    int-to-float v2, v3

    int-to-float v4, v1

    sub-float/2addr v4, v13

    iget v5, v0, Lorg/telegram/ui/Components/TableLayout$Child;->measuredWidth:I

    add-int/2addr v3, v5

    int-to-float v3, v3

    int-to-float v1, v1

    sub-float v5, v1, v13

    move v1, v4

    move v4, v3

    move v3, v1

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :goto_8
    if-eqz v7, :cond_14

    .line 290
    iget v1, v0, Lorg/telegram/ui/Components/TableLayout$Child;->y:I

    if-nez v1, :cond_14

    add-int/2addr v1, v9

    int-to-float v1, v1

    :goto_9
    move v3, v1

    goto :goto_a

    .line 293
    :cond_14
    iget v1, v0, Lorg/telegram/ui/Components/TableLayout$Child;->y:I

    int-to-float v1, v1

    sub-float/2addr v1, v12

    goto :goto_9

    :goto_a
    if-eqz v7, :cond_15

    if-eqz v8, :cond_15

    .line 296
    iget v1, v0, Lorg/telegram/ui/Components/TableLayout$Child;->y:I

    iget v2, v0, Lorg/telegram/ui/Components/TableLayout$Child;->measuredHeight:I

    add-int/2addr v1, v2

    sub-int/2addr v1, v9

    int-to-float v1, v1

    :goto_b
    move v5, v1

    goto :goto_c

    .line 298
    :cond_15
    iget v1, v0, Lorg/telegram/ui/Components/TableLayout$Child;->y:I

    iget v2, v0, Lorg/telegram/ui/Components/TableLayout$Child;->measuredHeight:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    sub-float/2addr v1, v12

    goto :goto_b

    .line 300
    :goto_c
    iget v1, v0, Lorg/telegram/ui/Components/TableLayout$Child;->x:I

    iget v2, v0, Lorg/telegram/ui/Components/TableLayout$Child;->measuredWidth:I

    add-int v4, v1, v2

    int-to-float v4, v4

    sub-float/2addr v4, v12

    add-int/2addr v1, v2

    int-to-float v1, v1

    sub-float/2addr v1, v12

    move v2, v4

    move-object v6, v14

    move v4, v1

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 302
    iget v1, v0, Lorg/telegram/ui/Components/TableLayout$Child;->x:I

    if-nez v1, :cond_16

    if-eqz v8, :cond_16

    add-int v2, v1, v9

    int-to-float v2, v2

    goto :goto_d

    :cond_16
    int-to-float v2, v1

    sub-float/2addr v2, v12

    :goto_d
    if-eqz v7, :cond_17

    if-eqz v8, :cond_17

    .line 308
    iget v3, v0, Lorg/telegram/ui/Components/TableLayout$Child;->measuredWidth:I

    add-int/2addr v1, v3

    sub-int/2addr v1, v9

    int-to-float v1, v1

    :goto_e
    move v4, v1

    goto :goto_f

    .line 310
    :cond_17
    iget v3, v0, Lorg/telegram/ui/Components/TableLayout$Child;->measuredWidth:I

    add-int/2addr v1, v3

    int-to-float v1, v1

    sub-float/2addr v1, v12

    goto :goto_e

    .line 312
    :goto_f
    iget v1, v0, Lorg/telegram/ui/Components/TableLayout$Child;->y:I

    iget v3, v0, Lorg/telegram/ui/Components/TableLayout$Child;->measuredHeight:I

    add-int v5, v1, v3

    int-to-float v5, v5

    sub-float/2addr v5, v12

    add-int/2addr v1, v3

    int-to-float v1, v1

    sub-float/2addr v1, v12

    move v3, v5

    move v5, v1

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 314
    iget v1, v0, Lorg/telegram/ui/Components/TableLayout$Child;->x:I

    if-nez v1, :cond_18

    iget v1, v0, Lorg/telegram/ui/Components/TableLayout$Child;->y:I

    if-nez v1, :cond_18

    .line 315
    iget-object v1, v0, Lorg/telegram/ui/Components/TableLayout$Child;->this$0:Lorg/telegram/ui/Components/TableLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/TableLayout;->-$$Nest$fgetrect(Lorg/telegram/ui/Components/TableLayout;)Landroid/graphics/RectF;

    move-result-object v1

    iget v2, v0, Lorg/telegram/ui/Components/TableLayout$Child;->x:I

    int-to-float v3, v2

    add-float/2addr v3, v12

    iget v4, v0, Lorg/telegram/ui/Components/TableLayout$Child;->y:I

    int-to-float v5, v4

    add-float/2addr v5, v12

    int-to-float v2, v2

    add-float/2addr v2, v12

    mul-int/lit8 v11, v9, 0x2

    int-to-float v11, v11

    add-float/2addr v2, v11

    int-to-float v4, v4

    add-float/2addr v4, v12

    add-float/2addr v4, v11

    invoke-virtual {v1, v3, v5, v2, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 316
    iget-object v1, v0, Lorg/telegram/ui/Components/TableLayout$Child;->this$0:Lorg/telegram/ui/Components/TableLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/TableLayout;->-$$Nest$fgetrect(Lorg/telegram/ui/Components/TableLayout;)Landroid/graphics/RectF;

    move-result-object v2

    const/high16 v4, 0x42b40000    # 90.0f

    const/4 v5, 0x0

    const/high16 v3, -0x3ccc0000    # -180.0f

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    :cond_18
    if-eqz v7, :cond_19

    .line 318
    iget v1, v0, Lorg/telegram/ui/Components/TableLayout$Child;->y:I

    if-nez v1, :cond_19

    .line 319
    iget-object v1, v0, Lorg/telegram/ui/Components/TableLayout$Child;->this$0:Lorg/telegram/ui/Components/TableLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/TableLayout;->-$$Nest$fgetrect(Lorg/telegram/ui/Components/TableLayout;)Landroid/graphics/RectF;

    move-result-object v1

    iget v2, v0, Lorg/telegram/ui/Components/TableLayout$Child;->x:I

    iget v3, v0, Lorg/telegram/ui/Components/TableLayout$Child;->measuredWidth:I

    add-int v4, v2, v3

    int-to-float v4, v4

    sub-float/2addr v4, v12

    mul-int/lit8 v5, v9, 0x2

    int-to-float v5, v5

    sub-float/2addr v4, v5

    iget v11, v0, Lorg/telegram/ui/Components/TableLayout$Child;->y:I

    int-to-float v13, v11

    add-float/2addr v13, v12

    add-int/2addr v2, v3

    int-to-float v2, v2

    sub-float/2addr v2, v12

    int-to-float v3, v11

    add-float/2addr v3, v12

    add-float/2addr v3, v5

    invoke-virtual {v1, v4, v13, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 320
    iget-object v1, v0, Lorg/telegram/ui/Components/TableLayout$Child;->this$0:Lorg/telegram/ui/Components/TableLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/TableLayout;->-$$Nest$fgetrect(Lorg/telegram/ui/Components/TableLayout;)Landroid/graphics/RectF;

    move-result-object v2

    const/high16 v4, -0x3d4c0000    # -90.0f

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 322
    :cond_19
    iget v1, v0, Lorg/telegram/ui/Components/TableLayout$Child;->x:I

    if-nez v1, :cond_1a

    if-eqz v8, :cond_1a

    .line 323
    iget-object v1, v0, Lorg/telegram/ui/Components/TableLayout$Child;->this$0:Lorg/telegram/ui/Components/TableLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/TableLayout;->-$$Nest$fgetrect(Lorg/telegram/ui/Components/TableLayout;)Landroid/graphics/RectF;

    move-result-object v1

    iget v2, v0, Lorg/telegram/ui/Components/TableLayout$Child;->x:I

    int-to-float v3, v2

    add-float/2addr v3, v12

    iget v4, v0, Lorg/telegram/ui/Components/TableLayout$Child;->y:I

    iget v5, v0, Lorg/telegram/ui/Components/TableLayout$Child;->measuredHeight:I

    add-int v11, v4, v5

    int-to-float v11, v11

    sub-float/2addr v11, v12

    mul-int/lit8 v13, v9, 0x2

    int-to-float v13, v13

    sub-float/2addr v11, v13

    int-to-float v2, v2

    add-float/2addr v2, v12

    add-float/2addr v2, v13

    add-int/2addr v4, v5

    int-to-float v4, v4

    sub-float/2addr v4, v12

    invoke-virtual {v1, v3, v11, v2, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 324
    iget-object v1, v0, Lorg/telegram/ui/Components/TableLayout$Child;->this$0:Lorg/telegram/ui/Components/TableLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/TableLayout;->-$$Nest$fgetrect(Lorg/telegram/ui/Components/TableLayout;)Landroid/graphics/RectF;

    move-result-object v2

    const/high16 v4, -0x3d4c0000    # -90.0f

    const/4 v5, 0x0

    const/high16 v3, 0x43340000    # 180.0f

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    :cond_1a
    if-eqz v7, :cond_1b

    if-eqz v8, :cond_1b

    .line 327
    iget-object v1, v0, Lorg/telegram/ui/Components/TableLayout$Child;->this$0:Lorg/telegram/ui/Components/TableLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/TableLayout;->-$$Nest$fgetrect(Lorg/telegram/ui/Components/TableLayout;)Landroid/graphics/RectF;

    move-result-object v1

    iget v2, v0, Lorg/telegram/ui/Components/TableLayout$Child;->x:I

    iget v3, v0, Lorg/telegram/ui/Components/TableLayout$Child;->measuredWidth:I

    add-int v4, v2, v3

    int-to-float v4, v4

    sub-float/2addr v4, v12

    mul-int/2addr v9, v10

    int-to-float v5, v9

    sub-float/2addr v4, v5

    iget v7, v0, Lorg/telegram/ui/Components/TableLayout$Child;->y:I

    iget v8, v0, Lorg/telegram/ui/Components/TableLayout$Child;->measuredHeight:I

    add-int v9, v7, v8

    int-to-float v9, v9

    sub-float/2addr v9, v12

    sub-float/2addr v9, v5

    add-int/2addr v2, v3

    int-to-float v2, v2

    sub-float/2addr v2, v12

    add-int/2addr v7, v8

    int-to-float v3, v7

    sub-float/2addr v3, v12

    invoke-virtual {v1, v4, v9, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 328
    iget-object v1, v0, Lorg/telegram/ui/Components/TableLayout$Child;->this$0:Lorg/telegram/ui/Components/TableLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/TableLayout;->-$$Nest$fgetrect(Lorg/telegram/ui/Components/TableLayout;)Landroid/graphics/RectF;

    move-result-object v2

    const/high16 v4, 0x42b40000    # 90.0f

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    :cond_1b
    :goto_10
    return-void
.end method

.method public getLayoutParams()Lorg/telegram/ui/Components/TableLayout$LayoutParams;
    .locals 1

    .line 105
    iget-object v0, p0, Lorg/telegram/ui/Components/TableLayout$Child;->layoutParams:Lorg/telegram/ui/Components/TableLayout$LayoutParams;

    return-object v0
.end method

.method public getMeasuredHeight()I
    .locals 1

    .line 113
    iget v0, p0, Lorg/telegram/ui/Components/TableLayout$Child;->measuredHeight:I

    return v0
.end method

.method public getMeasuredWidth()I
    .locals 1

    .line 109
    iget v0, p0, Lorg/telegram/ui/Components/TableLayout$Child;->measuredWidth:I

    return v0
.end method

.method public getRow()I
    .locals 1

    .line 338
    iget v0, p0, Lorg/telegram/ui/Components/TableLayout$Child;->rowspan:I

    add-int/lit8 v0, v0, 0xa

    return v0
.end method

.method public getTextX()I
    .locals 2

    .line 179
    iget v0, p0, Lorg/telegram/ui/Components/TableLayout$Child;->x:I

    iget v1, p0, Lorg/telegram/ui/Components/TableLayout$Child;->textX:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getTextY()I
    .locals 2

    .line 183
    iget v0, p0, Lorg/telegram/ui/Components/TableLayout$Child;->y:I

    iget v1, p0, Lorg/telegram/ui/Components/TableLayout$Child;->textY:I

    add-int/2addr v0, v1

    return v0
.end method

.method public layout(IIII)V
    .locals 0

    .line 174
    iput p1, p0, Lorg/telegram/ui/Components/TableLayout$Child;->x:I

    .line 175
    iput p2, p0, Lorg/telegram/ui/Components/TableLayout$Child;->y:I

    return-void
.end method

.method public measure(IIZ)V
    .locals 1

    .line 117
    iput p1, p0, Lorg/telegram/ui/Components/TableLayout$Child;->measuredWidth:I

    .line 118
    iput p2, p0, Lorg/telegram/ui/Components/TableLayout$Child;->measuredHeight:I

    if-eqz p3, :cond_0

    .line 120
    iput p2, p0, Lorg/telegram/ui/Components/TableLayout$Child;->fixedHeight:I

    .line 122
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/TableLayout$Child;->cell:Lorg/telegram/tgnet/TLRPC$TL_pageTableCell;

    if-eqz p1, :cond_8

    .line 123
    iget-boolean v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageTableCell;->valign_middle:Z

    if-eqz v0, :cond_1

    .line 124
    iget p1, p0, Lorg/telegram/ui/Components/TableLayout$Child;->textHeight:I

    sub-int/2addr p2, p1

    div-int/lit8 p2, p2, 0x2

    iput p2, p0, Lorg/telegram/ui/Components/TableLayout$Child;->textY:I

    goto :goto_0

    .line 125
    :cond_1
    iget-boolean p1, p1, Lorg/telegram/tgnet/TLRPC$TL_pageTableCell;->valign_bottom:Z

    if-eqz p1, :cond_2

    .line 126
    iget p1, p0, Lorg/telegram/ui/Components/TableLayout$Child;->textHeight:I

    sub-int/2addr p2, p1

    iget-object p1, p0, Lorg/telegram/ui/Components/TableLayout$Child;->this$0:Lorg/telegram/ui/Components/TableLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/TableLayout;->-$$Nest$fgetitemPaddingTop(Lorg/telegram/ui/Components/TableLayout;)I

    move-result p1

    sub-int/2addr p2, p1

    iput p2, p0, Lorg/telegram/ui/Components/TableLayout$Child;->textY:I

    goto :goto_0

    .line 128
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Components/TableLayout$Child;->this$0:Lorg/telegram/ui/Components/TableLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/TableLayout;->-$$Nest$fgetitemPaddingTop(Lorg/telegram/ui/Components/TableLayout;)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/TableLayout$Child;->textY:I

    .line 131
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Components/TableLayout$Child;->textLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    if-eqz p1, :cond_8

    .line 132
    invoke-virtual {p1}, Lorg/telegram/ui/ArticleViewer$DrawingText;->getLineCount()I

    move-result p1

    if-nez p3, :cond_4

    const/4 p2, 0x1

    if-gt p1, p2, :cond_3

    if-lez p1, :cond_4

    .line 133
    iget-object p1, p0, Lorg/telegram/ui/Components/TableLayout$Child;->cell:Lorg/telegram/tgnet/TLRPC$TL_pageTableCell;

    iget-boolean p2, p1, Lorg/telegram/tgnet/TLRPC$TL_pageTableCell;->align_center:Z

    if-nez p2, :cond_3

    iget-boolean p1, p1, Lorg/telegram/tgnet/TLRPC$TL_pageTableCell;->align_right:Z

    if-eqz p1, :cond_4

    .line 134
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Components/TableLayout$Child;->this$0:Lorg/telegram/ui/Components/TableLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/TableLayout;->-$$Nest$fgetdelegate(Lorg/telegram/ui/Components/TableLayout;)Lorg/telegram/ui/Components/TableLayout$TableLayoutDelegate;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/Components/TableLayout$Child;->cell:Lorg/telegram/tgnet/TLRPC$TL_pageTableCell;

    iget p3, p0, Lorg/telegram/ui/Components/TableLayout$Child;->measuredWidth:I

    iget-object v0, p0, Lorg/telegram/ui/Components/TableLayout$Child;->this$0:Lorg/telegram/ui/Components/TableLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/TableLayout;->-$$Nest$fgetitemPaddingLeft(Lorg/telegram/ui/Components/TableLayout;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    sub-int/2addr p3, v0

    invoke-interface {p1, p2, p3}, Lorg/telegram/ui/Components/TableLayout$TableLayoutDelegate;->createTextLayout(Lorg/telegram/tgnet/TLRPC$TL_pageTableCell;I)Lorg/telegram/ui/ArticleViewer$DrawingText;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/TableLayout$Child;->setTextLayout(Lorg/telegram/ui/ArticleViewer$DrawingText;)V

    .line 135
    iget p1, p0, Lorg/telegram/ui/Components/TableLayout$Child;->textHeight:I

    iget-object p2, p0, Lorg/telegram/ui/Components/TableLayout$Child;->this$0:Lorg/telegram/ui/Components/TableLayout;

    invoke-static {p2}, Lorg/telegram/ui/Components/TableLayout;->-$$Nest$fgetitemPaddingTop(Lorg/telegram/ui/Components/TableLayout;)I

    move-result p2

    mul-int/lit8 p2, p2, 0x2

    add-int/2addr p1, p2

    iput p1, p0, Lorg/telegram/ui/Components/TableLayout$Child;->fixedHeight:I

    .line 138
    :cond_4
    iget p1, p0, Lorg/telegram/ui/Components/TableLayout$Child;->textLeft:I

    if-eqz p1, :cond_7

    neg-int p1, p1

    .line 139
    iput p1, p0, Lorg/telegram/ui/Components/TableLayout$Child;->textX:I

    .line 140
    iget-object p2, p0, Lorg/telegram/ui/Components/TableLayout$Child;->cell:Lorg/telegram/tgnet/TLRPC$TL_pageTableCell;

    iget-boolean p3, p2, Lorg/telegram/tgnet/TLRPC$TL_pageTableCell;->align_right:Z

    if-eqz p3, :cond_5

    .line 141
    iget p2, p0, Lorg/telegram/ui/Components/TableLayout$Child;->measuredWidth:I

    iget p3, p0, Lorg/telegram/ui/Components/TableLayout$Child;->textWidth:I

    sub-int/2addr p2, p3

    iget-object p3, p0, Lorg/telegram/ui/Components/TableLayout$Child;->this$0:Lorg/telegram/ui/Components/TableLayout;

    invoke-static {p3}, Lorg/telegram/ui/Components/TableLayout;->-$$Nest$fgetitemPaddingLeft(Lorg/telegram/ui/Components/TableLayout;)I

    move-result p3

    sub-int/2addr p2, p3

    add-int/2addr p1, p2

    iput p1, p0, Lorg/telegram/ui/Components/TableLayout$Child;->textX:I

    return-void

    .line 142
    :cond_5
    iget-boolean p2, p2, Lorg/telegram/tgnet/TLRPC$TL_pageTableCell;->align_center:Z

    if-eqz p2, :cond_6

    .line 143
    iget p2, p0, Lorg/telegram/ui/Components/TableLayout$Child;->measuredWidth:I

    iget p3, p0, Lorg/telegram/ui/Components/TableLayout$Child;->textWidth:I

    sub-int/2addr p2, p3

    div-int/lit8 p2, p2, 0x2

    int-to-float p2, p2

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    add-int/2addr p1, p2

    iput p1, p0, Lorg/telegram/ui/Components/TableLayout$Child;->textX:I

    return-void

    .line 145
    :cond_6
    iget-object p2, p0, Lorg/telegram/ui/Components/TableLayout$Child;->this$0:Lorg/telegram/ui/Components/TableLayout;

    invoke-static {p2}, Lorg/telegram/ui/Components/TableLayout;->-$$Nest$fgetitemPaddingLeft(Lorg/telegram/ui/Components/TableLayout;)I

    move-result p2

    add-int/2addr p1, p2

    iput p1, p0, Lorg/telegram/ui/Components/TableLayout$Child;->textX:I

    return-void

    .line 148
    :cond_7
    iget-object p1, p0, Lorg/telegram/ui/Components/TableLayout$Child;->this$0:Lorg/telegram/ui/Components/TableLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/TableLayout;->-$$Nest$fgetitemPaddingLeft(Lorg/telegram/ui/Components/TableLayout;)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/TableLayout$Child;->textX:I

    :cond_8
    return-void
.end method

.method public setFixedHeight(I)V
    .locals 2

    .line 187
    iget p1, p0, Lorg/telegram/ui/Components/TableLayout$Child;->fixedHeight:I

    iput p1, p0, Lorg/telegram/ui/Components/TableLayout$Child;->measuredHeight:I

    .line 188
    iget-object v0, p0, Lorg/telegram/ui/Components/TableLayout$Child;->cell:Lorg/telegram/tgnet/TLRPC$TL_pageTableCell;

    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_pageTableCell;->valign_middle:Z

    if-eqz v1, :cond_0

    .line 189
    iget v0, p0, Lorg/telegram/ui/Components/TableLayout$Child;->textHeight:I

    sub-int/2addr p1, v0

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lorg/telegram/ui/Components/TableLayout$Child;->textY:I

    return-void

    .line 190
    :cond_0
    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_pageTableCell;->valign_bottom:Z

    if-eqz v0, :cond_1

    .line 191
    iget v0, p0, Lorg/telegram/ui/Components/TableLayout$Child;->textHeight:I

    sub-int/2addr p1, v0

    iget-object v0, p0, Lorg/telegram/ui/Components/TableLayout$Child;->this$0:Lorg/telegram/ui/Components/TableLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/TableLayout;->-$$Nest$fgetitemPaddingTop(Lorg/telegram/ui/Components/TableLayout;)I

    move-result v0

    sub-int/2addr p1, v0

    iput p1, p0, Lorg/telegram/ui/Components/TableLayout$Child;->textY:I

    :cond_1
    return-void
.end method

.method public setSelectionIndex(I)V
    .locals 0

    .line 334
    iput p1, p0, Lorg/telegram/ui/Components/TableLayout$Child;->selectionIndex:I

    return-void
.end method

.method public setTextLayout(Lorg/telegram/ui/ArticleViewer$DrawingText;)V
    .locals 6

    .line 155
    iput-object p1, p0, Lorg/telegram/ui/Components/TableLayout$Child;->textLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 158
    iput v0, p0, Lorg/telegram/ui/Components/TableLayout$Child;->textWidth:I

    .line 159
    iput v0, p0, Lorg/telegram/ui/Components/TableLayout$Child;->textLeft:I

    .line 160
    invoke-virtual {p1}, Lorg/telegram/ui/ArticleViewer$DrawingText;->getLineCount()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_1

    .line 161
    invoke-virtual {p1, v0}, Lorg/telegram/ui/ArticleViewer$DrawingText;->getLineLeft(I)F

    move-result v2

    if-nez v0, :cond_0

    float-to-double v2, v2

    .line 162
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    goto :goto_1

    :cond_0
    iget v3, p0, Lorg/telegram/ui/Components/TableLayout$Child;->textLeft:I

    float-to-double v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v2, v4

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    :goto_1
    iput v2, p0, Lorg/telegram/ui/Components/TableLayout$Child;->textLeft:I

    .line 163
    invoke-virtual {p1, v0}, Lorg/telegram/ui/ArticleViewer$DrawingText;->getLineWidth(I)F

    move-result v2

    iget v3, p0, Lorg/telegram/ui/Components/TableLayout$Child;->textWidth:I

    int-to-float v3, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    iput v2, p0, Lorg/telegram/ui/Components/TableLayout$Child;->textWidth:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 165
    :cond_1
    invoke-virtual {p1}, Lorg/telegram/ui/ArticleViewer$DrawingText;->getHeight()I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/TableLayout$Child;->textHeight:I

    return-void

    .line 167
    :cond_2
    iput v0, p0, Lorg/telegram/ui/Components/TableLayout$Child;->textLeft:I

    .line 168
    iput v0, p0, Lorg/telegram/ui/Components/TableLayout$Child;->textWidth:I

    .line 169
    iput v0, p0, Lorg/telegram/ui/Components/TableLayout$Child;->textHeight:I

    return-void
.end method
