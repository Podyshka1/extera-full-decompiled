.class public Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/SharedMediaLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SharedMediaData"
.end annotation


# instance fields
.field private endLoadingStubs:I

.field public endReached:[Z

.field public fastScrollDataLoaded:Z

.field public fastScrollPeriods:Ljava/util/ArrayList;

.field public filterType:I

.field public frozenEndLoadingStubs:I

.field public frozenMessages:Ljava/util/ArrayList;

.field public frozenStartOffset:I

.field private hasPhotos:Z

.field private hasVideos:Z

.field public isFrozen:Z

.field public loading:Z

.field public loadingAfterFastScroll:Z

.field public max_id:[I

.field public messages:Ljava/util/ArrayList;

.field public messagesDict:[Landroid/util/SparseArray;

.field public min_id:I

.field recycledViewPool:Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

.field public requestIndex:I

.field public sectionArrays:Ljava/util/HashMap;

.field public sections:Ljava/util/ArrayList;

.field private startOffset:I

.field public startReached:Z

.field public totalCount:I


# direct methods
.method static bridge synthetic -$$Nest$fgetendLoadingStubs(Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->endLoadingStubs:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgethasPhotos(Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->hasPhotos:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgethasVideos(Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->hasVideos:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetstartOffset(Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->startOffset:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputendLoadingStubs(Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;I)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->endLoadingStubs:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputstartOffset(Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;I)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->startOffset:I

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 1347
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1348
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->messages:Ljava/util/ArrayList;

    .line 1349
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    const/4 v2, 0x2

    new-array v3, v2, [Landroid/util/SparseArray;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    iput-object v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->messagesDict:[Landroid/util/SparseArray;

    .line 1350
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->sections:Ljava/util/ArrayList;

    .line 1351
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->sectionArrays:Ljava/util/HashMap;

    .line 1352
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->fastScrollPeriods:Ljava/util/ArrayList;

    .line 1356
    new-array v1, v2, [Z

    fill-array-data v1, :array_0

    iput-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->endReached:[Z

    .line 1357
    filled-new-array {v4, v4}, [I

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->max_id:[I

    .line 1359
    iput-boolean v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->startReached:Z

    .line 1365
    iput v4, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->filterType:I

    .line 1367
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->frozenMessages:Ljava/util/ArrayList;

    .line 1373
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    invoke-direct {v0}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->recycledViewPool:Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    return-void

    :array_0
    .array-data 1
        0x0t
        0x1t
    .end array-data
.end method


# virtual methods
.method public addMessage(Lorg/telegram/messenger/MessageObject;IZZ)Z
    .locals 4

    .line 1388
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->messagesDict:[Landroid/util/SparseArray;

    aget-object v0, v0, p2

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    const/4 v1, 0x0

    if-ltz v0, :cond_0

    return v1

    .line 1391
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->sectionArrays:Ljava/util/HashMap;

    iget-object v2, p1, Lorg/telegram/messenger/MessageObject;->monthKey:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_2

    .line 1393
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1394
    iget-object v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->sectionArrays:Ljava/util/HashMap;

    iget-object v3, p1, Lorg/telegram/messenger/MessageObject;->monthKey:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p3, :cond_1

    .line 1396
    iget-object v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->sections:Ljava/util/ArrayList;

    iget-object v3, p1, Lorg/telegram/messenger/MessageObject;->monthKey:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 1398
    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->sections:Ljava/util/ArrayList;

    iget-object v3, p1, Lorg/telegram/messenger/MessageObject;->monthKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_0
    if-eqz p3, :cond_3

    .line 1402
    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1403
    iget-object p3, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->messages:Ljava/util/ArrayList;

    invoke-virtual {p3, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 1405
    :cond_3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1406
    iget-object p3, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->messages:Ljava/util/ArrayList;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1408
    :goto_1
    iget-object p3, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->messagesDict:[Landroid/util/SparseArray;

    aget-object p3, p3, p2

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v0

    invoke-virtual {p3, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    if-nez p4, :cond_4

    .line 1410
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result p3

    if-lez p3, :cond_5

    .line 1411
    iget-object p3, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->max_id:[I

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result p4

    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->max_id:[I

    aget v0, v0, p2

    invoke-static {p4, v0}, Ljava/lang/Math;->min(II)I

    move-result p4

    aput p4, p3, p2

    .line 1412
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result p2

    iget p3, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->min_id:I

    invoke-static {p2, p3}, Ljava/lang/Math;->max(II)I

    move-result p2

    iput p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->min_id:I

    goto :goto_2

    .line 1415
    :cond_4
    iget-object p3, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->max_id:[I

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result p4

    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->max_id:[I

    aget v0, v0, p2

    invoke-static {p4, v0}, Ljava/lang/Math;->max(II)I

    move-result p4

    aput p4, p3, p2

    .line 1416
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result p2

    iget p3, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->min_id:I

    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result p2

    iput p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->min_id:I

    .line 1418
    :cond_5
    :goto_2
    iget-boolean p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->hasVideos:Z

    const/4 p3, 0x1

    if-nez p2, :cond_6

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->isVideo()Z

    move-result p2

    if-eqz p2, :cond_6

    .line 1419
    iput-boolean p3, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->hasVideos:Z

    .line 1421
    :cond_6
    iget-boolean p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->hasPhotos:Z

    if-nez p2, :cond_7

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->isPhoto()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 1422
    iput-boolean p3, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->hasPhotos:Z

    :cond_7
    return p3
.end method

.method public deleteMessage(II)Lorg/telegram/messenger/MessageObject;
    .locals 3

    .line 1428
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->messagesDict:[Landroid/util/SparseArray;

    aget-object v0, v0, p2

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/MessageObject;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 1432
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->sectionArrays:Ljava/util/HashMap;

    iget-object v2, p1, Lorg/telegram/messenger/MessageObject;->monthKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-nez v1, :cond_1

    return-object v0

    .line 1436
    :cond_1
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1437
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->messages:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1438
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->messagesDict:[Landroid/util/SparseArray;

    aget-object p2, v0, p2

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 1439
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 1440
    iget-object p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->sectionArrays:Ljava/util/HashMap;

    iget-object v0, p1, Lorg/telegram/messenger/MessageObject;->monthKey:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1441
    iget-object p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->sections:Ljava/util/ArrayList;

    iget-object v0, p1, Lorg/telegram/messenger/MessageObject;->monthKey:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1443
    :cond_2
    iget p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->totalCount:I

    add-int/lit8 p2, p2, -0x1

    iput p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->totalCount:I

    if-gez p2, :cond_3

    const/4 p2, 0x0

    .line 1445
    iput p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->totalCount:I

    :cond_3
    return-object p1
.end method

.method public getEndLoadingStubs()I
    .locals 1

    .line 1482
    iget-boolean v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->isFrozen:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->frozenEndLoadingStubs:I

    return v0

    :cond_0
    iget v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->endLoadingStubs:I

    return v0
.end method

.method public getMessages()Ljava/util/ArrayList;
    .locals 1

    .line 1461
    iget-boolean v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->isFrozen:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->frozenMessages:Ljava/util/ArrayList;

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->messages:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getStartOffset()I
    .locals 1

    .line 1465
    iget-boolean v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->isFrozen:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->frozenStartOffset:I

    return v0

    :cond_0
    iget v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->startOffset:I

    return v0
.end method

.method public replaceMid(II)V
    .locals 3

    .line 1451
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->messagesDict:[Landroid/util/SparseArray;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_0

    .line 1453
    iget-object v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->messagesDict:[Landroid/util/SparseArray;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1454
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->messagesDict:[Landroid/util/SparseArray;

    aget-object p1, p1, v1

    invoke-virtual {p1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1455
    iget-object p1, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iput p2, p1, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    .line 1456
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->max_id:[I

    aget v0, p1, v1

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    aput p2, p1, v1

    :cond_0
    return-void
.end method

.method public setEndReached(IZ)V
    .locals 1

    .line 1384
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->endReached:[Z

    aput-boolean p2, v0, p1

    return-void
.end method

.method public setListFrozen(Z)V
    .locals 1

    .line 1469
    iget-boolean v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->isFrozen:Z

    if-ne v0, p1, :cond_0

    goto :goto_0

    .line 1472
    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->isFrozen:Z

    if-eqz p1, :cond_1

    .line 1474
    iget p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->startOffset:I

    iput p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->frozenStartOffset:I

    .line 1475
    iget p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->endLoadingStubs:I

    iput p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->frozenEndLoadingStubs:I

    .line 1476
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->frozenMessages:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 1477
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->frozenMessages:Ljava/util/ArrayList;

    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->messages:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public setMaxId(II)V
    .locals 1

    .line 1380
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->max_id:[I

    aput p2, v0, p1

    return-void
.end method

.method public setTotalCount(I)V
    .locals 0

    .line 1376
    iput p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->totalCount:I

    return-void
.end method
