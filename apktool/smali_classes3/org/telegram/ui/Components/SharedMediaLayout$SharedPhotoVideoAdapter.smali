.class Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$FastScrollAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/SharedMediaLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SharedPhotoVideoAdapter"
.end annotation


# instance fields
.field protected inFastScrollMode:Z

.field protected mContext:Landroid/content/Context;

.field sharedResources:Lorg/telegram/ui/Cells/SharedPhotoVideoCell2$SharedResources;

.field final synthetic this$0:Lorg/telegram/ui/Components/SharedMediaLayout;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Components/SharedMediaLayout;Landroid/content/Context;)V
    .locals 0

    .line 8260
    iput-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$FastScrollAdapter;-><init>()V

    .line 8261
    iput-object p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public fastScrollIsVisible(Lorg/telegram/ui/Components/RecyclerListView;)Z
    .locals 4

    .line 8494
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->isSearchingStories()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 8497
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetphotoVideoAdapter(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;

    move-result-object v0

    if-eq p0, v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0, p0}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$mstoryAlbums_getTabTypeByStoriesAdapter(Lorg/telegram/ui/Components/SharedMediaLayout;Landroidx/recyclerview/widget/RecyclerView$Adapter;)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetanimateToColumnsCount(Lorg/telegram/ui/Components/SharedMediaLayout;)I

    move-result v0

    goto :goto_1

    :cond_2
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetmediaColumnsCount(Lorg/telegram/ui/Components/SharedMediaLayout;)[I

    move-result-object v0

    aget v0, v0, v1

    .line 8498
    :goto_1
    invoke-virtual {p0}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;->getTotalItemsCount()I

    move-result v2

    int-to-float v2, v2

    int-to-float v0, v0

    div-float/2addr v2, v0

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    .line 8499
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-nez v2, :cond_3

    return v1

    .line 8502
    :cond_3
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    mul-int/2addr v0, v2

    .line 8503
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    if-le v0, p1, :cond_4

    const/4 p1, 0x1

    return p1

    :cond_4
    return v1
.end method

.method public getItemCount()I
    .locals 4

    .line 8274
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetdialog_id(Lorg/telegram/ui/Components/SharedMediaLayout;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    .line 8275
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetsharedMediaData(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    move-result-object v0

    aget-object v0, v0, v2

    iget-object v0, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->messages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetsharedMediaData(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    move-result-object v0

    aget-object v0, v0, v2

    iget-boolean v0, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->loading:Z

    if-nez v0, :cond_0

    return v1

    .line 8278
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetsharedMediaData(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    move-result-object v0

    aget-object v0, v0, v2

    iget-object v0, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->messages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetsharedMediaData(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    move-result-object v0

    aget-object v0, v0, v2

    iget-object v0, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->endReached:[Z

    aget-boolean v0, v0, v2

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetsharedMediaData(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    move-result-object v0

    aget-object v0, v0, v2

    iget-object v0, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->endReached:[Z

    aget-boolean v0, v0, v1

    if-nez v0, :cond_2

    :cond_1
    return v2

    .line 8281
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetsharedMediaData(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->getStartOffset()I

    move-result v0

    iget-object v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetsharedMediaData(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    move-result-object v3

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->getMessages()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/2addr v0, v3

    if-eqz v0, :cond_4

    .line 8282
    iget-object v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetsharedMediaData(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    move-result-object v3

    aget-object v3, v3, v2

    iget-object v3, v3, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->endReached:[Z

    aget-boolean v3, v3, v2

    if-eqz v3, :cond_3

    iget-object v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetsharedMediaData(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    move-result-object v3

    aget-object v2, v3, v2

    iget-object v2, v2, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->endReached:[Z

    aget-boolean v2, v2, v1

    if-nez v2, :cond_4

    :cond_3
    add-int/2addr v0, v1

    :cond_4
    return v0

    .line 8287
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetsharedMediaData(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    move-result-object v0

    aget-object v0, v0, v2

    iget-boolean v0, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->loadingAfterFastScroll:Z

    if-eqz v0, :cond_6

    .line 8288
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetsharedMediaData(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    move-result-object v0

    aget-object v0, v0, v2

    iget v0, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->totalCount:I

    return v0

    .line 8290
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetsharedMediaData(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    move-result-object v0

    aget-object v0, v0, v2

    iget-object v0, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->messages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetsharedMediaData(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    move-result-object v0

    aget-object v0, v0, v2

    iget-boolean v0, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->loading:Z

    if-nez v0, :cond_7

    return v1

    .line 8293
    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetsharedMediaData(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    move-result-object v0

    aget-object v0, v0, v2

    iget-object v0, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->messages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetsharedMediaData(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    move-result-object v0

    aget-object v0, v0, v2

    iget-object v0, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->endReached:[Z

    aget-boolean v0, v0, v2

    if-eqz v0, :cond_8

    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetsharedMediaData(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    move-result-object v0

    aget-object v0, v0, v2

    iget-object v0, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->endReached:[Z

    aget-boolean v0, v0, v1

    if-nez v0, :cond_9

    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetsharedMediaData(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    move-result-object v0

    aget-object v0, v0, v2

    iget-boolean v0, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->startReached:Z

    if-eqz v0, :cond_9

    return v2

    .line 8296
    :cond_9
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetsharedMediaData(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    move-result-object v0

    aget-object v0, v0, v2

    iget v0, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->totalCount:I

    if-nez v0, :cond_d

    .line 8297
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetsharedMediaData(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->getStartOffset()I

    move-result v0

    iget-object v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetsharedMediaData(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    move-result-object v3

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->getMessages()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/2addr v0, v3

    if-eqz v0, :cond_c

    .line 8298
    iget-object v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetsharedMediaData(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    move-result-object v3

    aget-object v3, v3, v2

    iget-object v3, v3, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->endReached:[Z

    aget-boolean v3, v3, v2

    if-eqz v3, :cond_a

    iget-object v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetsharedMediaData(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    move-result-object v3

    aget-object v3, v3, v2

    iget-object v3, v3, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->endReached:[Z

    aget-boolean v3, v3, v1

    if-nez v3, :cond_c

    .line 8299
    :cond_a
    iget-object v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetsharedMediaData(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    move-result-object v3

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->getEndLoadingStubs()I

    move-result v3

    if-eqz v3, :cond_b

    .line 8300
    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetsharedMediaData(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    move-result-object v1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->getEndLoadingStubs()I

    move-result v1

    add-int/2addr v0, v1

    return v0

    :cond_b
    add-int/2addr v0, v1

    :cond_c
    return v0

    .line 8307
    :cond_d
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetsharedMediaData(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    move-result-object v0

    aget-object v0, v0, v2

    iget v0, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->totalCount:I

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 8381
    iget-boolean p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;->inFastScrollMode:Z

    const/4 v0, 0x0

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetsharedMediaData(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    move-result-object p1

    aget-object p1, p1, v0

    invoke-virtual {p1}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->getMessages()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetsharedMediaData(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    move-result-object p1

    aget-object p1, p1, v0

    iget-boolean p1, p1, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->loading:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetsharedMediaData(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    move-result-object p1

    aget-object p1, p1, v0

    iget-boolean p1, p1, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->startReached:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    return p1

    .line 8384
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetsharedMediaData(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    move-result-object p1

    aget-object p1, p1, v0

    invoke-virtual {p1}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->getStartOffset()I

    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetsharedMediaData(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    move-result-object p1

    aget-object p1, p1, v0

    invoke-virtual {p1}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->getMessages()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 8385
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetsharedMediaData(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    move-result-object p1

    aget-object p1, p1, v0

    invoke-virtual {p1}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->getStartOffset()I

    return v0
.end method

.method public getLetter(I)Ljava/lang/String;
    .locals 4

    .line 8393
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetsharedMediaData(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v0, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->fastScrollPeriods:Ljava/util/ArrayList;

    const-string v2, ""

    if-nez v0, :cond_0

    return-object v2

    .line 8397
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetsharedMediaData(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    move-result-object v0

    aget-object v0, v0, v1

    iget-object v0, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->fastScrollPeriods:Ljava/util/ArrayList;

    .line 8398
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 8399
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 8400
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/SharedMediaLayout$Period;

    iget v2, v2, Lorg/telegram/ui/Components/SharedMediaLayout$Period;->startOffset:I

    if-gt p1, v2, :cond_1

    .line 8401
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Components/SharedMediaLayout$Period;

    iget-object p1, p1, Lorg/telegram/ui/Components/SharedMediaLayout$Period;->formatedDate:Ljava/lang/String;

    return-object p1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 8404
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Components/SharedMediaLayout$Period;

    iget-object p1, p1, Lorg/telegram/ui/Components/SharedMediaLayout$Period;->formatedDate:Ljava/lang/String;

    return-object p1

    :cond_3
    return-object v2
.end method

.method public getPositionForIndex(I)I
    .locals 2

    .line 8269
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetsharedMediaData(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->-$$Nest$fgetstartOffset(Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;)I

    move-result v0

    add-int/2addr v0, p1

    return v0
.end method

.method public getPositionForScrollProgress(Lorg/telegram/ui/Components/RecyclerListView;F[I)V
    .locals 8

    const/4 v0, 0x0

    .line 8411
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 8413
    iget-object v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v2, p0}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$mstoryAlbums_getTabTypeByStoriesSupportingAdapter(Lorg/telegram/ui/Components/SharedMediaLayout;Landroidx/recyclerview/widget/RecyclerView$Adapter;)I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, -0x1

    if-ne v2, v4, :cond_2

    iget-object v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v2}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetanimationSupportingPhotoVideoAdapter(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;

    move-result-object v2

    if-ne p0, v2, :cond_0

    goto :goto_0

    .line 8415
    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v2, p0}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$mstoryAlbums_getTabTypeByStoriesAdapter(Lorg/telegram/ui/Components/SharedMediaLayout;Landroidx/recyclerview/widget/RecyclerView$Adapter;)I

    move-result v2

    if-eq v2, v4, :cond_1

    .line 8416
    iget-object v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v2}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetmediaColumnsCount(Lorg/telegram/ui/Components/SharedMediaLayout;)[I

    move-result-object v2

    aget v2, v2, v3

    goto :goto_1

    .line 8418
    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v2}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetmediaColumnsCount(Lorg/telegram/ui/Components/SharedMediaLayout;)[I

    move-result-object v2

    aget v2, v2, v0

    goto :goto_1

    .line 8414
    :cond_2
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v2}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetanimateToColumnsCount(Lorg/telegram/ui/Components/SharedMediaLayout;)I

    move-result v2

    .line 8420
    :goto_1
    invoke-virtual {p0}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;->getTotalItemsCount()I

    move-result v4

    int-to-float v4, v4

    int-to-float v5, v2

    div-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    int-to-double v6, v1

    mul-double/2addr v4, v6

    double-to-int v4, v4

    .line 8421
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result p1

    sub-int/2addr v5, p1

    if-nez v1, :cond_3

    .line 8423
    aput v0, p3, v3

    aput v0, p3, v0

    return-void

    :cond_3
    sub-int/2addr v4, v5

    int-to-float p1, v4

    mul-float/2addr p2, p1

    int-to-float p1, v1

    div-float p1, p2, p1

    float-to-int p1, p1

    mul-int/2addr p1, v2

    .line 8426
    aput p1, p3, v0

    float-to-int p1, p2

    .line 8427
    rem-int/2addr p1, v1

    aput p1, p3, v3

    return-void
.end method

.method public getScrollProgress(Lorg/telegram/ui/Components/RecyclerListView;)F
    .locals 6

    .line 8470
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetanimationSupportingPhotoVideoAdapter(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;

    move-result-object v0

    const/4 v1, 0x0

    if-eq p0, v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0, p0}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$mstoryAlbums_getTabTypeByStoriesSupportingAdapter(Lorg/telegram/ui/Components/SharedMediaLayout;Landroidx/recyclerview/widget/RecyclerView$Adapter;)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 8472
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0, p0}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$mstoryAlbums_getTabTypeByStoriesAdapter(Lorg/telegram/ui/Components/SharedMediaLayout;Landroidx/recyclerview/widget/RecyclerView$Adapter;)I

    move-result v0

    if-eq v0, v2, :cond_1

    .line 8473
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetmediaColumnsCount(Lorg/telegram/ui/Components/SharedMediaLayout;)[I

    move-result-object v0

    const/4 v2, 0x1

    aget v0, v0, v2

    goto :goto_1

    .line 8475
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetmediaColumnsCount(Lorg/telegram/ui/Components/SharedMediaLayout;)[I

    move-result-object v0

    aget v0, v0, v1

    goto :goto_1

    .line 8471
    :cond_2
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetanimateToColumnsCount(Lorg/telegram/ui/Components/SharedMediaLayout;)I

    move-result v0

    .line 8477
    :goto_1
    invoke-virtual {p0}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;->getTotalItemsCount()I

    move-result v2

    int-to-float v2, v2

    int-to-float v3, v0

    div-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    .line 8478
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_3

    return v4

    .line 8481
    :cond_3
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    .line 8482
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 8483
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v5

    if-gez v5, :cond_4

    return v4

    .line 8487
    :cond_4
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    sub-int/2addr v1, v4

    int-to-float v1, v1

    .line 8488
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result p1

    sub-int/2addr v4, p1

    int-to-float p1, v4

    .line 8489
    div-int/2addr v5, v0

    mul-int/2addr v5, v3

    int-to-float v0, v5

    sub-float/2addr v0, v1

    int-to-float v1, v2

    int-to-float v2, v3

    mul-float/2addr v1, v2

    sub-float/2addr v1, p1

    div-float/2addr v0, v1

    return v0
.end method

.method public getTotalItemsCount()I
    .locals 2

    .line 8464
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetsharedMediaData(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget v0, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->totalCount:I

    return v0
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 9

    .line 8347
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    if-nez v0, :cond_8

    .line 8348
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetsharedMediaData(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->getMessages()Ljava/util/ArrayList;

    move-result-object v0

    .line 8349
    iget-object v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v2}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetsharedMediaData(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    move-result-object v2

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->getStartOffset()I

    move-result v2

    sub-int/2addr p2, v2

    .line 8350
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v2, p1, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;

    if-nez v2, :cond_0

    goto/16 :goto_4

    .line 8351
    :cond_0
    check-cast p1, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;

    .line 8352
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->getMessageId()I

    move-result v2

    .line 8355
    iget-object v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetphotoVideoAdapter(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;

    move-result-object v3

    const/4 v4, 0x1

    if-ne p0, v3, :cond_1

    .line 8356
    iget-object v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetmediaColumnsCount(Lorg/telegram/ui/Components/SharedMediaLayout;)[I

    move-result-object v3

    aget v3, v3, v1

    goto :goto_0

    .line 8357
    :cond_1
    iget-object v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v3, p0}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$mstoryAlbums_getTabTypeByStoriesAdapter(Lorg/telegram/ui/Components/SharedMediaLayout;Landroidx/recyclerview/widget/RecyclerView$Adapter;)I

    move-result v3

    const/4 v5, -0x1

    if-eq v3, v5, :cond_2

    .line 8358
    iget-object v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetmediaColumnsCount(Lorg/telegram/ui/Components/SharedMediaLayout;)[I

    move-result-object v3

    aget v3, v3, v4

    goto :goto_0

    .line 8360
    :cond_2
    iget-object v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetanimateToColumnsCount(Lorg/telegram/ui/Components/SharedMediaLayout;)I

    move-result v3

    :goto_0
    if-ltz p2, :cond_7

    .line 8362
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge p2, v5, :cond_7

    .line 8363
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/messenger/MessageObject;

    .line 8364
    invoke-virtual {p2}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v0

    if-ne v0, v2, :cond_3

    move v0, v4

    goto :goto_1

    :cond_3
    move v0, v1

    .line 8366
    :goto_1
    iget-object v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    iget-boolean v5, v2, Lorg/telegram/ui/Components/SharedMediaLayout;->isActionModeShowed:Z

    if-eqz v5, :cond_6

    .line 8367
    invoke-static {v2}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetselectedFiles(Lorg/telegram/ui/Components/SharedMediaLayout;)[Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {p2}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v5

    iget-object v7, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v7}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetdialog_id(Lorg/telegram/ui/Components/SharedMediaLayout;)J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-nez v5, :cond_4

    move v5, v1

    goto :goto_2

    :cond_4
    move v5, v4

    :goto_2
    aget-object v2, v2, v5

    invoke-virtual {p2}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v2

    if-ltz v2, :cond_5

    move v1, v4

    :cond_5
    invoke-virtual {p1, v1, v0}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->setChecked(ZZ)V

    goto :goto_3

    .line 8369
    :cond_6
    invoke-virtual {p1, v1, v0}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->setChecked(ZZ)V

    .line 8371
    :goto_3
    invoke-virtual {p1, p2, v3}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->setMessageObject(Lorg/telegram/messenger/MessageObject;I)V

    return-void

    :cond_7
    const/4 p2, 0x0

    .line 8373
    invoke-virtual {p1, p2, v3}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->setMessageObject(Lorg/telegram/messenger/MessageObject;I)V

    .line 8374
    invoke-virtual {p1, v1, v1}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->setChecked(ZZ)V

    :cond_8
    :goto_4
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 5

    const/16 v0, 0x13

    const/4 v1, -0x1

    if-eqz p2, :cond_0

    if-eq p2, v0, :cond_0

    .line 8337
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;->mContext:Landroid/content/Context;

    iget-object p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p2}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetdialog_id(Lorg/telegram/ui/Components/SharedMediaLayout;)J

    move-result-wide v2

    iget-object p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p2}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetresourcesProvider(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object p2

    const/4 v0, 0x0

    invoke-static {p1, v0, v2, v3, p2}, Lorg/telegram/ui/Components/SharedMediaLayout;->createEmptyStubView(Landroid/content/Context;IJLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Landroid/view/View;

    move-result-object p1

    .line 8338
    new-instance p2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    invoke-direct {p2, v1, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 8339
    new-instance p2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p2

    .line 8322
    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;->sharedResources:Lorg/telegram/ui/Cells/SharedPhotoVideoCell2$SharedResources;

    if-nez v2, :cond_1

    .line 8323
    new-instance v2, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2$SharedResources;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetresourcesProvider(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v3

    invoke-direct {v2, p1, v3}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2$SharedResources;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;->sharedResources:Lorg/telegram/ui/Cells/SharedPhotoVideoCell2$SharedResources;

    .line 8325
    :cond_1
    new-instance p1, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;

    iget-object v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;->sharedResources:Lorg/telegram/ui/Cells/SharedPhotoVideoCell2$SharedResources;

    iget-object v4, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v4}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetprofileActivity(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getCurrentAccount()I

    move-result v4

    invoke-direct {p1, v2, v3, v4}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;-><init>(Landroid/content/Context;Lorg/telegram/ui/Cells/SharedPhotoVideoCell2$SharedResources;I)V

    if-ne p2, v0, :cond_2

    .line 8327
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->setCheck2()V

    .line 8329
    :cond_2
    iget-object p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    iget-object p2, p2, Lorg/telegram/ui/Components/SharedMediaLayout;->globalGradientView:Lorg/telegram/ui/Components/FlickerLoadingView;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->setGradientView(Lorg/telegram/ui/Components/FlickerLoadingView;)V

    .line 8330
    iget-object p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p2, p0}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$mstoryAlbums_getTabTypeByStoriesAdapter(Lorg/telegram/ui/Components/SharedMediaLayout;Landroidx/recyclerview/widget/RecyclerView$Adapter;)I

    move-result p2

    if-eq p2, v1, :cond_3

    const/4 p2, 0x1

    .line 8331
    iput-boolean p2, p1, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->isStory:Z

    .line 8341
    :cond_3
    new-instance p2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {p2, v1, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 8342
    new-instance p2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public onFastScrollSingleTap()V
    .locals 3

    .line 8508
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/SharedMediaLayout;->showMediaCalendar(IZ)V

    return-void
.end method

.method public onFinishFastScroll(Lorg/telegram/ui/Components/RecyclerListView;)V
    .locals 5

    .line 8441
    iget-boolean v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;->inFastScrollMode:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    .line 8442
    iput-boolean v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;->inFastScrollMode:Z

    if-eqz p1, :cond_3

    move v1, v0

    move v2, v1

    .line 8445
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 8446
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 8447
    instance-of v4, v3, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;

    if-eqz v4, :cond_0

    .line 8448
    check-cast v3, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;

    .line 8449
    invoke-virtual {v3}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->getMessageId()I

    move-result v2

    :cond_0
    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-nez v2, :cond_3

    .line 8456
    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    const/4 v2, 0x1

    invoke-static {v1, v0, p1, v2}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$mfindPeriodAndJumpToDate(Lorg/telegram/ui/Components/SharedMediaLayout;ILorg/telegram/ui/Components/RecyclerListView;Z)V

    :cond_3
    return-void
.end method

.method public onStartFastScroll()V
    .locals 3

    const/4 v0, 0x1

    .line 8432
    iput-boolean v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;->inFastScrollMode:Z

    .line 8433
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$mgetMediaPage(Lorg/telegram/ui/Components/SharedMediaLayout;I)Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    .line 8435
    invoke-static {v0, v2, v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$smshowFastScrollHint(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;Z)V

    :cond_0
    return-void
.end method
