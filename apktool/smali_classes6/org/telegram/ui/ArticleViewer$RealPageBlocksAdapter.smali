.class Lorg/telegram/ui/ArticleViewer$RealPageBlocksAdapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/PhotoViewer$PageBlocksAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ArticleViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RealPageBlocksAdapter"
.end annotation


# instance fields
.field private final page:Lorg/telegram/tgnet/TLRPC$WebPage;

.field private final pageBlocks:Ljava/util/List;

.field final synthetic this$0:Lorg/telegram/ui/ArticleViewer;


# direct methods
.method private constructor <init>(Lorg/telegram/ui/ArticleViewer;Lorg/telegram/tgnet/TLRPC$WebPage;Ljava/util/List;)V
    .locals 0

    .line 12509
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$RealPageBlocksAdapter;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12510
    iput-object p2, p0, Lorg/telegram/ui/ArticleViewer$RealPageBlocksAdapter;->page:Lorg/telegram/tgnet/TLRPC$WebPage;

    .line 12511
    iput-object p3, p0, Lorg/telegram/ui/ArticleViewer$RealPageBlocksAdapter;->pageBlocks:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/ui/ArticleViewer;Lorg/telegram/tgnet/TLRPC$WebPage;Ljava/util/List;Lorg/telegram/ui/ArticleViewer-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/ArticleViewer$RealPageBlocksAdapter;-><init>(Lorg/telegram/ui/ArticleViewer;Lorg/telegram/tgnet/TLRPC$WebPage;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public get(I)Lorg/telegram/tgnet/TLRPC$PageBlock;
    .locals 1

    .line 12521
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$RealPageBlocksAdapter;->pageBlocks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$PageBlock;

    return-object p1
.end method

.method public getAll()Ljava/util/List;
    .locals 1

    .line 12526
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$RealPageBlocksAdapter;->pageBlocks:Ljava/util/List;

    return-object v0
.end method

.method public getCaption(I)Ljava/lang/CharSequence;
    .locals 8

    .line 12567
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ArticleViewer$RealPageBlocksAdapter;->get(I)Lorg/telegram/tgnet/TLRPC$PageBlock;

    move-result-object v5

    .line 12568
    instance-of p1, v5, Lorg/telegram/tgnet/TLRPC$TL_pageBlockPhoto;

    const/4 v7, 0x0

    if-eqz p1, :cond_0

    .line 12569
    move-object p1, v5

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockPhoto;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockPhoto;->url:Ljava/lang/String;

    .line 12570
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 12571
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 12572
    new-instance v1, Lorg/telegram/ui/ArticleViewer$RealPageBlocksAdapter$1;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/ArticleViewer$RealPageBlocksAdapter$1;-><init>(Lorg/telegram/ui/ArticleViewer$RealPageBlocksAdapter;Ljava/lang/String;)V

    .line 12577
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v2, 0x22

    .line 12572
    invoke-virtual {v0, v1, v7, p1, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_3

    .line 12582
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$RealPageBlocksAdapter;->this$0:Lorg/telegram/ui/ArticleViewer;

    const/4 v0, 0x2

    invoke-static {p1, v5, v0}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$mgetBlockCaption(Lorg/telegram/ui/ArticleViewer;Lorg/telegram/tgnet/TLRPC$PageBlock;I)Lorg/telegram/tgnet/TLRPC$RichText;

    move-result-object v3

    .line 12583
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$RealPageBlocksAdapter;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$RealPageBlocksAdapter;->page:Lorg/telegram/tgnet/TLRPC$WebPage;

    const/high16 p1, 0x42c80000    # 100.0f

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    neg-int v6, p1

    const/4 v2, 0x0

    move-object v4, v3

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$mgetText(Lorg/telegram/ui/ArticleViewer;Lorg/telegram/tgnet/TLRPC$WebPage;Landroid/view/View;Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$PageBlock;I)Ljava/lang/CharSequence;

    move-result-object p1

    .line 12584
    instance-of v0, p1, Landroid/text/Spannable;

    if-eqz v0, :cond_2

    .line 12585
    move-object v0, p1

    check-cast v0, Landroid/text/Spannable;

    .line 12586
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const-class v2, Lorg/telegram/ui/Components/TextPaintUrlSpan;

    invoke-interface {v0, v7, v1, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/telegram/ui/Components/TextPaintUrlSpan;

    .line 12587
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    if-eqz v1, :cond_1

    .line 12589
    array-length p1, v1

    if-lez p1, :cond_1

    .line 12590
    :goto_1
    array-length p1, v1

    if-ge v7, p1, :cond_1

    .line 12591
    new-instance p1, Lorg/telegram/ui/ArticleViewer$RealPageBlocksAdapter$2;

    aget-object v3, v1, v7

    invoke-virtual {v3}, Lorg/telegram/ui/Components/TextPaintUrlSpan;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p1, p0, v3}, Lorg/telegram/ui/ArticleViewer$RealPageBlocksAdapter$2;-><init>(Lorg/telegram/ui/ArticleViewer$RealPageBlocksAdapter;Ljava/lang/String;)V

    aget-object v3, v1, v7

    .line 12596
    invoke-interface {v0, v3}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v3

    aget-object v4, v1, v7

    invoke-interface {v0, v4}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v4

    const/16 v5, 0x21

    .line 12591
    invoke-virtual {v2, p1, v3, v4, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    return-object v2

    :cond_2
    return-object p1

    :cond_3
    return-object v0
.end method

.method public getFile(I)Ljava/io/File;
    .locals 1

    .line 12549
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$RealPageBlocksAdapter;->pageBlocks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    if-gez p1, :cond_0

    goto :goto_0

    .line 12552
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$RealPageBlocksAdapter;->page:Lorg/telegram/tgnet/TLRPC$WebPage;

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ArticleViewer$RealPageBlocksAdapter;->get(I)Lorg/telegram/tgnet/TLRPC$PageBlock;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/telegram/ui/ArticleViewer$WebPageUtils;->getMediaFile(Lorg/telegram/tgnet/TLRPC$WebPage;Lorg/telegram/tgnet/TLRPC$PageBlock;)Ljava/io/File;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getFileLocation(Lorg/telegram/tgnet/TLObject;[I)Lorg/telegram/tgnet/TLRPC$PhotoSize;
    .locals 3

    .line 12606
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$Photo;

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 12607
    check-cast p1, Lorg/telegram/tgnet/TLRPC$Photo;

    .line 12608
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getPhotoSize()I

    move-result v0

    invoke-static {p1, v0}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 12610
    iget v0, p1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->size:I

    aput v0, p2, v2

    if-nez v0, :cond_0

    .line 12612
    aput v1, p2, v2

    :cond_0
    return-object p1

    .line 12616
    :cond_1
    aput v1, p2, v2

    goto :goto_0

    .line 12618
    :cond_2
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v0, :cond_4

    .line 12619
    check-cast p1, Lorg/telegram/tgnet/TLRPC$Document;

    .line 12620
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    const/16 v0, 0x5a

    invoke-static {p1, v0}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 12622
    iget v0, p1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->size:I

    aput v0, p2, v2

    if-nez v0, :cond_3

    .line 12624
    aput v1, p2, v2

    :cond_3
    return-object p1

    :cond_4
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getFileName(I)Ljava/lang/String;
    .locals 1

    .line 12557
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ArticleViewer$RealPageBlocksAdapter;->getMedia(I)Lorg/telegram/tgnet/TLObject;

    move-result-object p1

    .line 12558
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$Photo;

    if-eqz v0, :cond_0

    .line 12559
    check-cast p1, Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getPhotoSize()I

    move-result v0

    invoke-static {p1, v0}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object p1

    .line 12561
    :cond_0
    invoke-static {p1}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getItemsCount()I
    .locals 1

    .line 12516
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$RealPageBlocksAdapter;->pageBlocks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getMedia(I)Lorg/telegram/tgnet/TLObject;
    .locals 1

    .line 12541
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$RealPageBlocksAdapter;->pageBlocks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    if-gez p1, :cond_0

    goto :goto_0

    .line 12544
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$RealPageBlocksAdapter;->page:Lorg/telegram/tgnet/TLRPC$WebPage;

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ArticleViewer$RealPageBlocksAdapter;->get(I)Lorg/telegram/tgnet/TLRPC$PageBlock;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/telegram/ui/ArticleViewer$WebPageUtils;->getMedia(Lorg/telegram/tgnet/TLRPC$WebPage;Lorg/telegram/tgnet/TLRPC$PageBlock;)Lorg/telegram/tgnet/TLObject;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getParentObject()Ljava/lang/Object;
    .locals 1

    .line 12650
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$RealPageBlocksAdapter;->page:Lorg/telegram/tgnet/TLRPC$WebPage;

    return-object v0
.end method

.method public isHardwarePlayer(I)Z
    .locals 3

    .line 12536
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$RealPageBlocksAdapter;->pageBlocks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-ge p1, v0, :cond_0

    if-ltz p1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$RealPageBlocksAdapter;->page:Lorg/telegram/tgnet/TLRPC$WebPage;

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ArticleViewer$RealPageBlocksAdapter;->get(I)Lorg/telegram/tgnet/TLRPC$PageBlock;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/telegram/ui/ArticleViewer$WebPageUtils;->isVideo(Lorg/telegram/tgnet/TLRPC$WebPage;Lorg/telegram/tgnet/TLRPC$PageBlock;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$RealPageBlocksAdapter;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v0, v0, v1

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer$PageLayout;->adapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ArticleViewer$RealPageBlocksAdapter;->get(I)Lorg/telegram/tgnet/TLRPC$PageBlock;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->-$$Nest$mgetTypeForBlock(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;Lorg/telegram/tgnet/TLRPC$PageBlock;)I

    move-result p1

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method public isVideo(I)Z
    .locals 1

    .line 12531
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$RealPageBlocksAdapter;->pageBlocks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    if-ltz p1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$RealPageBlocksAdapter;->page:Lorg/telegram/tgnet/TLRPC$WebPage;

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ArticleViewer$RealPageBlocksAdapter;->get(I)Lorg/telegram/tgnet/TLRPC$PageBlock;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/telegram/ui/ArticleViewer$WebPageUtils;->isVideo(Lorg/telegram/tgnet/TLRPC$WebPage;Lorg/telegram/tgnet/TLRPC$PageBlock;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public updateSlideshowCell(Lorg/telegram/tgnet/TLRPC$PageBlock;)V
    .locals 6

    .line 12634
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$RealPageBlocksAdapter;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer$PageLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 12636
    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer$RealPageBlocksAdapter;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v3, v3, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v3, v3, v1

    iget-object v3, v3, Lorg/telegram/ui/ArticleViewer$PageLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 12637
    instance-of v4, v3, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;

    if-eqz v4, :cond_0

    .line 12638
    check-cast v3, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;

    .line 12639
    invoke-static {v3}, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;->-$$Nest$fgetcurrentBlock(Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;)Lorg/telegram/tgnet/TLRPC$TL_pageBlockSlideshow;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_pageBlockSlideshow;->items:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    .line 12641
    invoke-static {v3}, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;->-$$Nest$fgetinnerListView(Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;)Landroidx/viewpager/widget/ViewPager;

    move-result-object p1

    invoke-virtual {p1, v4, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    return-void

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
