.class Lorg/telegram/ui/Cells/ChatMessageCell$6;
.super Lorg/telegram/ui/Cells/ChatMessageCell$MaskDrawable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Cells/ChatMessageCell;->createSelectorDrawable(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

.field final synthetic val$num:I


# direct methods
.method constructor <init>(Lorg/telegram/ui/Cells/ChatMessageCell;I)V
    .locals 0

    .line 12517
    iput-object p1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$6;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    iput p2, p0, Lorg/telegram/ui/Cells/ChatMessageCell$6;->val$num:I

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Cells/ChatMessageCell$MaskDrawable;-><init>(Lorg/telegram/ui/Cells/ChatMessageCell-IA;)V

    return-void
.end method


# virtual methods
.method public updatePath()V
    .locals 14

    .line 12521
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 12522
    iget-object v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$MaskDrawable;->rect:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iput v2, p0, Lorg/telegram/ui/Cells/ChatMessageCell$MaskDrawable;->pathX:I

    int-to-float v2, v2

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iput v3, p0, Lorg/telegram/ui/Cells/ChatMessageCell$MaskDrawable;->pathY:I

    int-to-float v3, v3

    iget v4, v0, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 12523
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$MaskDrawable;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    .line 12524
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$6;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetselectorDrawableMaskType(Lorg/telegram/ui/Cells/ChatMessageCell;)[I

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$6;->val$num:I

    aget v0, v0, v1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_10

    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$6;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetselectorDrawableMaskType(Lorg/telegram/ui/Cells/ChatMessageCell;)[I

    move-result-object v0

    iget v2, p0, Lorg/telegram/ui/Cells/ChatMessageCell$6;->val$num:I

    aget v0, v0, v2

    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    goto/16 :goto_8

    .line 12526
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$6;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetselectorDrawableMaskType(Lorg/telegram/ui/Cells/ChatMessageCell;)[I

    move-result-object v0

    iget v3, p0, Lorg/telegram/ui/Cells/ChatMessageCell$6;->val$num:I

    aget v0, v0, v3

    const/4 v3, 0x0

    const/high16 v4, 0x40c00000    # 6.0f

    const/4 v5, 0x2

    if-ne v0, v5, :cond_e

    .line 12527
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$6;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetcurrentMessageObject(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    const/4 v6, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$6;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetcurrentMessageObject(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v6

    :goto_0
    move v7, v6

    :goto_1
    const/4 v8, 0x5

    if-ge v7, v2, :cond_b

    .line 12529
    iget-object v9, p0, Lorg/telegram/ui/Cells/ChatMessageCell$6;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v9}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetinstantTextNewLine(Lorg/telegram/ui/Cells/ChatMessageCell;)Z

    move-result v9

    if-nez v9, :cond_a

    if-eqz v0, :cond_2

    move v9, v1

    goto :goto_2

    :cond_2
    move v9, v5

    :goto_2
    if-ne v7, v9, :cond_3

    .line 12531
    invoke-static {}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$sfgetradii()[F

    move-result-object v8

    mul-int/lit8 v9, v7, 0x2

    invoke-static {}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$sfgetradii()[F

    move-result-object v10

    add-int/lit8 v11, v9, 0x1

    sget v12, Lorg/telegram/messenger/SharedConfig;->bubbleRadius:I

    int-to-float v12, v12

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    int-to-float v12, v12

    aput v12, v10, v11

    aput v12, v8, v9

    goto/16 :goto_6

    .line 12534
    :cond_3
    iget-object v9, p0, Lorg/telegram/ui/Cells/ChatMessageCell$6;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v9}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetmediaBackground(Lorg/telegram/ui/Cells/ChatMessageCell;)Z

    move-result v9

    if-eqz v9, :cond_4

    iget-object v9, p0, Lorg/telegram/ui/Cells/ChatMessageCell$6;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v9}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetcurrentPosition(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    move-result-object v9

    if-eqz v9, :cond_5

    :cond_4
    iget-object v9, p0, Lorg/telegram/ui/Cells/ChatMessageCell$6;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    iget-boolean v9, v9, Lorg/telegram/ui/Cells/ChatMessageCell;->drawPinnedBottom:Z

    if-eqz v9, :cond_8

    :cond_5
    if-eq v7, v5, :cond_6

    if-ne v7, v1, :cond_8

    .line 12535
    :cond_6
    invoke-static {}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$sfgetradii()[F

    move-result-object v9

    mul-int/lit8 v10, v7, 0x2

    invoke-static {}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$sfgetradii()[F

    move-result-object v11

    add-int/lit8 v12, v10, 0x1

    iget-object v13, p0, Lorg/telegram/ui/Cells/ChatMessageCell$6;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    iget-boolean v13, v13, Lorg/telegram/ui/Cells/ChatMessageCell;->pinnedBottom:Z

    if-eqz v13, :cond_7

    sget v13, Lorg/telegram/messenger/SharedConfig;->bubbleRadius:I

    invoke-static {v8, v13}, Ljava/lang/Math;->min(II)I

    move-result v8

    :goto_3
    int-to-float v8, v8

    goto :goto_4

    :cond_7
    sget v8, Lorg/telegram/messenger/SharedConfig;->bubbleRadius:I

    goto :goto_3

    :goto_4
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    int-to-float v8, v8

    aput v8, v11, v12

    aput v8, v9, v10

    goto :goto_6

    .line 12538
    :cond_8
    sget-boolean v8, Lcom/exteragram/messenger/ExteraConfig;->removeMessageTail:Z

    if-eqz v8, :cond_a

    if-eqz v0, :cond_9

    move v8, v5

    goto :goto_5

    :cond_9
    move v8, v1

    :goto_5
    if-ne v7, v8, :cond_a

    .line 12539
    invoke-static {}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$sfgetradii()[F

    move-result-object v8

    mul-int/lit8 v9, v7, 0x2

    invoke-static {}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$sfgetradii()[F

    move-result-object v10

    add-int/lit8 v11, v9, 0x1

    sget v12, Lorg/telegram/messenger/SharedConfig;->bubbleRadius:I

    int-to-float v12, v12

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    int-to-float v12, v12

    aput v12, v10, v11

    aput v12, v8, v9

    goto :goto_6

    .line 12543
    :cond_a
    invoke-static {}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$sfgetradii()[F

    move-result-object v8

    mul-int/lit8 v9, v7, 0x2

    invoke-static {}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$sfgetradii()[F

    move-result-object v10

    add-int/lit8 v11, v9, 0x1

    aput v3, v10, v11

    aput v3, v8, v9

    :goto_6
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    .line 12545
    :cond_b
    sget-boolean v1, Lcom/exteragram/messenger/ExteraConfig;->removeMessageTail:Z

    if-nez v1, :cond_d

    if-nez v0, :cond_d

    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$6;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    iget-boolean v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell;->drawPinnedBottom:Z

    if-nez v1, :cond_d

    invoke-static {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetcurrentPosition(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    move-result-object v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$6;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetcurrentPosition(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    move-result-object v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$6;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetpollInstantViewTouchesBottom(Lorg/telegram/ui/Cells/ChatMessageCell;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 12546
    :cond_c
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$MaskDrawable;->path:Landroid/graphics/Path;

    iget-object v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$MaskDrawable;->rect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v1, v5

    iget-object v5, p0, Lorg/telegram/ui/Cells/ChatMessageCell$MaskDrawable;->rect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0, v1, v5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 12547
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$MaskDrawable;->path:Landroid/graphics/Path;

    iget-object v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$MaskDrawable;->rect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v1, v5

    iget-object v5, p0, Lorg/telegram/ui/Cells/ChatMessageCell$MaskDrawable;->rect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v5, v7

    const/high16 v7, 0x40a00000    # 5.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v5, v7

    invoke-virtual {v0, v1, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 12548
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    iget-object v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$MaskDrawable;->rect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    const/high16 v5, -0x3f200000    # -7.0f

    .line 12549
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v1, v5

    iget-object v5, p0, Lorg/telegram/ui/Cells/ChatMessageCell$MaskDrawable;->rect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    const/high16 v7, 0x41b80000    # 23.0f

    .line 12550
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v5, v7

    iget-object v7, p0, Lorg/telegram/ui/Cells/ChatMessageCell$MaskDrawable;->rect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->left:F

    .line 12551
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v7, v4

    iget-object v4, p0, Lorg/telegram/ui/Cells/ChatMessageCell$MaskDrawable;->rect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    .line 12548
    invoke-virtual {v0, v1, v5, v7, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 12554
    iget-object v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$MaskDrawable;->path:Landroid/graphics/Path;

    const/high16 v4, 0x42a60000    # 83.0f

    invoke-virtual {v1, v0, v3, v4, v6}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 12555
    iget-object v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$MaskDrawable;->rect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    invoke-static {}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$sfgetradii()[F

    move-result-object v3

    aget v2, v3, v2

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    iget-object v2, p0, Lorg/telegram/ui/Cells/ChatMessageCell$MaskDrawable;->rect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    invoke-static {}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$sfgetradii()[F

    move-result-object v4

    aget v4, v4, v8

    mul-float/2addr v4, v3

    sub-float/2addr v2, v4

    iget-object v3, p0, Lorg/telegram/ui/Cells/ChatMessageCell$MaskDrawable;->rect:Landroid/graphics/RectF;

    iget v4, v3, Landroid/graphics/RectF;->right:F

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 12556
    iget-object v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$MaskDrawable;->path:Landroid/graphics/Path;

    const/high16 v2, 0x42b40000    # 90.0f

    const/high16 v3, -0x3d4c0000    # -90.0f

    invoke-virtual {v1, v0, v2, v3, v6}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 12557
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$MaskDrawable;->path:Landroid/graphics/Path;

    iget-object v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$MaskDrawable;->rect:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->right:F

    iget v1, v1, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 12558
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$MaskDrawable;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    goto :goto_7

    .line 12560
    :cond_d
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$MaskDrawable;->path:Landroid/graphics/Path;

    iget-object v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$MaskDrawable;->rect:Landroid/graphics/RectF;

    invoke-static {}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$sfgetradii()[F

    move-result-object v2

    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 12562
    :goto_7
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$MaskDrawable;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    return-void

    .line 12564
    :cond_e
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$6;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetselectorDrawableMaskType(Lorg/telegram/ui/Cells/ChatMessageCell;)[I

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$6;->val$num:I

    aget v0, v0, v1

    if-nez v0, :cond_f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v3, v0

    .line 12565
    :cond_f
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$MaskDrawable;->path:Landroid/graphics/Path;

    iget-object v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$MaskDrawable;->rect:Landroid/graphics/RectF;

    sget-object v2, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v3, v3, v2}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    return-void

    .line 12525
    :cond_10
    :goto_8
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$MaskDrawable;->path:Landroid/graphics/Path;

    iget-object v2, p0, Lorg/telegram/ui/Cells/ChatMessageCell$MaskDrawable;->rect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/Cells/ChatMessageCell$MaskDrawable;->rect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/Cells/ChatMessageCell$6;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetselectorDrawableMaskType(Lorg/telegram/ui/Cells/ChatMessageCell;)[I

    move-result-object v4

    iget v5, p0, Lorg/telegram/ui/Cells/ChatMessageCell$6;->val$num:I

    aget v4, v4, v5

    if-ne v4, v1, :cond_11

    const/high16 v1, 0x41800000    # 16.0f

    goto :goto_9

    :cond_11
    const/high16 v1, 0x41a00000    # 20.0f

    :goto_9
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v2, v3, v1, v4}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    return-void
.end method
