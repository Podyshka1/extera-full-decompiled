.class public abstract Lorg/telegram/ui/Cells/BotHelpCell;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Cells/BotHelpCell$BotHelpCellDelegate;
    }
.end annotation


# instance fields
.field private animating:Z

.field private currentPhotoKey:Ljava/lang/String;

.field private delegate:Lorg/telegram/ui/Cells/BotHelpCell$BotHelpCellDelegate;

.field private height:I

.field private imagePadding:I

.field private imageReceiver:Lorg/telegram/messenger/ImageReceiver;

.field private isPhotoVisible:Z

.field private isTextVisible:Z

.field private links:Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;

.field private oldText:Ljava/lang/String;

.field private photoHeight:I

.field private pressedLink:Lorg/telegram/ui/Components/LinkSpanDrawable;

.field private resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private selectorDrawable:Landroid/graphics/drawable/Drawable;

.field private selectorDrawableRadius:I

.field private textLayout:Landroid/text/StaticLayout;

.field private textX:I

.field private textY:I

.field public wasDraw:Z

.field private width:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 1

    .line 85
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 67
    new-instance p1, Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lorg/telegram/ui/Cells/BotHelpCell;->links:Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;

    const/high16 p1, 0x40800000    # 4.0f

    .line 76
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Cells/BotHelpCell;->imagePadding:I

    .line 86
    iput-object p2, p0, Lorg/telegram/ui/Cells/BotHelpCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 88
    new-instance p1, Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {p1, p0}, Lorg/telegram/messenger/ImageReceiver;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lorg/telegram/ui/Cells/BotHelpCell;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    const/4 v0, 0x1

    .line 89
    invoke-virtual {p1, v0}, Lorg/telegram/messenger/ImageReceiver;->setInvalidateAll(Z)V

    .line 90
    iget-object p1, p0, Lorg/telegram/ui/Cells/BotHelpCell;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/ImageReceiver;->setCrossfadeWithOldImage(Z)V

    .line 91
    iget-object p1, p0, Lorg/telegram/ui/Cells/BotHelpCell;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    const/16 v0, 0x12c

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/ImageReceiver;->setCrossfadeDuration(I)V

    .line 93
    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    invoke-static {p1, p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    sget p2, Lorg/telegram/messenger/SharedConfig;->bubbleRadius:I

    iput p2, p0, Lorg/telegram/ui/Cells/BotHelpCell;->selectorDrawableRadius:I

    invoke-static {p1, p2, p2}, Lorg/telegram/ui/ActionBar/Theme;->createRadSelectorDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Cells/BotHelpCell;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    .line 94
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    return-void
.end method

.method private getThemedColor(I)I
    .locals 1

    .line 399
    iget-object v0, p0, Lorg/telegram/ui/Cells/BotHelpCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p1, v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    return p1
.end method

.method private getThemedDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 403
    iget-object v0, p0, Lorg/telegram/ui/Cells/BotHelpCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    return-object v0

    .line 404
    :cond_1
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getThemeDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method private resetPressedLink()V
    .locals 1

    .line 102
    iget-object v0, p0, Lorg/telegram/ui/Cells/BotHelpCell;->pressedLink:Lorg/telegram/ui/Components/LinkSpanDrawable;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 103
    iput-object v0, p0, Lorg/telegram/ui/Cells/BotHelpCell;->pressedLink:Lorg/telegram/ui/Components/LinkSpanDrawable;

    .line 105
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Cells/BotHelpCell;->links:Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;->clear()V

    .line 106
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method


# virtual methods
.method public animating()Z
    .locals 1

    .line 391
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/BotHelpCell;->animating:Z

    return v0
.end method

.method public getSideMenuWidth()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 1

    .line 208
    iget-object v0, p0, Lorg/telegram/ui/Cells/BotHelpCell;->textLayout:Landroid/text/StaticLayout;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 211
    :cond_0
    invoke-virtual {v0}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 371
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 372
    iget-object v0, p0, Lorg/telegram/ui/Cells/BotHelpCell;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onAttachedToWindow()Z

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 377
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 378
    iget-object v0, p0, Lorg/telegram/ui/Cells/BotHelpCell;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onDetachedFromWindow()V

    const/4 v0, 0x0

    .line 379
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/BotHelpCell;->wasDraw:Z

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11

    .line 319
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 320
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/BotHelpCell;->getSideMenuWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 322
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget v2, p0, Lorg/telegram/ui/Cells/BotHelpCell;->width:I

    sub-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x2

    .line 323
    iget v2, p0, Lorg/telegram/ui/Cells/BotHelpCell;->photoHeight:I

    .line 324
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    add-int/2addr v2, v3

    .line 325
    sget-object v3, Lorg/telegram/ui/ActionBar/Theme;->chat_msgInMediaDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->getShadowDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 327
    iget v4, p0, Lorg/telegram/ui/Cells/BotHelpCell;->width:I

    add-int/2addr v4, v0

    iget v5, p0, Lorg/telegram/ui/Cells/BotHelpCell;->height:I

    add-int/2addr v5, v2

    invoke-virtual {v3, v0, v2, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 328
    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 330
    :cond_0
    sget-object v3, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v4, v3, Landroid/graphics/Point;->x:I

    .line 331
    iget v3, v3, Landroid/graphics/Point;->y:I

    .line 332
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    instance-of v5, v5, Landroid/view/View;

    if-eqz v5, :cond_1

    .line 333
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 334
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    .line 335
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    :cond_1
    move v8, v3

    move v7, v4

    .line 337
    const-string v3, "drawableMsgInMedia"

    invoke-direct {p0, v3}, Lorg/telegram/ui/Cells/BotHelpCell;->getThemedDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    .line 338
    invoke-virtual {p0}, Landroid/view/View;->getY()F

    move-result v3

    float-to-int v6, v3

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->setTop(IIIZZ)V

    .line 339
    iget v3, p0, Lorg/telegram/ui/Cells/BotHelpCell;->width:I

    add-int/2addr v3, v0

    iget v4, p0, Lorg/telegram/ui/Cells/BotHelpCell;->height:I

    const/4 v6, 0x0

    invoke-virtual {v5, v0, v6, v3, v4}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->setBounds(IIII)V

    .line 340
    invoke-virtual {v5, p1}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 342
    iget-object v3, p0, Lorg/telegram/ui/Cells/BotHelpCell;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_3

    .line 343
    iget v4, p0, Lorg/telegram/ui/Cells/BotHelpCell;->selectorDrawableRadius:I

    sget v5, Lorg/telegram/messenger/SharedConfig;->bubbleRadius:I

    if-eq v4, v5, :cond_2

    .line 344
    iput v5, p0, Lorg/telegram/ui/Cells/BotHelpCell;->selectorDrawableRadius:I

    .line 345
    invoke-static {v3, v5, v5}, Lorg/telegram/ui/ActionBar/Theme;->setMaskDrawableRad(Landroid/graphics/drawable/Drawable;II)V

    .line 347
    :cond_2
    iget-object v3, p0, Lorg/telegram/ui/Cells/BotHelpCell;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    add-int/2addr v4, v0

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    iget v6, p0, Lorg/telegram/ui/Cells/BotHelpCell;->width:I

    add-int/2addr v6, v0

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    sub-int/2addr v6, v7

    iget v7, p0, Lorg/telegram/ui/Cells/BotHelpCell;->height:I

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int/2addr v7, v1

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 348
    iget-object v1, p0, Lorg/telegram/ui/Cells/BotHelpCell;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 351
    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/Cells/BotHelpCell;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget v3, p0, Lorg/telegram/ui/Cells/BotHelpCell;->imagePadding:I

    add-int v4, v0, v3

    int-to-float v4, v4

    int-to-float v5, v3

    iget v6, p0, Lorg/telegram/ui/Cells/BotHelpCell;->width:I

    mul-int/lit8 v7, v3, 0x2

    sub-int/2addr v6, v7

    int-to-float v6, v6

    iget v7, p0, Lorg/telegram/ui/Cells/BotHelpCell;->photoHeight:I

    sub-int/2addr v7, v3

    int-to-float v3, v7

    invoke-virtual {v1, v4, v5, v6, v3}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(FFFF)V

    .line 352
    iget-object v1, p0, Lorg/telegram/ui/Cells/BotHelpCell;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1, p1}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    .line 354
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->chat_msgTextPaint:Landroid/text/TextPaint;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messageTextIn:I

    invoke-direct {p0, v3}, Lorg/telegram/ui/Cells/BotHelpCell;->getThemedColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 355
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->chat_msgTextPaint:Landroid/text/TextPaint;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messageLinkIn:I

    invoke-direct {p0, v3}, Lorg/telegram/ui/Cells/BotHelpCell;->getThemedColor(I)I

    move-result v3

    iput v3, v1, Landroid/text/TextPaint;->linkColor:I

    .line 356
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 357
    iget-boolean v1, p0, Lorg/telegram/ui/Cells/BotHelpCell;->isPhotoVisible:Z

    const/high16 v3, 0x41300000    # 11.0f

    if-eqz v1, :cond_4

    const/high16 v1, 0x41600000    # 14.0f

    goto :goto_0

    :cond_4
    move v1, v3

    :goto_0
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p0, Lorg/telegram/ui/Cells/BotHelpCell;->textX:I

    int-to-float v0, v1

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    add-int/2addr v1, v2

    iput v1, p0, Lorg/telegram/ui/Cells/BotHelpCell;->textY:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 358
    iget-object v0, p0, Lorg/telegram/ui/Cells/BotHelpCell;->links:Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;->draw(Landroid/graphics/Canvas;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 359
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 361
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/Cells/BotHelpCell;->textLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_6

    .line 362
    invoke-virtual {v0, p1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 364
    :cond_6
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 365
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    const/4 p1, 0x1

    .line 366
    iput-boolean p1, p0, Lorg/telegram/ui/Cells/BotHelpCell;->wasDraw:Z

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    .line 384
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 385
    iget-object v0, p0, Lorg/telegram/ui/Cells/BotHelpCell;->textLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_0

    .line 386
    invoke-virtual {v0}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 307
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 p2, 0x40000000    # 2.0f

    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    iget p2, p0, Lorg/telegram/ui/Cells/BotHelpCell;->height:I

    const/high16 v0, 0x41000000    # 8.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    add-int/2addr p2, v0

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12

    .line 216
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 217
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 220
    iget-object v2, p0, Lorg/telegram/ui/Cells/BotHelpCell;->textLayout:Landroid/text/StaticLayout;

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v2, :cond_9

    .line 221
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/Cells/BotHelpCell;->pressedLink:Lorg/telegram/ui/Components/LinkSpanDrawable;

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v5, :cond_0

    goto :goto_0

    .line 281
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v4, :cond_9

    .line 282
    invoke-direct {p0}, Lorg/telegram/ui/Cells/BotHelpCell;->resetPressedLink()V

    goto/16 :goto_7

    .line 222
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_4

    .line 223
    invoke-direct {p0}, Lorg/telegram/ui/Cells/BotHelpCell;->resetPressedLink()V

    .line 225
    :try_start_0
    iget v2, p0, Lorg/telegram/ui/Cells/BotHelpCell;->textX:I

    int-to-float v2, v2

    sub-float/2addr v0, v2

    float-to-int v0, v0

    .line 226
    iget v2, p0, Lorg/telegram/ui/Cells/BotHelpCell;->textY:I

    int-to-float v2, v2

    sub-float v2, v1, v2

    float-to-int v2, v2

    .line 227
    iget-object v7, p0, Lorg/telegram/ui/Cells/BotHelpCell;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v7, v2}, Landroid/text/StaticLayout;->getLineForVertical(I)I

    move-result v7

    .line 228
    iget-object v8, p0, Lorg/telegram/ui/Cells/BotHelpCell;->textLayout:Landroid/text/StaticLayout;

    int-to-float v0, v0

    invoke-virtual {v8, v7, v0}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v8

    .line 230
    iget-object v9, p0, Lorg/telegram/ui/Cells/BotHelpCell;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v9, v7}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v9

    cmpg-float v10, v9, v0

    if-gtz v10, :cond_3

    .line 231
    iget-object v10, p0, Lorg/telegram/ui/Cells/BotHelpCell;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v10, v7}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v7

    add-float/2addr v9, v7

    cmpl-float v7, v9, v0

    if-ltz v7, :cond_3

    .line 232
    iget-object v7, p0, Lorg/telegram/ui/Cells/BotHelpCell;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v7}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    check-cast v7, Landroid/text/Spannable;

    .line 233
    const-class v9, Landroid/text/style/ClickableSpan;

    invoke-interface {v7, v8, v8, v9}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Landroid/text/style/ClickableSpan;

    .line 234
    array-length v9, v8

    if-eqz v9, :cond_2

    .line 235
    invoke-direct {p0}, Lorg/telegram/ui/Cells/BotHelpCell;->resetPressedLink()V

    .line 236
    new-instance v9, Lorg/telegram/ui/Components/LinkSpanDrawable;

    aget-object v10, v8, v6

    iget-object v11, p0, Lorg/telegram/ui/Cells/BotHelpCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    int-to-float v2, v2

    invoke-direct {v9, v10, v11, v0, v2}, Lorg/telegram/ui/Components/LinkSpanDrawable;-><init>(Landroid/text/style/CharacterStyle;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;FF)V

    iput-object v9, p0, Lorg/telegram/ui/Cells/BotHelpCell;->pressedLink:Lorg/telegram/ui/Components/LinkSpanDrawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 239
    :try_start_1
    aget-object v0, v8, v6

    invoke-interface {v7, v0}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    .line 240
    iget-object v2, p0, Lorg/telegram/ui/Cells/BotHelpCell;->pressedLink:Lorg/telegram/ui/Components/LinkSpanDrawable;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/LinkSpanDrawable;->obtainNewPath()Lorg/telegram/ui/Components/LinkPath;

    move-result-object v2

    .line 241
    iget-object v9, p0, Lorg/telegram/ui/Cells/BotHelpCell;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2, v9, v0, v3}, Lorg/telegram/ui/Components/LinkPath;->setCurrentLayout(Landroid/text/Layout;IF)V

    .line 242
    iget-object v9, p0, Lorg/telegram/ui/Cells/BotHelpCell;->textLayout:Landroid/text/StaticLayout;

    aget-object v8, v8, v6

    invoke-interface {v7, v8}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v7

    invoke-virtual {v9, v0, v7, v2}, Landroid/text/Layout;->getSelectionPath(IILandroid/graphics/Path;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 244
    :try_start_2
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 246
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Cells/BotHelpCell;->links:Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;

    iget-object v2, p0, Lorg/telegram/ui/Cells/BotHelpCell;->pressedLink:Lorg/telegram/ui/Components/LinkSpanDrawable;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;->addLink(Lorg/telegram/ui/Components/LinkSpanDrawable;)V

    .line 247
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_6

    :catch_1
    move-exception v0

    move v2, v5

    goto :goto_2

    :catch_2
    move-exception v0

    move v2, v6

    goto :goto_2

    .line 249
    :cond_2
    :try_start_3
    invoke-direct {p0}, Lorg/telegram/ui/Cells/BotHelpCell;->resetPressedLink()V

    goto/16 :goto_7

    .line 252
    :cond_3
    invoke-direct {p0}, Lorg/telegram/ui/Cells/BotHelpCell;->resetPressedLink()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_7

    .line 255
    :goto_2
    invoke-direct {p0}, Lorg/telegram/ui/Cells/BotHelpCell;->resetPressedLink()V

    .line 256
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    move v0, v2

    goto :goto_8

    .line 258
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Cells/BotHelpCell;->pressedLink:Lorg/telegram/ui/Components/LinkSpanDrawable;

    if-eqz v0, :cond_9

    .line 260
    :try_start_4
    invoke-virtual {v0}, Lorg/telegram/ui/Components/LinkSpanDrawable;->getSpan()Landroid/text/style/CharacterStyle;

    move-result-object v0

    check-cast v0, Landroid/text/style/ClickableSpan;

    .line 261
    instance-of v2, v0, Lorg/telegram/ui/Components/URLSpanNoUnderline;

    if-eqz v2, :cond_6

    .line 262
    check-cast v0, Lorg/telegram/ui/Components/URLSpanNoUnderline;

    invoke-virtual {v0}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v0

    .line 263
    const-string v2, "@"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "#"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "$"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    goto :goto_3

    :catch_3
    move-exception v0

    goto :goto_4

    .line 264
    :cond_5
    :goto_3
    iget-object v2, p0, Lorg/telegram/ui/Cells/BotHelpCell;->delegate:Lorg/telegram/ui/Cells/BotHelpCell$BotHelpCellDelegate;

    if-eqz v2, :cond_8

    .line 265
    invoke-interface {v2, v0}, Lorg/telegram/ui/Cells/BotHelpCell$BotHelpCellDelegate;->didPressUrl(Ljava/lang/String;)V

    goto :goto_5

    .line 268
    :cond_6
    instance-of v2, v0, Landroid/text/style/URLSpan;

    if-eqz v2, :cond_7

    .line 269
    iget-object v2, p0, Lorg/telegram/ui/Cells/BotHelpCell;->delegate:Lorg/telegram/ui/Cells/BotHelpCell$BotHelpCellDelegate;

    if-eqz v2, :cond_8

    .line 270
    check-cast v0, Landroid/text/style/URLSpan;

    invoke-virtual {v0}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lorg/telegram/ui/Cells/BotHelpCell$BotHelpCellDelegate;->didPressUrl(Ljava/lang/String;)V

    goto :goto_5

    :cond_7
    if-eqz v0, :cond_8

    .line 273
    invoke-virtual {v0, p0}, Landroid/text/style/ClickableSpan;->onClick(Landroid/view/View;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_5

    .line 276
    :goto_4
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 278
    :cond_8
    :goto_5
    invoke-direct {p0}, Lorg/telegram/ui/Cells/BotHelpCell;->resetPressedLink()V

    :goto_6
    move v0, v5

    goto :goto_8

    :cond_9
    :goto_7
    move v0, v6

    .line 285
    :goto_8
    iget-object v2, p0, Lorg/telegram/ui/Cells/BotHelpCell;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_d

    if-nez v0, :cond_b

    cmpl-float v1, v1, v3

    if-lez v1, :cond_b

    .line 286
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_b

    invoke-virtual {p0}, Landroid/view/View;->isClickable()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 287
    iget-object v0, p0, Lorg/telegram/ui/Cells/BotHelpCell;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    const v1, 0x10100a7

    const v2, 0x101009e

    filled-new-array {v1, v2}, [I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 289
    iget-object v0, p0, Lorg/telegram/ui/Cells/BotHelpCell;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 291
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_a
    :goto_9
    move v0, v5

    goto :goto_a

    .line 293
    :cond_b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-eq v1, v5, :cond_c

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v4, :cond_d

    .line 294
    :cond_c
    iget-object v1, p0, Lorg/telegram/ui/Cells/BotHelpCell;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    new-array v2, v6, [I

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 295
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    if-nez v0, :cond_a

    .line 296
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v5, :cond_a

    .line 297
    invoke-virtual {p0}, Landroid/view/View;->performClick()Z

    goto :goto_9

    :cond_d
    :goto_a
    if-nez v0, :cond_f

    .line 302
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_e

    goto :goto_b

    :cond_e
    move v5, v6

    :cond_f
    :goto_b
    return v5
.end method

.method public setAnimating(Z)V
    .locals 0

    .line 395
    iput-boolean p1, p0, Lorg/telegram/ui/Cells/BotHelpCell;->animating:Z

    return-void
.end method

.method public setDelegate(Lorg/telegram/ui/Cells/BotHelpCell$BotHelpCellDelegate;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lorg/telegram/ui/Cells/BotHelpCell;->delegate:Lorg/telegram/ui/Cells/BotHelpCell$BotHelpCellDelegate;

    return-void
.end method

.method public setText(ZLjava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 110
    invoke-virtual {p0, p1, p2, v0, v0}, Lorg/telegram/ui/Cells/BotHelpCell;->setText(ZLjava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/tl/TL_bots$BotInfo;)V

    return-void
.end method

.method public setText(ZLjava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/tl/TL_bots$BotInfo;)V
    .locals 28

    move-object/from16 v1, p0

    move-object/from16 v0, p3

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    .line 115
    :goto_0
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    xor-int/2addr v5, v2

    if-eqz p2, :cond_1

    .line 116
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_2

    :cond_1
    if-nez v4, :cond_2

    const/16 v0, 0x8

    .line 117
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_2
    if-nez p2, :cond_3

    .line 121
    const-string v6, ""

    goto :goto_1

    :cond_3
    move-object/from16 v6, p2

    .line 123
    :goto_1
    iget-object v7, v1, Lorg/telegram/ui/Cells/BotHelpCell;->oldText:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    iget-boolean v7, v1, Lorg/telegram/ui/Cells/BotHelpCell;->isPhotoVisible:Z

    if-ne v7, v4, :cond_4

    goto/16 :goto_b

    .line 126
    :cond_4
    iput-boolean v4, v1, Lorg/telegram/ui/Cells/BotHelpCell;->isPhotoVisible:Z

    .line 127
    iput-boolean v5, v1, Lorg/telegram/ui/Cells/BotHelpCell;->isTextVisible:Z

    const/high16 v5, 0x40800000    # 4.0f

    if-eqz v4, :cond_a

    .line 129
    invoke-static/range {p4 .. p4}, Lorg/telegram/messenger/FileRefController;->getKeyForParentObject(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 130
    iget-object v7, v1, Lorg/telegram/ui/Cells/BotHelpCell;->currentPhotoKey:Ljava/lang/String;

    invoke-static {v7, v4}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_a

    .line 131
    iput-object v4, v1, Lorg/telegram/ui/Cells/BotHelpCell;->currentPhotoKey:Ljava/lang/String;

    .line 132
    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_photo;

    const/16 v7, 0x190

    if-eqz v4, :cond_5

    .line 133
    check-cast v0, Lorg/telegram/tgnet/TLRPC$Photo;

    .line 134
    iget-object v8, v1, Lorg/telegram/ui/Cells/BotHelpCell;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-static {v4, v7}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v4

    invoke-static {v4, v0}, Lorg/telegram/messenger/ImageLocation;->getForPhoto(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Photo;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v9

    const-string v12, "jpg"

    const/4 v14, 0x0

    const-string v10, "400_400"

    const/4 v11, 0x0

    move-object/from16 v13, p4

    invoke-virtual/range {v8 .. v14}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;I)V

    goto :goto_3

    .line 135
    :cond_5
    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v4, :cond_8

    .line 136
    check-cast v0, Lorg/telegram/tgnet/TLRPC$Document;

    .line 137
    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    invoke-static {v4, v7}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v4

    .line 139
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getDevicePerformanceClass()I

    move-result v7

    const/4 v8, 0x0

    if-eqz v7, :cond_7

    .line 140
    iget-object v7, v0, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v9

    move v10, v3

    :cond_6
    :goto_2
    if-ge v10, v9, :cond_7

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    add-int/lit8 v10, v10, 0x1

    check-cast v11, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 141
    instance-of v12, v11, Lorg/telegram/tgnet/TLRPC$TL_photoStrippedSize;

    if-eqz v12, :cond_6

    .line 142
    new-instance v8, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    iget-object v11, v11, Lorg/telegram/tgnet/TLRPC$PhotoSize;->bytes:[B

    const-string v13, "b"

    invoke-static {v11, v13}, Lorg/telegram/messenger/ImageLoader;->getStrippedPhotoBitmap([BLjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v11

    invoke-direct {v8, v12, v11}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    goto :goto_2

    :cond_7
    move-object/from16 v22, v8

    .line 146
    iget-object v15, v1, Lorg/telegram/ui/Cells/BotHelpCell;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-static {v0}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v16

    invoke-static {v0}, Lorg/telegram/messenger/MessageObject;->getDocumentVideoThumb(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/tgnet/TLRPC$VideoSize;

    move-result-object v7

    invoke-static {v7, v0}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$VideoSize;Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v18

    invoke-static {v4, v0}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v20

    iget-wide v7, v0, Lorg/telegram/tgnet/TLRPC$Document;->size:J

    const-string v25, "mp4"

    const/16 v27, 0x0

    const-string v17, "g"

    const/16 v19, 0x0

    const-string v21, "86_86_b"

    move-object/from16 v26, p4

    move-wide/from16 v23, v7

    invoke-virtual/range {v15 .. v27}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    .line 149
    :cond_8
    :goto_3
    sget v0, Lorg/telegram/messenger/SharedConfig;->bubbleRadius:I

    int-to-float v0, v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int/2addr v0, v4

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    .line 150
    iget-boolean v7, v1, Lorg/telegram/ui/Cells/BotHelpCell;->isTextVisible:Z

    if-nez v7, :cond_9

    move v4, v0

    .line 153
    :cond_9
    iget-object v7, v1, Lorg/telegram/ui/Cells/BotHelpCell;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v7, v0, v0, v4, v4}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(IIII)V

    .line 156
    :cond_a
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->getSafeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lorg/telegram/ui/Cells/BotHelpCell;->oldText:Ljava/lang/String;

    .line 157
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 159
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v0

    const v4, 0x3f333333    # 0.7f

    if-eqz v0, :cond_b

    .line 160
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getMinTabletSide()I

    move-result v0

    :goto_4
    int-to-float v0, v0

    mul-float/2addr v0, v4

    float-to-int v0, v0

    goto :goto_5

    .line 162
    :cond_b
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v7, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-static {v7, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_4

    .line 164
    :goto_5
    iget-boolean v4, v1, Lorg/telegram/ui/Cells/BotHelpCell;->isTextVisible:Z

    const/high16 v7, 0x41b00000    # 22.0f

    if-eqz v4, :cond_13

    .line 165
    const-string v4, "\n"

    invoke-virtual {v6, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 166
    new-instance v9, Landroid/text/SpannableStringBuilder;

    invoke-direct {v9}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 167
    sget v8, Lorg/telegram/messenger/R$string;->BotInfoTitle:I

    invoke-static {v8}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v8

    if-eqz p1, :cond_c

    .line 169
    invoke-virtual {v9, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 170
    const-string v10, "\n\n"

    invoke-virtual {v9, v10}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_c
    move v10, v3

    .line 172
    :goto_6
    array-length v11, v6

    if-ge v10, v11, :cond_e

    .line 173
    aget-object v11, v6, v10

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 174
    array-length v11, v6

    sub-int/2addr v11, v2

    if-eq v10, v11, :cond_d

    .line 175
    invoke-virtual {v9, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_d
    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    .line 178
    :cond_e
    invoke-static {v3, v9}, Lorg/telegram/messenger/MessageObject;->addLinks(ZLjava/lang/CharSequence;)V

    if-eqz p1, :cond_f

    .line 180
    new-instance v2, Lorg/telegram/ui/Components/TypefaceSpan;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v4

    invoke-direct {v2, v4}, Lorg/telegram/ui/Components/TypefaceSpan;-><init>(Landroid/graphics/Typeface;)V

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v6, 0x21

    invoke-virtual {v9, v2, v3, v4, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 182
    :cond_f
    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->chat_msgTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v2

    invoke-static {v9, v2, v3}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;Z)Ljava/lang/CharSequence;

    .line 184
    :try_start_0
    new-instance v8, Landroid/text/StaticLayout;

    sget-object v10, Lorg/telegram/ui/ActionBar/Theme;->chat_msgTextPaint:Landroid/text/TextPaint;

    iget-boolean v2, v1, Lorg/telegram/ui/Cells/BotHelpCell;->isPhotoVisible:Z

    if-eqz v2, :cond_10

    const/high16 v2, 0x40a00000    # 5.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    goto :goto_7

    :catch_0
    move-exception v0

    goto :goto_9

    :cond_10
    move v2, v3

    :goto_7
    sub-int v11, v0, v2

    sget-object v12, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-direct/range {v8 .. v15}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v8, v1, Lorg/telegram/ui/Cells/BotHelpCell;->textLayout:Landroid/text/StaticLayout;

    .line 185
    iput v3, v1, Lorg/telegram/ui/Cells/BotHelpCell;->width:I

    .line 186
    invoke-virtual {v8}, Landroid/text/Layout;->getHeight()I

    move-result v2

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    add-int/2addr v2, v4

    iput v2, v1, Lorg/telegram/ui/Cells/BotHelpCell;->height:I

    .line 187
    iget-object v2, v1, Lorg/telegram/ui/Cells/BotHelpCell;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v2

    :goto_8
    if-ge v3, v2, :cond_11

    .line 189
    iget v4, v1, Lorg/telegram/ui/Cells/BotHelpCell;->width:I

    int-to-float v4, v4

    iget-object v6, v1, Lorg/telegram/ui/Cells/BotHelpCell;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v6, v3}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v6

    iget-object v8, v1, Lorg/telegram/ui/Cells/BotHelpCell;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v8, v3}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v8

    add-float/2addr v6, v8

    invoke-static {v4, v6}, Ljava/lang/Math;->max(FF)F

    move-result v4

    float-to-double v8, v4

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v4, v8

    iput v4, v1, Lorg/telegram/ui/Cells/BotHelpCell;->width:I

    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 191
    :cond_11
    iget v2, v1, Lorg/telegram/ui/Cells/BotHelpCell;->width:I

    if-gt v2, v0, :cond_12

    iget-boolean v2, v1, Lorg/telegram/ui/Cells/BotHelpCell;->isPhotoVisible:Z

    if-eqz v2, :cond_14

    .line 192
    :cond_12
    iput v0, v1, Lorg/telegram/ui/Cells/BotHelpCell;->width:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_a

    .line 195
    :goto_9
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_a

    .line 197
    :cond_13
    iget-boolean v2, v1, Lorg/telegram/ui/Cells/BotHelpCell;->isPhotoVisible:Z

    if-eqz v2, :cond_14

    .line 198
    iput v0, v1, Lorg/telegram/ui/Cells/BotHelpCell;->width:I

    .line 200
    :cond_14
    :goto_a
    iget v0, v1, Lorg/telegram/ui/Cells/BotHelpCell;->width:I

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int/2addr v0, v2

    iput v0, v1, Lorg/telegram/ui/Cells/BotHelpCell;->width:I

    .line 202
    iget-boolean v2, v1, Lorg/telegram/ui/Cells/BotHelpCell;->isPhotoVisible:Z

    if-eqz v2, :cond_15

    .line 203
    iget v2, v1, Lorg/telegram/ui/Cells/BotHelpCell;->height:I

    int-to-double v3, v0

    const-wide/high16 v6, 0x3fe2000000000000L    # 0.5625

    mul-double/2addr v3, v6

    double-to-int v0, v3

    iput v0, v1, Lorg/telegram/ui/Cells/BotHelpCell;->photoHeight:I

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    add-int/2addr v0, v3

    add-int/2addr v2, v0

    iput v2, v1, Lorg/telegram/ui/Cells/BotHelpCell;->height:I

    :cond_15
    :goto_b
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .line 409
    iget-object v0, p0, Lorg/telegram/ui/Cells/BotHelpCell;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_1

    invoke-super {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

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
