.class Lorg/telegram/ui/Stories/recorder/GalleryListView$EmptyView;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Stories/recorder/GalleryListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EmptyView"
.end annotation


# instance fields
.field height:I

.field final synthetic this$0:Lorg/telegram/ui/Stories/recorder/GalleryListView;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Stories/recorder/GalleryListView;Landroid/content/Context;)V
    .locals 0

    .line 1432
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$EmptyView;->this$0:Lorg/telegram/ui/Stories/recorder/GalleryListView;

    .line 1433
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 4

    .line 1442
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 1443
    iget p2, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$EmptyView;->height:I

    const/4 v0, -0x1

    if-ne p2, v0, :cond_3

    .line 1445
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$EmptyView;->this$0:Lorg/telegram/ui/Stories/recorder/GalleryListView;

    iget-object p2, p2, Lorg/telegram/ui/Stories/recorder/GalleryListView;->selectedAlbum:Lorg/telegram/messenger/MediaController$AlbumEntry;

    invoke-static {}, Lorg/telegram/ui/Stories/recorder/GalleryListView;->-$$Nest$sfgetdraftsAlbum()Lorg/telegram/messenger/MediaController$AlbumEntry;

    move-result-object v0

    const/4 v1, 0x0

    if-ne p2, v0, :cond_0

    .line 1446
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$EmptyView;->this$0:Lorg/telegram/ui/Stories/recorder/GalleryListView;

    invoke-static {p2}, Lorg/telegram/ui/Stories/recorder/GalleryListView;->-$$Nest$fgetdrafts(Lorg/telegram/ui/Stories/recorder/GalleryListView;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    goto :goto_1

    .line 1447
    :cond_0
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$EmptyView;->this$0:Lorg/telegram/ui/Stories/recorder/GalleryListView;

    iget-object p2, p2, Lorg/telegram/ui/Stories/recorder/GalleryListView;->photos:Ljava/util/ArrayList;

    if-eqz p2, :cond_2

    .line 1448
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$EmptyView;->this$0:Lorg/telegram/ui/Stories/recorder/GalleryListView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/GalleryListView;->-$$Nest$fgetcontainsDraftFolder(Lorg/telegram/ui/Stories/recorder/GalleryListView;)Z

    move-result v0

    add-int/2addr p2, v0

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$EmptyView;->this$0:Lorg/telegram/ui/Stories/recorder/GalleryListView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/GalleryListView;->-$$Nest$fgetcontainsDrafts(Lorg/telegram/ui/Stories/recorder/GalleryListView;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$EmptyView;->this$0:Lorg/telegram/ui/Stories/recorder/GalleryListView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/GalleryListView;->-$$Nest$fgetdrafts(Lorg/telegram/ui/Stories/recorder/GalleryListView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    add-int/2addr p2, v0

    goto :goto_1

    :cond_2
    move p2, v1

    :goto_1
    int-to-float p2, p2

    .line 1452
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$EmptyView;->this$0:Lorg/telegram/ui/Stories/recorder/GalleryListView;

    iget-object v0, v0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->layoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p2, v0

    float-to-double v2, p2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int p2, v2

    .line 1453
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    const/high16 v2, 0x42780000    # 62.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int/2addr v0, v2

    int-to-float v2, p1

    .line 1454
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$EmptyView;->this$0:Lorg/telegram/ui/Stories/recorder/GalleryListView;

    iget-object v3, v3, Lorg/telegram/ui/Stories/recorder/GalleryListView;->layoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    float-to-int v2, v2

    int-to-float v2, v2

    .line 1455
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$EmptyView;->this$0:Lorg/telegram/ui/Stories/recorder/GalleryListView;

    invoke-static {v3}, Lorg/telegram/ui/Stories/recorder/GalleryListView;->-$$Nest$fgetASPECT_RATIO(Lorg/telegram/ui/Stories/recorder/GalleryListView;)F

    move-result v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    mul-int/2addr v2, p2

    sub-int/2addr v0, v2

    .line 1456
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 1457
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void

    .line 1459
    :cond_3
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public setHeight(I)V
    .locals 0

    .line 1437
    iput p1, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$EmptyView;->height:I

    return-void
.end method
