.class Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/DownloadController$FileDownloadProgressListener;
.implements Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ArticleViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BlockPhotoCell"
.end annotation


# instance fields
.field private TAG:I

.field autoDownload:Z

.field private buttonPressed:I

.field private buttonState:I

.field private buttonX:I

.field private buttonY:I

.field private calcHeight:Z

.field private captionLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

.field private channelCell:Lorg/telegram/ui/ArticleViewer$BlockChannelCell;

.field private creditLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

.field private creditOffset:I

.field private currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockPhoto;

.field private currentFilter:Ljava/lang/String;

.field private currentPhoto:Lorg/telegram/tgnet/TLRPC$Photo;

.field private currentPhotoObject:Lorg/telegram/tgnet/TLRPC$PhotoSize;

.field private currentPhotoObjectThumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

.field private currentThumbFilter:Ljava/lang/String;

.field private currentType:I

.field private groupPosition:Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

.field private imageView:Lorg/telegram/messenger/ImageReceiver;

.field private isFirst:Z

.field private linkDrawable:Landroid/graphics/drawable/Drawable;

.field private parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

.field private parentBlock:Lorg/telegram/tgnet/TLRPC$PageBlock;

.field private photoPressed:Z

.field private radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

.field private textX:I

.field private textY:I

.field final synthetic this$0:Lorg/telegram/ui/ArticleViewer;


