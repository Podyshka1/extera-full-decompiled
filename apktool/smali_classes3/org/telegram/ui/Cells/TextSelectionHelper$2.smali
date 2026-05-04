.class Lorg/telegram/ui/Cells/TextSelectionHelper$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Cells/TextSelectionHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Cells/TextSelectionHelper;)V
    .locals 0

    .line 191
    iput-object p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$2;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .line 195
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$2;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    iget-object v6, v0, Lorg/telegram/ui/Cells/TextSelectionHelper;->maybeSelectedView:Lorg/telegram/ui/Cells/TextSelectionHelper$SelectableView;

    if-eqz v6, :cond_11

    iget-object v1, v0, Lorg/telegram/ui/Cells/TextSelectionHelper;->textSelectionOverlay:Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;

    if-nez v1, :cond_0

    goto/16 :goto_5

    .line 199
    :cond_0
    iget-object v8, v0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectedView:Lorg/telegram/ui/Cells/TextSelectionHelper$SelectableView;

    const/4 v9, 0x1

    .line 201
    invoke-virtual {v0, v6, v9}, Lorg/telegram/ui/Cells/TextSelectionHelper;->getText(Lorg/telegram/ui/Cells/TextSelectionHelper$SelectableView;Z)Ljava/lang/CharSequence;

    move-result-object v0

    .line 202
    iget-object v1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$2;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    iget-object v1, v1, Lorg/telegram/ui/Cells/TextSelectionHelper;->parentRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v10, 0x0

    if-eqz v1, :cond_1

    .line 203
    invoke-virtual {v1, v10}, Lorg/telegram/ui/Components/RecyclerListView;->cancelClickRunnables(Z)V

    .line 206
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$2;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    iget v2, v1, Lorg/telegram/ui/Cells/TextSelectionHelper;->capturedX:I

    .line 207
    iget v3, v1, Lorg/telegram/ui/Cells/TextSelectionHelper;->capturedY:I

    .line 208
    iget-object v1, v1, Lorg/telegram/ui/Cells/TextSelectionHelper;->textArea:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    .line 209
    iget-object v1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$2;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    iget-object v1, v1, Lorg/telegram/ui/Cells/TextSelectionHelper;->textArea:Landroid/graphics/Rect;

    iget v4, v1, Landroid/graphics/Rect;->right:I

    if-le v2, v4, :cond_2

    add-int/lit8 v2, v4, -0x1

    .line 210
    :cond_2
    iget v4, v1, Landroid/graphics/Rect;->left:I

    if-ge v2, v4, :cond_3

    add-int/2addr v4, v9

    move v2, v4

    .line 211
    :cond_3
    iget v4, v1, Landroid/graphics/Rect;->top:I

    if-ge v3, v4, :cond_4

    add-int/lit8 v3, v4, 0x1

    .line 212
    :cond_4
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    if-le v3, v1, :cond_5

    add-int/lit8 v3, v1, -0x1

    .line 215
    :cond_5
    iget-object v1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$2;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    iget v4, v1, Lorg/telegram/ui/Cells/TextSelectionHelper;->maybeTextX:I

    iget v5, v1, Lorg/telegram/ui/Cells/TextSelectionHelper;->maybeTextY:I

    const/4 v7, 0x1

    invoke-virtual/range {v1 .. v7}, Lorg/telegram/ui/Cells/TextSelectionHelper;->getCharOffsetFromCord(IIIILorg/telegram/ui/Cells/TextSelectionHelper$SelectableView;Z)I

    move-result v1

    .line 216
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lt v1, v3, :cond_7

    .line 217
    iget-object v3, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$2;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    iget-object v4, v3, Lorg/telegram/ui/Cells/TextSelectionHelper;->layoutBlock:Lorg/telegram/ui/Cells/TextSelectionHelper$LayoutBlock;

    invoke-virtual {v3, v1, v4, v9}, Lorg/telegram/ui/Cells/TextSelectionHelper;->fillLayoutForOffset(ILorg/telegram/ui/Cells/TextSelectionHelper$LayoutBlock;Z)V

    .line 218
    iget-object v3, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$2;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    iget-object v4, v3, Lorg/telegram/ui/Cells/TextSelectionHelper;->layoutBlock:Lorg/telegram/ui/Cells/TextSelectionHelper$LayoutBlock;

    iget-object v4, v4, Lorg/telegram/ui/Cells/TextSelectionHelper$LayoutBlock;->layout:Landroid/text/Layout;

    if-nez v4, :cond_6

    const/4 v0, -0x1

    .line 219
    iput v0, v3, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionEnd:I

    iput v0, v3, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionStart:I

    return-void

    .line 222
    :cond_6
    invoke-virtual {v4}, Landroid/text/Layout;->getLineCount()I

    move-result v3

    sub-int/2addr v3, v9

    .line 223
    iget-object v4, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$2;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    iget v5, v4, Lorg/telegram/ui/Cells/TextSelectionHelper;->maybeTextX:I

    sub-int/2addr v2, v5

    int-to-float v2, v2

    .line 224
    iget-object v4, v4, Lorg/telegram/ui/Cells/TextSelectionHelper;->layoutBlock:Lorg/telegram/ui/Cells/TextSelectionHelper$LayoutBlock;

    iget-object v4, v4, Lorg/telegram/ui/Cells/TextSelectionHelper$LayoutBlock;->layout:Landroid/text/Layout;

    invoke-virtual {v4, v3}, Landroid/text/Layout;->getLineRight(I)F

    move-result v4

    const/high16 v5, 0x40800000    # 4.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    cmpg-float v4, v2, v4

    if-gez v4, :cond_7

    iget-object v4, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$2;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    iget-object v4, v4, Lorg/telegram/ui/Cells/TextSelectionHelper;->layoutBlock:Lorg/telegram/ui/Cells/TextSelectionHelper$LayoutBlock;

    iget-object v4, v4, Lorg/telegram/ui/Cells/TextSelectionHelper$LayoutBlock;->layout:Landroid/text/Layout;

    invoke-virtual {v4, v3}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_7

    .line 225
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    sub-int/2addr v1, v9

    :cond_7
    if-ltz v1, :cond_10

    .line 228
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v1, v2, :cond_10

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v3, 0xa

    if-eq v2, v3, :cond_10

    .line 229
    iget-object v2, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$2;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    iget v3, v2, Lorg/telegram/ui/Cells/TextSelectionHelper;->maybeTextX:I

    .line 230
    iget v4, v2, Lorg/telegram/ui/Cells/TextSelectionHelper;->maybeTextY:I

    .line 231
    invoke-virtual {v2}, Lorg/telegram/ui/Cells/TextSelectionHelper;->clear()V

    .line 232
    iget-object v2, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$2;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    iget-object v2, v2, Lorg/telegram/ui/Cells/TextSelectionHelper;->textSelectionOverlay:Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;

    invoke-virtual {v2, v10}, Landroid/view/View;->setVisibility(I)V

    .line 233
    iget-object v2, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$2;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    invoke-virtual {v2, v6, v8}, Lorg/telegram/ui/Cells/TextSelectionHelper;->onTextSelected(Lorg/telegram/ui/Cells/TextSelectionHelper$SelectableView;Lorg/telegram/ui/Cells/TextSelectionHelper$SelectableView;)V

    .line 234
    iget-object v2, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$2;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    iput v1, v2, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionStart:I

    .line 235
    iput v1, v2, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionEnd:I

    .line 237
    instance-of v2, v0, Landroid/text/Spanned;

    if-eqz v2, :cond_b

    .line 239
    move-object v2, v0

    check-cast v2, Landroid/text/Spanned;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v5

    const-class v7, Lorg/telegram/messenger/Emoji$EmojiSpan;

    invoke-interface {v2, v10, v5, v7}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lorg/telegram/messenger/Emoji$EmojiSpan;

    .line 240
    array-length v7, v5

    move v11, v10

    :goto_0
    if-ge v11, v7, :cond_9

    aget-object v12, v5, v11

    .line 241
    invoke-interface {v2, v12}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v13

    .line 242
    invoke-interface {v2, v12}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v12

    if-lt v1, v13, :cond_8

    if-gt v1, v12, :cond_8

    .line 244
    iget-object v1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$2;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    iput v13, v1, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionStart:I

    .line 245
    iput v12, v1, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionEnd:I

    goto :goto_2

    :cond_8
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 251
    :cond_9
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v5

    const-class v7, Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    invoke-interface {v2, v10, v5, v7}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    .line 252
    array-length v7, v5

    move v11, v10

    :goto_1
    if-ge v11, v7, :cond_b

    aget-object v12, v5, v11

    .line 253
    invoke-interface {v2, v12}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v13

    .line 254
    invoke-interface {v2, v12}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v12

    if-lt v1, v13, :cond_a

    if-gt v1, v12, :cond_a

    .line 256
    iget-object v1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$2;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    iput v13, v1, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionStart:I

    .line 257
    iput v12, v1, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionEnd:I

    goto :goto_2

    :cond_a
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 264
    :cond_b
    :goto_2
    iget-object v1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$2;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    iget v2, v1, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionStart:I

    iget v1, v1, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionEnd:I

    if-ne v2, v1, :cond_d

    .line 265
    :goto_3
    iget-object v1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$2;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    iget v1, v1, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionStart:I

    if-lez v1, :cond_c

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lorg/telegram/ui/Cells/TextSelectionHelper;->isInterruptedCharacter(C)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 266
    iget-object v1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$2;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    iget v2, v1, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionStart:I

    sub-int/2addr v2, v9

    iput v2, v1, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionStart:I

    goto :goto_3

    .line 269
    :cond_c
    :goto_4
    iget-object v1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$2;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    iget v1, v1, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionEnd:I

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v1, v2, :cond_d

    iget-object v1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$2;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    iget v1, v1, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionEnd:I

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lorg/telegram/ui/Cells/TextSelectionHelper;->isInterruptedCharacter(C)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 270
    iget-object v1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$2;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    iget v2, v1, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionEnd:I

    add-int/2addr v2, v9

    iput v2, v1, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionEnd:I

    goto :goto_4

    .line 274
    :cond_d
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$2;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    iput v3, v0, Lorg/telegram/ui/Cells/TextSelectionHelper;->textX:I

    .line 275
    iput v4, v0, Lorg/telegram/ui/Cells/TextSelectionHelper;->textY:I

    .line 277
    iput-object v6, v0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectedView:Lorg/telegram/ui/Cells/TextSelectionHelper$SelectableView;

    .line 279
    :try_start_0
    iget-object v0, v0, Lorg/telegram/ui/Cells/TextSelectionHelper;->textSelectionOverlay:Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;

    invoke-static {v10}, Lcom/exteragram/messenger/utils/system/VibratorUtils;->getType(I)I

    move-result v1

    invoke-virtual {v0, v1, v9}, Landroid/view/View;->performHapticFeedback(II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 281
    :catch_0
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$2;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    invoke-static {v0}, Lorg/telegram/ui/Cells/TextSelectionHelper;->-$$Nest$fgetshowActionsRunnable(Lorg/telegram/ui/Cells/TextSelectionHelper;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 282
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$2;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    invoke-static {v0}, Lorg/telegram/ui/Cells/TextSelectionHelper;->-$$Nest$fgetshowActionsRunnable(Lorg/telegram/ui/Cells/TextSelectionHelper;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 283
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$2;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/TextSelectionHelper;->showHandleViews()V

    .line 284
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$2;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/TextSelectionHelper;->invalidate()V

    if-eqz v8, :cond_e

    .line 287
    invoke-interface {v8}, Lorg/telegram/ui/Cells/TextSelectionHelper$SelectableView;->invalidate()V

    .line 290
    :cond_e
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$2;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    invoke-static {v0}, Lorg/telegram/ui/Cells/TextSelectionHelper;->-$$Nest$fgetcallback(Lorg/telegram/ui/Cells/TextSelectionHelper;)Lorg/telegram/ui/Cells/TextSelectionHelper$Callback;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 291
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$2;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    invoke-static {v0}, Lorg/telegram/ui/Cells/TextSelectionHelper;->-$$Nest$fgetcallback(Lorg/telegram/ui/Cells/TextSelectionHelper;)Lorg/telegram/ui/Cells/TextSelectionHelper$Callback;

    move-result-object v0

    invoke-virtual {v0, v9}, Lorg/telegram/ui/Cells/TextSelectionHelper$Callback;->onStateChanged(Z)V

    .line 294
    :cond_f
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$2;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    iput-boolean v9, v0, Lorg/telegram/ui/Cells/TextSelectionHelper;->movingHandle:Z

    .line 295
    iput-boolean v9, v0, Lorg/telegram/ui/Cells/TextSelectionHelper;->movingDirectionSettling:Z

    .line 296
    invoke-static {v0, v9}, Lorg/telegram/ui/Cells/TextSelectionHelper;->-$$Nest$fputisOneTouch(Lorg/telegram/ui/Cells/TextSelectionHelper;Z)V

    .line 297
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$2;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    const/4 v1, 0x0

    iput v1, v0, Lorg/telegram/ui/Cells/TextSelectionHelper;->movingOffsetY:F

    .line 298
    iput v1, v0, Lorg/telegram/ui/Cells/TextSelectionHelper;->movingOffsetX:F

    .line 299
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/TextSelectionHelper;->onOffsetChanged()V

    .line 301
    :cond_10
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$2;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    invoke-static {v0, v10}, Lorg/telegram/ui/Cells/TextSelectionHelper;->-$$Nest$fputtryCapture(Lorg/telegram/ui/Cells/TextSelectionHelper;Z)V

    .line 302
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$2;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    iput-boolean v10, v0, Lorg/telegram/ui/Cells/TextSelectionHelper;->allowDiscard:Z

    :cond_11
    :goto_5
    return-void
.end method
