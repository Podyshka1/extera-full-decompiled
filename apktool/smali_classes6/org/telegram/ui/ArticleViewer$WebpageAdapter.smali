.class Lorg/telegram/ui/ArticleViewer$WebpageAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ArticleViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WebpageAdapter"
.end annotation


# instance fields
.field private anchors:Ljava/util/HashMap;

.field private anchorsOffset:Ljava/util/HashMap;

.field private anchorsParent:Ljava/util/HashMap;

.field private audioBlocks:Ljava/util/HashMap;

.field private audioMessages:Ljava/util/ArrayList;

.field private blocks:Ljava/util/ArrayList;

.field private final calculateContentHeightRunnable:Ljava/lang/Runnable;

.field private channelBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockChannel;

.field private context:Landroid/content/Context;

.field private currentPage:Lorg/telegram/tgnet/TLRPC$WebPage;

.field public fullHeight:I

.field private isRtl:Z

.field public itemHeights:[I

.field private localBlocks:Ljava/util/ArrayList;

.field private final padding:Z

.field private photoBlocks:Ljava/util/ArrayList;

.field private searchTextOffset:Ljava/util/HashMap;

.field public sumItemHeights:[I

.field private textBlocks:Ljava/util/ArrayList;

.field private textToBlocks:Ljava/util/HashMap;

.field final synthetic this$0:Lorg/telegram/ui/ArticleViewer;


# direct methods
.method public static synthetic $r8$lambda$ZGFSfTmlLg-_h0pNsCyiFkzG9L4(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->lambda$new$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$no18by4-CDj0ow2v5xVJ5zJfZHU(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;I[I[I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->lambda$new$0(I[I[I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetanchors(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Ljava/util/HashMap;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->anchors:Ljava/util/HashMap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetanchorsOffset(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Ljava/util/HashMap;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->anchorsOffset:Ljava/util/HashMap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetanchorsParent(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Ljava/util/HashMap;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->anchorsParent:Ljava/util/HashMap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetaudioBlocks(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Ljava/util/HashMap;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->audioBlocks:Ljava/util/HashMap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetaudioMessages(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Ljava/util/ArrayList;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->audioMessages:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetblocks(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Ljava/util/ArrayList;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->blocks:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetchannelBlock(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Lorg/telegram/tgnet/TLRPC$TL_pageBlockChannel;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->channelBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockChannel;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcurrentPage(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Lorg/telegram/tgnet/TLRPC$WebPage;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->currentPage:Lorg/telegram/tgnet/TLRPC$WebPage;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetisRtl(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->isRtl:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetlocalBlocks(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Ljava/util/ArrayList;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->localBlocks:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetphotoBlocks(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Ljava/util/ArrayList;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->photoBlocks:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetsearchTextOffset(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Ljava/util/HashMap;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->searchTextOffset:Ljava/util/HashMap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettextBlocks(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Ljava/util/ArrayList;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->textBlocks:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettextToBlocks(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Ljava/util/HashMap;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->textToBlocks:Ljava/util/HashMap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputchannelBlock(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;Lorg/telegram/tgnet/TLRPC$TL_pageBlockChannel;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->channelBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockChannel;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputcurrentPage(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;Lorg/telegram/tgnet/TLRPC$WebPage;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->currentPage:Lorg/telegram/tgnet/TLRPC$WebPage;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputisRtl(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->isRtl:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$maddBlock(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;Lorg/telegram/ui/ArticleViewer$WebpageAdapter;Lorg/telegram/tgnet/TLRPC$PageBlock;III)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->addBlock(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;Lorg/telegram/tgnet/TLRPC$PageBlock;III)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mbindBlockToHolder(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;ILandroidx/recyclerview/widget/RecyclerView$ViewHolder;Lorg/telegram/tgnet/TLRPC$PageBlock;IIZ)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->bindBlockToHolder(ILandroidx/recyclerview/widget/RecyclerView$ViewHolder;Lorg/telegram/tgnet/TLRPC$PageBlock;IIZ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcleanup(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->cleanup()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetDocumentWithId(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;J)Lorg/telegram/tgnet/TLRPC$Document;
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->getDocumentWithId(J)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetPhotoWithId(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;J)Lorg/telegram/tgnet/TLRPC$Photo;
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->getPhotoWithId(J)Lorg/telegram/tgnet/TLRPC$Photo;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetTypeForBlock(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;Lorg/telegram/tgnet/TLRPC$PageBlock;)I
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->getTypeForBlock(Lorg/telegram/tgnet/TLRPC$PageBlock;)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mupdateRows(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->updateRows()V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;Z)V
    .locals 0

    .line 5809
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    .line 5792
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->localBlocks:Ljava/util/ArrayList;

    .line 5793
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->blocks:Ljava/util/ArrayList;

    .line 5794
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->photoBlocks:Ljava/util/ArrayList;

    .line 5795
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->anchors:Ljava/util/HashMap;

    .line 5796
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->anchorsOffset:Ljava/util/HashMap;

    .line 5797
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->anchorsParent:Ljava/util/HashMap;

    .line 5798
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->audioBlocks:Ljava/util/HashMap;

    .line 5799
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->audioMessages:Ljava/util/ArrayList;

    .line 5800
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->textToBlocks:Ljava/util/HashMap;

    .line 5801
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->textBlocks:Ljava/util/ArrayList;

    .line 5802
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->searchTextOffset:Ljava/util/HashMap;

    .line 6850
    new-instance p1, Lorg/telegram/ui/ArticleViewer$WebpageAdapter$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)V

    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->calculateContentHeightRunnable:Ljava/lang/Runnable;

    .line 5810
    iput-object p2, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->context:Landroid/content/Context;

    .line 5811
    iput-boolean p3, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->padding:Z

    return-void
.end method

.method private addAllMediaFromBlock(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;Lorg/telegram/tgnet/TLRPC$PageBlock;)V
    .locals 5

    .line 6318
    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$TL_pageBlockPhoto;

    const/16 v1, 0x38

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 6319
    move-object p1, p2

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockPhoto;

    .line 6320
    iget-wide v3, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockPhoto;->photo_id:J

    invoke-direct {p0, v3, v4}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->getPhotoWithId(J)Lorg/telegram/tgnet/TLRPC$Photo;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 6322
    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-static {v3, v1, v2}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;IZ)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v1

    iput-object v1, p1, Lorg/telegram/tgnet/TLRPC$PageBlock;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 6323
    iput-object v0, p1, Lorg/telegram/tgnet/TLRPC$PageBlock;->thumbObject:Lorg/telegram/tgnet/TLObject;

    .line 6324
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->photoBlocks:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 6326
    :cond_0
    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$TL_pageBlockVideo;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->currentPage:Lorg/telegram/tgnet/TLRPC$WebPage;

    invoke-static {v0, p2}, Lorg/telegram/ui/ArticleViewer$WebPageUtils;->isVideo(Lorg/telegram/tgnet/TLRPC$WebPage;Lorg/telegram/tgnet/TLRPC$PageBlock;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6327
    move-object p1, p2

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockVideo;

    .line 6328
    iget-wide v3, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockVideo;->video_id:J

    invoke-direct {p0, v3, v4}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->getDocumentWithId(J)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 6330
    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    invoke-static {v3, v1, v2}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;IZ)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v1

    iput-object v1, p1, Lorg/telegram/tgnet/TLRPC$PageBlock;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 6331
    iput-object v0, p1, Lorg/telegram/tgnet/TLRPC$PageBlock;->thumbObject:Lorg/telegram/tgnet/TLObject;

    .line 6332
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->photoBlocks:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 6334
    :cond_1
    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$TL_pageBlockSlideshow;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 6335
    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_pageBlockSlideshow;

    .line 6336
    iget-object v0, p2, Lorg/telegram/tgnet/TLRPC$TL_pageBlockSlideshow;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 6338
    iget-object v3, p2, Lorg/telegram/tgnet/TLRPC$TL_pageBlockSlideshow;->items:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$PageBlock;

    .line 6339
    iget-object v4, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v4}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$fgetlastBlockNum(Lorg/telegram/ui/ArticleViewer;)I

    move-result v4

    iput v4, v3, Lorg/telegram/tgnet/TLRPC$PageBlock;->groupId:I

    .line 6340
    invoke-direct {p0, p1, v3}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->addAllMediaFromBlock(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;Lorg/telegram/tgnet/TLRPC$PageBlock;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6342
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$fgetlastBlockNum(Lorg/telegram/ui/ArticleViewer;)I

    move-result p2

    add-int/2addr p2, v2

    invoke-static {p1, p2}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$fputlastBlockNum(Lorg/telegram/ui/ArticleViewer;I)V

    return-void

    .line 6343
    :cond_3
    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$TL_pageBlockCollage;

    if-eqz v0, :cond_5

    .line 6344
    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_pageBlockCollage;

    .line 6345
    iget-object v0, p2, Lorg/telegram/tgnet/TLRPC$TL_pageBlockCollage;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_1
    if-ge v1, v0, :cond_4

    .line 6347
    iget-object v3, p2, Lorg/telegram/tgnet/TLRPC$TL_pageBlockCollage;->items:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$PageBlock;

    .line 6348
    iget-object v4, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v4}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$fgetlastBlockNum(Lorg/telegram/ui/ArticleViewer;)I

    move-result v4

    iput v4, v3, Lorg/telegram/tgnet/TLRPC$PageBlock;->groupId:I

    .line 6349
    invoke-direct {p0, p1, v3}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->addAllMediaFromBlock(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;Lorg/telegram/tgnet/TLRPC$PageBlock;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 6351
    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$fgetlastBlockNum(Lorg/telegram/ui/ArticleViewer;)I

    move-result p2

    add-int/2addr p2, v2

    invoke-static {p1, p2}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$fputlastBlockNum(Lorg/telegram/ui/ArticleViewer;I)V

    return-void

    .line 6352
    :cond_5
    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$TL_pageBlockCover;

    if-eqz v0, :cond_6

    .line 6353
    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_pageBlockCover;

    .line 6354
    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$TL_pageBlockCover;->cover:Lorg/telegram/tgnet/TLRPC$PageBlock;

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->addAllMediaFromBlock(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;Lorg/telegram/tgnet/TLRPC$PageBlock;)V

    :cond_6
    return-void
.end method

.method private addBlock(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;Lorg/telegram/tgnet/TLRPC$PageBlock;III)V
    .locals 23

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v0, p2

    .line 6029
    instance-of v7, v0, Lorg/telegram/ui/ArticleViewer$TL_pageBlockDetailsChild;

    if-eqz v7, :cond_0

    .line 6030
    move-object v3, v0

    check-cast v3, Lorg/telegram/ui/ArticleViewer$TL_pageBlockDetailsChild;

    .line 6031
    invoke-static {v3}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockDetailsChild;->-$$Nest$fgetblock(Lorg/telegram/ui/ArticleViewer$TL_pageBlockDetailsChild;)Lorg/telegram/tgnet/TLRPC$PageBlock;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v0

    .line 6033
    :goto_0
    instance-of v4, v3, Lorg/telegram/tgnet/TLRPC$TL_pageBlockList;

    if-nez v4, :cond_1

    instance-of v4, v3, Lorg/telegram/tgnet/TLRPC$TL_pageBlockOrderedList;

    if-nez v4, :cond_1

    .line 6034
    invoke-direct {v1, v3}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->setRichTextParents(Lorg/telegram/tgnet/TLRPC$PageBlock;)V

    .line 6035
    invoke-direct {v1, v2, v3}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->addAllMediaFromBlock(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;Lorg/telegram/tgnet/TLRPC$PageBlock;)V

    .line 6037
    :cond_1
    iget-object v4, v1, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v4, v3}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$mgetLastNonListPageBlock(Lorg/telegram/ui/ArticleViewer;Lorg/telegram/tgnet/TLRPC$PageBlock;)Lorg/telegram/tgnet/TLRPC$PageBlock;

    move-result-object v3

    .line 6038
    instance-of v4, v3, Lorg/telegram/tgnet/TLRPC$TL_pageBlockUnsupported;

    if-eqz v4, :cond_2

    goto/16 :goto_13

    .line 6040
    :cond_2
    instance-of v4, v3, Lorg/telegram/tgnet/TLRPC$TL_pageBlockAnchor;

    if-eqz v4, :cond_3

    .line 6041
    iget-object v0, v1, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->anchors:Ljava/util/HashMap;

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_pageBlockAnchor;

    iget-object v2, v3, Lorg/telegram/tgnet/TLRPC$TL_pageBlockAnchor;->name:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->blocks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 6044
    :cond_3
    instance-of v4, v3, Lorg/telegram/tgnet/TLRPC$TL_pageBlockList;

    if-nez v4, :cond_4

    instance-of v5, v3, Lorg/telegram/tgnet/TLRPC$TL_pageBlockOrderedList;

    if-nez v5, :cond_4

    .line 6045
    iget-object v5, v1, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->blocks:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6048
    :cond_4
    instance-of v5, v3, Lorg/telegram/tgnet/TLRPC$TL_pageBlockAudio;

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eqz v5, :cond_8

    .line 6049
    move-object v0, v3

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockAudio;

    .line 6050
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_message;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_message;-><init>()V

    .line 6051
    iput-boolean v9, v2, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    .line 6052
    iget-wide v4, v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockAudio;->audio_id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->hashCode()I

    move-result v4

    neg-int v4, v4

    iput v4, v3, Lorg/telegram/tgnet/TLRPC$PageBlock;->mid:I

    iput v4, v2, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    .line 6053
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    iput-object v4, v2, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 6054
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    iput-object v4, v2, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 6055
    iget-object v5, v2, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget-object v6, v1, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v6}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/ArticleViewer;)I

    move-result v6

    invoke-static {v6}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v6

    iput-wide v6, v5, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    iput-wide v6, v4, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    .line 6056
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    long-to-int v4, v4

    iput v4, v2, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    .line 6057
    const-string v4, ""

    iput-object v4, v2, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    .line 6058
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;-><init>()V

    iput-object v4, v2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    .line 6059
    iget-object v5, v1, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->currentPage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    .line 6060
    iget v5, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->flags:I

    or-int/lit8 v5, v5, 0x3

    iput v5, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->flags:I

    .line 6061
    iget-wide v5, v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockAudio;->audio_id:J

    invoke-direct {v1, v5, v6}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->getDocumentWithId(J)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v5

    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    .line 6062
    iget v4, v2, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    or-int/lit16 v4, v4, 0x300

    iput v4, v2, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    .line 6063
    new-instance v4, Lorg/telegram/messenger/MessageObject;

    sget v5, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-direct {v4, v5, v2, v8, v9}, Lorg/telegram/messenger/MessageObject;-><init>(ILorg/telegram/tgnet/TLRPC$Message;ZZ)V

    .line 6064
    iget-object v2, v1, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->audioMessages:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6065
    iget-object v2, v1, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->audioBlocks:Ljava/util/HashMap;

    invoke-virtual {v2, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6067
    invoke-virtual {v4, v8}, Lorg/telegram/messenger/MessageObject;->getMusicAuthor(Z)Ljava/lang/String;

    move-result-object v0

    .line 6068
    invoke-virtual {v4, v8}, Lorg/telegram/messenger/MessageObject;->getMusicTitle(Z)Ljava/lang/String;

    move-result-object v2

    .line 6069
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_29

    .line 6071
    :cond_5
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    const/4 v4, 0x2

    .line 6072
    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v8

    aput-object v2, v4, v9

    const-string v0, "%s - %s"

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, v3}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->addTextBlock(Ljava/lang/Object;Lorg/telegram/tgnet/TLRPC$PageBlock;)V

    return-void

    .line 6073
    :cond_6
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 6074
    invoke-direct {v1, v2, v3}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->addTextBlock(Ljava/lang/Object;Lorg/telegram/tgnet/TLRPC$PageBlock;)V

    return-void

    .line 6076
    :cond_7
    invoke-direct {v1, v0, v3}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->addTextBlock(Ljava/lang/Object;Lorg/telegram/tgnet/TLRPC$PageBlock;)V

    return-void

    .line 6080
    :cond_8
    instance-of v5, v3, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbedPost;

    const/4 v10, 0x0

    if-eqz v5, :cond_e

    .line 6081
    move-object v0, v3

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbedPost;

    .line 6082
    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbedPost;->blocks:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_29

    const/4 v4, -0x1

    .line 6083
    iput v4, v3, Lorg/telegram/tgnet/TLRPC$PageBlock;->level:I

    .line 6084
    :goto_1
    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbedPost;->blocks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v8, v3, :cond_c

    .line 6085
    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbedPost;->blocks:Ljava/util/ArrayList;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$PageBlock;

    .line 6086
    instance-of v4, v3, Lorg/telegram/tgnet/TLRPC$TL_pageBlockUnsupported;

    if-eqz v4, :cond_9

    goto :goto_2

    .line 6088
    :cond_9
    instance-of v4, v3, Lorg/telegram/tgnet/TLRPC$TL_pageBlockAnchor;

    if-eqz v4, :cond_a

    .line 6089
    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_pageBlockAnchor;

    .line 6090
    iget-object v4, v1, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->anchors:Ljava/util/HashMap;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$TL_pageBlockAnchor;->name:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    iget-object v5, v1, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->blocks:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 6093
    :cond_a
    iput v9, v3, Lorg/telegram/tgnet/TLRPC$PageBlock;->level:I

    .line 6094
    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbedPost;->blocks:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v9

    if-ne v8, v4, :cond_b

    .line 6095
    iput-boolean v9, v3, Lorg/telegram/tgnet/TLRPC$PageBlock;->bottom:Z

    .line 6097
    :cond_b
    iget-object v4, v1, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->blocks:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6098
    invoke-direct {v1, v2, v3}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->addAllMediaFromBlock(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;Lorg/telegram/tgnet/TLRPC$PageBlock;)V

    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 6100
    :cond_c
    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbedPost;->caption:Lorg/telegram/tgnet/TLRPC$TL_pageCaption;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_pageCaption;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-static {v2}, Lorg/telegram/ui/ArticleViewer;->getPlainText(Lorg/telegram/tgnet/TLRPC$RichText;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_d

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbedPost;->caption:Lorg/telegram/tgnet/TLRPC$TL_pageCaption;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_pageCaption;->credit:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-static {v2}, Lorg/telegram/ui/ArticleViewer;->getPlainText(Lorg/telegram/tgnet/TLRPC$RichText;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_29

    .line 6101
    :cond_d
    new-instance v2, Lorg/telegram/ui/ArticleViewer$TL_pageBlockEmbedPostCaption;

    invoke-direct {v2, v10}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockEmbedPostCaption;-><init>(Lorg/telegram/ui/ArticleViewer-IA;)V

    .line 6102
    invoke-static {v2, v0}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockEmbedPostCaption;->-$$Nest$fputparent(Lorg/telegram/ui/ArticleViewer$TL_pageBlockEmbedPostCaption;Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbedPost;)V

    .line 6103
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbedPost;->caption:Lorg/telegram/tgnet/TLRPC$TL_pageCaption;

    iput-object v0, v2, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbedPost;->caption:Lorg/telegram/tgnet/TLRPC$TL_pageCaption;

    .line 6104
    iget-object v0, v1, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->blocks:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 6107
    :cond_e
    instance-of v5, v3, Lorg/telegram/tgnet/TLRPC$TL_pageBlockRelatedArticles;

    if-eqz v5, :cond_10

    .line 6108
    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_pageBlockRelatedArticles;

    .line 6110
    new-instance v0, Lorg/telegram/ui/ArticleViewer$TL_pageBlockRelatedArticlesShadow;

    invoke-direct {v0, v10}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockRelatedArticlesShadow;-><init>(Lorg/telegram/ui/ArticleViewer-IA;)V

    .line 6111
    invoke-static {v0, v3}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockRelatedArticlesShadow;->-$$Nest$fputparent(Lorg/telegram/ui/ArticleViewer$TL_pageBlockRelatedArticlesShadow;Lorg/telegram/tgnet/TLRPC$TL_pageBlockRelatedArticles;)V

    .line 6112
    iget-object v2, v1, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->blocks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v9

    invoke-virtual {v2, v4, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 6114
    iget-object v0, v3, Lorg/telegram/tgnet/TLRPC$TL_pageBlockRelatedArticles;->articles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_3
    if-ge v8, v0, :cond_f

    .line 6115
    new-instance v2, Lorg/telegram/ui/ArticleViewer$TL_pageBlockRelatedArticlesChild;

    invoke-direct {v2, v10}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockRelatedArticlesChild;-><init>(Lorg/telegram/ui/ArticleViewer-IA;)V

    .line 6116
    invoke-static {v2, v3}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockRelatedArticlesChild;->-$$Nest$fputparent(Lorg/telegram/ui/ArticleViewer$TL_pageBlockRelatedArticlesChild;Lorg/telegram/tgnet/TLRPC$TL_pageBlockRelatedArticles;)V

    .line 6117
    invoke-static {v2, v8}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockRelatedArticlesChild;->-$$Nest$fputnum(Lorg/telegram/ui/ArticleViewer$TL_pageBlockRelatedArticlesChild;I)V

    .line 6118
    iget-object v4, v1, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->blocks:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_f
    if-nez p5, :cond_29

    .line 6121
    new-instance v0, Lorg/telegram/ui/ArticleViewer$TL_pageBlockRelatedArticlesShadow;

    invoke-direct {v0, v10}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockRelatedArticlesShadow;-><init>(Lorg/telegram/ui/ArticleViewer-IA;)V

    .line 6122
    invoke-static {v0, v3}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockRelatedArticlesShadow;->-$$Nest$fputparent(Lorg/telegram/ui/ArticleViewer$TL_pageBlockRelatedArticlesShadow;Lorg/telegram/tgnet/TLRPC$TL_pageBlockRelatedArticles;)V

    .line 6123
    iget-object v2, v1, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->blocks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 6125
    :cond_10
    instance-of v5, v3, Lorg/telegram/tgnet/TLRPC$TL_pageBlockDetails;

    if-eqz v5, :cond_11

    .line 6126
    move-object v7, v3

    check-cast v7, Lorg/telegram/tgnet/TLRPC$TL_pageBlockDetails;

    .line 6127
    iget-object v3, v7, Lorg/telegram/tgnet/TLRPC$TL_pageBlockDetails;->blocks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v11

    :goto_4
    if-ge v8, v11, :cond_29

    .line 6128
    new-instance v3, Lorg/telegram/ui/ArticleViewer$TL_pageBlockDetailsChild;

    invoke-direct {v3, v10}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockDetailsChild;-><init>(Lorg/telegram/ui/ArticleViewer-IA;)V

    .line 6129
    invoke-static {v3, v0}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockDetailsChild;->-$$Nest$fputparent(Lorg/telegram/ui/ArticleViewer$TL_pageBlockDetailsChild;Lorg/telegram/tgnet/TLRPC$PageBlock;)V

    .line 6130
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_pageBlockDetails;->blocks:Ljava/util/ArrayList;

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$PageBlock;

    invoke-static {v3, v4}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockDetailsChild;->-$$Nest$fputblock(Lorg/telegram/ui/ArticleViewer$TL_pageBlockDetailsChild;Lorg/telegram/tgnet/TLRPC$PageBlock;)V

    .line 6131
    iget-object v4, v1, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v4, v0, v3}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$mwrapInTableBlock(Lorg/telegram/ui/ArticleViewer;Lorg/telegram/tgnet/TLRPC$PageBlock;Lorg/telegram/tgnet/TLRPC$PageBlock;)Lorg/telegram/tgnet/TLRPC$PageBlock;

    move-result-object v3

    add-int/lit8 v4, p3, 0x1

    move/from16 v5, p4

    move/from16 v6, p5

    invoke-direct/range {v1 .. v6}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->addBlock(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;Lorg/telegram/tgnet/TLRPC$PageBlock;III)V

    move v12, v5

    add-int/lit8 v8, v8, 0x1

    move-object/from16 v2, p1

    goto :goto_4

    :cond_11
    move/from16 v12, p4

    .line 6146
    const-string v11, " "

    const-string v13, "%d."

    const-string v14, ".%d"

    if-eqz v4, :cond_1b

    .line 6147
    move-object v15, v3

    check-cast v15, Lorg/telegram/tgnet/TLRPC$TL_pageBlockList;

    .line 6149
    new-instance v2, Lorg/telegram/ui/ArticleViewer$TL_pageBlockListParent;

    invoke-direct {v2, v10}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockListParent;-><init>(Lorg/telegram/ui/ArticleViewer-IA;)V

    .line 6150
    invoke-static {v2, v15}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockListParent;->-$$Nest$fputpageBlockList(Lorg/telegram/ui/ArticleViewer$TL_pageBlockListParent;Lorg/telegram/tgnet/TLRPC$TL_pageBlockList;)V

    .line 6151
    invoke-static {v2, v12}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockListParent;->-$$Nest$fputlevel(Lorg/telegram/ui/ArticleViewer$TL_pageBlockListParent;I)V

    .line 6153
    iget-object v3, v15, Lorg/telegram/tgnet/TLRPC$TL_pageBlockList;->items:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v4, v8

    :goto_5
    if-ge v4, v3, :cond_29

    .line 6154
    iget-object v5, v15, Lorg/telegram/tgnet/TLRPC$TL_pageBlockList;->items:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/TLRPC$PageListItem;

    .line 6156
    new-instance v6, Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;

    invoke-direct {v6, v10}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;-><init>(Lorg/telegram/ui/ArticleViewer-IA;)V

    .line 6157
    invoke-static {v6, v4}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;->-$$Nest$fputindex(Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;I)V

    .line 6158
    invoke-static {v6, v2}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;->-$$Nest$fputparent(Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;Lorg/telegram/ui/ArticleViewer$TL_pageBlockListParent;)V

    .line 6159
    iget-boolean v10, v15, Lorg/telegram/tgnet/TLRPC$TL_pageBlockList;->ordered:Z

    if-eqz v10, :cond_13

    .line 6160
    iget-boolean v10, v1, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->isRtl:Z

    if-eqz v10, :cond_12

    add-int/lit8 v10, v4, 0x1

    .line 6161
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    move/from16 v17, v8

    new-array v8, v9, [Ljava/lang/Object;

    aput-object v10, v8, v17

    invoke-static {v14, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;->-$$Nest$fputnum(Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;Ljava/lang/String;)V

    goto :goto_6

    :cond_12
    move/from16 v17, v8

    add-int/lit8 v8, v4, 0x1

    .line 6163
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-array v10, v9, [Ljava/lang/Object;

    aput-object v8, v10, v17

    invoke-static {v13, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;->-$$Nest$fputnum(Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;Ljava/lang/String;)V

    goto :goto_6

    :cond_13
    move/from16 v17, v8

    .line 6166
    const-string v8, "\u2022"

    invoke-static {v6, v8}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;->-$$Nest$fputnum(Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;Ljava/lang/String;)V

    .line 6168
    :goto_6
    invoke-static {v2}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockListParent;->-$$Nest$fgetitems(Lorg/telegram/ui/ArticleViewer$TL_pageBlockListParent;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6170
    instance-of v8, v5, Lorg/telegram/tgnet/TLRPC$TL_pageListItemText;

    if-eqz v8, :cond_14

    .line 6171
    move-object v8, v5

    check-cast v8, Lorg/telegram/tgnet/TLRPC$TL_pageListItemText;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$TL_pageListItemText;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-static {v6, v8}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;->-$$Nest$fputtextItem(Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;Lorg/telegram/tgnet/TLRPC$RichText;)V

    goto :goto_7

    .line 6172
    :cond_14
    instance-of v8, v5, Lorg/telegram/tgnet/TLRPC$TL_pageListItemBlocks;

    if-eqz v8, :cond_16

    .line 6173
    move-object v8, v5

    check-cast v8, Lorg/telegram/tgnet/TLRPC$TL_pageListItemBlocks;

    .line 6174
    iget-object v10, v8, Lorg/telegram/tgnet/TLRPC$TL_pageListItemBlocks;->blocks:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_15

    .line 6175
    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$TL_pageListItemBlocks;->blocks:Ljava/util/ArrayList;

    move/from16 v10, v17

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/tgnet/TLRPC$PageBlock;

    invoke-static {v6, v8}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;->-$$Nest$fputblockItem(Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;Lorg/telegram/tgnet/TLRPC$PageBlock;)V

    goto :goto_7

    .line 6177
    :cond_15
    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_pageListItemText;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_pageListItemText;-><init>()V

    .line 6178
    new-instance v8, Lorg/telegram/tgnet/TLRPC$TL_textPlain;

    invoke-direct {v8}, Lorg/telegram/tgnet/TLRPC$TL_textPlain;-><init>()V

    .line 6179
    iput-object v11, v8, Lorg/telegram/tgnet/TLRPC$TL_textPlain;->text:Ljava/lang/String;

    .line 6180
    iput-object v8, v5, Lorg/telegram/tgnet/TLRPC$TL_pageListItemText;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    :cond_16
    :goto_7
    move-object v8, v5

    if-eqz v7, :cond_17

    .line 6185
    move-object v5, v0

    check-cast v5, Lorg/telegram/ui/ArticleViewer$TL_pageBlockDetailsChild;

    move v10, v3

    .line 6186
    new-instance v3, Lorg/telegram/ui/ArticleViewer$TL_pageBlockDetailsChild;

    const/4 v9, 0x0

    invoke-direct {v3, v9}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockDetailsChild;-><init>(Lorg/telegram/ui/ArticleViewer-IA;)V

    .line 6187
    invoke-static {v5}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockDetailsChild;->-$$Nest$fgetparent(Lorg/telegram/ui/ArticleViewer$TL_pageBlockDetailsChild;)Lorg/telegram/tgnet/TLRPC$PageBlock;

    move-result-object v5

    invoke-static {v3, v5}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockDetailsChild;->-$$Nest$fputparent(Lorg/telegram/ui/ArticleViewer$TL_pageBlockDetailsChild;Lorg/telegram/tgnet/TLRPC$PageBlock;)V

    .line 6188
    invoke-static {v3, v6}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockDetailsChild;->-$$Nest$fputblock(Lorg/telegram/ui/ArticleViewer$TL_pageBlockDetailsChild;Lorg/telegram/tgnet/TLRPC$PageBlock;)V

    add-int/lit8 v5, v12, 0x1

    move/from16 v6, p5

    move-object v9, v2

    move/from16 v19, v4

    move-object/from16 v2, p1

    move/from16 v4, p3

    .line 6189
    invoke-direct/range {v1 .. v6}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->addBlock(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;Lorg/telegram/tgnet/TLRPC$PageBlock;III)V

    goto :goto_8

    :cond_17
    move-object v9, v2

    move v10, v3

    move/from16 v19, v4

    if-nez v19, :cond_18

    .line 6193
    iget-object v2, v1, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v2, v0, v6}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$mfixListBlock(Lorg/telegram/ui/ArticleViewer;Lorg/telegram/tgnet/TLRPC$PageBlock;Lorg/telegram/tgnet/TLRPC$PageBlock;)Lorg/telegram/tgnet/TLRPC$PageBlock;

    move-result-object v6

    :cond_18
    move-object v3, v6

    add-int/lit8 v5, v12, 0x1

    move-object/from16 v2, p1

    move/from16 v4, p3

    move/from16 v6, p5

    .line 6197
    invoke-direct/range {v1 .. v6}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->addBlock(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;Lorg/telegram/tgnet/TLRPC$PageBlock;III)V

    .line 6200
    :goto_8
    instance-of v1, v8, Lorg/telegram/tgnet/TLRPC$TL_pageListItemBlocks;

    if-eqz v1, :cond_1a

    .line 6201
    check-cast v8, Lorg/telegram/tgnet/TLRPC$TL_pageListItemBlocks;

    .line 6202
    iget-object v1, v8, Lorg/telegram/tgnet/TLRPC$TL_pageListItemBlocks;->blocks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    :goto_9
    if-ge v2, v1, :cond_1a

    .line 6203
    new-instance v3, Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;-><init>(Lorg/telegram/ui/ArticleViewer-IA;)V

    .line 6204
    iget-object v5, v8, Lorg/telegram/tgnet/TLRPC$TL_pageListItemBlocks;->blocks:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/TLRPC$PageBlock;

    invoke-static {v3, v5}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;->-$$Nest$fputblockItem(Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;Lorg/telegram/tgnet/TLRPC$PageBlock;)V

    .line 6205
    invoke-static {v3, v9}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;->-$$Nest$fputparent(Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;Lorg/telegram/ui/ArticleViewer$TL_pageBlockListParent;)V

    if-eqz v7, :cond_19

    .line 6208
    move-object v5, v0

    check-cast v5, Lorg/telegram/ui/ArticleViewer$TL_pageBlockDetailsChild;

    .line 6209
    new-instance v6, Lorg/telegram/ui/ArticleViewer$TL_pageBlockDetailsChild;

    invoke-direct {v6, v4}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockDetailsChild;-><init>(Lorg/telegram/ui/ArticleViewer-IA;)V

    .line 6210
    invoke-static {v5}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockDetailsChild;->-$$Nest$fgetparent(Lorg/telegram/ui/ArticleViewer$TL_pageBlockDetailsChild;)Lorg/telegram/tgnet/TLRPC$PageBlock;

    move-result-object v4

    invoke-static {v6, v4}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockDetailsChild;->-$$Nest$fputparent(Lorg/telegram/ui/ArticleViewer$TL_pageBlockDetailsChild;Lorg/telegram/tgnet/TLRPC$PageBlock;)V

    .line 6211
    invoke-static {v6, v3}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockDetailsChild;->-$$Nest$fputblock(Lorg/telegram/ui/ArticleViewer$TL_pageBlockDetailsChild;Lorg/telegram/tgnet/TLRPC$PageBlock;)V

    add-int/lit8 v5, v12, 0x1

    move/from16 v4, p3

    move/from16 v20, v1

    move/from16 v21, v2

    move-object/from16 v22, v3

    move-object v3, v6

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v6, p5

    .line 6212
    invoke-direct/range {v1 .. v6}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->addBlock(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;Lorg/telegram/tgnet/TLRPC$PageBlock;III)V

    move-object/from16 v3, v22

    goto :goto_a

    :cond_19
    move/from16 v20, v1

    move/from16 v21, v2

    move-object/from16 v22, v3

    add-int/lit8 v5, v12, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v4, p3

    move/from16 v6, p5

    .line 6214
    invoke-direct/range {v1 .. v6}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->addBlock(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;Lorg/telegram/tgnet/TLRPC$PageBlock;III)V

    .line 6216
    :goto_a
    invoke-static {v9}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockListParent;->-$$Nest$fgetitems(Lorg/telegram/ui/ArticleViewer$TL_pageBlockListParent;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v21, 0x1

    move/from16 v1, v20

    goto :goto_9

    :cond_1a
    move-object/from16 v1, p0

    add-int/lit8 v4, v19, 0x1

    move-object v2, v9

    move v3, v10

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    goto/16 :goto_5

    .line 6220
    :cond_1b
    instance-of v2, v3, Lorg/telegram/tgnet/TLRPC$TL_pageBlockOrderedList;

    if-eqz v2, :cond_29

    .line 6221
    move-object v8, v3

    check-cast v8, Lorg/telegram/tgnet/TLRPC$TL_pageBlockOrderedList;

    .line 6223
    new-instance v9, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListParent;

    const/4 v4, 0x0

    invoke-direct {v9, v4}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListParent;-><init>(Lorg/telegram/ui/ArticleViewer-IA;)V

    .line 6224
    invoke-static {v9, v8}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListParent;->-$$Nest$fputpageBlockOrderedList(Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListParent;Lorg/telegram/tgnet/TLRPC$TL_pageBlockOrderedList;)V

    .line 6225
    invoke-static {v9, v12}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListParent;->-$$Nest$fputlevel(Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListParent;I)V

    .line 6227
    iget-object v2, v8, Lorg/telegram/tgnet/TLRPC$TL_pageBlockOrderedList;->items:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v10

    const/4 v15, 0x0

    :goto_b
    if-ge v15, v10, :cond_29

    .line 6228
    iget-object v2, v8, Lorg/telegram/tgnet/TLRPC$TL_pageBlockOrderedList;->items:Ljava/util/ArrayList;

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$PageListOrderedItem;

    .line 6230
    new-instance v3, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;

    invoke-direct {v3, v4}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;-><init>(Lorg/telegram/ui/ArticleViewer-IA;)V

    .line 6231
    invoke-static {v3, v15}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;->-$$Nest$fputindex(Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;I)V

    .line 6232
    invoke-static {v3, v9}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;->-$$Nest$fputparent(Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListParent;)V

    .line 6233
    invoke-static {v9}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListParent;->-$$Nest$fgetitems(Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListParent;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6235
    instance-of v4, v2, Lorg/telegram/tgnet/TLRPC$TL_pageListOrderedItemText;

    const-string v5, "."

    if-eqz v4, :cond_20

    .line 6236
    move-object v4, v2

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_pageListOrderedItemText;

    .line 6237
    iget-object v6, v4, Lorg/telegram/tgnet/TLRPC$TL_pageListOrderedItemText;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-static {v3, v6}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;->-$$Nest$fputtextItem(Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;Lorg/telegram/tgnet/TLRPC$RichText;)V

    .line 6239
    iget-object v6, v4, Lorg/telegram/tgnet/TLRPC$TL_pageListOrderedItemText;->num:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1d

    .line 6240
    iget-boolean v4, v1, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->isRtl:Z

    if-eqz v4, :cond_1c

    add-int/lit8 v4, v15, 0x1

    .line 6241
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    const/16 v17, 0x0

    aput-object v4, v6, v17

    invoke-static {v14, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;->-$$Nest$fputnum(Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;Ljava/lang/String;)V

    goto :goto_c

    :cond_1c
    const/4 v5, 0x1

    const/16 v17, 0x0

    add-int/lit8 v4, v15, 0x1

    .line 6243
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-array v6, v5, [Ljava/lang/Object;

    aput-object v4, v6, v17

    invoke-static {v13, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;->-$$Nest$fputnum(Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;Ljava/lang/String;)V

    goto :goto_c

    .line 6246
    :cond_1d
    iget-boolean v6, v1, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->isRtl:Z

    if-eqz v6, :cond_1e

    .line 6247
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_pageListOrderedItemText;->num:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;->-$$Nest$fputnum(Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;Ljava/lang/String;)V

    goto :goto_c

    .line 6249
    :cond_1e
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_pageListOrderedItemText;->num:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;->-$$Nest$fputnum(Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;Ljava/lang/String;)V

    :cond_1f
    :goto_c
    move-object/from16 v19, v2

    const/16 v17, 0x0

    goto/16 :goto_e

    .line 6252
    :cond_20
    instance-of v4, v2, Lorg/telegram/tgnet/TLRPC$TL_pageListOrderedItemBlocks;

    if-eqz v4, :cond_1f

    .line 6253
    move-object v4, v2

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_pageListOrderedItemBlocks;

    .line 6254
    iget-object v6, v4, Lorg/telegram/tgnet/TLRPC$TL_pageListOrderedItemBlocks;->blocks:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_21

    .line 6255
    iget-object v6, v4, Lorg/telegram/tgnet/TLRPC$TL_pageListOrderedItemBlocks;->blocks:Ljava/util/ArrayList;

    move-object/from16 v19, v2

    const/4 v2, 0x0

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/TLRPC$PageBlock;

    invoke-static {v3, v6}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;->-$$Nest$fputblockItem(Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;Lorg/telegram/tgnet/TLRPC$PageBlock;)V

    move-object/from16 v2, v19

    goto :goto_d

    .line 6257
    :cond_21
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_pageListOrderedItemText;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_pageListOrderedItemText;-><init>()V

    .line 6258
    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_textPlain;

    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_textPlain;-><init>()V

    .line 6259
    iput-object v11, v6, Lorg/telegram/tgnet/TLRPC$TL_textPlain;->text:Ljava/lang/String;

    .line 6260
    iput-object v6, v2, Lorg/telegram/tgnet/TLRPC$TL_pageListOrderedItemText;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    .line 6264
    :goto_d
    iget-object v6, v4, Lorg/telegram/tgnet/TLRPC$TL_pageListOrderedItemBlocks;->num:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_23

    .line 6265
    iget-boolean v4, v1, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->isRtl:Z

    if-eqz v4, :cond_22

    add-int/lit8 v4, v15, 0x1

    .line 6266
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v6, 0x1

    new-array v5, v6, [Ljava/lang/Object;

    const/16 v17, 0x0

    aput-object v4, v5, v17

    invoke-static {v14, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;->-$$Nest$fputnum(Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;Ljava/lang/String;)V

    goto :goto_f

    :cond_22
    const/4 v6, 0x1

    const/16 v17, 0x0

    add-int/lit8 v4, v15, 0x1

    .line 6268
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    aput-object v4, v5, v17

    invoke-static {v13, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;->-$$Nest$fputnum(Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;Ljava/lang/String;)V

    goto :goto_f

    :cond_23
    const/16 v17, 0x0

    .line 6271
    iget-boolean v6, v1, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->isRtl:Z

    if-eqz v6, :cond_24

    .line 6272
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_pageListOrderedItemBlocks;->num:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;->-$$Nest$fputnum(Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;Ljava/lang/String;)V

    goto :goto_f

    .line 6274
    :cond_24
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_pageListOrderedItemBlocks;->num:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;->-$$Nest$fputnum(Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;Ljava/lang/String;)V

    goto :goto_f

    :goto_e
    move-object/from16 v2, v19

    :goto_f
    if-eqz v7, :cond_25

    .line 6279
    move-object v4, v0

    check-cast v4, Lorg/telegram/ui/ArticleViewer$TL_pageBlockDetailsChild;

    .line 6280
    new-instance v5, Lorg/telegram/ui/ArticleViewer$TL_pageBlockDetailsChild;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockDetailsChild;-><init>(Lorg/telegram/ui/ArticleViewer-IA;)V

    .line 6281
    invoke-static {v4}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockDetailsChild;->-$$Nest$fgetparent(Lorg/telegram/ui/ArticleViewer$TL_pageBlockDetailsChild;)Lorg/telegram/tgnet/TLRPC$PageBlock;

    move-result-object v4

    invoke-static {v5, v4}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockDetailsChild;->-$$Nest$fputparent(Lorg/telegram/ui/ArticleViewer$TL_pageBlockDetailsChild;Lorg/telegram/tgnet/TLRPC$PageBlock;)V

    .line 6282
    invoke-static {v5, v3}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockDetailsChild;->-$$Nest$fputblock(Lorg/telegram/ui/ArticleViewer$TL_pageBlockDetailsChild;Lorg/telegram/tgnet/TLRPC$PageBlock;)V

    move-object v3, v5

    add-int/lit8 v5, v12, 0x1

    move/from16 v4, p3

    move/from16 v6, p5

    move/from16 v19, v7

    const/16 v18, 0x1

    move-object v7, v2

    move-object/from16 v2, p1

    .line 6283
    invoke-direct/range {v1 .. v6}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->addBlock(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;Lorg/telegram/tgnet/TLRPC$PageBlock;III)V

    goto :goto_10

    :cond_25
    move/from16 v19, v7

    const/16 v18, 0x1

    move-object v7, v2

    if-nez v15, :cond_26

    .line 6287
    iget-object v2, v1, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v2, v0, v3}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$mfixListBlock(Lorg/telegram/ui/ArticleViewer;Lorg/telegram/tgnet/TLRPC$PageBlock;Lorg/telegram/tgnet/TLRPC$PageBlock;)Lorg/telegram/tgnet/TLRPC$PageBlock;

    move-result-object v3

    :cond_26
    add-int/lit8 v5, v12, 0x1

    move-object/from16 v2, p1

    move/from16 v4, p3

    move/from16 v6, p5

    .line 6291
    invoke-direct/range {v1 .. v6}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->addBlock(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;Lorg/telegram/tgnet/TLRPC$PageBlock;III)V

    .line 6294
    :goto_10
    instance-of v1, v7, Lorg/telegram/tgnet/TLRPC$TL_pageListOrderedItemBlocks;

    if-eqz v1, :cond_28

    .line 6295
    check-cast v7, Lorg/telegram/tgnet/TLRPC$TL_pageListOrderedItemBlocks;

    .line 6296
    iget-object v1, v7, Lorg/telegram/tgnet/TLRPC$TL_pageListOrderedItemBlocks;->blocks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    move/from16 v2, v18

    :goto_11
    if-ge v2, v1, :cond_28

    .line 6297
    new-instance v3, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;-><init>(Lorg/telegram/ui/ArticleViewer-IA;)V

    .line 6298
    iget-object v5, v7, Lorg/telegram/tgnet/TLRPC$TL_pageListOrderedItemBlocks;->blocks:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/TLRPC$PageBlock;

    invoke-static {v3, v5}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;->-$$Nest$fputblockItem(Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;Lorg/telegram/tgnet/TLRPC$PageBlock;)V

    .line 6299
    invoke-static {v3, v9}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;->-$$Nest$fputparent(Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListParent;)V

    if-eqz v19, :cond_27

    .line 6302
    move-object v5, v0

    check-cast v5, Lorg/telegram/ui/ArticleViewer$TL_pageBlockDetailsChild;

    .line 6303
    new-instance v6, Lorg/telegram/ui/ArticleViewer$TL_pageBlockDetailsChild;

    invoke-direct {v6, v4}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockDetailsChild;-><init>(Lorg/telegram/ui/ArticleViewer-IA;)V

    .line 6304
    invoke-static {v5}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockDetailsChild;->-$$Nest$fgetparent(Lorg/telegram/ui/ArticleViewer$TL_pageBlockDetailsChild;)Lorg/telegram/tgnet/TLRPC$PageBlock;

    move-result-object v5

    invoke-static {v6, v5}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockDetailsChild;->-$$Nest$fputparent(Lorg/telegram/ui/ArticleViewer$TL_pageBlockDetailsChild;Lorg/telegram/tgnet/TLRPC$PageBlock;)V

    .line 6305
    invoke-static {v6, v3}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockDetailsChild;->-$$Nest$fputblock(Lorg/telegram/ui/ArticleViewer$TL_pageBlockDetailsChild;Lorg/telegram/tgnet/TLRPC$PageBlock;)V

    add-int/lit8 v5, v12, 0x1

    move/from16 v16, v1

    move/from16 v20, v2

    move-object/from16 v21, v3

    move-object/from16 v22, v4

    move-object v3, v6

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v4, p3

    move/from16 v6, p5

    .line 6306
    invoke-direct/range {v1 .. v6}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->addBlock(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;Lorg/telegram/tgnet/TLRPC$PageBlock;III)V

    move-object/from16 v3, v21

    goto :goto_12

    :cond_27
    move/from16 v16, v1

    move/from16 v20, v2

    move-object/from16 v21, v3

    move-object/from16 v22, v4

    add-int/lit8 v5, v12, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v4, p3

    move/from16 v6, p5

    .line 6308
    :try_start_0
    invoke-direct/range {v1 .. v6}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->addBlock(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;Lorg/telegram/tgnet/TLRPC$PageBlock;III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6310
    :goto_12
    invoke-static {v9}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListParent;->-$$Nest$fgetitems(Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListParent;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v20, 0x1

    move/from16 v1, v16

    goto :goto_11

    :catchall_0
    move-exception v0

    .line 6308
    throw v0

    :cond_28
    const/16 v22, 0x0

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v1, p0

    move/from16 v7, v19

    move-object/from16 v4, v22

    goto/16 :goto_b

    :cond_29
    :goto_13
    return-void
.end method

.method private addTextBlock(Ljava/lang/Object;Lorg/telegram/tgnet/TLRPC$PageBlock;)V
    .locals 1

    .line 5872
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_textEmpty;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->textToBlocks:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 5875
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->textToBlocks:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5876
    iget-object p2, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->textBlocks:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method private bindBlockToHolder(ILandroidx/recyclerview/widget/RecyclerView$ViewHolder;Lorg/telegram/tgnet/TLRPC$PageBlock;IIZ)V
    .locals 9

    .line 6541
    instance-of v0, p3, Lorg/telegram/tgnet/TLRPC$TL_pageBlockCover;

    if-eqz v0, :cond_0

    .line 6542
    move-object v0, p3

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockCover;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockCover;->cover:Lorg/telegram/tgnet/TLRPC$PageBlock;

    goto :goto_0

    .line 6543
    :cond_0
    instance-of v0, p3, Lorg/telegram/ui/ArticleViewer$TL_pageBlockDetailsChild;

    if-eqz v0, :cond_1

    .line 6544
    move-object v0, p3

    check-cast v0, Lorg/telegram/ui/ArticleViewer$TL_pageBlockDetailsChild;

    .line 6545
    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockDetailsChild;->-$$Nest$fgetblock(Lorg/telegram/ui/ArticleViewer$TL_pageBlockDetailsChild;)Lorg/telegram/tgnet/TLRPC$PageBlock;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, p3

    :goto_0
    const/16 v1, 0x64

    if-eq p1, v1, :cond_a

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    return-void

    .line 6686
    :pswitch_0
    iget-object p1, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/ArticleViewer$BlockDetailsBottomCell;

    return-void

    .line 6681
    :pswitch_1
    iget-object p1, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/ArticleViewer$BlockRelatedArticlesHeaderCell;

    .line 6682
    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockRelatedArticles;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ArticleViewer$BlockRelatedArticlesHeaderCell;->setBlock(Lorg/telegram/tgnet/TLRPC$TL_pageBlockRelatedArticles;)V

    return-void

    .line 6676
    :pswitch_2
    iget-object p1, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/ArticleViewer$BlockTableCell;

    .line 6677
    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockTable;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ArticleViewer$BlockTableCell;->setBlock(Lorg/telegram/tgnet/TLRPC$TL_pageBlockTable;)V

    return-void

    .line 6671
    :pswitch_3
    iget-object p1, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/ArticleViewer$BlockDetailsCell;

    .line 6672
    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockDetails;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ArticleViewer$BlockDetailsCell;->setBlock(Lorg/telegram/tgnet/TLRPC$TL_pageBlockDetails;)V

    return-void

    .line 6666
    :pswitch_4
    iget-object p1, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/ArticleViewer$BlockRelatedArticlesCell;

    .line 6667
    check-cast v0, Lorg/telegram/ui/ArticleViewer$TL_pageBlockRelatedArticlesChild;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ArticleViewer$BlockRelatedArticlesCell;->setBlock(Lorg/telegram/ui/ArticleViewer$TL_pageBlockRelatedArticlesChild;)V

    return-void

    .line 6661
    :pswitch_5
    iget-object p1, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/ArticleViewer$BlockMapCell;

    .line 6662
    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockMap;

    if-nez p4, :cond_2

    move p2, v2

    goto :goto_1

    :cond_2
    move p2, v1

    :goto_1
    sub-int/2addr p5, v2

    if-ne p4, p5, :cond_3

    move v1, v2

    :cond_3
    invoke-virtual {p1, v0, p2, v1}, Lorg/telegram/ui/ArticleViewer$BlockMapCell;->setBlock(Lorg/telegram/tgnet/TLRPC$TL_pageBlockMap;ZZ)V

    return-void

    .line 6656
    :pswitch_6
    iget-object p1, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;

    .line 6657
    check-cast v0, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->setBlock(Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;)V

    return-void

    .line 6651
    :pswitch_7
    iget-object p1, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/ArticleViewer$BlockKickerCell;

    .line 6652
    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockKicker;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ArticleViewer$BlockKickerCell;->setBlock(Lorg/telegram/tgnet/TLRPC$TL_pageBlockKicker;)V

    return-void

    .line 6646
    :pswitch_8
    iget-object p1, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;

    .line 6647
    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockAudio;

    if-nez p4, :cond_4

    move p2, v2

    goto :goto_2

    :cond_4
    move p2, v1

    :goto_2
    sub-int/2addr p5, v2

    if-ne p4, p5, :cond_5

    move v1, v2

    :cond_5
    invoke-virtual {p1, v0, p2, v1}, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->setBlock(Lorg/telegram/tgnet/TLRPC$TL_pageBlockAudio;ZZ)V

    return-void

    .line 6641
    :pswitch_9
    iget-object p1, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;

    .line 6642
    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockChannel;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->setBlock(Lorg/telegram/tgnet/TLRPC$TL_pageBlockChannel;)V

    return-void

    .line 6636
    :pswitch_a
    iget-object p1, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;

    .line 6637
    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockCollage;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->setBlock(Lorg/telegram/tgnet/TLRPC$TL_pageBlockCollage;)V

    return-void

    .line 6631
    :pswitch_b
    iget-object p1, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;

    .line 6632
    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbedPost;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->setBlock(Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbedPost;)V

    return-void

    .line 6626
    :pswitch_c
    iget-object p1, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/ArticleViewer$BlockSubheaderCell;

    .line 6627
    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockSubheader;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ArticleViewer$BlockSubheaderCell;->setBlock(Lorg/telegram/tgnet/TLRPC$TL_pageBlockSubheader;)V

    return-void

    .line 6621
    :pswitch_d
    iget-object p1, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/ArticleViewer$BlockPreformattedCell;

    .line 6622
    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockPreformatted;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ArticleViewer$BlockPreformattedCell;->setBlock(Lorg/telegram/tgnet/TLRPC$TL_pageBlockPreformatted;)V

    return-void

    .line 6616
    :pswitch_e
    iget-object p1, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/ArticleViewer$BlockFooterCell;

    .line 6617
    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockFooter;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ArticleViewer$BlockFooterCell;->setBlock(Lorg/telegram/tgnet/TLRPC$TL_pageBlockFooter;)V

    return-void

    .line 6611
    :pswitch_f
    iget-object p1, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/ArticleViewer$BlockListItemCell;

    .line 6612
    check-cast v0, Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ArticleViewer$BlockListItemCell;->setBlock(Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;)V

    return-void

    .line 6606
    :pswitch_10
    iget-object p1, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/ArticleViewer$BlockTitleCell;

    .line 6607
    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockTitle;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ArticleViewer$BlockTitleCell;->setBlock(Lorg/telegram/tgnet/TLRPC$TL_pageBlockTitle;)V

    return-void

    .line 6601
    :pswitch_11
    iget-object p1, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/ArticleViewer$BlockAuthorDateCell;

    .line 6602
    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockAuthorDate;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ArticleViewer$BlockAuthorDateCell;->setBlock(Lorg/telegram/tgnet/TLRPC$TL_pageBlockAuthorDate;)V

    return-void

    .line 6595
    :pswitch_12
    iget-object p1, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;

    .line 6596
    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockPhoto;

    if-nez p4, :cond_6

    move p2, v2

    goto :goto_3

    :cond_6
    move p2, v1

    :goto_3
    sub-int/2addr p5, v2

    if-ne p4, p5, :cond_7

    move v1, v2

    :cond_7
    invoke-virtual {p1, v0, p6, p2, v1}, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->setBlock(Lorg/telegram/tgnet/TLRPC$TL_pageBlockPhoto;ZZZ)V

    .line 6597
    invoke-virtual {p1, p3}, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->setParentBlock(Lorg/telegram/tgnet/TLRPC$PageBlock;)V

    return-void

    .line 6590
    :pswitch_13
    iget-object p1, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;

    .line 6591
    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockSlideshow;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;->setBlock(Lorg/telegram/tgnet/TLRPC$TL_pageBlockSlideshow;)V

    return-void

    .line 6585
    :pswitch_14
    iget-object p1, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/ArticleViewer$BlockBlockquoteCell;

    .line 6586
    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockBlockquote;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ArticleViewer$BlockBlockquoteCell;->setBlock(Lorg/telegram/tgnet/TLRPC$TL_pageBlockBlockquote;)V

    return-void

    .line 6580
    :pswitch_15
    iget-object p1, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/ArticleViewer$BlockPullquoteCell;

    .line 6581
    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockPullquote;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ArticleViewer$BlockPullquoteCell;->setBlock(Lorg/telegram/tgnet/TLRPC$TL_pageBlockPullquote;)V

    return-void

    .line 6573
    :pswitch_16
    iget-object p1, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object v3, p1

    check-cast v3, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;

    .line 6574
    move-object v4, v0

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_pageBlockVideo;

    .line 6575
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$fgetvideoStates(Lorg/telegram/ui/ArticleViewer;)Landroidx/collection/LongSparseArray;

    move-result-object p1

    iget-wide v5, v4, Lorg/telegram/tgnet/TLRPC$TL_pageBlockVideo;->video_id:J

    invoke-virtual {p1, v5, v6}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p1

    move-object v5, p1

    check-cast v5, Lorg/telegram/ui/ArticleViewer$BlockVideoCellState;

    if-nez p4, :cond_8

    move v7, v2

    goto :goto_4

    :cond_8
    move v7, v1

    :goto_4
    sub-int/2addr p5, v2

    if-ne p4, p5, :cond_9

    move v8, v2

    :goto_5
    move v6, p6

    goto :goto_6

    :cond_9
    move v8, v1

    goto :goto_5

    :goto_6
    invoke-virtual/range {v3 .. v8}, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->setBlock(Lorg/telegram/tgnet/TLRPC$TL_pageBlockVideo;Lorg/telegram/ui/ArticleViewer$BlockVideoCellState;ZZZ)V

    .line 6576
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->channelBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockChannel;

    invoke-virtual {v3, p1, p3}, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->setParentBlock(Lorg/telegram/tgnet/TLRPC$TL_pageBlockChannel;Lorg/telegram/tgnet/TLRPC$PageBlock;)V

    return-void

    .line 6568
    :pswitch_17
    iget-object p1, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/ArticleViewer$BlockSubtitleCell;

    .line 6569
    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockSubtitle;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ArticleViewer$BlockSubtitleCell;->setBlock(Lorg/telegram/tgnet/TLRPC$TL_pageBlockSubtitle;)V

    return-void

    .line 6563
    :pswitch_18
    iget-object p1, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;

    .line 6564
    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbed;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->setBlock(Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbed;)V

    return-void

    .line 6559
    :pswitch_19
    iget-object p1, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/ArticleViewer$BlockDividerCell;

    return-void

    .line 6554
    :pswitch_1a
    iget-object p1, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/ArticleViewer$BlockHeaderCell;

    .line 6555
    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockHeader;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ArticleViewer$BlockHeaderCell;->setBlock(Lorg/telegram/tgnet/TLRPC$TL_pageBlockHeader;)V

    return-void

    .line 6549
    :pswitch_1b
    iget-object p1, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/ArticleViewer$BlockParagraphCell;

    .line 6550
    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockParagraph;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ArticleViewer$BlockParagraphCell;->setBlock(Lorg/telegram/tgnet/TLRPC$TL_pageBlockParagraph;)V

    return-void

    .line 6690
    :cond_a
    iget-object p1, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Landroid/widget/TextView;

    .line 6691
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "unsupported block "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private cleanup()V
    .locals 2

    const/4 v0, 0x0

    .line 6893
    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->currentPage:Lorg/telegram/tgnet/TLRPC$WebPage;

    .line 6894
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->blocks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 6895
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->photoBlocks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 6896
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->audioBlocks:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 6897
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->audioMessages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 6898
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->anchors:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 6899
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->anchorsParent:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 6900
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->anchorsOffset:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 6901
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->textBlocks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 6902
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->textToBlocks:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 6903
    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->channelBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockChannel;

    .line 6904
    invoke-virtual {p0}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private getDocumentWithId(J)Lorg/telegram/tgnet/TLRPC$Document;
    .locals 1

    .line 5819
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->currentPage:Lorg/telegram/tgnet/TLRPC$WebPage;

    invoke-static {v0, p1, p2}, Lorg/telegram/ui/ArticleViewer$WebPageUtils;->getDocumentWithId(Lorg/telegram/tgnet/TLRPC$WebPage;J)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object p1

    return-object p1
.end method

.method private getPhotoWithId(J)Lorg/telegram/tgnet/TLRPC$Photo;
    .locals 1

    .line 5815
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->currentPage:Lorg/telegram/tgnet/TLRPC$WebPage;

    invoke-static {v0, p1, p2}, Lorg/telegram/ui/ArticleViewer$WebPageUtils;->getPhotoWithId(Lorg/telegram/tgnet/TLRPC$WebPage;J)Lorg/telegram/tgnet/TLRPC$Photo;

    move-result-object p1

    return-object p1
.end method

.method private getTypeForBlock(Lorg/telegram/tgnet/TLRPC$PageBlock;)I
    .locals 1

    .line 6698
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockParagraph;

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 6700
    :cond_0
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockHeader;

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    return p1

    .line 6702
    :cond_1
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockDivider;

    if-eqz v0, :cond_2

    const/4 p1, 0x2

    return p1

    .line 6704
    :cond_2
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbed;

    if-eqz v0, :cond_3

    const/4 p1, 0x3

    return p1

    .line 6706
    :cond_3
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockSubtitle;

    if-eqz v0, :cond_4

    const/4 p1, 0x4

    return p1

    .line 6708
    :cond_4
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockVideo;

    if-eqz v0, :cond_5

    const/4 p1, 0x5

    return p1

    .line 6710
    :cond_5
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockPullquote;

    if-eqz v0, :cond_6

    const/4 p1, 0x6

    return p1

    .line 6712
    :cond_6
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockBlockquote;

    if-eqz v0, :cond_7

    const/4 p1, 0x7

    return p1

    .line 6714
    :cond_7
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockSlideshow;

    if-eqz v0, :cond_8

    const/16 p1, 0x8

    return p1

    .line 6716
    :cond_8
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockPhoto;

    if-eqz v0, :cond_9

    const/16 p1, 0x9

    return p1

    .line 6718
    :cond_9
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockAuthorDate;

    if-eqz v0, :cond_a

    const/16 p1, 0xa

    return p1

    .line 6720
    :cond_a
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockTitle;

    if-eqz v0, :cond_b

    const/16 p1, 0xb

    return p1

    .line 6722
    :cond_b
    instance-of v0, p1, Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;

    if-eqz v0, :cond_c

    const/16 p1, 0xc

    return p1

    .line 6724
    :cond_c
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockFooter;

    if-eqz v0, :cond_d

    const/16 p1, 0xd

    return p1

    .line 6726
    :cond_d
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockPreformatted;

    if-eqz v0, :cond_e

    const/16 p1, 0xe

    return p1

    .line 6728
    :cond_e
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockSubheader;

    if-eqz v0, :cond_f

    const/16 p1, 0xf

    return p1

    .line 6730
    :cond_f
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbedPost;

    if-eqz v0, :cond_10

    const/16 p1, 0x10

    return p1

    .line 6732
    :cond_10
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockCollage;

    if-eqz v0, :cond_11

    const/16 p1, 0x11

    return p1

    .line 6734
    :cond_11
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockChannel;

    if-eqz v0, :cond_12

    const/16 p1, 0x12

    return p1

    .line 6736
    :cond_12
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockAudio;

    if-eqz v0, :cond_13

    const/16 p1, 0x13

    return p1

    .line 6738
    :cond_13
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockKicker;

    if-eqz v0, :cond_14

    const/16 p1, 0x14

    return p1

    .line 6740
    :cond_14
    instance-of v0, p1, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;

    if-eqz v0, :cond_15

    const/16 p1, 0x15

    return p1

    .line 6742
    :cond_15
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockMap;

    if-eqz v0, :cond_16

    const/16 p1, 0x16

    return p1

    .line 6744
    :cond_16
    instance-of v0, p1, Lorg/telegram/ui/ArticleViewer$TL_pageBlockRelatedArticlesChild;

    if-eqz v0, :cond_17

    const/16 p1, 0x17

    return p1

    .line 6746
    :cond_17
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockDetails;

    if-eqz v0, :cond_18

    const/16 p1, 0x18

    return p1

    .line 6748
    :cond_18
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockTable;

    if-eqz v0, :cond_19

    const/16 p1, 0x19

    return p1

    .line 6750
    :cond_19
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockRelatedArticles;

    if-eqz v0, :cond_1a

    const/16 p1, 0x1a

    return p1

    .line 6754
    :cond_1a
    instance-of v0, p1, Lorg/telegram/ui/ArticleViewer$TL_pageBlockRelatedArticlesShadow;

    if-eqz v0, :cond_1b

    const/16 p1, 0x1c

    return p1

    .line 6756
    :cond_1b
    instance-of v0, p1, Lorg/telegram/ui/ArticleViewer$TL_pageBlockDetailsChild;

    if-eqz v0, :cond_1c

    .line 6757
    check-cast p1, Lorg/telegram/ui/ArticleViewer$TL_pageBlockDetailsChild;

    .line 6758
    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockDetailsChild;->-$$Nest$fgetblock(Lorg/telegram/ui/ArticleViewer$TL_pageBlockDetailsChild;)Lorg/telegram/tgnet/TLRPC$PageBlock;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->getTypeForBlock(Lorg/telegram/tgnet/TLRPC$PageBlock;)I

    move-result p1

    return p1

    .line 6759
    :cond_1c
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockCover;

    if-eqz v0, :cond_1d

    .line 6760
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockCover;

    .line 6761
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockCover;->cover:Lorg/telegram/tgnet/TLRPC$PageBlock;

    invoke-direct {p0, p1}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->getTypeForBlock(Lorg/telegram/tgnet/TLRPC$PageBlock;)I

    move-result p1

    return p1

    :cond_1d
    const/16 p1, 0x64

    return p1
.end method

.method private isBlockOpened(Lorg/telegram/ui/ArticleViewer$TL_pageBlockDetailsChild;)Z
    .locals 3

    .line 6797
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockDetailsChild;->-$$Nest$fgetparent(Lorg/telegram/ui/ArticleViewer$TL_pageBlockDetailsChild;)Lorg/telegram/tgnet/TLRPC$PageBlock;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$mgetLastNonListPageBlock(Lorg/telegram/ui/ArticleViewer;Lorg/telegram/tgnet/TLRPC$PageBlock;)Lorg/telegram/tgnet/TLRPC$PageBlock;

    move-result-object p1

    .line 6798
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockDetails;

    if-eqz v0, :cond_0

    .line 6799
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockDetails;

    iget-boolean p1, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockDetails;->open:Z

    return p1

    .line 6800
    :cond_0
    instance-of v0, p1, Lorg/telegram/ui/ArticleViewer$TL_pageBlockDetailsChild;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 6801
    check-cast p1, Lorg/telegram/ui/ArticleViewer$TL_pageBlockDetailsChild;

    .line 6802
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockDetailsChild;->-$$Nest$fgetblock(Lorg/telegram/ui/ArticleViewer$TL_pageBlockDetailsChild;)Lorg/telegram/tgnet/TLRPC$PageBlock;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$mgetLastNonListPageBlock(Lorg/telegram/ui/ArticleViewer;Lorg/telegram/tgnet/TLRPC$PageBlock;)Lorg/telegram/tgnet/TLRPC$PageBlock;

    move-result-object v0

    .line 6803
    instance-of v2, v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockDetails;

    if-eqz v2, :cond_1

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockDetails;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockDetails;->open:Z

    if-nez v0, :cond_1

    return v1

    .line 6806
    :cond_1
    invoke-direct {p0, p1}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->isBlockOpened(Lorg/telegram/ui/ArticleViewer$TL_pageBlockDetailsChild;)Z

    move-result p1

    return p1

    :cond_2
    return v1
.end method

.method private synthetic lambda$new$0(I[I[I)V
    .locals 0

    .line 6885
    iput p1, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->fullHeight:I

    .line 6886
    iput-object p2, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->itemHeights:[I

    .line 6887
    iput-object p3, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->sumItemHeights:[I

    .line 6888
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-virtual {p1}, Lorg/telegram/ui/ArticleViewer;->updatePages()V

    return-void
.end method

.method private synthetic lambda$new$1()V
    .locals 17

    move-object/from16 v0, p0

    .line 6851
    new-instance v7, Ljava/util/ArrayList;

    iget-object v1, v0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->localBlocks:Ljava/util/ArrayList;

    invoke-direct {v7, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 6852
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v2, v2, Lorg/telegram/ui/ArticleViewer;->sheet:Lorg/telegram/ui/ArticleViewer$Sheet;

    const/4 v8, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lorg/telegram/ui/ArticleViewer$Sheet;->halfSize()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v8

    :goto_0
    add-int v9, v1, v2

    .line 6854
    new-array v10, v9, [I

    .line 6855
    new-array v11, v9, [I

    .line 6856
    iget-object v1, v0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v1, v1, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v1, v1, v8

    if-nez v1, :cond_1

    goto :goto_1

    .line 6857
    :cond_1
    iget-object v12, v1, Lorg/telegram/ui/ArticleViewer$PageLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    if-nez v12, :cond_2

    :goto_1
    return-void

    .line 6859
    :cond_2
    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    const/high16 v2, -0x80000000

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    .line 6860
    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v14

    move v1, v8

    move v15, v1

    :goto_2
    if-ge v15, v9, :cond_a

    .line 6862
    iget-boolean v2, v0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->padding:Z

    if-eqz v2, :cond_3

    if-nez v15, :cond_3

    .line 6863
    aput v8, v10, v8

    :goto_3
    move v8, v1

    goto :goto_8

    :cond_3
    if-eqz v2, :cond_4

    add-int/lit8 v2, v15, -0x1

    move v4, v2

    goto :goto_4

    :cond_4
    move v4, v15

    :goto_4
    if-ltz v4, :cond_6

    .line 6866
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v4, v2, :cond_5

    goto :goto_6

    :cond_5
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$PageBlock;

    :goto_5
    move-object v3, v2

    goto :goto_7

    :cond_6
    :goto_6
    const/4 v2, 0x0

    goto :goto_5

    :goto_7
    if-eqz v3, :cond_7

    .line 6867
    iget v2, v3, Lorg/telegram/tgnet/TLRPC$PageBlock;->cachedHeight:I

    if-eqz v2, :cond_7

    iget v2, v3, Lorg/telegram/tgnet/TLRPC$PageBlock;->cachedWidth:I

    invoke-static {v13}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    if-ne v2, v5, :cond_7

    .line 6868
    iget v2, v3, Lorg/telegram/tgnet/TLRPC$PageBlock;->cachedHeight:I

    aput v2, v10, v15

    goto :goto_3

    .line 6870
    :cond_7
    invoke-direct {v0, v3}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->getTypeForBlock(Lorg/telegram/tgnet/TLRPC$PageBlock;)I

    move-result v2

    invoke-virtual {v0, v12, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->createViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v2

    move v5, v1

    .line 6871
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v1

    move v6, v5

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v5

    move/from16 v16, v6

    const/4 v6, 0x1

    move/from16 v8, v16

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->bindBlockToHolder(ILandroidx/recyclerview/widget/RecyclerView$ViewHolder;Lorg/telegram/tgnet/TLRPC$PageBlock;IIZ)V

    .line 6872
    iget-object v1, v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, v13, v14}, Landroid/view/View;->measure(II)V

    .line 6873
    iget-object v1, v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    aput v1, v10, v15

    if-eqz v3, :cond_8

    .line 6875
    iput v1, v3, Lorg/telegram/tgnet/TLRPC$PageBlock;->cachedHeight:I

    .line 6876
    invoke-static {v13}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    iput v1, v3, Lorg/telegram/tgnet/TLRPC$PageBlock;->cachedWidth:I

    :cond_8
    :goto_8
    add-int/lit8 v1, v15, -0x1

    if-gez v1, :cond_9

    const/4 v1, 0x0

    goto :goto_9

    .line 6880
    :cond_9
    aget v1, v11, v1

    :goto_9
    aget v2, v10, v15

    add-int/2addr v1, v2

    aput v1, v11, v15

    .line 6881
    aget v1, v10, v15

    add-int/2addr v1, v8

    add-int/lit8 v15, v15, 0x1

    const/4 v8, 0x0

    goto :goto_2

    :cond_a
    move v8, v1

    .line 6884
    new-instance v1, Lorg/telegram/ui/ArticleViewer$WebpageAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0, v8, v10, v11}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;I[I[I)V

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private setRichTextParents(Lorg/telegram/tgnet/TLRPC$PageBlock;)V
    .locals 9

    .line 5880
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbedPost;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 5881
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbedPost;

    .line 5882
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbedPost;->caption:Lorg/telegram/tgnet/TLRPC$TL_pageCaption;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_pageCaption;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, v1, v0}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->setRichTextParents(Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;)V

    .line 5883
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbedPost;->caption:Lorg/telegram/tgnet/TLRPC$TL_pageCaption;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_pageCaption;->credit:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, v1, v0}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->setRichTextParents(Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;)V

    .line 5884
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbedPost;->caption:Lorg/telegram/tgnet/TLRPC$TL_pageCaption;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_pageCaption;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, v0, p1}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->addTextBlock(Ljava/lang/Object;Lorg/telegram/tgnet/TLRPC$PageBlock;)V

    .line 5885
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbedPost;->caption:Lorg/telegram/tgnet/TLRPC$TL_pageCaption;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_pageCaption;->credit:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, v0, p1}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->addTextBlock(Ljava/lang/Object;Lorg/telegram/tgnet/TLRPC$PageBlock;)V

    return-void

    .line 5886
    :cond_0
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockParagraph;

    if-eqz v0, :cond_1

    .line 5887
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockParagraph;

    .line 5888
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockParagraph;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, v1, v0}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->setRichTextParents(Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;)V

    .line 5889
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockParagraph;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, v0, p1}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->addTextBlock(Ljava/lang/Object;Lorg/telegram/tgnet/TLRPC$PageBlock;)V

    return-void

    .line 5890
    :cond_1
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockKicker;

    if-eqz v0, :cond_2

    .line 5891
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockKicker;

    .line 5892
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockKicker;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, v1, v0}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->setRichTextParents(Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;)V

    .line 5893
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockKicker;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, v0, p1}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->addTextBlock(Ljava/lang/Object;Lorg/telegram/tgnet/TLRPC$PageBlock;)V

    return-void

    .line 5894
    :cond_2
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockFooter;

    if-eqz v0, :cond_3

    .line 5895
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockFooter;

    .line 5896
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockFooter;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, v1, v0}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->setRichTextParents(Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;)V

    .line 5897
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockFooter;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, v0, p1}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->addTextBlock(Ljava/lang/Object;Lorg/telegram/tgnet/TLRPC$PageBlock;)V

    return-void

    .line 5898
    :cond_3
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockHeader;

    if-eqz v0, :cond_4

    .line 5899
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockHeader;

    .line 5900
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockHeader;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, v1, v0}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->setRichTextParents(Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;)V

    .line 5901
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockHeader;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, v0, p1}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->addTextBlock(Ljava/lang/Object;Lorg/telegram/tgnet/TLRPC$PageBlock;)V

    return-void

    .line 5902
    :cond_4
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockPreformatted;

    if-eqz v0, :cond_5

    .line 5903
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockPreformatted;

    .line 5904
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockPreformatted;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, v1, v0}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->setRichTextParents(Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;)V

    .line 5905
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockPreformatted;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, v0, p1}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->addTextBlock(Ljava/lang/Object;Lorg/telegram/tgnet/TLRPC$PageBlock;)V

    return-void

    .line 5906
    :cond_5
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockSubheader;

    if-eqz v0, :cond_6

    .line 5907
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockSubheader;

    .line 5908
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockSubheader;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, v1, v0}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->setRichTextParents(Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;)V

    .line 5909
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockSubheader;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, v0, p1}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->addTextBlock(Ljava/lang/Object;Lorg/telegram/tgnet/TLRPC$PageBlock;)V

    return-void

    .line 5910
    :cond_6
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockSlideshow;

    const/4 v2, 0x0

    if-eqz v0, :cond_7

    .line 5911
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockSlideshow;

    .line 5912
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockSlideshow;->caption:Lorg/telegram/tgnet/TLRPC$TL_pageCaption;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_pageCaption;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, v1, v0}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->setRichTextParents(Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;)V

    .line 5913
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockSlideshow;->caption:Lorg/telegram/tgnet/TLRPC$TL_pageCaption;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_pageCaption;->credit:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, v1, v0}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->setRichTextParents(Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;)V

    .line 5914
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockSlideshow;->caption:Lorg/telegram/tgnet/TLRPC$TL_pageCaption;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_pageCaption;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, v0, p1}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->addTextBlock(Ljava/lang/Object;Lorg/telegram/tgnet/TLRPC$PageBlock;)V

    .line 5915
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockSlideshow;->caption:Lorg/telegram/tgnet/TLRPC$TL_pageCaption;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_pageCaption;->credit:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, v0, p1}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->addTextBlock(Ljava/lang/Object;Lorg/telegram/tgnet/TLRPC$PageBlock;)V

    .line 5916
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockSlideshow;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    if-ge v2, v0, :cond_1b

    .line 5917
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockSlideshow;->items:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$PageBlock;

    invoke-direct {p0, v1}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->setRichTextParents(Lorg/telegram/tgnet/TLRPC$PageBlock;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5919
    :cond_7
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockPhoto;

    if-eqz v0, :cond_8

    .line 5920
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockPhoto;

    .line 5921
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockPhoto;->caption:Lorg/telegram/tgnet/TLRPC$TL_pageCaption;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_pageCaption;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, v1, v0}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->setRichTextParents(Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;)V

    .line 5922
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockPhoto;->caption:Lorg/telegram/tgnet/TLRPC$TL_pageCaption;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_pageCaption;->credit:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, v1, v0}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->setRichTextParents(Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;)V

    .line 5923
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockPhoto;->caption:Lorg/telegram/tgnet/TLRPC$TL_pageCaption;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_pageCaption;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, v0, p1}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->addTextBlock(Ljava/lang/Object;Lorg/telegram/tgnet/TLRPC$PageBlock;)V

    .line 5924
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockPhoto;->caption:Lorg/telegram/tgnet/TLRPC$TL_pageCaption;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_pageCaption;->credit:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, v0, p1}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->addTextBlock(Ljava/lang/Object;Lorg/telegram/tgnet/TLRPC$PageBlock;)V

    return-void

    .line 5925
    :cond_8
    instance-of v0, p1, Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;

    if-eqz v0, :cond_a

    .line 5926
    check-cast p1, Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;

    .line 5927
    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;->-$$Nest$fgettextItem(Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;)Lorg/telegram/tgnet/TLRPC$RichText;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 5928
    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;->-$$Nest$fgettextItem(Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;)Lorg/telegram/tgnet/TLRPC$RichText;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->setRichTextParents(Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;)V

    .line 5929
    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;->-$$Nest$fgettextItem(Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;)Lorg/telegram/tgnet/TLRPC$RichText;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->addTextBlock(Ljava/lang/Object;Lorg/telegram/tgnet/TLRPC$PageBlock;)V

    return-void

    .line 5930
    :cond_9
    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;->-$$Nest$fgetblockItem(Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;)Lorg/telegram/tgnet/TLRPC$PageBlock;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 5931
    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;->-$$Nest$fgetblockItem(Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;)Lorg/telegram/tgnet/TLRPC$PageBlock;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->setRichTextParents(Lorg/telegram/tgnet/TLRPC$PageBlock;)V

    return-void

    .line 5933
    :cond_a
    instance-of v0, p1, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;

    if-eqz v0, :cond_c

    .line 5934
    check-cast p1, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;

    .line 5935
    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;->-$$Nest$fgettextItem(Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;)Lorg/telegram/tgnet/TLRPC$RichText;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 5936
    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;->-$$Nest$fgettextItem(Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;)Lorg/telegram/tgnet/TLRPC$RichText;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->setRichTextParents(Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;)V

    .line 5937
    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;->-$$Nest$fgettextItem(Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;)Lorg/telegram/tgnet/TLRPC$RichText;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->addTextBlock(Ljava/lang/Object;Lorg/telegram/tgnet/TLRPC$PageBlock;)V

    return-void

    .line 5938
    :cond_b
    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;->-$$Nest$fgetblockItem(Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;)Lorg/telegram/tgnet/TLRPC$PageBlock;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 5939
    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;->-$$Nest$fgetblockItem(Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;)Lorg/telegram/tgnet/TLRPC$PageBlock;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->setRichTextParents(Lorg/telegram/tgnet/TLRPC$PageBlock;)V

    return-void

    .line 5941
    :cond_c
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockCollage;

    if-eqz v0, :cond_d

    .line 5942
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockCollage;

    .line 5943
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockCollage;->caption:Lorg/telegram/tgnet/TLRPC$TL_pageCaption;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_pageCaption;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, v1, v0}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->setRichTextParents(Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;)V

    .line 5944
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockCollage;->caption:Lorg/telegram/tgnet/TLRPC$TL_pageCaption;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_pageCaption;->credit:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, v1, v0}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->setRichTextParents(Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;)V

    .line 5945
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockCollage;->caption:Lorg/telegram/tgnet/TLRPC$TL_pageCaption;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_pageCaption;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, v0, p1}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->addTextBlock(Ljava/lang/Object;Lorg/telegram/tgnet/TLRPC$PageBlock;)V

    .line 5946
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockCollage;->caption:Lorg/telegram/tgnet/TLRPC$TL_pageCaption;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_pageCaption;->credit:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, v0, p1}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->addTextBlock(Ljava/lang/Object;Lorg/telegram/tgnet/TLRPC$PageBlock;)V

    .line 5947
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockCollage;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_1
    if-ge v2, v0, :cond_1b

    .line 5948
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockCollage;->items:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$PageBlock;

    invoke-direct {p0, v1}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->setRichTextParents(Lorg/telegram/tgnet/TLRPC$PageBlock;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 5950
    :cond_d
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbed;

    if-eqz v0, :cond_e

    .line 5951
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbed;

    .line 5952
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbed;->caption:Lorg/telegram/tgnet/TLRPC$TL_pageCaption;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_pageCaption;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, v1, v0}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->setRichTextParents(Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;)V

    .line 5953
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbed;->caption:Lorg/telegram/tgnet/TLRPC$TL_pageCaption;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_pageCaption;->credit:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, v1, v0}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->setRichTextParents(Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;)V

    .line 5954
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbed;->caption:Lorg/telegram/tgnet/TLRPC$TL_pageCaption;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_pageCaption;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, v0, p1}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->addTextBlock(Ljava/lang/Object;Lorg/telegram/tgnet/TLRPC$PageBlock;)V

    .line 5955
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbed;->caption:Lorg/telegram/tgnet/TLRPC$TL_pageCaption;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_pageCaption;->credit:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, v0, p1}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->addTextBlock(Ljava/lang/Object;Lorg/telegram/tgnet/TLRPC$PageBlock;)V

    return-void

    .line 5956
    :cond_e
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockSubtitle;

    if-eqz v0, :cond_f

    .line 5957
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockSubtitle;

    .line 5958
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockSubtitle;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, v1, v0}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->setRichTextParents(Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;)V

    .line 5959
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockSubtitle;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, v0, p1}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->addTextBlock(Ljava/lang/Object;Lorg/telegram/tgnet/TLRPC$PageBlock;)V

    return-void

    .line 5960
    :cond_f
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockBlockquote;

    if-eqz v0, :cond_10

    .line 5961
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockBlockquote;

    .line 5962
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockBlockquote;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, v1, v0}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->setRichTextParents(Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;)V

    .line 5963
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockBlockquote;->caption:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, v1, v0}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->setRichTextParents(Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;)V

    .line 5964
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockBlockquote;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, v0, p1}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->addTextBlock(Ljava/lang/Object;Lorg/telegram/tgnet/TLRPC$PageBlock;)V

    .line 5965
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockBlockquote;->caption:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, v0, p1}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->addTextBlock(Ljava/lang/Object;Lorg/telegram/tgnet/TLRPC$PageBlock;)V

    return-void

    .line 5966
    :cond_10
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockDetails;

    if-eqz v0, :cond_11

    .line 5967
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockDetails;

    .line 5968
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockDetails;->title:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, v1, v0}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->setRichTextParents(Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;)V

    .line 5969
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockDetails;->title:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, v0, p1}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->addTextBlock(Ljava/lang/Object;Lorg/telegram/tgnet/TLRPC$PageBlock;)V

    .line 5970
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockDetails;->blocks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_2
    if-ge v2, v0, :cond_1b

    .line 5971
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockDetails;->blocks:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$PageBlock;

    invoke-direct {p0, v1}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->setRichTextParents(Lorg/telegram/tgnet/TLRPC$PageBlock;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 5973
    :cond_11
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockVideo;

    if-eqz v0, :cond_12

    .line 5974
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockVideo;

    .line 5975
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockVideo;->caption:Lorg/telegram/tgnet/TLRPC$TL_pageCaption;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_pageCaption;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, v1, v0}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->setRichTextParents(Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;)V

    .line 5976
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockVideo;->caption:Lorg/telegram/tgnet/TLRPC$TL_pageCaption;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_pageCaption;->credit:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, v1, v0}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->setRichTextParents(Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;)V

    .line 5977
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockVideo;->caption:Lorg/telegram/tgnet/TLRPC$TL_pageCaption;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_pageCaption;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, v0, p1}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->addTextBlock(Ljava/lang/Object;Lorg/telegram/tgnet/TLRPC$PageBlock;)V

    .line 5978
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockVideo;->caption:Lorg/telegram/tgnet/TLRPC$TL_pageCaption;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_pageCaption;->credit:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, v0, p1}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->addTextBlock(Ljava/lang/Object;Lorg/telegram/tgnet/TLRPC$PageBlock;)V

    return-void

    .line 5979
    :cond_12
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockPullquote;

    if-eqz v0, :cond_13

    .line 5980
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockPullquote;

    .line 5981
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockPullquote;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, v1, v0}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->setRichTextParents(Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;)V

    .line 5982
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockPullquote;->caption:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, v1, v0}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->setRichTextParents(Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;)V

    .line 5983
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockPullquote;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, v0, p1}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->addTextBlock(Ljava/lang/Object;Lorg/telegram/tgnet/TLRPC$PageBlock;)V

    .line 5984
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockPullquote;->caption:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, v0, p1}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->addTextBlock(Ljava/lang/Object;Lorg/telegram/tgnet/TLRPC$PageBlock;)V

    return-void

    .line 5985
    :cond_13
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockAudio;

    if-eqz v0, :cond_14

    .line 5986
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockAudio;

    .line 5987
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockAudio;->caption:Lorg/telegram/tgnet/TLRPC$TL_pageCaption;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_pageCaption;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, v1, v0}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->setRichTextParents(Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;)V

    .line 5988
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockAudio;->caption:Lorg/telegram/tgnet/TLRPC$TL_pageCaption;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_pageCaption;->credit:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, v1, v0}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->setRichTextParents(Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;)V

    .line 5989
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockAudio;->caption:Lorg/telegram/tgnet/TLRPC$TL_pageCaption;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_pageCaption;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, v0, p1}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->addTextBlock(Ljava/lang/Object;Lorg/telegram/tgnet/TLRPC$PageBlock;)V

    .line 5990
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockAudio;->caption:Lorg/telegram/tgnet/TLRPC$TL_pageCaption;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_pageCaption;->credit:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, v0, p1}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->addTextBlock(Ljava/lang/Object;Lorg/telegram/tgnet/TLRPC$PageBlock;)V

    return-void

    .line 5991
    :cond_14
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockTable;

    if-eqz v0, :cond_16

    .line 5992
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockTable;

    .line 5993
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockTable;->title:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, v1, v0}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->setRichTextParents(Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;)V

    .line 5994
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockTable;->title:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, v0, p1}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->addTextBlock(Ljava/lang/Object;Lorg/telegram/tgnet/TLRPC$PageBlock;)V

    .line 5995
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockTable;->rows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v3, v2

    :goto_3
    if-ge v3, v0, :cond_1b

    .line 5996
    iget-object v4, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockTable;->rows:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_pageTableRow;

    .line 5997
    iget-object v5, v4, Lorg/telegram/tgnet/TLRPC$TL_pageTableRow;->cells:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v6, v2

    :goto_4
    if-ge v6, v5, :cond_15

    .line 5998
    iget-object v7, v4, Lorg/telegram/tgnet/TLRPC$TL_pageTableRow;->cells:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/tgnet/TLRPC$TL_pageTableCell;

    .line 5999
    iget-object v8, v7, Lorg/telegram/tgnet/TLRPC$TL_pageTableCell;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, v1, v8}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->setRichTextParents(Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;)V

    .line 6000
    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$TL_pageTableCell;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, v7, p1}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->addTextBlock(Ljava/lang/Object;Lorg/telegram/tgnet/TLRPC$PageBlock;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_15
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 6003
    :cond_16
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockTitle;

    if-eqz v0, :cond_17

    .line 6004
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockTitle;

    .line 6005
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockTitle;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, v1, v0}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->setRichTextParents(Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;)V

    .line 6006
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockTitle;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, v0, p1}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->addTextBlock(Ljava/lang/Object;Lorg/telegram/tgnet/TLRPC$PageBlock;)V

    return-void

    .line 6007
    :cond_17
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockCover;

    if-eqz v0, :cond_18

    .line 6008
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockCover;

    .line 6009
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockCover;->cover:Lorg/telegram/tgnet/TLRPC$PageBlock;

    :try_start_0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->setRichTextParents(Lorg/telegram/tgnet/TLRPC$PageBlock;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    throw p1

    .line 6010
    :cond_18
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockAuthorDate;

    if-eqz v0, :cond_19

    .line 6011
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockAuthorDate;

    .line 6012
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockAuthorDate;->author:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, v1, v0}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->setRichTextParents(Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;)V

    .line 6013
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockAuthorDate;->author:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, v0, p1}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->addTextBlock(Ljava/lang/Object;Lorg/telegram/tgnet/TLRPC$PageBlock;)V

    return-void

    .line 6014
    :cond_19
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockMap;

    if-eqz v0, :cond_1a

    .line 6015
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockMap;

    .line 6016
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockMap;->caption:Lorg/telegram/tgnet/TLRPC$TL_pageCaption;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_pageCaption;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, v1, v0}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->setRichTextParents(Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;)V

    .line 6017
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockMap;->caption:Lorg/telegram/tgnet/TLRPC$TL_pageCaption;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_pageCaption;->credit:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, v1, v0}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->setRichTextParents(Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;)V

    .line 6018
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockMap;->caption:Lorg/telegram/tgnet/TLRPC$TL_pageCaption;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_pageCaption;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, v0, p1}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->addTextBlock(Ljava/lang/Object;Lorg/telegram/tgnet/TLRPC$PageBlock;)V

    .line 6019
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockMap;->caption:Lorg/telegram/tgnet/TLRPC$TL_pageCaption;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_pageCaption;->credit:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, v0, p1}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->addTextBlock(Ljava/lang/Object;Lorg/telegram/tgnet/TLRPC$PageBlock;)V

    return-void

    .line 6020
    :cond_1a
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockRelatedArticles;

    if-eqz v0, :cond_1b

    .line 6021
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockRelatedArticles;

    .line 6022
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockRelatedArticles;->title:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, v1, v0}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->setRichTextParents(Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;)V

    .line 6023
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockRelatedArticles;->title:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, v0, p1}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->addTextBlock(Ljava/lang/Object;Lorg/telegram/tgnet/TLRPC$PageBlock;)V

    :cond_1b
    return-void