# direct methods
.method public static synthetic $r8$lambda$6Hv4WHZvjfj9Ceuxc800Zq51P7A(Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->lambda$onMeasure$0()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetcurrentBlock(Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;)Lorg/telegram/tgnet/TLRPC$TL_pageBlockPhoto;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockPhoto;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetimageView(Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;)Lorg/telegram/messenger/ImageReceiver;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->imageView:Lorg/telegram/messenger/ImageReceiver;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputgroupPosition(Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->groupPosition:Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;Lorg/telegram/ui/ArticleViewer$WebpageAdapter;I)V
    .locals 3

    .line 11094
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    .line 11095
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 11096
    iput-object p3, p0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    const/4 p3, 0x0

    .line 11098
    invoke-virtual {p0, p3}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 11099
    new-instance p3, Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {p3, p0}, Lorg/telegram/messenger/ImageReceiver;-><init>(Landroid/view/View;)V

    iput-object p3, p0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->imageView:Lorg/telegram/messenger/ImageReceiver;

    .line 11100
    new-instance p3, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    const/4 v1, 0x1

    invoke-direct {p3, p1, p2, v0, v1}, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;-><init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;Lorg/telegram/ui/ArticleViewer$WebpageAdapter;I)V

    iput-object p3, p0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->channelCell:Lorg/telegram/ui/ArticleViewer$BlockChannelCell;

    .line 11101
    new-instance p2, Lorg/telegram/ui/Components/RadialProgress2;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Components/RadialProgress2;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    const/4 p3, -0x1

    .line 11102
    invoke-virtual {p2, p3}, Lorg/telegram/ui/Components/RadialProgress2;->setProgressColor(I)V

    .line 11103
    iget-object p2, p0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    const/high16 v0, 0x7f000000

    const v1, -0x262627

    const/high16 v2, 0x66000000

    invoke-virtual {p2, v2, v0, p3, v1}, Lorg/telegram/ui/Components/RadialProgress2;->setColors(IIII)V

    .line 11104
    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/ArticleViewer;)I

    move-result p1

    invoke-static {p1}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/DownloadController;->generateObserverTag()I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->TAG:I

    .line 11105
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->channelCell:Lorg/telegram/ui/ArticleViewer$BlockChannelCell;

    const/high16 p2, -0x40000000    # -2.0f

    invoke-static {p3, p2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 11106
    iput p4, p0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->currentType:I

    return-void
.end method

.method private didPressedButton(Z)V
    .locals 13

    .line 11371
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->currentPhotoObject:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    if-nez v0, :cond_0

    goto :goto_0

    .line 11372
    :cond_0
    iget v0, p0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->buttonState:I

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 11373
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, p1}, Lorg/telegram/ui/Components/RadialProgress2;->setProgress(FZ)V

    .line 11374
    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->imageView:Lorg/telegram/messenger/ImageReceiver;

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->currentPhotoObject:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->currentPhoto:Lorg/telegram/tgnet/TLRPC$Photo;

    invoke-static {v0, v2}, Lorg/telegram/messenger/ImageLocation;->getForPhoto(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Photo;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->currentFilter:Ljava/lang/String;

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->currentPhotoObjectThumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->currentPhoto:Lorg/telegram/tgnet/TLRPC$Photo;

    invoke-static {v0, v2}, Lorg/telegram/messenger/ImageLocation;->getForPhoto(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Photo;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v6

    iget-object v7, p0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->currentThumbFilter:Ljava/lang/String;

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->currentPhotoObject:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->size:I

    int-to-long v8, v0

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->-$$Nest$fgetcurrentPage(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Lorg/telegram/tgnet/TLRPC$WebPage;

    move-result-object v11

    const/4 v12, 0x1

    const/4 v10, 0x0

    invoke-virtual/range {v3 .. v12}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;JLjava/lang/String;Ljava/lang/Object;I)V

    .line 11375
    iput v1, p0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->buttonState:I

    .line 11376
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->getIconForCurrentState()I

    move-result v2

    invoke-virtual {v0, v2, v1, p1}, Lorg/telegram/ui/Components/RadialProgress2;->setIcon(IZZ)V

    .line 11377
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void

    :cond_1
    if-ne v0, v1, :cond_2

    .line 11379
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->imageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->cancelLoadImage()V

    const/4 v0, 0x0

    .line 11380
    iput v0, p0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->buttonState:I

    .line 11381
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->getIconForCurrentState()I

    move-result v2

    invoke-virtual {v1, v2, v0, p1}, Lorg/telegram/ui/Components/RadialProgress2;->setIcon(IZZ)V

    .line 11382
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_2
    :goto_0
    return-void
.end method

.method private getIconForCurrentState()I
    .locals 2

    .line 11362
    iget v0, p0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->buttonState:I

    if-nez v0, :cond_0

    const/4 v0, 0x2

    return v0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x3

    return v0

    :cond_1
    const/4 v0, 0x4

    return v0
.end method

.method private synthetic lambda$onMeasure$0()V
    .locals 0

    .line 11267
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method


# virtual methods
.method public fillTextLayoutBlocks(Ljava/util/ArrayList;)V
    .locals 1

    .line 11473
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->captionLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    if-eqz v0, :cond_0

    .line 11474
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11476
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->creditLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    if-eqz v0, :cond_1

    .line 11477
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public getObserverTag()I
    .locals 1

    .line 11456
    iget v0, p0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->TAG:I

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 11425
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 11426
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->imageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onAttachedToWindow()Z

    const/4 v0, 0x0

    .line 11427
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->updateButtonState(Z)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 11418
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 11419
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->imageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onDetachedFromWindow()V

    .line 11420
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/ArticleViewer;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/telegram/messenger/DownloadController;->removeLoadingFileObserver(Lorg/telegram/messenger/DownloadController$FileDownloadProgressListener;)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13

    .line 11323
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockPhoto;

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 11326
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->imageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->hasBitmapImage()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->imageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getCurrentAlpha()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move-object v1, p1

    goto :goto_1

    .line 11327
    :cond_2
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->imageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getImageX()F

    move-result v2

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->imageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getImageY()F

    move-result v3

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->imageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getImageX2()F

    move-result v4

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->imageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getImageY2()F

    move-result v5

    invoke-static {}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$sfgetphotoBackgroundPaint()Landroid/graphics/Paint;

    move-result-object v6

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 11329
    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object p1, p1, Lorg/telegram/ui/ArticleViewer;->pinchToZoomHelper:Lorg/telegram/ui/PinchToZoomHelper;

    invoke-virtual {p1, p0}, Lorg/telegram/ui/PinchToZoomHelper;->isInOverlayModeFor(Landroid/view/View;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 11330
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->imageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {p1, v1}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    .line 11331
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->imageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {p1}, Lorg/telegram/messenger/ImageReceiver;->getVisible()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 11332
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/RadialProgress2;->draw(Landroid/graphics/Canvas;)V

    .line 11335
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockPhoto;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockPhoto;->url:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->currentPhoto:Lorg/telegram/tgnet/TLRPC$Photo;

    instance-of p1, p1, Lorg/telegram/ui/web/WebInstantView$WebPhoto;

    if-nez p1, :cond_4

    .line 11336
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    const/high16 v0, 0x420c0000    # 35.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    sub-int/2addr p1, v0

    .line 11337
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->imageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getImageY()F

    move-result v0

    const/high16 v2, 0x41300000    # 11.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v0, v2

    float-to-int v0, v0

    .line 11338
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->linkDrawable:Landroid/graphics/drawable/Drawable;

    const/high16 v3, 0x41c00000    # 24.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    add-int/2addr v4, p1

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    add-int/2addr v3, v0

    invoke-virtual {v2, p1, v0, v4, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 11339
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->linkDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 11342
    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->captionLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    .line 11343
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 11344
    iget p1, p0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->textX:I

    int-to-float p1, p1

    iget v2, p0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->textY:I

    int-to-float v2, v2

    invoke-virtual {v1, p1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 11345
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {p1, v1, p0, v0}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$mdrawTextSelection(Lorg/telegram/ui/ArticleViewer;Landroid/graphics/Canvas;Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;I)V

    .line 11346
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->captionLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    invoke-virtual {p1, v1, p0}, Lorg/telegram/ui/ArticleViewer$DrawingText;->draw(Landroid/graphics/Canvas;Landroid/view/View;)V

    .line 11347
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    const/4 p1, 0x1

    goto :goto_2

    :cond_5
    move p1, v0

    .line 11349
    :goto_2
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->creditLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    if-eqz v2, :cond_6

    .line 11350
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 11351
    iget v2, p0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->textX:I

    int-to-float v2, v2

    iget v3, p0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->textY:I

    iget v4, p0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->creditOffset:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 11352
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v2, v1, p0, p1}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$mdrawTextSelection(Lorg/telegram/ui/ArticleViewer;Landroid/graphics/Canvas;Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;I)V

    .line 11353
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->creditLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    invoke-virtual {p1, v1, p0}, Lorg/telegram/ui/ArticleViewer$DrawingText;->draw(Landroid/graphics/Canvas;Landroid/view/View;)V

    .line 11354
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 11356
    :cond_6
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockPhoto;

    iget p1, p1, Lorg/telegram/tgnet/TLRPC$PageBlock;->level:I

    if-lez p1, :cond_8

    const/high16 p1, 0x41900000    # 18.0f

    .line 11357
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    int-to-float v8, p1

    const/high16 p1, 0x41a00000    # 20.0f

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    int-to-float v10, p1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockPhoto;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$PageBlock;->bottom:Z

    if-eqz v2, :cond_7

    const/high16 v0, 0x40c00000    # 6.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    :cond_7
    sub-int/2addr p1, v0

    int-to-float v11, p1

    invoke-static {}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$sfgetquoteLinePaint()Landroid/graphics/Paint;

    move-result-object v12

    const/4 v9, 0x0

    move-object v7, v1

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_8
    :goto_3
    return-void
.end method

.method public onFailedDownload(Ljava/lang/String;Z)V
    .locals 0

    const/4 p1, 0x0

    .line 11432
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->updateButtonState(Z)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2

    .line 11461
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const/4 v0, 0x1

    .line 11462
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    .line 11463
    new-instance v0, Ljava/lang/StringBuilder;

    sget v1, Lorg/telegram/messenger/R$string;->AttachPhoto:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11464
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->captionLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    if-eqz v1, :cond_0

    .line 11465
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11466
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->captionLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    invoke-virtual {v1}, Lorg/telegram/ui/ArticleViewer$DrawingText;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 11468
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 29

    move-object/from16 v1, p0

    .line 11185
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 11187
    iget v2, v1, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->currentType:I

    const/4 v10, 0x2

    const/4 v12, 0x1

    if-ne v2, v12, :cond_0

    .line 11188
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 11189
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    :goto_0
    move v13, v0

    goto :goto_1

    :cond_0
    if-ne v2, v10, :cond_1

    .line 11191
    iget-object v2, v1, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->groupPosition:Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    iget v2, v2, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->ph:F

    sget-object v3, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v4, v3, Landroid/graphics/Point;->x:I

    iget v3, v3, Landroid/graphics/Point;->y:I

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    goto :goto_0

    :cond_1
    move v13, v0

    const/4 v2, 0x0

    .line 11193
    :goto_1
    iget-object v0, v1, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockPhoto;

    if-eqz v0, :cond_1e

    .line 11194
    iget-object v3, v1, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    iget-wide v4, v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockPhoto;->photo_id:J

    invoke-static {v3, v4, v5}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->-$$Nest$mgetPhotoWithId(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;J)Lorg/telegram/tgnet/TLRPC$Photo;

    move-result-object v0

    iput-object v0, v1, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->currentPhoto:Lorg/telegram/tgnet/TLRPC$Photo;

    const/high16 v0, 0x42400000    # 48.0f

    .line 11195
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    .line 11200
    iget v3, v1, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->currentType:I

    const/high16 v4, 0x41900000    # 18.0f

    if-nez v3, :cond_2

    iget-object v3, v1, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockPhoto;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$PageBlock;->level:I

    if-lez v3, :cond_2

    mul-int/lit8 v3, v3, 0xe

    int-to-float v3, v3

    .line 11201
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    add-int/2addr v3, v5

    iput v3, v1, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->textX:I

    .line 11202
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    add-int/2addr v4, v3

    sub-int v4, v13, v4

    move v5, v4

    goto :goto_2

    .line 11206
    :cond_2
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    iput v3, v1, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->textX:I

    const/high16 v3, 0x42100000    # 36.0f

    .line 11207
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int v4, v13, v3

    move v5, v4

    move v4, v13

    const/4 v3, 0x0

    .line 11209
    :goto_2
    iget-object v6, v1, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->currentPhoto:Lorg/telegram/tgnet/TLRPC$Photo;

    if-eqz v6, :cond_3

    iget-object v7, v1, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->currentPhotoObject:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    if-nez v7, :cond_4

    instance-of v7, v6, Lorg/telegram/ui/web/WebInstantView$WebPhoto;

    if-eqz v7, :cond_3

    goto :goto_3

    :cond_3
    const/high16 v11, 0x41000000    # 8.0f

    const/16 v16, 0x0

    goto/16 :goto_10

    .line 11210
    :cond_4
    :goto_3
    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    const/16 v7, 0x28

    invoke-static {v6, v7, v12}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;IZ)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v6

    iput-object v6, v1, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->currentPhotoObjectThumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 11211
    iget-object v7, v1, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->currentPhotoObject:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    const/4 v8, 0x0

    if-ne v7, v6, :cond_5

    .line 11212
    iput-object v8, v1, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->currentPhotoObjectThumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 11215
    :cond_5
    iget-object v6, v1, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->currentPhoto:Lorg/telegram/tgnet/TLRPC$Photo;

    instance-of v9, v6, Lorg/telegram/ui/web/WebInstantView$WebPhoto;

    if-eqz v9, :cond_6

    .line 11216
    check-cast v6, Lorg/telegram/ui/web/WebInstantView$WebPhoto;

    .line 11217
    iget v7, v6, Lorg/telegram/ui/web/WebInstantView$WebPhoto;->w:I

    .line 11218
    iget v6, v6, Lorg/telegram/ui/web/WebInstantView$WebPhoto;->h:I

    goto :goto_4

    .line 11220
    :cond_6
    iget v6, v7, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I

    .line 11221
    iget v7, v7, Lorg/telegram/tgnet/TLRPC$PhotoSize;->h:I

    move/from16 v28, v7

    move v7, v6

    move/from16 v6, v28

    .line 11223
    :goto_4
    iget v9, v1, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->currentType:I

    const/high16 v15, 0x40000000    # 2.0f

    if-nez v9, :cond_9

    int-to-float v2, v4

    int-to-float v7, v7

    div-float/2addr v2, v7

    int-to-float v6, v6

    mul-float/2addr v2, v6

    float-to-int v2, v2

    .line 11227
    iget-object v9, v1, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->parentBlock:Lorg/telegram/tgnet/TLRPC$PageBlock;

    instance-of v9, v9, Lorg/telegram/tgnet/TLRPC$TL_pageBlockCover;

    if-eqz v9, :cond_7

    .line 11228
    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/16 v16, 0x0

    goto :goto_5

    .line 11230
    :cond_7
    sget-object v9, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    const/16 v16, 0x0

    iget v11, v9, Landroid/graphics/Point;->x:I

    iget v9, v9, Landroid/graphics/Point;->y:I

    invoke-static {v11, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    const/high16 v11, 0x42600000    # 56.0f

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    sub-int/2addr v9, v11

    int-to-float v9, v9

    const v11, 0x3f666666    # 0.9f

    mul-float/2addr v9, v11

    float-to-int v9, v9

    if-le v2, v9, :cond_8

    int-to-float v2, v9

    div-float/2addr v2, v6

    mul-float/2addr v2, v7

    float-to-int v4, v2

    sub-int v2, v13, v3

    sub-int/2addr v2, v4

    .line 11235
    div-int/2addr v2, v10

    add-int/2addr v3, v2

    move v2, v9

    :cond_8
    :goto_5
    move v6, v4

    move v9, v15

    const/high16 v11, 0x41000000    # 8.0f

    :goto_6
    move v4, v3

    move v3, v2

    goto :goto_9

    :cond_9
    const/16 v16, 0x0

    if-ne v9, v10, :cond_d

    .line 11240
    iget-object v6, v1, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->groupPosition:Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    iget v6, v6, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->flags:I

    and-int/2addr v6, v10

    if-nez v6, :cond_a

    .line 11241
    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    sub-int/2addr v4, v6

    .line 11243
    :cond_a
    iget-object v6, v1, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->groupPosition:Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    iget v6, v6, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->flags:I

    and-int/lit8 v6, v6, 0x8

    if-nez v6, :cond_b

    .line 11244
    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    sub-int v6, v2, v6

    goto :goto_7

    :cond_b
    move v6, v2

    .line 11246
    :goto_7
    iget-object v7, v1, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->groupPosition:Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    iget v7, v7, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->leftSpanOffset:I

    if-eqz v7, :cond_c

    mul-int/2addr v7, v13

    int-to-float v7, v7

    const/high16 v9, 0x447a0000    # 1000.0f

    div-float/2addr v7, v9

    move v9, v15

    const/high16 v11, 0x41000000    # 8.0f

    float-to-double v14, v7

    .line 11247
    invoke-static {v14, v15}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v14

    double-to-int v7, v14

    sub-int/2addr v4, v7

    add-int/2addr v3, v7

    :goto_8
    move/from16 v28, v3

    move v3, v2

    move v2, v6

    move v6, v4

    move/from16 v4, v28

    goto :goto_9

    :cond_c
    move v9, v15

    const/high16 v11, 0x41000000    # 8.0f

    goto :goto_8

    :cond_d
    move v9, v15

    const/high16 v11, 0x41000000    # 8.0f

    move v6, v4

    goto :goto_6

    .line 11252
    :goto_9
    iget-object v7, v1, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->imageView:Lorg/telegram/messenger/ImageReceiver;

    int-to-float v4, v4

    iget-boolean v14, v1, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->isFirst:Z

    if-nez v14, :cond_f

    iget v14, v1, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->currentType:I

    if-eq v14, v12, :cond_f

    if-eq v14, v10, :cond_f

    iget-object v14, v1, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockPhoto;

    iget v14, v14, Lorg/telegram/tgnet/TLRPC$PageBlock;->level:I

    if-lez v14, :cond_e

    goto :goto_a

    :cond_e
    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    int-to-float v14, v14

    goto :goto_b

    :cond_f
    :goto_a
    const/4 v14, 0x0

    :goto_b
    int-to-float v15, v6

    move/from16 v17, v9

    int-to-float v9, v2

    invoke-virtual {v7, v4, v14, v15, v9}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(FFFF)V

    .line 11253
    iget v4, v1, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->currentType:I

    if-nez v4, :cond_10

    .line 11254
    iput-object v8, v1, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->currentFilter:Ljava/lang/String;

    goto :goto_c

    .line 11256
    :cond_10
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-array v7, v10, [Ljava/lang/Object;

    aput-object v6, v7, v16

    aput-object v2, v7, v12

    const-string v2, "%d_%d"

    invoke-static {v4, v2, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->currentFilter:Ljava/lang/String;

    .line 11258
    :goto_c
    const-string v2, "80_80_b"

    iput-object v2, v1, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->currentThumbFilter:Ljava/lang/String;

    .line 11260
    iget-object v2, v1, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v2}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/ArticleViewer;)I

    move-result v2

    invoke-static {v2}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/DownloadController;->getCurrentDownloadMask()I

    move-result v2

    and-int/2addr v2, v12

    if-eqz v2, :cond_11

    move v2, v12

    goto :goto_d

    :cond_11
    move/from16 v2, v16

    :goto_d
    iput-boolean v2, v1, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->autoDownload:Z

    .line 11261
    iget-boolean v2, v1, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->calcHeight:Z

    if-eqz v2, :cond_12

    goto/16 :goto_f

    .line 11263
    :cond_12
    iget-object v2, v1, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->currentPhoto:Lorg/telegram/tgnet/TLRPC$Photo;

    instance-of v2, v2, Lorg/telegram/ui/web/WebInstantView$WebPhoto;

    if-eqz v2, :cond_13

    .line 11264
    iput-boolean v12, v1, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->autoDownload:Z

    .line 11265
    iget-object v2, v1, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->imageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2, v8}, Lorg/telegram/messenger/ImageReceiver;->setStrippedLocation(Lorg/telegram/messenger/ImageLocation;)V

    .line 11266
    iget-object v2, v1, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->currentPhoto:Lorg/telegram/tgnet/TLRPC$Photo;

    check-cast v2, Lorg/telegram/ui/web/WebInstantView$WebPhoto;

    iget-object v4, v1, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->imageView:Lorg/telegram/messenger/ImageReceiver;

    new-instance v6, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell$$ExternalSyntheticLambda0;

    invoke-direct {v6, v1}, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;)V

    invoke-static {v2, v4, v6}, Lorg/telegram/ui/web/WebInstantView;->loadPhoto(Lorg/telegram/ui/web/WebInstantView$WebPhoto;Lorg/telegram/messenger/ImageReceiver;Ljava/lang/Runnable;)V

    goto/16 :goto_f

    .line 11270
    :cond_13
    iget-object v2, v1, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v2}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/ArticleViewer;)I

    move-result v2

    invoke-static {v2}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v2

    iget-object v4, v1, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->currentPhotoObject:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    invoke-virtual {v2, v4, v12}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object v2

    .line 11271
    iget-boolean v4, v1, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->autoDownload:Z

    if-nez v4, :cond_15

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_14

    goto :goto_e

    .line 11275
    :cond_14
    iget-object v2, v1, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->imageView:Lorg/telegram/messenger/ImageReceiver;

    iget-object v4, v1, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->currentPhotoObject:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v6, v1, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->currentPhoto:Lorg/telegram/tgnet/TLRPC$Photo;

    invoke-static {v4, v6}, Lorg/telegram/messenger/ImageLocation;->getForPhoto(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Photo;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/telegram/messenger/ImageReceiver;->setStrippedLocation(Lorg/telegram/messenger/ImageLocation;)V

    .line 11276
    iget-object v2, v1, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->imageView:Lorg/telegram/messenger/ImageReceiver;

    iget-object v4, v1, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->currentFilter:Ljava/lang/String;

    iget-object v6, v1, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->currentPhotoObjectThumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v7, v1, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->currentPhoto:Lorg/telegram/tgnet/TLRPC$Photo;

    invoke-static {v6, v7}, Lorg/telegram/messenger/ImageLocation;->getForPhoto(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Photo;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v21

    iget-object v6, v1, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->currentThumbFilter:Ljava/lang/String;

    iget-object v7, v1, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->currentPhotoObject:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget v7, v7, Lorg/telegram/tgnet/TLRPC$PhotoSize;->size:I

    int-to-long v7, v7

    iget-object v9, v1, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    invoke-static {v9}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->-$$Nest$fgetcurrentPage(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Lorg/telegram/tgnet/TLRPC$WebPage;

    move-result-object v26

    const/16 v27, 0x1

    const/16 v19, 0x0

    const/16 v25, 0x0

    move-object/from16 v18, v2

    move-object/from16 v20, v4

    move-object/from16 v22, v6

    move-wide/from16 v23, v7

    invoke-virtual/range {v18 .. v27}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;JLjava/lang/String;Ljava/lang/Object;I)V

    goto :goto_f

    .line 11272
    :cond_15
    :goto_e
    iget-object v2, v1, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->imageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2, v8}, Lorg/telegram/messenger/ImageReceiver;->setStrippedLocation(Lorg/telegram/messenger/ImageLocation;)V

    .line 11273
    iget-object v2, v1, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->imageView:Lorg/telegram/messenger/ImageReceiver;

    iget-object v4, v1, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->currentPhotoObject:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v6, v1, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->currentPhoto:Lorg/telegram/tgnet/TLRPC$Photo;

    invoke-static {v4, v6}, Lorg/telegram/messenger/ImageLocation;->getForPhoto(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Photo;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v19

    iget-object v4, v1, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->currentFilter:Ljava/lang/String;

    iget-object v6, v1, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->currentPhotoObjectThumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v7, v1, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->currentPhoto:Lorg/telegram/tgnet/TLRPC$Photo;

    invoke-static {v6, v7}, Lorg/telegram/messenger/ImageLocation;->getForPhoto(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Photo;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v21

    iget-object v6, v1, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->currentThumbFilter:Ljava/lang/String;

    iget-object v7, v1, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->currentPhotoObject:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget v7, v7, Lorg/telegram/tgnet/TLRPC$PhotoSize;->size:I

    int-to-long v7, v7

    iget-object v9, v1, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    invoke-static {v9}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->-$$Nest$fgetcurrentPage(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Lorg/telegram/tgnet/TLRPC$WebPage;

    move-result-object v26

    const/16 v27, 0x1

    const/16 v25, 0x0

    move-object/from16 v18, v2

    move-object/from16 v20, v4

    move-object/from16 v22, v6

    move-wide/from16 v23, v7

    invoke-virtual/range {v18 .. v27}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;JLjava/lang/String;Ljava/lang/Object;I)V

    .line 11279
    :goto_f
    iget-object v2, v1, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->imageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->getImageX()F

    move-result v2

    iget-object v4, v1, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->imageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v4}, Lorg/telegram/messenger/ImageReceiver;->getImageWidth()F

    move-result v4

    int-to-float v6, v0

    sub-float/2addr v4, v6

    div-float v4, v4, v17

    add-float/2addr v2, v4

    float-to-int v2, v2

    iput v2, v1, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->buttonX:I

    .line 11280
    iget-object v2, v1, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->imageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->getImageY()F

    move-result v2

    iget-object v4, v1, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->imageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v4}, Lorg/telegram/messenger/ImageReceiver;->getImageHeight()F

    move-result v4

    sub-float/2addr v4, v6

    div-float v4, v4, v17

    add-float/2addr v2, v4

    float-to-int v2, v2

    iput v2, v1, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->buttonY:I

    .line 11281
    iget-object v4, v1, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    iget v6, v1, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->buttonX:I

    add-int v7, v6, v0

    add-int/2addr v0, v2

    invoke-virtual {v4, v6, v2, v7, v0}, Lorg/telegram/ui/Components/RadialProgress2;->setProgressRect(IIII)V

    move v8, v3

    goto :goto_11

    :goto_10
    move v8, v2

    .line 11283
    :goto_11
    iget-object v0, v1, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->imageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getImageY()F

    move-result v0

    iget-object v2, v1, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->imageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->getImageHeight()F

    move-result v2

    add-float/2addr v0, v2

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, v1, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->textY:I

    .line 11285
    iget v2, v1, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->currentType:I

    if-nez v2, :cond_19

    move v4, v5

    move v5, v0

    .line 11286
    iget-object v0, v1, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v6, v1, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockPhoto;

    iget-object v2, v6, Lorg/telegram/tgnet/TLRPC$TL_pageBlockPhoto;->caption:Lorg/telegram/tgnet/TLRPC$TL_pageCaption;

    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$TL_pageCaption;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    iget-object v7, v1, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    const/4 v2, 0x0

    invoke-static/range {v0 .. v7}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$mcreateLayoutForText(Lorg/telegram/ui/ArticleViewer;Landroid/view/View;Ljava/lang/CharSequence;Lorg/telegram/tgnet/TLRPC$RichText;IILorg/telegram/tgnet/TLRPC$PageBlock;Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Lorg/telegram/ui/ArticleViewer$DrawingText;

    move-result-object v0

    iput-object v0, v1, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->captionLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    const/high16 v14, 0x40800000    # 4.0f

    if-eqz v0, :cond_16

    .line 11288
    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iget-object v2, v1, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->captionLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    invoke-virtual {v2}, Lorg/telegram/ui/ArticleViewer$DrawingText;->getHeight()I

    move-result v2

    add-int/2addr v0, v2

    iput v0, v1, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->creditOffset:I

    .line 11289
    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int/2addr v0, v2

    add-int/2addr v8, v0

    :cond_16
    move v15, v8

    .line 11291
    iget-object v0, v1, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v6, v1, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockPhoto;

    iget-object v2, v6, Lorg/telegram/tgnet/TLRPC$TL_pageBlockPhoto;->caption:Lorg/telegram/tgnet/TLRPC$TL_pageCaption;

    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$TL_pageCaption;->credit:Lorg/telegram/tgnet/TLRPC$RichText;

    iget v2, v1, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->textY:I

    iget v5, v1, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->creditOffset:I

    add-int/2addr v5, v2

    iget-object v2, v1, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    invoke-static {v2}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->-$$Nest$fgetisRtl(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Z

    move-result v2

    if-eqz v2, :cond_17

    invoke-static {}, Lorg/telegram/ui/Components/StaticLayoutEx;->ALIGN_RIGHT()Landroid/text/Layout$Alignment;

    move-result-object v2

    :goto_12
    move-object v7, v2

    goto :goto_13

    :cond_17
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    goto :goto_12

    :goto_13
    const/4 v8, 0x0

    iget-object v9, v1, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    const/4 v2, 0x0

    invoke-static/range {v0 .. v9}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$mcreateLayoutForText(Lorg/telegram/ui/ArticleViewer;Landroid/view/View;Ljava/lang/CharSequence;Lorg/telegram/tgnet/TLRPC$RichText;IILorg/telegram/tgnet/TLRPC$PageBlock;Landroid/text/Layout$Alignment;ILorg/telegram/ui/ArticleViewer$WebpageAdapter;)Lorg/telegram/ui/ArticleViewer$DrawingText;

    move-result-object v0

    iput-object v0, v1, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->creditLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    if-eqz v0, :cond_18

    .line 11293
    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iget-object v2, v1, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->creditLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    invoke-virtual {v2}, Lorg/telegram/ui/ArticleViewer$DrawingText;->getHeight()I

    move-result v2

    add-int/2addr v0, v2

    add-int v8, v15, v0

    goto :goto_14

    :cond_18
    move v8, v15

    .line 11296
    :cond_19
    :goto_14
    iget-boolean v0, v1, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->isFirst:Z

    if-nez v0, :cond_1a

    iget v0, v1, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->currentType:I

    if-nez v0, :cond_1a

    iget-object v0, v1, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockPhoto;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$PageBlock;->level:I

    if-gtz v0, :cond_1a

    .line 11297
    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    add-int/2addr v8, v0

    .line 11299
    :cond_1a
    iget-object v0, v1, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->parentBlock:Lorg/telegram/tgnet/TLRPC$PageBlock;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockCover;

    if-eqz v0, :cond_1b

    iget-object v0, v1, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->-$$Nest$fgetblocks(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1b

    iget-object v0, v1, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->-$$Nest$fgetblocks(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v12, :cond_1b

    iget-object v0, v1, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->-$$Nest$fgetblocks(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockChannel;

    if-eqz v0, :cond_1b

    move/from16 v16, v12

    .line 11300
    :cond_1b
    iget v0, v1, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->currentType:I

    if-eq v0, v10, :cond_1c

    if-nez v16, :cond_1c

    .line 11301
    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    add-int/2addr v8, v0

    :cond_1c
    move v12, v8

    .line 11303
    iget-object v0, v1, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->captionLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    if-eqz v0, :cond_1d

    .line 11304
    iget v2, v1, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->textX:I

    iput v2, v0, Lorg/telegram/ui/ArticleViewer$DrawingText;->x:I

    .line 11305
    iget v2, v1, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->textY:I

    iput v2, v0, Lorg/telegram/ui/ArticleViewer$DrawingText;->y:I

    .line 11308
    :cond_1d
    iget-object v0, v1, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->creditLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    if-eqz v0, :cond_1e

    .line 11309
    iget v2, v1, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->textX:I

    iput v2, v0, Lorg/telegram/ui/ArticleViewer$DrawingText;->x:I

    .line 11310
    iget v2, v1, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->textY:I

    iget v3, v1, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->creditOffset:I

    add-int/2addr v2, v3

    iput v2, v0, Lorg/telegram/ui/ArticleViewer$DrawingText;->y:I

    .line 11315
    :cond_1e
    iget-object v0, v1, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->channelCell:Lorg/telegram/ui/ArticleViewer$BlockChannelCell;

    move/from16 v2, p1

    move/from16 v3, p2

    invoke-virtual {v0, v2, v3}, Landroid/view/View;->measure(II)V

    .line 11316
    iget-object v0, v1, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->channelCell:Lorg/telegram/ui/ArticleViewer$BlockChannelCell;

    iget-object v2, v1, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->imageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->getImageHeight()F

    move-result v2

    const/high16 v3, 0x421c0000    # 39.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 11318
    invoke-virtual {v1, v13, v12}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public onProgressDownload(Ljava/lang/String;JJ)V
    .locals 0

    .line 11448
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    long-to-float p2, p2

    long-to-float p3, p4

    div-float/2addr p2, p3

    const/high16 p3, 0x3f800000    # 1.0f

    invoke-static {p3, p2}, Ljava/lang/Math;->min(FF)F

    move-result p2

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p3}, Lorg/telegram/ui/Components/RadialProgress2;->setProgress(FZ)V

    .line 11449
    iget p1, p0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->buttonState:I

    if-eq p1, p3, :cond_0

    .line 11450
    invoke-virtual {p0, p3}, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->updateButtonState(Z)V

    :cond_0
    return-void
.end method

.method public onProgressUpload(Ljava/lang/String;JJZ)V
    .locals 0

    return-void
.end method

.method public onSuccessDownload(Ljava/lang/String;)V
    .locals 2

    .line 11437
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Components/RadialProgress2;->setProgress(FZ)V

    .line 11438
    invoke-virtual {p0, v1}, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->updateButtonState(Z)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    .line 11146
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v1, v0, Lorg/telegram/ui/ArticleViewer;->pinchToZoomHelper:Lorg/telegram/ui/PinchToZoomHelper;

    iget-object v4, p0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->imageView:Lorg/telegram/messenger/ImageReceiver;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v3, p0

    move-object v2, p1

    invoke-virtual/range {v1 .. v7}, Lorg/telegram/ui/PinchToZoomHelper;->checkPinchToZoom(Landroid/view/MotionEvent;Landroid/view/View;Lorg/telegram/messenger/ImageReceiver;Landroid/view/View;Landroid/view/View;Lorg/telegram/messenger/MessageObject;)Z

    move-result p1

    const/4 v7, 0x1

    if-eqz p1, :cond_0

    return v7

    .line 11149
    :cond_0
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    .line 11150
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    .line 11151
    iget-object v1, v3, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->channelCell:Lorg/telegram/ui/ArticleViewer$BlockChannelCell;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/4 v8, 0x0

    if-nez v1, :cond_2

    iget-object v1, v3, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->channelCell:Lorg/telegram/ui/ArticleViewer$BlockChannelCell;

    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v1

    cmpl-float v1, v0, v1

    if-lez v1, :cond_2

    iget-object v1, v3, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->channelCell:Lorg/telegram/ui/ArticleViewer$BlockChannelCell;

    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v1

    const/high16 v4, 0x421c0000    # 39.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v1, v4

    cmpg-float v1, v0, v1

    if-gez v1, :cond_2

    .line 11152
    iget-object p1, v3, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->-$$Nest$fgetchannelBlock(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Lorg/telegram/tgnet/TLRPC$TL_pageBlockChannel;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne p1, v7, :cond_1

    .line 11153
    iget-object p1, v3, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/ArticleViewer;)I

    move-result p1

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-object v0, v3, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->-$$Nest$fgetchannelBlock(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Lorg/telegram/tgnet/TLRPC$TL_pageBlockChannel;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockChannel;->channel:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->getPublicUsername(Lorg/telegram/tgnet/TLRPC$Chat;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, v3, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v1}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$fgetparentFragment(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {p1, v0, v1, v2}, Lorg/telegram/messenger/MessagesController;->openByUserName(Ljava/lang/String;Lorg/telegram/ui/ActionBar/BaseFragment;I)V

    .line 11154
    iget-object p1, v3, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-virtual {p1, v8, v7}, Lorg/telegram/ui/ArticleViewer;->close(ZZ)V

    :cond_1
    return v7

    .line 11158
    :cond_2
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, v3, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->imageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1, p1, v0}, Lorg/telegram/messenger/ImageReceiver;->isInsideImage(FF)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 11159
    iget v1, v3, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->buttonState:I

    const/4 v4, -0x1

    if-eq v1, v4, :cond_3

    iget v1, v3, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->buttonX:I

    int-to-float v4, v1

    cmpl-float v4, p1, v4

    if-ltz v4, :cond_3

    const/high16 v4, 0x42400000    # 48.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    add-int/2addr v1, v5

    int-to-float v1, v1

    cmpg-float p1, p1, v1

    if-gtz p1, :cond_3

    iget p1, v3, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->buttonY:I

    int-to-float v1, p1

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_3

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    add-int/2addr p1, v1

    int-to-float p1, p1

    cmpg-float p1, v0, p1

    if-lez p1, :cond_4

    :cond_3
    iget p1, v3, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->buttonState:I

    if-nez p1, :cond_5

    .line 11160
    :cond_4
    iput v7, v3, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->buttonPressed:I

    .line 11161
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_0

    .line 11163
    :cond_5
    iput-boolean v7, v3, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->photoPressed:Z

    goto :goto_0

    .line 11165
    :cond_6
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne p1, v7, :cond_8

    .line 11166
    iget-boolean p1, v3, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->photoPressed:Z

    if-eqz p1, :cond_7

    .line 11167
    iput-boolean v8, v3, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->photoPressed:Z

    .line 11168
    iget-object p1, v3, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v0, v3, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockPhoto;

    iget-object v1, v3, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/ArticleViewer;->openPhoto(Lorg/telegram/tgnet/TLRPC$PageBlock;Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Z

    goto :goto_0

    .line 11169
    :cond_7
    iget p1, v3, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->buttonPressed:I

    if-ne p1, v7, :cond_9

    .line 11170
    iput v8, v3, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->buttonPressed:I

    .line 11171
    invoke-virtual {p0, v8}, Landroid/view/View;->playSoundEffect(I)V

    .line 11172
    invoke-direct {p0, v7}, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->didPressedButton(Z)V

    .line 11173
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_0

    .line 11175
    :cond_8
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_9

    .line 11176
    iput-boolean v8, v3, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->photoPressed:Z

    .line 11177
    iput v8, v3, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->buttonPressed:I

    .line 11179
    :cond_9
    :goto_0
    iget-boolean p1, v3, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->photoPressed:Z

    if-nez p1, :cond_b

    iget p1, v3, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->buttonPressed:I

    if-nez p1, :cond_b

    iget-object v0, v3, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v1, v3, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    iget-object v4, v3, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->captionLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    iget v5, v3, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->textX:I

    iget v6, v3, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->textY:I

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$mcheckLayoutForLinks(Lorg/telegram/ui/ArticleViewer;Lorg/telegram/ui/ArticleViewer$WebpageAdapter;Landroid/view/MotionEvent;Landroid/view/View;Lorg/telegram/ui/ArticleViewer$DrawingText;II)Z

    move-result p1

    if-nez p1, :cond_b

    iget-object v0, v3, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v1, v3, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    iget-object v4, v3, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->creditLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    iget v5, v3, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->textX:I

    iget p1, v3, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->textY:I

    iget v6, v3, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->creditOffset:I

    add-int/2addr v6, p1

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$mcheckLayoutForLinks(Lorg/telegram/ui/ArticleViewer;Lorg/telegram/ui/ArticleViewer$WebpageAdapter;Landroid/view/MotionEvent;Landroid/view/View;Lorg/telegram/ui/ArticleViewer$DrawingText;II)Z

    move-result p1

    if-nez p1, :cond_b

    invoke-super {p0, v2}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_a

    goto :goto_1

    :cond_a
    return v8

    :cond_b
    :goto_1
    return v7
.end method

.method public setBlock(Lorg/telegram/tgnet/TLRPC$TL_pageBlockPhoto;ZZZ)V
    .locals 2

    const/4 p2, 0x0

    .line 11110
    iput-object p2, p0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->parentBlock:Lorg/telegram/tgnet/TLRPC$PageBlock;

    .line 11111
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockPhoto;

    .line 11113
    iput-boolean p3, p0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->isFirst:Z

    .line 11114
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->channelCell:Lorg/telegram/ui/ArticleViewer$BlockChannelCell;

    const/4 p3, 0x4

    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    .line 11115
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockPhoto;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockPhoto;->url:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 11116
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p3, Lorg/telegram/messenger/R$drawable;->msg_instant_link:I

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->linkDrawable:Landroid/graphics/drawable/Drawable;

    .line 11118
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockPhoto;

    if-eqz p1, :cond_2

    .line 11119
    iget-object p3, p0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    iget-wide v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockPhoto;->photo_id:J

    invoke-static {p3, v0, v1}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->-$$Nest$mgetPhotoWithId(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;J)Lorg/telegram/tgnet/TLRPC$Photo;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 11121
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getPhotoSize()I

    move-result p2

    invoke-static {p1, p2}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->currentPhotoObject:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    goto :goto_0

    .line 11123
    :cond_1
    iput-object p2, p0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->currentPhotoObject:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    goto :goto_0

    .line 11126
    :cond_2
    iput-object p2, p0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->currentPhotoObject:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    :goto_0
    const/4 p1, 0x0

    .line 11128
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->updateButtonState(Z)V

    .line 11129
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setParentBlock(Lorg/telegram/tgnet/TLRPC$PageBlock;)V
    .locals 1

    .line 11133
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->parentBlock:Lorg/telegram/tgnet/TLRPC$PageBlock;

    .line 11134
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->-$$Nest$fgetchannelBlock(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Lorg/telegram/tgnet/TLRPC$TL_pageBlockChannel;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->parentBlock:Lorg/telegram/tgnet/TLRPC$PageBlock;

    instance-of p1, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockCover;

    if-eqz p1, :cond_0

    .line 11135
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->channelCell:Lorg/telegram/ui/ArticleViewer$BlockChannelCell;

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->-$$Nest$fgetchannelBlock(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Lorg/telegram/tgnet/TLRPC$TL_pageBlockChannel;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->setBlock(Lorg/telegram/tgnet/TLRPC$TL_pageBlockChannel;)V

    .line 11136
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->channelCell:Lorg/telegram/ui/ArticleViewer$BlockChannelCell;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public updateButtonState(Z)V
    .locals 6

    .line 11387
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->currentPhotoObject:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object v0

    .line 11388
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v1}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/ArticleViewer;)I

    move-result v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->currentPhotoObject:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object v1

    .line 11389
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v2}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/ArticleViewer;)I

    move-result v2

    invoke-static {v2}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v2

    iget-object v4, p0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->currentPhotoObject:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object v2

    .line 11390
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v5

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v3

    .line 11391
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 11392
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    const/4 v0, 0x4

    invoke-virtual {p1, v0, v5, v5}, Lorg/telegram/ui/Components/RadialProgress2;->setIcon(IZZ)V

    return-void

    :cond_2
    if-eqz v1, :cond_3

    .line 11397
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/ArticleViewer;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/telegram/messenger/DownloadController;->removeLoadingFileObserver(Lorg/telegram/messenger/DownloadController$FileDownloadProgressListener;)V

    const/4 v0, -0x1

    .line 11398
    iput v0, p0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->buttonState:I

    .line 11399
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->getIconForCurrentState()I

    move-result v1

    invoke-virtual {v0, v1, v5, p1}, Lorg/telegram/ui/Components/RadialProgress2;->setIcon(IZZ)V

    goto :goto_4

    .line 11401
    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v1}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/ArticleViewer;)I

    move-result v1

    invoke-static {v1}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, p0}, Lorg/telegram/messenger/DownloadController;->addLoadingFileObserver(Ljava/lang/String;Lorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/DownloadController$FileDownloadProgressListener;)V

    .line 11403
    iget-boolean v1, p0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->autoDownload:Z

    const/4 v2, 0x0

    if-nez v1, :cond_5

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v1}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/ArticleViewer;)I

    move-result v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/FileLoader;->isLoadingFile(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_2

    .line 11408
    :cond_4
    iput v5, p0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->buttonState:I

    goto :goto_3

    .line 11404
    :cond_5
    :goto_2
    iput v3, p0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->buttonState:I

    .line 11405
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/ImageLoader;->getFileProgress(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 11406
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 11410
    :cond_6
    :goto_3
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->getIconForCurrentState()I

    move-result v1

    invoke-virtual {v0, v1, v3, p1}, Lorg/telegram/ui/Components/RadialProgress2;->setIcon(IZZ)V

    .line 11411
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    invoke-virtual {p1, v2, v5}, Lorg/telegram/ui/Components/RadialProgress2;->setProgress(FZ)V

    .line 11413
    :goto_4
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
