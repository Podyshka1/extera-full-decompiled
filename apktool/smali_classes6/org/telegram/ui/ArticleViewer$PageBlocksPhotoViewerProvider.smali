.class Lorg/telegram/ui/ArticleViewer$PageBlocksPhotoViewerProvider;
.super Lorg/telegram/ui/PhotoViewer$EmptyPhotoViewerProvider;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ArticleViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PageBlocksPhotoViewerProvider"
.end annotation


# instance fields
.field private final pageBlocks:Ljava/util/List;

.field private final tempArr:[I

.field final synthetic this$0:Lorg/telegram/ui/ArticleViewer;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/ArticleViewer;Ljava/util/List;)V
    .locals 0

    .line 12659
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$PageBlocksPhotoViewerProvider;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer$EmptyPhotoViewerProvider;-><init>()V

    const/4 p1, 0x2

    .line 12656
    new-array p1, p1, [I

    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$PageBlocksPhotoViewerProvider;->tempArr:[I

    .line 12660
    iput-object p2, p0, Lorg/telegram/ui/ArticleViewer$PageBlocksPhotoViewerProvider;->pageBlocks:Ljava/util/List;

    return-void
.end method

.method private getImageReceiverFromListView(Landroid/view/ViewGroup;Lorg/telegram/tgnet/TLRPC$PageBlock;[I)Lorg/telegram/messenger/ImageReceiver;
    .locals 3

    .line 12684
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 12686
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2, p2, p3}, Lorg/telegram/ui/ArticleViewer$PageBlocksPhotoViewerProvider;->getImageReceiverView(Landroid/view/View;Lorg/telegram/tgnet/TLRPC$PageBlock;[I)Lorg/telegram/messenger/ImageReceiver;

    move-result-object v2

    if-eqz v2, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private getImageReceiverView(Landroid/view/View;Lorg/telegram/tgnet/TLRPC$PageBlock;[I)Lorg/telegram/messenger/ImageReceiver;
    .locals 2

    .line 12695
    instance-of v0, p1, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;

    if-eqz v0, :cond_0

    .line 12696
    move-object v0, p1

    check-cast v0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;

    .line 12697
    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->-$$Nest$fgetcurrentBlock(Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;)Lorg/telegram/tgnet/TLRPC$TL_pageBlockPhoto;

    move-result-object v1

    if-ne v1, p2, :cond_7

    .line 12698
    invoke-virtual {p1, p3}, Landroid/view/View;->getLocationInWindow([I)V

    .line 12699
    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->-$$Nest$fgetimageView(Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;)Lorg/telegram/messenger/ImageReceiver;

    move-result-object p1

    return-object p1

    .line 12701
    :cond_0
    instance-of v0, p1, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;

    if-eqz v0, :cond_3

    .line 12702
    move-object v0, p1

    check-cast v0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;

    .line 12703
    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->-$$Nest$fgetcurrentBlock(Lorg/telegram/ui/ArticleViewer$BlockVideoCell;)Lorg/telegram/tgnet/TLRPC$TL_pageBlockVideo;

    move-result-object v1

    if-ne v1, p2, :cond_7

    .line 12704
    invoke-virtual {p1, p3}, Landroid/view/View;->getLocationInWindow([I)V

    .line 12705
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$PageBlocksPhotoViewerProvider;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object p2, p1, Lorg/telegram/ui/ArticleViewer;->currentPlayer:Lorg/telegram/ui/ArticleViewer$BlockVideoCell;

    if-ne v0, p2, :cond_2

    iget-object p1, p1, Lorg/telegram/ui/ArticleViewer;->videoPlayer:Lorg/telegram/messenger/video/VideoPlayerHolderBase;

    if-eqz p1, :cond_2

    iget-boolean p1, p1, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->firstFrameRendered:Z

    if-eqz p1, :cond_2

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->-$$Nest$fgettextureView(Lorg/telegram/ui/ArticleViewer$BlockVideoCell;)Landroid/view/TextureView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 12706
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x18

    if-lt p1, p2, :cond_1

    .line 12707
    new-instance p1, Landroid/view/Surface;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->-$$Nest$fgettextureView(Lorg/telegram/ui/ArticleViewer$BlockVideoCell;)Landroid/view/TextureView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 12708
    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->-$$Nest$fgettextureView(Lorg/telegram/ui/ArticleViewer$BlockVideoCell;)Landroid/view/TextureView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->-$$Nest$fgettextureView(Lorg/telegram/ui/ArticleViewer$BlockVideoCell;)Landroid/view/TextureView;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredHeight()I

    move-result p3

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p3, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 12709
    invoke-static {p1, p2}, Lorg/telegram/messenger/AndroidUtilities;->getBitmapFromSurface(Landroid/view/Surface;Landroid/graphics/Bitmap;)V

    .line 12710
    invoke-virtual {p1}, Landroid/view/Surface;->release()V

    .line 12711
    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->-$$Nest$fgetimageView(Lorg/telegram/ui/ArticleViewer$BlockVideoCell;)Lorg/telegram/messenger/ImageReceiver;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 12713
    :cond_1
    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->-$$Nest$fgetimageView(Lorg/telegram/ui/ArticleViewer$BlockVideoCell;)Lorg/telegram/messenger/ImageReceiver;

    move-result-object p1

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->-$$Nest$fgettextureView(Lorg/telegram/ui/ArticleViewer$BlockVideoCell;)Landroid/view/TextureView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/TextureView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_0
    const/4 p1, 0x0

    .line 12715
    invoke-static {v0, p1}, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->-$$Nest$fputfirstFrameRendered(Lorg/telegram/ui/ArticleViewer$BlockVideoCell;Z)V

    .line 12716
    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->-$$Nest$fgettextureView(Lorg/telegram/ui/ArticleViewer$BlockVideoCell;)Landroid/view/TextureView;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    .line 12718
    :cond_2
    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->-$$Nest$fgetimageView(Lorg/telegram/ui/ArticleViewer$BlockVideoCell;)Lorg/telegram/messenger/ImageReceiver;

    move-result-object p1

    return-object p1

    .line 12720
    :cond_3
    instance-of v0, p1, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;

    if-eqz v0, :cond_4

    .line 12721
    check-cast p1, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;

    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->-$$Nest$fgetinnerListView(Lorg/telegram/ui/ArticleViewer$BlockCollageCell;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/ArticleViewer$PageBlocksPhotoViewerProvider;->getImageReceiverFromListView(Landroid/view/ViewGroup;Lorg/telegram/tgnet/TLRPC$PageBlock;[I)Lorg/telegram/messenger/ImageReceiver;

    move-result-object p1

    if-eqz p1, :cond_7

    return-object p1

    .line 12725
    :cond_4
    instance-of v0, p1, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;

    if-eqz v0, :cond_5

    .line 12726
    check-cast p1, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;

    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;->-$$Nest$fgetinnerListView(Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;)Landroidx/viewpager/widget/ViewPager;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/ArticleViewer$PageBlocksPhotoViewerProvider;->getImageReceiverFromListView(Landroid/view/ViewGroup;Lorg/telegram/tgnet/TLRPC$PageBlock;[I)Lorg/telegram/messenger/ImageReceiver;

    move-result-object p1

    if-eqz p1, :cond_7

    return-object p1

    .line 12730
    :cond_5
    instance-of v0, p1, Lorg/telegram/ui/ArticleViewer$BlockListItemCell;

    if-eqz v0, :cond_6

    .line 12731
    check-cast p1, Lorg/telegram/ui/ArticleViewer$BlockListItemCell;

    .line 12732
    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer$BlockListItemCell;->-$$Nest$fgetblockLayout(Lorg/telegram/ui/ArticleViewer$BlockListItemCell;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 12733
    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer$BlockListItemCell;->-$$Nest$fgetblockLayout(Lorg/telegram/ui/ArticleViewer$BlockListItemCell;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/ArticleViewer$PageBlocksPhotoViewerProvider;->getImageReceiverView(Landroid/view/View;Lorg/telegram/tgnet/TLRPC$PageBlock;[I)Lorg/telegram/messenger/ImageReceiver;

    move-result-object p1

    if-eqz p1, :cond_7

    return-object p1

    .line 12738
    :cond_6
    instance-of v0, p1, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;

    if-eqz v0, :cond_7

    .line 12739
    check-cast p1, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;

    .line 12740
    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->-$$Nest$fgetblockLayout(Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 12741
    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->-$$Nest$fgetblockLayout(Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/ArticleViewer$PageBlocksPhotoViewerProvider;->getImageReceiverView(Landroid/view/View;Lorg/telegram/tgnet/TLRPC$PageBlock;[I)Lorg/telegram/messenger/ImageReceiver;

    move-result-object p1

    if-eqz p1, :cond_7

    return-object p1

    :cond_7
    const/4 p1, 0x0

    return-object p1
.end method

.method private getViewFromListView(Landroid/view/ViewGroup;Lorg/telegram/tgnet/TLRPC$PageBlock;)Lorg/telegram/ui/ArticleViewer$BlockVideoCell;
    .locals 4

    .line 12786
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 12788
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 12789
    instance-of v3, v2, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;

    if-eqz v3, :cond_0

    .line 12790
    check-cast v2, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;

    .line 12791
    invoke-static {v2}, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->-$$Nest$fgetcurrentBlock(Lorg/telegram/ui/ArticleViewer$BlockVideoCell;)Lorg/telegram/tgnet/TLRPC$TL_pageBlockVideo;

    move-result-object v3

    if-ne v3, p2, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public getPlaceForPhoto(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$FileLocation;IZZ)Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;
    .locals 0

    const/4 p1, 0x0

    if-ltz p3, :cond_2

    .line 12665
    iget-object p2, p0, Lorg/telegram/ui/ArticleViewer$PageBlocksPhotoViewerProvider;->pageBlocks:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-lt p3, p2, :cond_0

    goto :goto_0

    .line 12668
    :cond_0
    iget-object p2, p0, Lorg/telegram/ui/ArticleViewer$PageBlocksPhotoViewerProvider;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object p2, p2, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    const/4 p4, 0x0

    aget-object p2, p2, p4

    iget-object p2, p2, Lorg/telegram/ui/ArticleViewer$PageLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object p5, p0, Lorg/telegram/ui/ArticleViewer$PageBlocksPhotoViewerProvider;->pageBlocks:Ljava/util/List;

    invoke-interface {p5, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/telegram/tgnet/TLRPC$PageBlock;

    iget-object p5, p0, Lorg/telegram/ui/ArticleViewer$PageBlocksPhotoViewerProvider;->tempArr:[I

    invoke-direct {p0, p2, p3, p5}, Lorg/telegram/ui/ArticleViewer$PageBlocksPhotoViewerProvider;->getImageReceiverFromListView(Landroid/view/ViewGroup;Lorg/telegram/tgnet/TLRPC$PageBlock;[I)Lorg/telegram/messenger/ImageReceiver;

    move-result-object p2

    if-nez p2, :cond_1

    return-object p1

    .line 12672
    :cond_1
    new-instance p1, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;

    invoke-direct {p1}, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;-><init>()V

    .line 12673
    iget-object p3, p0, Lorg/telegram/ui/ArticleViewer$PageBlocksPhotoViewerProvider;->tempArr:[I

    aget p5, p3, p4

    iput p5, p1, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->viewX:I

    const/4 p5, 0x1

    .line 12674
    aget p3, p3, p5

    iput p3, p1, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->viewY:I

    .line 12675
    iget-object p3, p0, Lorg/telegram/ui/ArticleViewer$PageBlocksPhotoViewerProvider;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object p3, p3, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object p3, p3, p4

    iget-object p3, p3, Lorg/telegram/ui/ArticleViewer$PageLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iput-object p3, p1, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->parentView:Landroid/view/View;

    .line 12676
    iput-object p2, p1, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    .line 12677
    invoke-virtual {p2}, Lorg/telegram/messenger/ImageReceiver;->getBitmapSafe()Lorg/telegram/messenger/ImageReceiver$BitmapHolder;

    move-result-object p3

    iput-object p3, p1, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->thumb:Lorg/telegram/messenger/ImageReceiver$BitmapHolder;

    .line 12678
    invoke-virtual {p2, p5}, Lorg/telegram/messenger/ImageReceiver;->getRoundRadius(Z)[I

    move-result-object p2

    iput-object p2, p1, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->radius:[I

    .line 12679
    iget-object p2, p0, Lorg/telegram/ui/ArticleViewer$PageBlocksPhotoViewerProvider;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {p2}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$fgetcurrentHeaderHeight(Lorg/telegram/ui/ArticleViewer;)I

    move-result p2

    iput p2, p1, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->clipTopAddition:I

    :cond_2
    :goto_0
    return-object p1
.end method

.method public onClose()V
    .locals 1

    .line 12752
    invoke-super {p0}, Lorg/telegram/ui/PhotoViewer$EmptyPhotoViewerProvider;->onClose()V

    .line 12753
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$PageBlocksPhotoViewerProvider;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$mcheckVideoPlayer(Lorg/telegram/ui/ArticleViewer;)V

    return-void
.end method

.method public onReleasePlayerBeforeClose(I)V
    .locals 8

    if-ltz p1, :cond_0

    .line 12759
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$PageBlocksPhotoViewerProvider;->pageBlocks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 12760
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$PageBlocksPhotoViewerProvider;->pageBlocks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$PageBlock;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 12762
    :goto_0
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/PhotoViewer;->getVideoPlayer()Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object v0

    .line 12763
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/PhotoViewer;->getVideoTextureView()Landroid/view/TextureView;

    move-result-object v1

    .line 12764
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/PhotoViewer;->getVideoSurfaceView()Landroid/view/SurfaceView;

    move-result-object v2

    .line 12765
    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer$PageBlocksPhotoViewerProvider;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v3, v3, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    iget-object v3, v3, Lorg/telegram/ui/ArticleViewer$PageLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-direct {p0, v3, p1}, Lorg/telegram/ui/ArticleViewer$PageBlocksPhotoViewerProvider;->getViewFromListView(Landroid/view/ViewGroup;Lorg/telegram/tgnet/TLRPC$PageBlock;)Lorg/telegram/ui/ArticleViewer$BlockVideoCell;

    move-result-object p1

    const/4 v3, 0x0

    if-eqz p1, :cond_1

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 12767
    iget-object v5, p0, Lorg/telegram/ui/ArticleViewer$PageBlocksPhotoViewerProvider;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v5}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$fgetvideoStates(Lorg/telegram/ui/ArticleViewer;)Landroidx/collection/LongSparseArray;

    move-result-object v5

    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->-$$Nest$fgetcurrentBlock(Lorg/telegram/ui/ArticleViewer$BlockVideoCell;)Lorg/telegram/tgnet/TLRPC$TL_pageBlockVideo;

    move-result-object v6

    iget-wide v6, v6, Lorg/telegram/tgnet/TLRPC$TL_pageBlockVideo;->video_id:J

    invoke-static {v0, p1, v1}, Lorg/telegram/ui/ArticleViewer$BlockVideoCellState;->fromPlayer(Lorg/telegram/ui/Components/VideoPlayer;Lorg/telegram/ui/ArticleViewer$BlockVideoCell;Landroid/view/TextureView;)Lorg/telegram/ui/ArticleViewer$BlockVideoCellState;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->setState(Lorg/telegram/ui/ArticleViewer$BlockVideoCellState;)Lorg/telegram/ui/ArticleViewer$BlockVideoCellState;

    move-result-object v1

    invoke-virtual {v5, v6, v7, v1}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 12768
    invoke-static {p1, v4}, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->-$$Nest$fputfirstFrameRendered(Lorg/telegram/ui/ArticleViewer$BlockVideoCell;Z)V

    .line 12769
    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->-$$Nest$fgettextureView(Lorg/telegram/ui/ArticleViewer$BlockVideoCell;)Landroid/view/TextureView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setAlpha(F)V

    .line 12770
    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->-$$Nest$fgetvideoState(Lorg/telegram/ui/ArticleViewer$BlockVideoCell;)Lorg/telegram/ui/ArticleViewer$BlockVideoCellState;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->-$$Nest$fgetvideoState(Lorg/telegram/ui/ArticleViewer$BlockVideoCell;)Lorg/telegram/ui/ArticleViewer$BlockVideoCellState;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/ui/ArticleViewer$BlockVideoCellState;->lastFrameBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    .line 12771
    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->-$$Nest$fgetimageView(Lorg/telegram/ui/ArticleViewer$BlockVideoCell;)Lorg/telegram/messenger/ImageReceiver;

    move-result-object v1

    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->-$$Nest$fgetvideoState(Lorg/telegram/ui/ArticleViewer$BlockVideoCell;)Lorg/telegram/ui/ArticleViewer$BlockVideoCellState;

    move-result-object v5

    iget-object v5, v5, Lorg/telegram/ui/ArticleViewer$BlockVideoCellState;->lastFrameBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v5}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_1
    if-eqz p1, :cond_2

    if-eqz v0, :cond_2

    if-eqz v2, :cond_2

    .line 12775
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$PageBlocksPhotoViewerProvider;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v1}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$fgetvideoStates(Lorg/telegram/ui/ArticleViewer;)Landroidx/collection/LongSparseArray;

    move-result-object v1

    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->-$$Nest$fgetcurrentBlock(Lorg/telegram/ui/ArticleViewer$BlockVideoCell;)Lorg/telegram/tgnet/TLRPC$TL_pageBlockVideo;

    move-result-object v5

    iget-wide v5, v5, Lorg/telegram/tgnet/TLRPC$TL_pageBlockVideo;->video_id:J

    invoke-static {v0, p1, v2}, Lorg/telegram/ui/ArticleViewer$BlockVideoCellState;->fromPlayer(Lorg/telegram/ui/Components/VideoPlayer;Lorg/telegram/ui/ArticleViewer$BlockVideoCell;Landroid/view/SurfaceView;)Lorg/telegram/ui/ArticleViewer$BlockVideoCellState;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->setState(Lorg/telegram/ui/ArticleViewer$BlockVideoCellState;)Lorg/telegram/ui/ArticleViewer$BlockVideoCellState;

    move-result-object v0

    invoke-virtual {v1, v5, v6, v0}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 12776
    invoke-static {p1, v4}, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->-$$Nest$fputfirstFrameRendered(Lorg/telegram/ui/ArticleViewer$BlockVideoCell;Z)V

    .line 12777
    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->-$$Nest$fgettextureView(Lorg/telegram/ui/ArticleViewer$BlockVideoCell;)Landroid/view/TextureView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 12778
    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->-$$Nest$fgetvideoState(Lorg/telegram/ui/ArticleViewer$BlockVideoCell;)Lorg/telegram/ui/ArticleViewer$BlockVideoCellState;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->-$$Nest$fgetvideoState(Lorg/telegram/ui/ArticleViewer$BlockVideoCell;)Lorg/telegram/ui/ArticleViewer$BlockVideoCellState;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer$BlockVideoCellState;->lastFrameBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 12779
    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->-$$Nest$fgetimageView(Lorg/telegram/ui/ArticleViewer$BlockVideoCell;)Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->-$$Nest$fgetvideoState(Lorg/telegram/ui/ArticleViewer$BlockVideoCell;)Lorg/telegram/ui/ArticleViewer$BlockVideoCellState;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/ui/ArticleViewer$BlockVideoCellState;->lastFrameBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 12782
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$PageBlocksPhotoViewerProvider;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$mcheckVideoPlayer(Lorg/telegram/ui/ArticleViewer;)V

    return-void
.end method