.end method

.method private setRichTextParents(Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;)V
    .locals 2

    if-nez p2, :cond_0

    goto/16 :goto_2

    .line 5826
    :cond_0
    iput-object p1, p2, Lorg/telegram/tgnet/TLRPC$RichText;->parentRichText:Lorg/telegram/tgnet/TLRPC$RichText;

    .line 5827
    instance-of p1, p2, Lorg/telegram/tgnet/TLRPC$TL_textFixed;

    if-eqz p1, :cond_1

    .line 5828
    move-object p1, p2

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_textFixed;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$RichText;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, p2, p1}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->setRichTextParents(Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;)V

    return-void

    .line 5829
    :cond_1
    instance-of p1, p2, Lorg/telegram/tgnet/TLRPC$TL_textItalic;

    if-eqz p1, :cond_2

    .line 5830
    move-object p1, p2

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_textItalic;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$RichText;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, p2, p1}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->setRichTextParents(Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;)V

    return-void

    .line 5831
    :cond_2
    instance-of p1, p2, Lorg/telegram/tgnet/TLRPC$TL_textBold;

    if-eqz p1, :cond_3

    .line 5832
    move-object p1, p2

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_textBold;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$RichText;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, p2, p1}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->setRichTextParents(Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;)V

    return-void

    .line 5833
    :cond_3
    instance-of p1, p2, Lorg/telegram/tgnet/TLRPC$TL_textUnderline;

    if-eqz p1, :cond_4

    .line 5834
    move-object p1, p2

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_textUnderline;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$RichText;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, p2, p1}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->setRichTextParents(Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;)V

    return-void

    .line 5835
    :cond_4
    instance-of p1, p2, Lorg/telegram/tgnet/TLRPC$TL_textStrike;

    if-eqz p1, :cond_5

    .line 5836
    move-object p1, p2

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_textStrike;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$RichText;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, p2, p1}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->setRichTextParents(Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;)V

    return-void

    .line 5837
    :cond_5
    instance-of p1, p2, Lorg/telegram/tgnet/TLRPC$TL_textEmail;

    if-eqz p1, :cond_6

    .line 5838
    move-object p1, p2

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_textEmail;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$RichText;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, p2, p1}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->setRichTextParents(Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;)V

    return-void

    .line 5839
    :cond_6
    instance-of p1, p2, Lorg/telegram/tgnet/TLRPC$TL_textPhone;

    if-eqz p1, :cond_7

    .line 5840
    move-object p1, p2

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_textPhone;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$RichText;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, p2, p1}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->setRichTextParents(Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;)V

    return-void

    .line 5841
    :cond_7
    instance-of p1, p2, Lorg/telegram/tgnet/TLRPC$TL_textUrl;

    if-eqz p1, :cond_8

    .line 5842
    move-object p1, p2

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_textUrl;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$RichText;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, p2, p1}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->setRichTextParents(Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;)V

    return-void

    .line 5843
    :cond_8
    instance-of p1, p2, Lorg/telegram/tgnet/TLRPC$TL_textConcat;

    if-eqz p1, :cond_9

    .line 5844
    iget-object p1, p2, Lorg/telegram/tgnet/TLRPC$RichText;->texts:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_f

    .line 5846
    iget-object v1, p2, Lorg/telegram/tgnet/TLRPC$RichText;->texts:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, p2, v1}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->setRichTextParents(Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5848
    :cond_9
    instance-of p1, p2, Lorg/telegram/tgnet/TLRPC$TL_textSubscript;

    if-eqz p1, :cond_a

    .line 5849
    move-object p1, p2

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_textSubscript;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$RichText;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, p2, p1}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->setRichTextParents(Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;)V

    return-void

    .line 5850
    :cond_a
    instance-of p1, p2, Lorg/telegram/tgnet/TLRPC$TL_textSuperscript;

    if-eqz p1, :cond_b

    .line 5851
    move-object p1, p2

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_textSuperscript;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$RichText;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, p2, p1}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->setRichTextParents(Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;)V

    return-void

    .line 5852
    :cond_b
    instance-of p1, p2, Lorg/telegram/tgnet/TLRPC$TL_textMarked;

    if-eqz p1, :cond_c

    .line 5853
    move-object p1, p2

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_textMarked;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$RichText;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, p2, p1}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->setRichTextParents(Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;)V

    return-void

    .line 5854
    :cond_c
    instance-of p1, p2, Lorg/telegram/tgnet/TLRPC$TL_textAnchor;

    if-eqz p1, :cond_f

    .line 5855
    move-object p1, p2

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_textAnchor;

    .line 5856
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$RichText;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    :try_start_0
    invoke-direct {p0, p2, v0}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->setRichTextParents(Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5857
    iget-object p2, p1, Lorg/telegram/tgnet/TLRPC$TL_textAnchor;->name:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    .line 5858
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->anchors:Ljava/util/HashMap;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->blocks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5859
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$RichText;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$TL_textPlain;

    if-eqz v1, :cond_d

    .line 5860
    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_textPlain;

    .line 5861
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_textPlain;->text:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 5862
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->anchorsParent:Ljava/util/HashMap;

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 5864
    :cond_d
    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_textEmpty;

    if-nez v0, :cond_e

    .line 5865
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->anchorsParent:Ljava/util/HashMap;

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5867
    :cond_e
    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->anchorsOffset:Ljava/util/HashMap;

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :catchall_0
    move-exception p1

    .line 5856
    throw p1

    :cond_f
    :goto_2
    return-void
.end method

.method private updateRows()V
    .locals 5

    .line 6823
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->localBlocks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 6824
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->blocks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 6825
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->blocks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$PageBlock;

    .line 6826
    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v3, v2}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$mgetLastNonListPageBlock(Lorg/telegram/ui/ArticleViewer;Lorg/telegram/tgnet/TLRPC$PageBlock;)Lorg/telegram/tgnet/TLRPC$PageBlock;

    move-result-object v3

    .line 6827
    instance-of v4, v3, Lorg/telegram/ui/ArticleViewer$TL_pageBlockDetailsChild;

    if-eqz v4, :cond_0

    .line 6828
    check-cast v3, Lorg/telegram/ui/ArticleViewer$TL_pageBlockDetailsChild;

    .line 6829
    invoke-direct {p0, v3}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->isBlockOpened(Lorg/telegram/ui/ArticleViewer$TL_pageBlockDetailsChild;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    .line 6833
    :cond_0
    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->localBlocks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6836
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->localBlocks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x64

    if-ge v0, v1, :cond_2

    .line 6837
    invoke-virtual {p0}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->calculateContentHeight()V

    return-void

    :cond_2
    const/4 v0, 0x0

    .line 6838
    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->itemHeights:[I

    return-void
.end method


# virtual methods
.method public calculateContentHeight()V
    .locals 4

    .line 6846
    sget-object v0, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->calculateContentHeightRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->cancelRunnable(Ljava/lang/Runnable;)V

    .line 6847
    sget-object v0, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->calculateContentHeightRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public getItemCount()I
    .locals 2

    .line 6787
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->currentPage:Lorg/telegram/tgnet/TLRPC$WebPage;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$WebPage;->cached_page:Lorg/telegram/tgnet/TLRPC$Page;

    if-eqz v0, :cond_0

    .line 6788
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->localBlocks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 6790
    :goto_0
    iget-boolean v1, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->padding:Z

    if-eqz v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    :cond_1
    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 6769
    iget-boolean v0, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->padding:Z

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    const p1, 0x7ffffffe

    return p1

    :cond_0
    add-int/lit8 p1, p1, -0x1

    .line 6774
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->localBlocks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne p1, v0, :cond_3

    .line 6775
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->currentPage:Lorg/telegram/tgnet/TLRPC$WebPage;

    if-eqz p1, :cond_2

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$WebPage;->cached_page:Lorg/telegram/tgnet/TLRPC$Page;

    if-eqz p1, :cond_2

    iget-boolean p1, p1, Lorg/telegram/tgnet/TLRPC$Page;->web:Z

    if-eqz p1, :cond_2

    const/16 p1, 0x5b

    return p1

    :cond_2
    const/16 p1, 0x5a

    return p1

    .line 6777
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->localBlocks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$PageBlock;

    invoke-direct {p0, p1}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->getTypeForBlock(Lorg/telegram/tgnet/TLRPC$PageBlock;)I

    move-result p1

    return p1
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 1

    .line 6513
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result p1

    const/16 v0, 0x17

    if-eq p1, v0, :cond_1

    const/16 v0, 0x18

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public notifyDataSetChanged()V
    .locals 0

    .line 6909
    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->updateRows()V

    .line 6910
    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public notifyItemChanged(I)V
    .locals 0

    .line 6915
    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->updateRows()V

    .line 6916
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    return-void
.end method

.method public notifyItemChanged(ILjava/lang/Object;)V
    .locals 0

    .line 6921
    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->updateRows()V

    .line 6922
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    return-void
.end method

.method public notifyItemInserted(I)V
    .locals 0

    .line 6939
    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->updateRows()V

    .line 6940
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemInserted(I)V

    return-void
.end method

.method public notifyItemMoved(II)V
    .locals 0

    .line 6945
    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->updateRows()V

    .line 6946
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemMoved(II)V

    return-void
.end method

.method public notifyItemRangeChanged(II)V
    .locals 0

    .line 6927
    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->updateRows()V

    .line 6928
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V

    return-void
.end method

.method public notifyItemRangeChanged(IILjava/lang/Object;)V
    .locals 0

    .line 6933
    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->updateRows()V

    .line 6934
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(IILjava/lang/Object;)V

    return-void
.end method

.method public notifyItemRangeInserted(II)V
    .locals 0

    .line 6951
    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->updateRows()V

    .line 6952
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    return-void
.end method

.method public notifyItemRangeRemoved(II)V
    .locals 0

    .line 6963
    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->updateRows()V

    .line 6964
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeRemoved(II)V

    return-void
.end method

.method public notifyItemRemoved(I)V
    .locals 0

    .line 6957
    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->updateRows()V

    .line 6958
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 7

    .line 6522
    iget-boolean v0, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->padding:Z

    if-eqz v0, :cond_0

    add-int/lit8 p2, p2, -0x1

    :cond_0
    move v4, p2

    if-ltz v4, :cond_1

    .line 6525
    iget-object p2, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->localBlocks:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge v4, p2, :cond_1

    .line 6526
    iget-object p2, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->localBlocks:Ljava/util/ArrayList;

    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Lorg/telegram/tgnet/TLRPC$PageBlock;

    .line 6527
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v1

    iget-object p2, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->localBlocks:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->bindBlockToHolder(ILandroidx/recyclerview/widget/RecyclerView$ViewHolder;Lorg/telegram/tgnet/TLRPC$PageBlock;IIZ)V

    :cond_1
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 3

    const/16 p1, 0x5a

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p2, p1, :cond_2

    const/16 p1, 0x5b

    if-eq p2, p1, :cond_1

    const p1, 0x7ffffffe

    if-eq p2, p1, :cond_0

    packed-switch p2, :pswitch_data_0

    .line 6498
    new-instance p1, Landroid/widget/TextView;

    iget-object p2, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->context:Landroid/content/Context;

    invoke-direct {p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/high16 p2, -0x10000

    .line 6499
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    const/high16 p2, -0x1000000

    .line 6500
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 p2, 0x41a00000    # 20.0f

    .line 6501
    invoke-virtual {p1, v0, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    goto/16 :goto_0

    .line 6485
    :pswitch_0
    new-instance p1, Lorg/telegram/ui/ArticleViewer$BlockRelatedArticlesShadowCell;

    iget-object p2, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->context:Landroid/content/Context;

    invoke-direct {p1, p2, v1}, Lorg/telegram/ui/ArticleViewer$BlockRelatedArticlesShadowCell;-><init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;)V

    goto/16 :goto_0

    .line 6481
    :pswitch_1
    new-instance p1, Lorg/telegram/ui/ArticleViewer$BlockDetailsBottomCell;

    iget-object p2, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->context:Landroid/content/Context;

    invoke-direct {p1, p2}, Lorg/telegram/ui/ArticleViewer$BlockDetailsBottomCell;-><init>(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 6477
    :pswitch_2
    new-instance p1, Lorg/telegram/ui/ArticleViewer$BlockRelatedArticlesHeaderCell;

    iget-object p2, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->context:Landroid/content/Context;

    invoke-direct {p1, p2, v1, p0}, Lorg/telegram/ui/ArticleViewer$BlockRelatedArticlesHeaderCell;-><init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)V

    goto/16 :goto_0

    .line 6473
    :pswitch_3
    new-instance p1, Lorg/telegram/ui/ArticleViewer$BlockTableCell;

    iget-object p2, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->context:Landroid/content/Context;

    invoke-direct {p1, p2, v1, p0}, Lorg/telegram/ui/ArticleViewer$BlockTableCell;-><init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)V

    goto/16 :goto_0

    .line 6469
    :pswitch_4
    new-instance p1, Lorg/telegram/ui/ArticleViewer$BlockDetailsCell;

    iget-object p2, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->context:Landroid/content/Context;

    invoke-direct {p1, p2, v1, p0}, Lorg/telegram/ui/ArticleViewer$BlockDetailsCell;-><init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)V

    goto/16 :goto_0

    .line 6465
    :pswitch_5
    new-instance p1, Lorg/telegram/ui/ArticleViewer$BlockRelatedArticlesCell;

    iget-object p2, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->context:Landroid/content/Context;

    invoke-direct {p1, p2, v1, p0}, Lorg/telegram/ui/ArticleViewer$BlockRelatedArticlesCell;-><init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)V

    goto/16 :goto_0

    .line 6461
    :pswitch_6
    new-instance p1, Lorg/telegram/ui/ArticleViewer$BlockMapCell;

    iget-object p2, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->context:Landroid/content/Context;

    invoke-direct {p1, p2, v2, p0, v1}, Lorg/telegram/ui/ArticleViewer$BlockMapCell;-><init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;Lorg/telegram/ui/ArticleViewer$WebpageAdapter;I)V

    goto/16 :goto_0

    .line 6457
    :pswitch_7
    new-instance p1, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;

    iget-object p2, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->context:Landroid/content/Context;

    invoke-direct {p1, p2, v1, p0}, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;-><init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)V

    goto/16 :goto_0

    .line 6453
    :pswitch_8
    new-instance p1, Lorg/telegram/ui/ArticleViewer$BlockKickerCell;

    iget-object p2, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->context:Landroid/content/Context;

    invoke-direct {p1, p2, v1, p0}, Lorg/telegram/ui/ArticleViewer$BlockKickerCell;-><init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)V

    goto/16 :goto_0

    .line 6449
    :pswitch_9
    new-instance p1, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;

    iget-object p2, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->context:Landroid/content/Context;

    invoke-direct {p1, p2, v1, p0}, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;-><init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)V

    goto/16 :goto_0

    .line 6445
    :pswitch_a
    new-instance p1, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;

    iget-object p2, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->context:Landroid/content/Context;

    invoke-direct {p1, p2, v2, p0, v1}, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;-><init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;Lorg/telegram/ui/ArticleViewer$WebpageAdapter;I)V

    goto/16 :goto_0

    .line 6441
    :pswitch_b
    new-instance p1, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;

    iget-object p2, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->context:Landroid/content/Context;

    invoke-direct {p1, p2, v1, p0}, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;-><init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)V

    goto/16 :goto_0

    .line 6437
    :pswitch_c
    new-instance p1, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;

    iget-object p2, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->context:Landroid/content/Context;

    invoke-direct {p1, p2, v1, p0}, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;-><init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)V

    goto/16 :goto_0

    .line 6433
    :pswitch_d
    new-instance p1, Lorg/telegram/ui/ArticleViewer$BlockSubheaderCell;

    iget-object p2, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->context:Landroid/content/Context;

    invoke-direct {p1, p2, v1, p0}, Lorg/telegram/ui/ArticleViewer$BlockSubheaderCell;-><init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)V

    goto/16 :goto_0

    .line 6429
    :pswitch_e
    new-instance p1, Lorg/telegram/ui/ArticleViewer$BlockPreformattedCell;

    iget-object p2, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->context:Landroid/content/Context;

    invoke-direct {p1, p2, v1, p0}, Lorg/telegram/ui/ArticleViewer$BlockPreformattedCell;-><init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)V

    goto/16 :goto_0

    .line 6425
    :pswitch_f
    new-instance p1, Lorg/telegram/ui/ArticleViewer$BlockFooterCell;

    iget-object p2, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->context:Landroid/content/Context;

    invoke-direct {p1, p2, v1, p0}, Lorg/telegram/ui/ArticleViewer$BlockFooterCell;-><init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)V

    goto/16 :goto_0

    .line 6421
    :pswitch_10
    new-instance p1, Lorg/telegram/ui/ArticleViewer$BlockListItemCell;

    iget-object p2, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->context:Landroid/content/Context;

    invoke-direct {p1, p2, v1, p0}, Lorg/telegram/ui/ArticleViewer$BlockListItemCell;-><init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)V

    goto/16 :goto_0

    .line 6417
    :pswitch_11
    new-instance p1, Lorg/telegram/ui/ArticleViewer$BlockTitleCell;

    iget-object p2, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->context:Landroid/content/Context;

    invoke-direct {p1, p2, v1, p0}, Lorg/telegram/ui/ArticleViewer$BlockTitleCell;-><init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)V

    goto/16 :goto_0

    .line 6413
    :pswitch_12
    new-instance p1, Lorg/telegram/ui/ArticleViewer$BlockAuthorDateCell;

    iget-object p2, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->context:Landroid/content/Context;

    invoke-direct {p1, p2, v1, p0}, Lorg/telegram/ui/ArticleViewer$BlockAuthorDateCell;-><init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)V

    goto/16 :goto_0

    .line 6409
    :pswitch_13
    new-instance p1, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;

    iget-object p2, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->context:Landroid/content/Context;

    invoke-direct {p1, p2, v2, p0, v1}, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;-><init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;Lorg/telegram/ui/ArticleViewer$WebpageAdapter;I)V

    goto/16 :goto_0

    .line 6405
    :pswitch_14
    new-instance p1, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;

    iget-object p2, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->context:Landroid/content/Context;

    invoke-direct {p1, p2, v1, p0}, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;-><init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)V

    goto/16 :goto_0

    .line 6401
    :pswitch_15
    new-instance p1, Lorg/telegram/ui/ArticleViewer$BlockBlockquoteCell;

    iget-object p2, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->context:Landroid/content/Context;

    invoke-direct {p1, p2, v1, p0}, Lorg/telegram/ui/ArticleViewer$BlockBlockquoteCell;-><init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)V

    goto :goto_0

    .line 6397
    :pswitch_16
    new-instance p1, Lorg/telegram/ui/ArticleViewer$BlockPullquoteCell;

    iget-object p2, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->context:Landroid/content/Context;

    invoke-direct {p1, p2, v1, p0}, Lorg/telegram/ui/ArticleViewer$BlockPullquoteCell;-><init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)V

    goto :goto_0

    .line 6393
    :pswitch_17
    new-instance p1, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;

    iget-object p2, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->context:Landroid/content/Context;

    invoke-direct {p1, p2, v2, p0, v1}, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;-><init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;Lorg/telegram/ui/ArticleViewer$WebpageAdapter;I)V

    goto :goto_0

    .line 6389
    :pswitch_18
    new-instance p1, Lorg/telegram/ui/ArticleViewer$BlockSubtitleCell;

    iget-object p2, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->context:Landroid/content/Context;

    invoke-direct {p1, p2, v1, p0}, Lorg/telegram/ui/ArticleViewer$BlockSubtitleCell;-><init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)V

    goto :goto_0

    .line 6385
    :pswitch_19
    new-instance p1, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;

    iget-object p2, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->context:Landroid/content/Context;

    invoke-direct {p1, p2, v1, p0}, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;-><init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)V

    goto :goto_0

    .line 6381
    :pswitch_1a
    new-instance p1, Lorg/telegram/ui/ArticleViewer$BlockDividerCell;

    iget-object p2, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->context:Landroid/content/Context;

    invoke-direct {p1, p2}, Lorg/telegram/ui/ArticleViewer$BlockDividerCell;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 6377
    :pswitch_1b
    new-instance p1, Lorg/telegram/ui/ArticleViewer$BlockHeaderCell;

    iget-object p2, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->context:Landroid/content/Context;

    invoke-direct {p1, p2, v1, p0}, Lorg/telegram/ui/ArticleViewer$BlockHeaderCell;-><init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)V

    goto :goto_0

    .line 6373
    :pswitch_1c
    new-instance p1, Lorg/telegram/ui/ArticleViewer$BlockParagraphCell;

    iget-object p2, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->context:Landroid/content/Context;

    invoke-direct {p1, p2, v1, p0}, Lorg/telegram/ui/ArticleViewer$BlockParagraphCell;-><init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)V

    goto :goto_0

    .line 6363
    :cond_0
    new-instance p1, Lorg/telegram/ui/ArticleViewer$WebpageAdapter$1;

    iget-object p2, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->context:Landroid/content/Context;

    invoke-direct {p1, p0, p2}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter$1;-><init>(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;Landroid/content/Context;)V

    goto :goto_0

    .line 6493
    :cond_1
    new-instance p1, Lorg/telegram/ui/ArticleViewer$ReportCell;

    iget-object p2, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->context:Landroid/content/Context;

    invoke-direct {p1, p2, v1, v0}, Lorg/telegram/ui/ArticleViewer$ReportCell;-><init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;Z)V

    goto :goto_0

    .line 6489
    :cond_2
    new-instance p1, Lorg/telegram/ui/ArticleViewer$ReportCell;

    iget-object p2, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->context:Landroid/content/Context;

    invoke-direct {p1, p2, v2, v1}, Lorg/telegram/ui/ArticleViewer$ReportCell;-><init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;Z)V

    .line 6506
    :goto_0
    new-instance p2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {p2, v1, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 6507
    invoke-virtual {p1, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 6508
    new-instance p2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 2

    .line 6533
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/16 v1, 0x5b

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 6534
    :cond_1
    :goto_0
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/ArticleViewer$ReportCell;

    .line 6535
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->currentPage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$WebPage;->cached_page:Lorg/telegram/tgnet/TLRPC$Page;

    if-eqz v0, :cond_2

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Page;->views:I

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p1, v0}, Lorg/telegram/ui/ArticleViewer$ReportCell;->setViews(I)V

    return-void
.end method

.method public resetCachedHeights()V
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    .line 6812
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->localBlocks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 6813
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->localBlocks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$PageBlock;

    if-eqz v2, :cond_0

    .line 6815
    iput v0, v2, Lorg/telegram/tgnet/TLRPC$PageBlock;->cachedWidth:I

    .line 6816
    iput v0, v2, Lorg/telegram/tgnet/TLRPC$PageBlock;->cachedHeight:I

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6819
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->calculateContentHeight()V

    return-void
.end method
