.class Lorg/telegram/ui/ArticleViewer$BlockVideoCell;
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
    name = "BlockVideoCell"
.end annotation


# instance fields
.field private TAG:I

.field private aspectRatioFrameLayout:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

.field aspectRationContainer:Landroid/widget/FrameLayout;

.field private autoDownload:Z

.field private buttonPressed:I

.field private buttonState:I

.field private buttonX:I

.field private buttonY:I

.field private calcHeight:Z

.field private cancelLoading:Z

.field private captionLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

.field private channelCell:Lorg/telegram/ui/ArticleViewer$BlockChannelCell;

.field private creditLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

.field private creditOffset:I

.field private currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockVideo;

.field private currentDocument:Lorg/telegram/tgnet/TLRPC$Document;

.field private currentType:I

.field private firstFrameRendered:Z

.field private groupPosition:Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

.field private imageView:Lorg/telegram/messenger/ImageReceiver;

.field private isFirst:Z

.field private isGif:Z

.field private parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

.field private parentBlock:Lorg/telegram/tgnet/TLRPC$PageBlock;

.field private photoPressed:Z

.field private radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

.field private textX:I

.field private textY:I

.field private textureView:Landroid/view/TextureView;

.field final synthetic this$0:Lorg/telegram/ui/ArticleViewer;

.field private videoState:Lorg/telegram/ui/ArticleViewer$BlockVideoCellState;


