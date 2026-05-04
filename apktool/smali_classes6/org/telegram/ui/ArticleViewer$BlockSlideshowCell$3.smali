.class Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell$3;
.super Landroidx/viewpager/widget/PagerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;-><init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell$3$ObjectContainer;
    }
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;

.field final synthetic val$this$0:Lorg/telegram/ui/ArticleViewer;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;Lorg/telegram/ui/ArticleViewer;)V
    .locals 0

    .line 9660
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell$3;->this$1:Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;

    iput-object p2, p0, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell$3;->val$this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-direct {p0}, Landroidx/viewpager/widget/PagerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    .line 9710
    check-cast p3, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell$3$ObjectContainer;

    invoke-static {p3}, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell$3$ObjectContainer;->-$$Nest$fgetview(Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell$3$ObjectContainer;)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public getCount()I
    .locals 1

    .line 9669
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell$3;->this$1:Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;->-$$Nest$fgetcurrentBlock(Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;)Lorg/telegram/tgnet/TLRPC$TL_pageBlockSlideshow;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 9672
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell$3;->this$1:Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;->-$$Nest$fgetcurrentBlock(Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;)Lorg/telegram/tgnet/TLRPC$TL_pageBlockSlideshow;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockSlideshow;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 1

    .line 9682
    check-cast p1, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell$3$ObjectContainer;

    .line 9683
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell$3;->this$1:Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;->-$$Nest$fgetcurrentBlock(Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;)Lorg/telegram/tgnet/TLRPC$TL_pageBlockSlideshow;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockSlideshow;->items:Ljava/util/ArrayList;

    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell$3$ObjectContainer;->-$$Nest$fgetblock(Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell$3$ObjectContainer;)Lorg/telegram/tgnet/TLRPC$PageBlock;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    const/4 p1, -0x2

    return p1
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 10

    .line 9692
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell$3;->this$1:Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;->-$$Nest$fgetcurrentBlock(Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;)Lorg/telegram/tgnet/TLRPC$TL_pageBlockSlideshow;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockSlideshow;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/tgnet/TLRPC$PageBlock;

    .line 9693
    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$TL_pageBlockPhoto;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 9694
    new-instance v0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell$3;->this$1:Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;

    iget-object v3, v2, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v4, p0, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell$3;->this$1:Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;

    invoke-static {v4}, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;->-$$Nest$fgetparentAdapter(Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;)Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    move-result-object v4

    invoke-direct {v0, v3, v2, v4, v1}, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;-><init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;Lorg/telegram/ui/ArticleViewer$WebpageAdapter;I)V

    .line 9695
    move-object v2, p2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_pageBlockPhoto;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, v1}, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->setBlock(Lorg/telegram/tgnet/TLRPC$TL_pageBlockPhoto;ZZZ)V

    goto :goto_0

    .line 9697
    :cond_0
    new-instance v4, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell$3;->this$1:Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;

    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell$3;->this$1:Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;

    invoke-static {v3}, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;->-$$Nest$fgetparentAdapter(Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;)Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    move-result-object v3

    invoke-direct {v4, v2, v0, v3, v1}, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;-><init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;Lorg/telegram/ui/ArticleViewer$WebpageAdapter;I)V

    .line 9698
    move-object v5, p2

    check-cast v5, Lorg/telegram/tgnet/TLRPC$TL_pageBlockVideo;

    .line 9699
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell$3;->this$1:Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$fgetvideoStates(Lorg/telegram/ui/ArticleViewer;)Landroidx/collection/LongSparseArray;

    move-result-object v0

    iget-wide v1, v5, Lorg/telegram/tgnet/TLRPC$TL_pageBlockVideo;->video_id:J

    invoke-virtual {v0, v1, v2}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lorg/telegram/ui/ArticleViewer$BlockVideoCellState;

    const/4 v8, 0x1

    const/4 v9, 0x1

    const/4 v7, 0x0

    invoke-virtual/range {v4 .. v9}, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->setBlock(Lorg/telegram/tgnet/TLRPC$TL_pageBlockVideo;Lorg/telegram/ui/ArticleViewer$BlockVideoCellState;ZZZ)V

    move-object v0, v4

    .line 9701
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 9702
    new-instance p1, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell$3$ObjectContainer;

    invoke-direct {p1, p0}, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell$3$ObjectContainer;-><init>(Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell$3;)V

    .line 9703
    invoke-static {p1, v0}, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell$3$ObjectContainer;->-$$Nest$fputview(Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell$3$ObjectContainer;Landroid/view/View;)V

    .line 9704
    invoke-static {p1, p2}, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell$3$ObjectContainer;->-$$Nest$fputblock(Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell$3$ObjectContainer;Lorg/telegram/tgnet/TLRPC$PageBlock;)V

    return-object p1
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0

    .line 9677
    check-cast p2, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell$3$ObjectContainer;

    invoke-static {p2}, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell$3$ObjectContainer;->-$$Nest$fgetview(Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell$3$ObjectContainer;)Landroid/view/View;

    move-result-object p2

    if-ne p2, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 9716
    invoke-super {p0, p1}, Landroidx/viewpager/widget/PagerAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_0
    return-void
.end method