# direct methods
.method static bridge synthetic -$$Nest$fgetcurrentBlock(Lorg/telegram/ui/ArticleViewer$BlockVideoCell;)Lorg/telegram/tgnet/TLRPC$TL_pageBlockVideo;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockVideo;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetimageView(Lorg/telegram/ui/ArticleViewer$BlockVideoCell;)Lorg/telegram/messenger/ImageReceiver;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->imageView:Lorg/telegram/messenger/ImageReceiver;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettextureView(Lorg/telegram/ui/ArticleViewer$BlockVideoCell;)Landroid/view/TextureView;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->textureView:Landroid/view/TextureView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetvideoState(Lorg/telegram/ui/ArticleViewer$BlockVideoCell;)Lorg/telegram/ui/ArticleViewer$BlockVideoCellState;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->videoState:Lorg/telegram/ui/ArticleViewer$BlockVideoCellState;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputfirstFrameRendered(Lorg/telegram/ui/ArticleViewer$BlockVideoCell;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->firstFrameRendered:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputgroupPosition(Lorg/telegram/ui/ArticleViewer$BlockVideoCell;Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->groupPosition:Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    return-void
.end method

.method static bridge synthetic -$$Nest$mstartVideoPlayer(Lorg/telegram/ui/ArticleViewer$BlockVideoCell;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->startVideoPlayer()V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;Lorg/telegram/ui/ArticleViewer$WebpageAdapter;I)V
    .locals 5

    .line 7058
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    .line 7059
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 7060
    iput-object p3, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    const/4 p3, 0x0

    .line 7062
    invoke-virtual {p0, p3}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 7063
    new-instance v0, Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/ImageReceiver;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->imageView:Lorg/telegram/messenger/ImageReceiver;

    const/4 v1, 0x1

    .line 7064
    invoke-virtual {v0, v1}, Lorg/telegram/messenger/ImageReceiver;->setNeedsQualityThumb(Z)V

    .line 7065
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->imageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/ImageReceiver;->setShouldGenerateQualityThumb(Z)V

    .line 7066
    iput p4, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->currentType:I

    .line 7067
    new-instance p4, Lorg/telegram/ui/Components/RadialProgress2;

    invoke-direct {p4, p0}, Lorg/telegram/ui/Components/RadialProgress2;-><init>(Landroid/view/View;)V

    iput-object p4, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    const/4 v0, -0x1

    .line 7068
    invoke-virtual {p4, v0}, Lorg/telegram/ui/Components/RadialProgress2;->setProgressColor(I)V

    .line 7069
    iget-object p4, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    const/high16 v2, 0x7f000000

    const v3, -0x262627

    const/high16 v4, 0x66000000

    invoke-virtual {p4, v4, v2, v0, v3}, Lorg/telegram/ui/Components/RadialProgress2;->setColors(IIII)V

    .line 7070
    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/ArticleViewer;)I

    move-result p4

    invoke-static {p4}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object p4

    invoke-virtual {p4}, Lorg/telegram/messenger/DownloadController;->generateObserverTag()I

    move-result p4

    iput p4, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->TAG:I

    .line 7071
    new-instance p4, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    invoke-direct {p4, p1, p2, v2, v1}, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;-><init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;Lorg/telegram/ui/ArticleViewer$WebpageAdapter;I)V

    iput-object p4, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->channelCell:Lorg/telegram/ui/ArticleViewer$BlockChannelCell;

    .line 7073
    new-instance p1, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->aspectRatioFrameLayout:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    .line 7074
    invoke-virtual {p1, p3}, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->setResizeMode(I)V

    .line 7075
    new-instance p1, Landroid/view/TextureView;

    invoke-direct {p1, p2}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->textureView:Landroid/view/TextureView;

    .line 7076
    invoke-virtual {p1, p3}, Landroid/view/TextureView;->setOpaque(Z)V

    .line 7077
    new-instance p1, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->aspectRationContainer:Landroid/widget/FrameLayout;

    .line 7078
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->aspectRatioFrameLayout:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    iget-object p2, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->textureView:Landroid/view/TextureView;

    const/4 p3, -0x2

    invoke-static {v0, p3, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 7080
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->aspectRationContainer:Landroid/widget/FrameLayout;

    iget-object p2, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->aspectRatioFrameLayout:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    const/16 p3, 0x11

    invoke-static {v0, v0, p3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 7081
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->aspectRationContainer:Landroid/widget/FrameLayout;

    const/high16 p2, -0x40000000    # -2.0f

    invoke-static {v0, p2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p3

    invoke-virtual {p0, p1, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 7082
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->channelCell:Lorg/telegram/ui/ArticleViewer$BlockChannelCell;

    invoke-static {v0, p2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private didPressedButton(Z)V
    .locals 13

    .line 7391
    iget v0, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->buttonState:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 7392
    iput-boolean v1, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->cancelLoading:Z

    .line 7393
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1}, Lorg/telegram/ui/Components/RadialProgress2;->setProgress(FZ)V

    .line 7394
    iget-boolean v0, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->isGif:Z

    if-eqz v0, :cond_0

    .line 7395
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->currentDocument:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    const/16 v1, 0x28

    invoke-static {v0, v1}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v0

    .line 7396
    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->imageView:Lorg/telegram/messenger/ImageReceiver;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->currentDocument:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v1}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v4

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->currentDocument:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v0, v1}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v6

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->currentDocument:Lorg/telegram/tgnet/TLRPC$Document;

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$Document;->size:J

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->-$$Nest$fgetcurrentPage(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Lorg/telegram/tgnet/TLRPC$WebPage;

    move-result-object v11

    const/4 v12, 0x1

    const/4 v5, 0x0

    const-string v7, "80_80_b"

    const/4 v10, 0x0

    invoke-virtual/range {v3 .. v12}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;JLjava/lang/String;Ljava/lang/Object;I)V

    goto :goto_0

    .line 7398
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/ArticleViewer;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->currentDocument:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    invoke-static {v3}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->-$$Nest$fgetcurrentPage(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Lorg/telegram/tgnet/TLRPC$WebPage;

    move-result-object v3

    invoke-virtual {v0, v1, v3, v2, v2}, Lorg/telegram/messenger/FileLoader;->loadFile(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/Object;II)V

    .line 7400
    :goto_0
    iput v2, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->buttonState:I

    .line 7401
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->getIconForCurrentState()I

    move-result v1

    invoke-virtual {v0, v1, v2, p1}, Lorg/telegram/ui/Components/RadialProgress2;->setIcon(IZZ)V

    .line 7402
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void

    :cond_1
    if-ne v0, v2, :cond_3

    .line 7404
    iput-boolean v2, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->cancelLoading:Z

    .line 7405
    iget-boolean v0, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->isGif:Z

    if-eqz v0, :cond_2

    .line 7406
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->imageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->cancelLoadImage()V

    goto :goto_1

    .line 7408
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/ArticleViewer;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->currentDocument:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/FileLoader;->cancelLoadFile(Lorg/telegram/tgnet/TLRPC$Document;)V

    .line 7410
    :goto_1
    iput v1, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->buttonState:I

    .line 7411
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->getIconForCurrentState()I

    move-result v2

    invoke-virtual {v0, v2, v1, p1}, Lorg/telegram/ui/Components/RadialProgress2;->setIcon(IZZ)V

    .line 7412
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void

    :cond_3
    const/4 v3, 0x2

    if-ne v0, v3, :cond_4

    .line 7414
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->imageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/ImageReceiver;->setAllowStartAnimation(Z)V

    .line 7415
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->imageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->startAnimation()V

    const/4 v0, -0x1

    .line 7416
    iput v0, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->buttonState:I

    .line 7417
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->getIconForCurrentState()I

    move-result v2

    invoke-virtual {v0, v2, v1, p1}, Lorg/telegram/ui/Components/RadialProgress2;->setIcon(IZZ)V

    return-void

    :cond_4
    const/4 p1, 0x3

    if-ne v0, p1, :cond_5

    .line 7419
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockVideo;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/ArticleViewer;->openPhoto(Lorg/telegram/tgnet/TLRPC$PageBlock;Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Z

    :cond_5
    return-void
.end method

.method private getIconForCurrentState()I
    .locals 4

    .line 7336
    iget v0, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->buttonState:I

    const/4 v1, 0x2

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x1

    const/4 v3, 0x3

    if-ne v0, v2, :cond_1

    return v3

    :cond_1
    if-ne v0, v1, :cond_2

    const/16 v0, 0x8

    return v0

    :cond_2
    if-ne v0, v3, :cond_3

    const/4 v0, 0x0

    return v0

    :cond_3
    const/4 v0, 0x4

    return v0
.end method

.method private startVideoPlayer()V
    .locals 6

    .line 7456
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->currentDocument:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v1, v0, Lorg/telegram/ui/ArticleViewer;->videoPlayer:Lorg/telegram/messenger/video/VideoPlayerHolderBase;

    if-eqz v1, :cond_0

    goto/16 :goto_3

    .line 7462
    :cond_0
    new-instance v1, Lorg/telegram/ui/ArticleViewer$BlockVideoCell$1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ArticleViewer$BlockVideoCell$1;-><init>(Lorg/telegram/ui/ArticleViewer$BlockVideoCell;)V

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->textureView:Landroid/view/TextureView;

    .line 7480
    invoke-virtual {v1, v2}, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->with(Landroid/view/TextureView;)Lorg/telegram/messenger/video/VideoPlayerHolderBase;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/ArticleViewer;->videoPlayer:Lorg/telegram/messenger/video/VideoPlayerHolderBase;

    .line 7482
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->currentDocument:Lorg/telegram/tgnet/TLRPC$Document;

    const/4 v1, 0x0

    move v2, v1

    .line 7483
    :goto_0
    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 7484
    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;

    if-eqz v3, :cond_1

    .line 7485
    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;

    .line 7486
    iget-object v4, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->aspectRatioFrameLayout:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    iget v5, v3, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->w:I

    int-to-float v5, v5

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->h:I

    int-to-float v3, v3

    div-float/2addr v5, v3

    invoke-virtual {v4, v5, v1}, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->setAspectRatio(FI)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7489
    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    invoke-static {v1}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->-$$Nest$fgetcurrentPage(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Lorg/telegram/tgnet/TLRPC$WebPage;

    move-result-object v1

    if-nez v1, :cond_3

    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v1}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/ArticleViewer;)I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    invoke-static {v2}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->-$$Nest$fgetcurrentPage(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Lorg/telegram/tgnet/TLRPC$WebPage;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lorg/telegram/messenger/FileStreamLoadOperation;->prepareUri(ILorg/telegram/tgnet/TLRPC$Document;Ljava/lang/Object;)Landroid/net/Uri;

    move-result-object v0

    :goto_1
    if-nez v0, :cond_4

    goto :goto_3

    .line 7494
    :cond_4
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v1, v1, Lorg/telegram/ui/ArticleViewer;->videoPlayer:Lorg/telegram/messenger/video/VideoPlayerHolderBase;

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->videoState:Lorg/telegram/ui/ArticleViewer$BlockVideoCellState;

    if-nez v2, :cond_5

    const-wide/16 v2, 0x0

    goto :goto_2

    :cond_5
    iget-wide v2, v2, Lorg/telegram/ui/ArticleViewer$BlockVideoCellState;->playFrom:J

    :goto_2
    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->seekTo(J)V

    .line 7495
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v1, v1, Lorg/telegram/ui/ArticleViewer;->videoPlayer:Lorg/telegram/messenger/video/VideoPlayerHolderBase;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v3, v2}, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->preparePlayer(Landroid/net/Uri;ZF)V

    .line 7496
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->videoPlayer:Lorg/telegram/messenger/video/VideoPlayerHolderBase;

    invoke-virtual {v0}, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->play()V

    :cond_6
    :goto_3
    return-void
.end method


# virtual methods
.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 1

    .line 7087
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->aspectRationContainer:Landroid/widget/FrameLayout;

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->pinchToZoomHelper:Lorg/telegram/ui/PinchToZoomHelper;

    invoke-virtual {v0, p0}, Lorg/telegram/ui/PinchToZoomHelper;->isInOverlayModeFor(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 7090
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p1

    return p1
.end method

.method public fillTextLayoutBlocks(Ljava/util/ArrayList;)V
    .locals 1

    .line 7548
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->captionLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    if-eqz v0, :cond_0

    .line 7549
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7551
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->creditLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    if-eqz v0, :cond_1

    .line 7552
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public getObserverTag()I
    .locals 1

    .line 7531
    iget v0, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->TAG:I

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 7450
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 7451
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->imageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onAttachedToWindow()Z

    const/4 v0, 0x0

    .line 7452
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->updateButtonState(Z)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 4

    .line 7426
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockVideo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v1, v0, Lorg/telegram/ui/ArticleViewer;->videoPlayer:Lorg/telegram/messenger/video/VideoPlayerHolderBase;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lorg/telegram/ui/ArticleViewer;->currentPlayer:Lorg/telegram/ui/ArticleViewer$BlockVideoCell;

    if-ne v1, p0, :cond_0

    .line 7427
    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$fgetvideoStates(Lorg/telegram/ui/ArticleViewer;)Landroidx/collection/LongSparseArray;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockVideo;

    iget-wide v1, v1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockVideo;->video_id:J

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v3, v3, Lorg/telegram/ui/ArticleViewer;->videoPlayer:Lorg/telegram/messenger/video/VideoPlayerHolderBase;

    invoke-static {v3, p0}, Lorg/telegram/ui/ArticleViewer$BlockVideoCellState;->fromPlayer(Lorg/telegram/messenger/video/VideoPlayerHolderBase;Lorg/telegram/ui/ArticleViewer$BlockVideoCell;)Lorg/telegram/ui/ArticleViewer$BlockVideoCellState;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->setState(Lorg/telegram/ui/ArticleViewer$BlockVideoCellState;)Lorg/telegram/ui/ArticleViewer$BlockVideoCellState;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 7429
    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 7430
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->imageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onDetachedFromWindow()V

    .line 7431
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/ArticleViewer;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/telegram/messenger/DownloadController;->removeLoadingFileObserver(Lorg/telegram/messenger/DownloadController$FileDownloadProgressListener;)V

    const/4 v0, 0x0

    .line 7432
    iput-boolean v0, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->firstFrameRendered:Z

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 7299
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockVideo;

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 7302
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->imageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->hasBitmapImage()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->imageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getCurrentAlpha()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2

    .line 7303
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->imageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getDrawRegion()Landroid/graphics/RectF;

    move-result-object v0

    invoke-static {}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$sfgetphotoBackgroundPaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 7305
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->pinchToZoomHelper:Lorg/telegram/ui/PinchToZoomHelper;

    invoke-virtual {v0, p0}, Lorg/telegram/ui/PinchToZoomHelper;->isInOverlayModeFor(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 7306
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->imageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    .line 7309
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->captionLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 7310
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 7311
    iget v0, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->textX:I

    int-to-float v0, v0

    iget v2, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->textY:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 7312
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v0, p1, p0, v1}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$mdrawTextSelection(Lorg/telegram/ui/ArticleViewer;Landroid/graphics/Canvas;Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;I)V

    .line 7313
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->captionLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    invoke-virtual {v0, p1, p0}, Lorg/telegram/ui/ArticleViewer$DrawingText;->draw(Landroid/graphics/Canvas;Landroid/view/View;)V

    .line 7314
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    move v0, v1

    .line 7316
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->creditLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    if-eqz v2, :cond_5

    .line 7317
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 7318
    iget v2, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->textX:I

    int-to-float v2, v2

    iget v3, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->textY:I

    iget v4, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->creditOffset:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 7319
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v2, p1, p0, v0}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$mdrawTextSelection(Lorg/telegram/ui/ArticleViewer;Landroid/graphics/Canvas;Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;I)V

    .line 7320
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->creditLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    invoke-virtual {v0, p1, p0}, Lorg/telegram/ui/ArticleViewer$DrawingText;->draw(Landroid/graphics/Canvas;Landroid/view/View;)V

    .line 7321
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 7323
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockVideo;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$PageBlock;->level:I

    if-lez v0, :cond_7

    const/high16 v0, 0x41900000    # 18.0f

    .line 7324
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v3, v0

    const/high16 v0, 0x41a00000    # 20.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v5, v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockVideo;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$PageBlock;->bottom:Z

    if-eqz v2, :cond_6

    const/high16 v1, 0x40c00000    # 6.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    :cond_6
    sub-int/2addr v0, v1

    int-to-float v6, v0

    invoke-static {}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$sfgetquoteLinePaint()Landroid/graphics/Paint;

    move-result-object v7

    const/4 v4, 0x0

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_1

    :cond_7
    move-object v2, p1

    .line 7326
    :goto_1
    invoke-super {p0, v2}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 7328
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object p1, p1, Lorg/telegram/ui/ArticleViewer;->pinchToZoomHelper:Lorg/telegram/ui/PinchToZoomHelper;

    invoke-virtual {p1, p0}, Lorg/telegram/ui/PinchToZoomHelper;->isInOverlayModeFor(Landroid/view/View;)Z

    move-result p1

    if-nez p1, :cond_8

    .line 7329
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->imageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {p1}, Lorg/telegram/messenger/ImageReceiver;->getVisible()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 7330
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    invoke-virtual {p1, v2}, Lorg/telegram/ui/Components/RadialProgress2;->draw(Landroid/graphics/Canvas;)V

    :cond_8
    :goto_2
    return-void
.end method

.method public onFailedDownload(Ljava/lang/String;Z)V
    .locals 0

    const/4 p1, 0x0

    .line 7502
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->updateButtonState(Z)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2

    .line 7536
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const/4 v0, 0x1

    .line 7537
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    .line 7538
    new-instance v0, Ljava/lang/StringBuilder;

    sget v1, Lorg/telegram/messenger/R$string;->AttachVideo:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7539
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->captionLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    if-eqz v1, :cond_0

    .line 7540
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7541
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->captionLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    invoke-virtual {v1}, Lorg/telegram/ui/ArticleViewer$DrawingText;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 7543
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 31

    move-object/from16 v1, p0

    .line 7162
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 7164
    iget v2, v1, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->currentType:I

    const/4 v9, 0x2

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-ne v2, v11, :cond_0

    .line 7165
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 7166
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    :goto_0
    move v12, v0

    goto :goto_1

    :cond_0
    if-ne v2, v9, :cond_1

    .line 7168
    iget-object v2, v1, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->groupPosition:Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

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
    move v12, v0

    move v2, v10

    .line 7171
    :goto_1
    iget-object v0, v1, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockVideo;

    if-eqz v0, :cond_1d

    .line 7176
    iget v3, v1, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->currentType:I

    const/high16 v4, 0x41900000    # 18.0f

    if-nez v3, :cond_2

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$PageBlock;->level:I

    if-lez v0, :cond_2

    mul-int/lit8 v0, v0, 0xe

    int-to-float v0, v0

    .line 7177
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    add-int/2addr v0, v3

    iput v0, v1, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->textX:I

    .line 7178
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    add-int/2addr v3, v0

    sub-int v3, v12, v3

    move v4, v3

    goto :goto_2

    .line 7182
    :cond_2
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, v1, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->textX:I

    const/high16 v0, 0x42100000    # 36.0f

    .line 7183
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    sub-int v3, v12, v0

    move v4, v3

    move v0, v10

    move v3, v12

    .line 7185
    :goto_2
    iget-object v5, v1, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->currentDocument:Lorg/telegram/tgnet/TLRPC$Document;

    const/high16 v13, 0x41000000    # 8.0f

    if-eqz v5, :cond_15

    const/high16 v5, 0x42400000    # 48.0f

    .line 7186
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    .line 7187
    iget-object v6, v1, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->currentDocument:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    const/16 v7, 0x30

    invoke-static {v6, v7}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v6

    .line 7188
    iget v7, v1, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->currentType:I

    if-nez v7, :cond_c

    .line 7191
    iget-object v7, v1, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->currentDocument:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v14, v10

    :goto_3
    if-ge v14, v7, :cond_4

    .line 7192
    iget-object v15, v1, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->currentDocument:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v15, v15, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    const/high16 v16, 0x40000000    # 2.0f

    .line 7193
    instance-of v8, v15, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;

    if-eqz v8, :cond_3

    int-to-float v2, v3

    .line 7194
    iget v7, v15, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->w:I

    int-to-float v7, v7

    div-float/2addr v2, v7

    .line 7195
    iget v7, v15, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->h:I

    int-to-float v7, v7

    mul-float/2addr v2, v7

    float-to-int v2, v2

    move v7, v11

    goto :goto_4

    :cond_3
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    :cond_4
    const/high16 v16, 0x40000000    # 2.0f

    move v7, v10

    :goto_4
    if-eqz v6, :cond_5

    .line 7200
    iget v14, v6, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I

    int-to-float v14, v14

    goto :goto_5

    :cond_5
    const/high16 v14, 0x42c80000    # 100.0f

    :goto_5
    if-eqz v6, :cond_6

    .line 7201
    iget v15, v6, Lorg/telegram/tgnet/TLRPC$PhotoSize;->h:I

    int-to-float v15, v15

    goto :goto_6

    :cond_6
    const/high16 v15, 0x42c80000    # 100.0f

    :goto_6
    if-nez v7, :cond_7

    int-to-float v2, v3

    div-float/2addr v2, v14

    mul-float/2addr v2, v15

    float-to-int v2, v2

    .line 7206
    :cond_7
    iget-object v7, v1, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->parentBlock:Lorg/telegram/tgnet/TLRPC$PageBlock;

    instance-of v7, v7, Lorg/telegram/tgnet/TLRPC$TL_pageBlockCover;

    if-eqz v7, :cond_8

    .line 7207
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/high16 v17, 0x42c80000    # 100.0f

    goto :goto_7

    .line 7209
    :cond_8
    sget-object v7, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    const/high16 v17, 0x42c80000    # 100.0f

    iget v8, v7, Landroid/graphics/Point;->x:I

    iget v7, v7, Landroid/graphics/Point;->y:I

    invoke-static {v8, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    const/high16 v8, 0x42600000    # 56.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    sub-int/2addr v7, v8

    int-to-float v7, v7

    const v8, 0x3f666666    # 0.9f

    mul-float/2addr v7, v8

    float-to-int v7, v7

    if-le v2, v7, :cond_9

    int-to-float v2, v7

    div-float/2addr v2, v15

    mul-float/2addr v2, v14

    float-to-int v3, v2

    sub-int v2, v12, v0

    sub-int/2addr v2, v3

    .line 7214
    div-int/2addr v2, v9

    add-int/2addr v0, v2

    move v2, v7

    :cond_9
    :goto_7
    if-nez v2, :cond_a

    .line 7218
    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    goto :goto_8

    :cond_a
    if-ge v2, v5, :cond_b

    move v2, v5

    :cond_b
    :goto_8
    move v7, v3

    move v3, v2

    goto :goto_9

    :cond_c
    const/high16 v16, 0x40000000    # 2.0f

    if-ne v7, v9, :cond_b

    .line 7224
    iget-object v7, v1, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->groupPosition:Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    iget v7, v7, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->flags:I

    and-int/2addr v7, v9

    if-nez v7, :cond_d

    .line 7225
    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    sub-int/2addr v3, v7

    .line 7227
    :cond_d
    iget-object v7, v1, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->groupPosition:Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    iget v7, v7, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->flags:I

    and-int/lit8 v7, v7, 0x8

    if-nez v7, :cond_b

    .line 7228
    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    sub-int v7, v2, v7

    move/from16 v30, v3

    move v3, v2

    move v2, v7

    move/from16 v7, v30

    .line 7231
    :goto_9
    iget-object v8, v1, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->imageView:Lorg/telegram/messenger/ImageReceiver;

    iget-object v14, v1, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->currentDocument:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-virtual {v8, v14}, Lorg/telegram/messenger/ImageReceiver;->setQualityThumbDocument(Lorg/telegram/tgnet/TLRPC$Document;)V

    .line 7232
    iget-boolean v8, v1, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->isFirst:Z

    if-nez v8, :cond_f

    iget v8, v1, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->currentType:I

    if-eq v8, v11, :cond_f

    if-eq v8, v9, :cond_f

    iget-object v8, v1, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockVideo;

    iget v8, v8, Lorg/telegram/tgnet/TLRPC$PageBlock;->level:I

    if-lez v8, :cond_e

    goto :goto_a

    :cond_e
    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    goto :goto_b

    :cond_f
    :goto_a
    move v8, v10

    .line 7233
    :goto_b
    iget-object v14, v1, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->imageView:Lorg/telegram/messenger/ImageReceiver;

    int-to-float v0, v0

    int-to-float v8, v8

    int-to-float v7, v7

    int-to-float v2, v2

    invoke-virtual {v14, v0, v8, v7, v2}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(FFFF)V

    .line 7234
    iget-boolean v0, v1, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->calcHeight:Z

    if-eqz v0, :cond_10

    goto/16 :goto_d

    .line 7236
    :cond_10
    iget-boolean v0, v1, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->isGif:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_14

    .line 7237
    iget-object v0, v1, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->videoState:Lorg/telegram/ui/ArticleViewer$BlockVideoCellState;

    if-eqz v0, :cond_11

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer$BlockVideoCellState;->lastFrameBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_11

    .line 7238
    iget-object v0, v1, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->imageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/ImageReceiver;->setStrippedLocation(Lorg/telegram/messenger/ImageLocation;)V

    .line 7239
    iget-object v0, v1, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->imageView:Lorg/telegram/messenger/ImageReceiver;

    iget-object v2, v1, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->videoState:Lorg/telegram/ui/ArticleViewer$BlockVideoCellState;

    iget-object v2, v2, Lorg/telegram/ui/ArticleViewer$BlockVideoCellState;->lastFrameBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_d

    .line 7241
    :cond_11
    iget-object v0, v1, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/ArticleViewer;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object v0

    iget-object v7, v1, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->currentDocument:Lorg/telegram/tgnet/TLRPC$Document;

    iget-wide v7, v7, Lorg/telegram/tgnet/TLRPC$Document;->size:J

    const/4 v14, 0x4

    invoke-virtual {v0, v14, v7, v8}, Lorg/telegram/messenger/DownloadController;->canDownloadMedia(IJ)Z

    move-result v0

    iput-boolean v0, v1, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->autoDownload:Z

    .line 7242
    iget-object v0, v1, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/ArticleViewer;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    iget-object v7, v1, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->currentDocument:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-virtual {v0, v7}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;)Ljava/io/File;

    move-result-object v0

    .line 7243
    iget-object v7, v1, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v7}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/ArticleViewer;)I

    move-result v7

    invoke-static {v7}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v7

    iget-object v8, v1, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->currentDocument:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-virtual {v7, v8, v11}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object v7

    .line 7244
    iget-boolean v8, v1, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->autoDownload:Z

    if-nez v8, :cond_13

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_13

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_12

    goto :goto_c

    .line 7248
    :cond_12
    iget-object v0, v1, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->imageView:Lorg/telegram/messenger/ImageReceiver;

    iget-object v2, v1, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->currentDocument:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v2}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/ImageReceiver;->setStrippedLocation(Lorg/telegram/messenger/ImageLocation;)V

    .line 7249
    iget-object v0, v1, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->imageView:Lorg/telegram/messenger/ImageReceiver;

    iget-object v2, v1, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->currentDocument:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v6, v2}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v22

    iget-object v2, v1, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->currentDocument:Lorg/telegram/tgnet/TLRPC$Document;

    iget-wide v6, v2, Lorg/telegram/tgnet/TLRPC$Document;->size:J

    iget-object v2, v1, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    invoke-static {v2}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->-$$Nest$fgetcurrentPage(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Lorg/telegram/tgnet/TLRPC$WebPage;

    move-result-object v28

    const/16 v29, 0x1

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const-string v23, "80_80_b"

    const/16 v24, 0x0

    const/16 v27, 0x0

    move-object/from16 v17, v0

    move-wide/from16 v25, v6

    invoke-virtual/range {v17 .. v29}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    goto :goto_d

    .line 7245
    :cond_13
    :goto_c
    iget-object v0, v1, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->imageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/ImageReceiver;->setStrippedLocation(Lorg/telegram/messenger/ImageLocation;)V

    .line 7246
    iget-object v0, v1, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->imageView:Lorg/telegram/messenger/ImageReceiver;

    iget-object v2, v1, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->currentDocument:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v2}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v20

    iget-object v2, v1, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->currentDocument:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v6, v2}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v22

    iget-object v2, v1, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->currentDocument:Lorg/telegram/tgnet/TLRPC$Document;

    iget-wide v6, v2, Lorg/telegram/tgnet/TLRPC$Document;->size:J

    iget-object v2, v1, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    invoke-static {v2}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->-$$Nest$fgetcurrentPage(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Lorg/telegram/tgnet/TLRPC$WebPage;

    move-result-object v28

    const/16 v29, 0x1

    const/16 v18, 0x0

    const/16 v19, 0x0

    const-string v21, "200_200_pframe"

    const-string v23, "80_80_b"

    const/16 v24, 0x0

    const/16 v27, 0x0

    move-object/from16 v17, v0

    move-wide/from16 v25, v6

    invoke-virtual/range {v17 .. v29}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    goto :goto_d

    .line 7253
    :cond_14
    iget-object v0, v1, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->imageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/ImageReceiver;->setStrippedLocation(Lorg/telegram/messenger/ImageLocation;)V

    .line 7254
    iget-object v0, v1, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->imageView:Lorg/telegram/messenger/ImageReceiver;

    iget-object v2, v1, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->currentDocument:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v6, v2}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v20

    iget-object v2, v1, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    invoke-static {v2}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->-$$Nest$fgetcurrentPage(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Lorg/telegram/tgnet/TLRPC$WebPage;

    move-result-object v25

    const/16 v26, 0x1

    const/16 v18, 0x0

    const/16 v19, 0x0

    const-string v21, "80_80_b"

    const-wide/16 v22, 0x0

    const/16 v24, 0x0

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v26}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;JLjava/lang/String;Ljava/lang/Object;I)V

    .line 7256
    :goto_d
    iget-object v0, v1, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->imageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0, v11}, Lorg/telegram/messenger/ImageReceiver;->setAspectFit(Z)V

    .line 7257
    iget-object v0, v1, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->imageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getImageX()F

    move-result v0

    iget-object v2, v1, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->imageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->getImageWidth()F

    move-result v2

    int-to-float v6, v5

    sub-float/2addr v2, v6

    div-float v2, v2, v16

    add-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, v1, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->buttonX:I

    .line 7258
    iget-object v0, v1, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->imageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getImageY()F

    move-result v0

    iget-object v2, v1, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->imageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->getImageHeight()F

    move-result v2

    sub-float/2addr v2, v6

    div-float v2, v2, v16

    add-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, v1, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->buttonY:I

    .line 7259
    iget-object v2, v1, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    iget v6, v1, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->buttonX:I

    add-int v7, v6, v5

    add-int/2addr v5, v0

    invoke-virtual {v2, v6, v0, v7, v5}, Lorg/telegram/ui/Components/RadialProgress2;->setProgressRect(IIII)V

    move v8, v3

    goto :goto_e

    :cond_15
    move v8, v2

    .line 7261
    :goto_e
    iget-object v0, v1, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->imageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getImageY()F

    move-result v0

    iget-object v2, v1, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->imageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->getImageHeight()F

    move-result v2

    add-float/2addr v0, v2

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v0, v2

    float-to-int v5, v0

    iput v5, v1, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->textY:I

    .line 7262
    iget v0, v1, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->currentType:I

    if-nez v0, :cond_19

    .line 7263
    iget-object v0, v1, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v6, v1, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockVideo;

    iget-object v2, v6, Lorg/telegram/tgnet/TLRPC$TL_pageBlockVideo;->caption:Lorg/telegram/tgnet/TLRPC$TL_pageCaption;

    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$TL_pageCaption;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    iget-object v7, v1, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    const/4 v2, 0x0

    invoke-static/range {v0 .. v7}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$mcreateLayoutForText(Lorg/telegram/ui/ArticleViewer;Landroid/view/View;Ljava/lang/CharSequence;Lorg/telegram/tgnet/TLRPC$RichText;IILorg/telegram/tgnet/TLRPC$PageBlock;Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Lorg/telegram/ui/ArticleViewer$DrawingText;

    move-result-object v0

    iput-object v0, v1, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->captionLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    const/high16 v14, 0x40800000    # 4.0f

    if-eqz v0, :cond_16

    .line 7265
    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iget-object v2, v1, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->captionLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    invoke-virtual {v2}, Lorg/telegram/ui/ArticleViewer$DrawingText;->getHeight()I

    move-result v2

    add-int/2addr v0, v2

    iput v0, v1, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->creditOffset:I

    .line 7266
    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int/2addr v0, v2

    add-int/2addr v8, v0

    .line 7267
    iget-object v0, v1, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->captionLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    iget v2, v1, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->textX:I

    iput v2, v0, Lorg/telegram/ui/ArticleViewer$DrawingText;->x:I

    .line 7268
    iget v2, v1, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->textY:I

    iput v2, v0, Lorg/telegram/ui/ArticleViewer$DrawingText;->y:I

    :cond_16
    move v15, v8

    .line 7270
    iget-object v0, v1, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v6, v1, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockVideo;

    iget-object v2, v6, Lorg/telegram/tgnet/TLRPC$TL_pageBlockVideo;->caption:Lorg/telegram/tgnet/TLRPC$TL_pageCaption;

    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$TL_pageCaption;->credit:Lorg/telegram/tgnet/TLRPC$RichText;

    iget v2, v1, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->textY:I

    iget v5, v1, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->creditOffset:I

    add-int/2addr v5, v2

    iget-object v2, v1, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    invoke-static {v2}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->-$$Nest$fgetisRtl(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Z

    move-result v2

    if-eqz v2, :cond_17

    invoke-static {}, Lorg/telegram/ui/Components/StaticLayoutEx;->ALIGN_RIGHT()Landroid/text/Layout$Alignment;

    move-result-object v2

    :goto_f
    move-object v7, v2

    goto :goto_10

    :cond_17
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    goto :goto_f

    :goto_10
    iget-object v8, v1, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    const/4 v2, 0x0

    invoke-static/range {v0 .. v8}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$mcreateLayoutForText(Lorg/telegram/ui/ArticleViewer;Landroid/view/View;Ljava/lang/CharSequence;Lorg/telegram/tgnet/TLRPC$RichText;IILorg/telegram/tgnet/TLRPC$PageBlock;Landroid/text/Layout$Alignment;Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Lorg/telegram/ui/ArticleViewer$DrawingText;

    move-result-object v0

    iput-object v0, v1, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->creditLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    if-eqz v0, :cond_18

    .line 7272
    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iget-object v2, v1, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->creditLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    invoke-virtual {v2}, Lorg/telegram/ui/ArticleViewer$DrawingText;->getHeight()I

    move-result v2

    add-int/2addr v0, v2

    add-int v8, v15, v0

    .line 7273
    iget-object v0, v1, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->creditLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    iget v2, v1, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->textX:I

    iput v2, v0, Lorg/telegram/ui/ArticleViewer$DrawingText;->x:I

    .line 7274
    iget v2, v1, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->textY:I

    iget v3, v1, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->creditOffset:I

    add-int/2addr v2, v3

    iput v2, v0, Lorg/telegram/ui/ArticleViewer$DrawingText;->y:I

    goto :goto_11

    :cond_18
    move v8, v15

    .line 7277
    :cond_19
    :goto_11
    iget-boolean v0, v1, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->isFirst:Z

    if-nez v0, :cond_1a

    iget v0, v1, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->currentType:I

    if-nez v0, :cond_1a

    iget-object v0, v1, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockVideo;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$PageBlock;->level:I

    if-gtz v0, :cond_1a

    .line 7278
    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    add-int/2addr v8, v0

    .line 7280
    :cond_1a
    iget-object v0, v1, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->parentBlock:Lorg/telegram/tgnet/TLRPC$PageBlock;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockCover;

    if-eqz v0, :cond_1b

    iget-object v0, v1, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->-$$Nest$fgetblocks(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v11, :cond_1b

    iget-object v0, v1, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->-$$Nest$fgetblocks(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockChannel;

    if-eqz v0, :cond_1b

    move v10, v11

    .line 7281
    :cond_1b
    iget v0, v1, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->currentType:I

    if-eq v0, v9, :cond_1c

    if-nez v10, :cond_1c

    .line 7282
    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    add-int/2addr v8, v0

    :cond_1c
    move v11, v8

    .line 7287
    :cond_1d
    iget-object v0, v1, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->channelCell:Lorg/telegram/ui/ArticleViewer$BlockChannelCell;

    move/from16 v2, p1

    move/from16 v3, p2

    invoke-virtual {v0, v2, v3}, Landroid/view/View;->measure(II)V

    .line 7288
    iget-object v0, v1, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->channelCell:Lorg/telegram/ui/ArticleViewer$BlockChannelCell;

    iget-object v2, v1, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->imageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->getImageHeight()F

    move-result v2

    const/high16 v3, 0x421c0000    # 39.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 7289
    iget-object v0, v1, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->aspectRationContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 7290
    iget-object v2, v1, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->imageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->getImageX()F

    move-result v2

    float-to-int v2, v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 7291
    iget-object v2, v1, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->imageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->getImageY()F

    move-result v2

    float-to-int v2, v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 7292
    iget-object v2, v1, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->imageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->getImageWidth()F

    move-result v2

    float-to-int v2, v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 7293
    iget-object v2, v1, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->imageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->getImageHeight()F

    move-result v2

    float-to-int v2, v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/high16 v0, 0x40000000    # 2.0f

    .line 7294
    invoke-static {v12, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-static {v11, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-super {v1, v2, v0}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public onProgressDownload(Ljava/lang/String;JJ)V
    .locals 0

    .line 7523
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    long-to-float p2, p2

    long-to-float p3, p4

    div-float/2addr p2, p3

    const/high16 p3, 0x3f800000    # 1.0f

    invoke-static {p3, p2}, Ljava/lang/Math;->min(FF)F

    move-result p2

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p3}, Lorg/telegram/ui/Components/RadialProgress2;->setProgress(FZ)V

    .line 7524
    iget p1, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->buttonState:I

    if-eq p1, p3, :cond_0

    .line 7525
    invoke-virtual {p0, p3}, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->updateButtonState(Z)V

    :cond_0
    return-void
.end method

.method public onProgressUpload(Ljava/lang/String;JJZ)V
    .locals 0

    return-void
.end method

.method public onSuccessDownload(Ljava/lang/String;)V
    .locals 2

    .line 7507
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Components/RadialProgress2;->setProgress(FZ)V

    .line 7508
    iget-boolean p1, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->isGif:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    .line 7509
    iput p1, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->buttonState:I

    .line 7510
    invoke-direct {p0, v1}, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->didPressedButton(Z)V

    return-void

    .line 7512
    :cond_0
    invoke-virtual {p0, v1}, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->updateButtonState(Z)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    .line 7124
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v1, v0, Lorg/telegram/ui/ArticleViewer;->pinchToZoomHelper:Lorg/telegram/ui/PinchToZoomHelper;

    iget-object v4, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->imageView:Lorg/telegram/messenger/ImageReceiver;

    iget-object v5, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->aspectRationContainer:Landroid/widget/FrameLayout;

    iget-object v6, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->textureView:Landroid/view/TextureView;

    const/4 v7, 0x0

    move-object v3, p0

    move-object v2, p1

    invoke-virtual/range {v1 .. v7}, Lorg/telegram/ui/PinchToZoomHelper;->checkPinchToZoom(Landroid/view/MotionEvent;Landroid/view/View;Lorg/telegram/messenger/ImageReceiver;Landroid/view/View;Landroid/view/View;Lorg/telegram/messenger/MessageObject;)Z

    move-result p1

    const/4 v7, 0x1

    if-eqz p1, :cond_0

    return v7

    .line 7127
    :cond_0
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    .line 7128
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    .line 7129
    iget-object v1, v3, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->channelCell:Lorg/telegram/ui/ArticleViewer$BlockChannelCell;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/4 v8, 0x0

    if-nez v1, :cond_2

    iget-object v1, v3, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->channelCell:Lorg/telegram/ui/ArticleViewer$BlockChannelCell;

    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v1

    cmpl-float v1, v0, v1

    if-lez v1, :cond_2

    iget-object v1, v3, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->channelCell:Lorg/telegram/ui/ArticleViewer$BlockChannelCell;

    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v1

    const/high16 v4, 0x421c0000    # 39.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v1, v4

    cmpg-float v1, v0, v1

    if-gez v1, :cond_2

    .line 7130
    iget-object p1, v3, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->-$$Nest$fgetchannelBlock(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Lorg/telegram/tgnet/TLRPC$TL_pageBlockChannel;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne p1, v7, :cond_1

    .line 7131
    iget-object p1, v3, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/ArticleViewer;)I

    move-result p1

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-object v0, v3, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->-$$Nest$fgetchannelBlock(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Lorg/telegram/tgnet/TLRPC$TL_pageBlockChannel;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockChannel;->channel:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->getPublicUsername(Lorg/telegram/tgnet/TLRPC$Chat;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, v3, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v1}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$fgetparentFragment(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {p1, v0, v1, v2}, Lorg/telegram/messenger/MessagesController;->openByUserName(Ljava/lang/String;Lorg/telegram/ui/ActionBar/BaseFragment;I)V

    .line 7132
    iget-object p1, v3, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-virtual {p1, v8, v7}, Lorg/telegram/ui/ArticleViewer;->close(ZZ)V

    :cond_1
    return v7

    .line 7136
    :cond_2
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, v3, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->imageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1, p1, v0}, Lorg/telegram/messenger/ImageReceiver;->isInsideImage(FF)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 7137
    iget v1, v3, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->buttonState:I

    const/4 v4, -0x1

    if-eq v1, v4, :cond_3

    iget v1, v3, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->buttonX:I

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

    iget p1, v3, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->buttonY:I

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
    iget p1, v3, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->buttonState:I

    if-nez p1, :cond_5

    .line 7138
    :cond_4
    iput v7, v3, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->buttonPressed:I

    .line 7139
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_0

    .line 7141
    :cond_5
    iput-boolean v7, v3, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->photoPressed:Z

    goto :goto_0

    .line 7143
    :cond_6
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne p1, v7, :cond_8

    .line 7144
    iget-boolean p1, v3, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->photoPressed:Z

    if-eqz p1, :cond_7

    .line 7145
    iput-boolean v8, v3, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->photoPressed:Z

    .line 7146
    iget-object p1, v3, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v0, v3, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockVideo;

    iget-object v1, v3, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/ArticleViewer;->openPhoto(Lorg/telegram/tgnet/TLRPC$PageBlock;Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Z

    goto :goto_0

    .line 7147
    :cond_7
    iget p1, v3, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->buttonPressed:I

    if-ne p1, v7, :cond_9

    .line 7148
    iput v8, v3, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->buttonPressed:I

    .line 7149
    invoke-virtual {p0, v8}, Landroid/view/View;->playSoundEffect(I)V

    .line 7150
    invoke-direct {p0, v7}, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->didPressedButton(Z)V

    .line 7151
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_0

    .line 7153
    :cond_8
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_9

    .line 7154
    iput-boolean v8, v3, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->photoPressed:Z

    .line 7156
    :cond_9
    :goto_0
    iget-boolean p1, v3, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->photoPressed:Z

    if-nez p1, :cond_b

    iget p1, v3, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->buttonPressed:I

    if-nez p1, :cond_b

    iget-object v0, v3, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v1, v3, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    iget-object v4, v3, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->captionLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    iget v5, v3, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->textX:I

    iget v6, v3, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->textY:I

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$mcheckLayoutForLinks(Lorg/telegram/ui/ArticleViewer;Lorg/telegram/ui/ArticleViewer$WebpageAdapter;Landroid/view/MotionEvent;Landroid/view/View;Lorg/telegram/ui/ArticleViewer$DrawingText;II)Z

    move-result p1

    if-nez p1, :cond_b

    iget-object v0, v3, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v1, v3, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    iget-object v4, v3, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->creditLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    iget v5, v3, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->textX:I

    iget p1, v3, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->textY:I

    iget v6, v3, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->creditOffset:I

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

.method public setBlock(Lorg/telegram/tgnet/TLRPC$TL_pageBlockVideo;Lorg/telegram/ui/ArticleViewer$BlockVideoCellState;ZZZ)V
    .locals 3

    .line 7094
    iget-object p5, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockVideo;

    if-eqz p5, :cond_0

    iget-object p5, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v0, p5, Lorg/telegram/ui/ArticleViewer;->videoPlayer:Lorg/telegram/messenger/video/VideoPlayerHolderBase;

    if-eqz v0, :cond_0

    iget-object v0, p5, Lorg/telegram/ui/ArticleViewer;->currentPlayer:Lorg/telegram/ui/ArticleViewer$BlockVideoCell;

    if-ne v0, p0, :cond_0

    .line 7095
    invoke-static {p5}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$fgetvideoStates(Lorg/telegram/ui/ArticleViewer;)Landroidx/collection/LongSparseArray;

    move-result-object p5

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockVideo;

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockVideo;->video_id:J

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v2, v2, Lorg/telegram/ui/ArticleViewer;->videoPlayer:Lorg/telegram/messenger/video/VideoPlayerHolderBase;

    invoke-static {v2, p0}, Lorg/telegram/ui/ArticleViewer$BlockVideoCellState;->fromPlayer(Lorg/telegram/messenger/video/VideoPlayerHolderBase;Lorg/telegram/ui/ArticleViewer$BlockVideoCell;)Lorg/telegram/ui/ArticleViewer$BlockVideoCellState;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->videoState:Lorg/telegram/ui/ArticleViewer$BlockVideoCellState;

    invoke-virtual {p5, v0, v1, v2}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 7097
    :cond_0
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockVideo;

    .line 7098
    iput-object p2, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->videoState:Lorg/telegram/ui/ArticleViewer$BlockVideoCellState;

    const/4 p2, 0x0

    .line 7099
    iput-object p2, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->parentBlock:Lorg/telegram/tgnet/TLRPC$PageBlock;

    .line 7100
    iput-boolean p3, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->calcHeight:Z

    .line 7101
    iget-object p2, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    iget-wide v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockVideo;->video_id:J

    invoke-static {p2, v0, v1}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->-$$Nest$mgetDocumentWithId(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;J)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->currentDocument:Lorg/telegram/tgnet/TLRPC$Document;

    .line 7102
    invoke-static {p1}, Lorg/telegram/messenger/MessageObject;->isVideoDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->currentDocument:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {p1}, Lorg/telegram/messenger/MessageObject;->isGifDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    move p1, p2

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    :goto_1
    iput-boolean p1, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->isGif:Z

    .line 7103
    iput-boolean p4, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->isFirst:Z

    .line 7104
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->channelCell:Lorg/telegram/ui/ArticleViewer$BlockChannelCell;

    const/4 p3, 0x4

    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    .line 7105
    invoke-virtual {p0, p2}, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->updateButtonState(Z)V

    .line 7107
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setParentBlock(Lorg/telegram/tgnet/TLRPC$TL_pageBlockChannel;Lorg/telegram/tgnet/TLRPC$PageBlock;)V
    .locals 0

    .line 7111
    iput-object p2, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->parentBlock:Lorg/telegram/tgnet/TLRPC$PageBlock;

    if-eqz p1, :cond_0

    .line 7112
    instance-of p2, p2, Lorg/telegram/tgnet/TLRPC$TL_pageBlockCover;

    if-eqz p2, :cond_0

    .line 7113
    iget-object p2, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->channelCell:Lorg/telegram/ui/ArticleViewer$BlockChannelCell;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->setBlock(Lorg/telegram/tgnet/TLRPC$TL_pageBlockChannel;)V

    .line 7114
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->channelCell:Lorg/telegram/ui/ArticleViewer$BlockChannelCell;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public setState(Lorg/telegram/ui/ArticleViewer$BlockVideoCellState;)Lorg/telegram/ui/ArticleViewer$BlockVideoCellState;
    .locals 4

    .line 7436
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->videoState:Lorg/telegram/ui/ArticleViewer$BlockVideoCellState;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v1, p1, Lorg/telegram/ui/ArticleViewer$BlockVideoCellState;->lastFrameBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer$BlockVideoCellState;->lastFrameBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    if-eq v1, v0, :cond_0

    .line 7437
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 7438
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->videoState:Lorg/telegram/ui/ArticleViewer$BlockVideoCellState;

    const/4 v1, 0x0

    iput-object v1, v0, Lorg/telegram/ui/ArticleViewer$BlockVideoCellState;->lastFrameBitmap:Landroid/graphics/Bitmap;

    .line 7440
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->videoState:Lorg/telegram/ui/ArticleViewer$BlockVideoCellState;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    iget-object v1, p1, Lorg/telegram/ui/ArticleViewer$BlockVideoCellState;->lastFrameBitmap:Landroid/graphics/Bitmap;

    if-nez v1, :cond_1

    iget-object v1, v0, Lorg/telegram/ui/ArticleViewer$BlockVideoCellState;->lastFrameBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    .line 7441
    iget-wide v2, v0, Lorg/telegram/ui/ArticleViewer$BlockVideoCellState;->playFrom:J

    iput-wide v2, p1, Lorg/telegram/ui/ArticleViewer$BlockVideoCellState;->playFrom:J

    .line 7442
    iput-object v1, p1, Lorg/telegram/ui/ArticleViewer$BlockVideoCellState;->lastFrameBitmap:Landroid/graphics/Bitmap;

    .line 7444
    :cond_1
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->videoState:Lorg/telegram/ui/ArticleViewer$BlockVideoCellState;

    return-object p1
.end method

.method public updateButtonState(Z)V
    .locals 6

    .line 7349
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->currentDocument:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object v0

    .line 7350
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v1}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/ArticleViewer;)I

    move-result v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->currentDocument:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;)Ljava/io/File;

    move-result-object v1

    .line 7351
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v2}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/ArticleViewer;)I

    move-result v2

    invoke-static {v2}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->currentDocument:Lorg/telegram/tgnet/TLRPC$Document;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object v2

    .line 7352
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v3, 0x0

    if-nez v1, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v3

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v4

    .line 7353
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 7354
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    const/4 v0, 0x4

    invoke-virtual {p1, v0, v3, v3}, Lorg/telegram/ui/Components/RadialProgress2;->setIcon(IZZ)V

    return-void

    :cond_2
    const/4 v2, -0x1

    if-eqz v1, :cond_4

    .line 7358
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/ArticleViewer;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/telegram/messenger/DownloadController;->removeLoadingFileObserver(Lorg/telegram/messenger/DownloadController$FileDownloadProgressListener;)V

    .line 7359
    iget-boolean v0, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->isGif:Z

    if-nez v0, :cond_3

    const/4 v0, 0x3

    .line 7360
    iput v0, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->buttonState:I

    goto :goto_2

    .line 7362
    :cond_3
    iput v2, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->buttonState:I

    .line 7364
    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->getIconForCurrentState()I

    move-result v1

    invoke-virtual {v0, v1, v3, p1}, Lorg/telegram/ui/Components/RadialProgress2;->setIcon(IZZ)V

    goto :goto_5

    .line 7366
    :cond_4
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v1}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/ArticleViewer;)I

    move-result v1

    invoke-static {v1}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object v1

    const/4 v5, 0x0

    invoke-virtual {v1, v0, v5, p0}, Lorg/telegram/messenger/DownloadController;->addLoadingFileObserver(Ljava/lang/String;Lorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/DownloadController$FileDownloadProgressListener;)V

    .line 7369
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->videoState:Lorg/telegram/ui/ArticleViewer$BlockVideoCellState;

    const/4 v5, 0x0

    if-eqz v1, :cond_5

    iget-object v1, v1, Lorg/telegram/ui/ArticleViewer$BlockVideoCellState;->lastFrameBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_5

    .line 7370
    iput v2, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->buttonState:I

    goto :goto_3

    .line 7371
    :cond_5
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v1}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/ArticleViewer;)I

    move-result v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/FileLoader;->isLoadingFile(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 7372
    iget-boolean v0, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->cancelLoading:Z

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->autoDownload:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->isGif:Z

    if-eqz v0, :cond_6

    .line 7374
    iput v4, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->buttonState:I

    goto :goto_4

    .line 7376
    :cond_6
    iput v3, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->buttonState:I

    :goto_3
    move v4, v3

    goto :goto_4

    .line 7380
    :cond_7
    iput v4, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->buttonState:I

    .line 7381
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/ImageLoader;->getFileProgress(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 7382
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v5

    .line 7384
    :cond_8
    :goto_4
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->getIconForCurrentState()I

    move-result v1

    invoke-virtual {v0, v1, v4, p1}, Lorg/telegram/ui/Components/RadialProgress2;->setIcon(IZZ)V

    .line 7385
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    invoke-virtual {p1, v5, v3}, Lorg/telegram/ui/Components/RadialProgress2;->setProgress(FZ)V

    .line 7387
    :goto_5
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
