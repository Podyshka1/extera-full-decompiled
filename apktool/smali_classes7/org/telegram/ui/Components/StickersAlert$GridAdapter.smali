.class Lorg/telegram/ui/Components/StickersAlert$GridAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/StickersAlert;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GridAdapter"
.end annotation


# instance fields
.field private cache:Landroid/util/SparseArray;

.field private context:Landroid/content/Context;

.field private positionsToSets:Landroid/util/SparseArray;

.field private stickersPerRow:I

.field private stickersRowCount:I

.field final synthetic this$0:Lorg/telegram/ui/Components/StickersAlert;

.field private totalItems:I


# direct methods
.method public static synthetic $r8$lambda$9_8PcjeL9hOi1uxenn3VPiCJx0s(Lorg/telegram/ui/Components/StickersAlert$GridAdapter;Lorg/telegram/ui/Cells/StickerEmojiCell;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->lambda$onBindViewHolder$0(Lorg/telegram/ui/Cells/StickerEmojiCell;Landroid/view/View;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetcache(Lorg/telegram/ui/Components/StickersAlert$GridAdapter;)Landroid/util/SparseArray;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->cache:Landroid/util/SparseArray;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetpositionsToSets(Lorg/telegram/ui/Components/StickersAlert$GridAdapter;)Landroid/util/SparseArray;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->positionsToSets:Landroid/util/SparseArray;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetstickersPerRow(Lorg/telegram/ui/Components/StickersAlert$GridAdapter;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->stickersPerRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetstickersRowCount(Lorg/telegram/ui/Components/StickersAlert$GridAdapter;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->stickersRowCount:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgettotalItems(Lorg/telegram/ui/Components/StickersAlert$GridAdapter;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->totalItems:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputstickersPerRow(Lorg/telegram/ui/Components/StickersAlert$GridAdapter;I)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->stickersPerRow:I

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/Components/StickersAlert;Landroid/content/Context;)V
    .locals 0

    .line 2355
    iput-object p1, p0, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    .line 2350
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->cache:Landroid/util/SparseArray;

    .line 2351
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->positionsToSets:Landroid/util/SparseArray;

    .line 2356
    iput-object p2, p0, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->context:Landroid/content/Context;

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$0(Lorg/telegram/ui/Cells/StickerEmojiCell;Landroid/view/View;)V
    .locals 1

    .line 2440
    invoke-static {}, Lorg/telegram/ui/ContentPreviewViewer;->getInstance()Lorg/telegram/ui/ContentPreviewViewer;

    move-result-object p2

    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/StickersAlert;->-$$Nest$fgetpreviewDelegate(Lorg/telegram/ui/Components/StickersAlert;)Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/telegram/ui/ContentPreviewViewer;->setDelegate(Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;)V

    .line 2441
    invoke-static {}, Lorg/telegram/ui/ContentPreviewViewer;->getInstance()Lorg/telegram/ui/ContentPreviewViewer;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/telegram/ui/ContentPreviewViewer;->showMenuFor(Landroid/view/View;)Z

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 2361
    iget v0, p0, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->totalItems:I

    return v0
.end method

.method public getItemViewType(I)I
    .locals 2

    .line 2366
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/StickersAlert;->-$$Nest$fgetstickerSetCovereds(Lorg/telegram/ui/Components/StickersAlert;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 2367
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->cache:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 2369
    instance-of p1, p1, Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz p1, :cond_0

    return v1

    :cond_0
    const/4 p1, 0x2

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1

    .line 2377
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    iget-object v0, v0, Lorg/telegram/ui/Components/StickersAlert;->stickerSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, p1, :cond_3

    const/4 p1, 0x3

    return p1

    :cond_3
    return v1
.end method

.method public getThemeDescriptions(Ljava/util/List;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;)V
    .locals 1

    .line 2524
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/StickersAlert;->-$$Nest$fgetstickerSetCovereds(Lorg/telegram/ui/Components/StickersAlert;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2525
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/StickersAlert;->-$$Nest$fgetgridView(Lorg/telegram/ui/Components/StickersAlert;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    invoke-static {p1, v0, p2}, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->createThemeDescriptions(Ljava/util/List;Lorg/telegram/ui/Components/RecyclerListView;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;)V

    :cond_0
    return-void
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public notifyDataSetChanged()V
    .locals 10

    .line 2449
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/StickersAlert;->-$$Nest$fgetstickerSetCovereds(Lorg/telegram/ui/Components/StickersAlert;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_8

    .line 2450
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/StickersAlert;->-$$Nest$fgetgridView(Lorg/telegram/ui/Components/StickersAlert;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    if-nez v0, :cond_0

    .line 2452
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    :cond_0
    const/high16 v3, 0x42900000    # 72.0f

    .line 2454
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    div-int/2addr v0, v3

    iput v0, p0, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->stickersPerRow:I

    .line 2455
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/StickersAlert;->-$$Nest$fgetlayoutManager(Lorg/telegram/ui/Components/StickersAlert;)Landroidx/recyclerview/widget/GridLayoutManager;

    move-result-object v0

    iget v3, p0, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->stickersPerRow:I

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanCount(I)V

    .line 2456
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->cache:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 2457
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->positionsToSets:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 2458
    iput v2, p0, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->totalItems:I

    .line 2459
    iput v2, p0, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->stickersRowCount:I

    move v0, v2

    .line 2460
    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    invoke-static {v3}, Lorg/telegram/ui/Components/StickersAlert;->-$$Nest$fgetstickerSetCovereds(Lorg/telegram/ui/Components/StickersAlert;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_b

    .line 2461
    iget-object v3, p0, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    invoke-static {v3}, Lorg/telegram/ui/Components/StickersAlert;->-$$Nest$fgetstickerSetCovereds(Lorg/telegram/ui/Components/StickersAlert;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;

    .line 2463
    instance-of v4, v3, Lorg/telegram/tgnet/TLRPC$TL_stickerSetFullCovered;

    if-eqz v4, :cond_1

    .line 2464
    move-object v4, v3

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_stickerSetFullCovered;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_stickerSetFullCovered;->documents:Ljava/util/ArrayList;

    goto :goto_1

    .line 2466
    :cond_1
    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->covers:Ljava/util/ArrayList;

    :goto_1
    if-eqz v4, :cond_2

    .line 2469
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    iget v6, p0, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->stickersPerRow:I

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-interface {v4, v2, v5}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v4

    :cond_2
    if-eqz v4, :cond_7

    .line 2471
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, v3, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->cover:Lorg/telegram/tgnet/TLRPC$Document;

    if-nez v5, :cond_3

    goto :goto_4

    .line 2474
    :cond_3
    iget v5, p0, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->stickersRowCount:I

    add-int/2addr v5, v1

    iput v5, p0, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->stickersRowCount:I

    .line 2475
    iget-object v5, p0, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->positionsToSets:Landroid/util/SparseArray;

    iget v6, p0, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->totalItems:I

    invoke-virtual {v5, v6, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2476
    iget-object v5, p0, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->cache:Landroid/util/SparseArray;

    iget v6, p0, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->totalItems:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->totalItems:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2477
    iget v5, p0, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->totalItems:I

    iget v6, p0, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->stickersPerRow:I

    div-int/2addr v5, v6

    .line 2479
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    .line 2480
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    int-to-float v5, v5

    iget v6, p0, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->stickersPerRow:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v5, v5

    move v6, v2

    .line 2481
    :goto_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_5

    .line 2482
    iget-object v7, p0, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->cache:Landroid/util/SparseArray;

    iget v8, p0, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->totalItems:I

    add-int/2addr v8, v6

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 2486
    :cond_4
    iget-object v4, p0, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->cache:Landroid/util/SparseArray;

    iget v5, p0, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->totalItems:I

    iget-object v6, v3, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->cover:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move v5, v1

    :cond_5
    move v4, v2

    .line 2488
    :goto_3
    iget v6, p0, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->stickersPerRow:I

    mul-int v7, v5, v6

    if-ge v4, v7, :cond_6

    .line 2489
    iget-object v6, p0, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->positionsToSets:Landroid/util/SparseArray;

    iget v7, p0, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->totalItems:I

    add-int/2addr v7, v4

    invoke-virtual {v6, v7, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 2491
    :cond_6
    iget v3, p0, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->totalItems:I

    mul-int/2addr v5, v6

    add-int/2addr v3, v5

    iput v3, p0, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->totalItems:I

    :cond_7
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 2493
    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/StickersAlert;->-$$Nest$fgetimportingStickersPaths(Lorg/telegram/ui/Components/StickersAlert;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 2494
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/StickersAlert;->-$$Nest$fgetimportingStickersPaths(Lorg/telegram/ui/Components/StickersAlert;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->totalItems:I

    goto :goto_5

    .line 2496
    :cond_9
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    iget-object v0, v0, Lorg/telegram/ui/Components/StickersAlert;->stickerSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    if-eqz v0, :cond_a

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    :cond_a
    iput v2, p0, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->totalItems:I

    .line 2497
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    iget-object v0, v0, Lorg/telegram/ui/Components/StickersAlert;->stickerSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    if-eqz v0, :cond_b

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$StickerSet;->creator:Z

    if-eqz v2, :cond_b

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v2, 0x78

    if-ge v0, v2, :cond_b

    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    iget-object v0, v0, Lorg/telegram/ui/Components/StickersAlert;->stickerSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-boolean v2, v0, Lorg/telegram/tgnet/TLRPC$StickerSet;->masks:Z

    if-nez v2, :cond_b

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$StickerSet;->emojis:Z

    if-nez v0, :cond_b

    .line 2498
    iget v0, p0, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->totalItems:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->totalItems:I

    .line 2501
    :cond_b
    :goto_5
    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public notifyItemRemoved(I)V
    .locals 1

    .line 2506
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/StickersAlert;->-$$Nest$fgetimportingStickersPaths(Lorg/telegram/ui/Components/StickersAlert;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2507
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/StickersAlert;->-$$Nest$fgetimportingStickersPaths(Lorg/telegram/ui/Components/StickersAlert;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->totalItems:I

    .line 2509
    :cond_0
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 7

    .line 2416
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/StickersAlert;->-$$Nest$fgetstickerSetCovereds(Lorg/telegram/ui/Components/StickersAlert;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2417
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    goto/16 :goto_0

    .line 2427
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/StickersAlert;->-$$Nest$fgetstickerSetCovereds(Lorg/telegram/ui/Components/StickersAlert;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->cache:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;

    .line 2428
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;

    .line 2429
    invoke-virtual {p1, p2, v1}, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->setStickerSet(Lorg/telegram/tgnet/TLRPC$StickerSetCovered;Z)V

    return-void

    .line 2424
    :cond_1
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/EmptyCell;

    const/high16 p2, 0x42a40000    # 82.0f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/EmptyCell;->setHeight(I)V

    return-void

    .line 2419
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->cache:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$Document;

    .line 2420
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/StickerEmojiCell;

    .line 2421
    iget-object v2, p0, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->positionsToSets:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, v0, p2, v1}, Lorg/telegram/ui/Cells/StickerEmojiCell;->setSticker(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/Object;Z)V

    return-void

    .line 2432
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/StickersAlert;->-$$Nest$fgetimportingStickers(Lorg/telegram/ui/Components/StickersAlert;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 2433
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/StickerEmojiCell;

    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/StickersAlert;->-$$Nest$fgetimportingStickersPaths(Lorg/telegram/ui/Components/StickersAlert;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/messenger/SendMessagesHelper$ImportingSticker;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/StickerEmojiCell;->setSticker(Lorg/telegram/messenger/SendMessagesHelper$ImportingSticker;)V

    return-void

    .line 2435
    :cond_4
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_6

    .line 2436
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object v0, p1

    check-cast v0, Lorg/telegram/ui/Cells/StickerEmojiCell;

    .line 2437
    iget-object p1, p0, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    iget-object p1, p1, Lorg/telegram/ui/Components/StickersAlert;->stickerSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    if-nez p1, :cond_5

    goto :goto_0

    .line 2438
    :cond_5
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$Document;

    iget-object p1, p0, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    iget-object v3, p1, Lorg/telegram/ui/Components/StickersAlert;->stickerSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    invoke-static {p1}, Lorg/telegram/ui/Components/StickersAlert;->-$$Nest$fgetshowEmoji(Lorg/telegram/ui/Components/StickersAlert;)Z

    move-result v5

    iget-object p1, p0, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/StickersAlert;->-$$Nest$fgetisEditModeEnabled(Lorg/telegram/ui/Components/StickersAlert;)Z

    move-result v6

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/ui/Cells/StickerEmojiCell;->setSticker(Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/messenger/SendMessagesHelper$ImportingSticker;Ljava/lang/Object;Ljava/lang/String;ZZ)V

    .line 2439
    iget-object p1, v0, Lorg/telegram/ui/Cells/StickerEmojiCell;->editModeIcon:Landroid/widget/ImageView;

    new-instance p2, Lorg/telegram/ui/Components/StickersAlert$GridAdapter$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0, v0}, Lorg/telegram/ui/Components/StickersAlert$GridAdapter$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/StickersAlert$GridAdapter;Lorg/telegram/ui/Cells/StickerEmojiCell;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_6
    :goto_0
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 7

    if-eqz p2, :cond_3

    const/4 p1, 0x1

    if-eq p2, p1, :cond_2

    const/4 p1, 0x2

    if-eq p2, p1, :cond_1

    const/4 p1, 0x3

    if-eq p2, p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 2408
    :cond_0
    new-instance p1, Lorg/telegram/ui/Components/StickersAlert$AddStickerBtnView;

    iget-object p2, p0, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->context:Landroid/content/Context;

    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/StickersAlert;->access$3000(Lorg/telegram/ui/Components/StickersAlert;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lorg/telegram/ui/Components/StickersAlert$AddStickerBtnView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    goto :goto_0

    .line 2405
    :cond_1
    new-instance v1, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;

    iget-object v2, p0, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->context:Landroid/content/Context;

    iget-object p1, p0, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/StickersAlert;->access$2900(Lorg/telegram/ui/Components/StickersAlert;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v6

    const/16 v3, 0x8

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct/range {v1 .. v6}, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;-><init>(Landroid/content/Context;IZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    move-object p1, v1

    goto :goto_0

    .line 2402
    :cond_2
    new-instance p1, Lorg/telegram/ui/Cells/EmptyCell;

    iget-object p2, p0, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->context:Landroid/content/Context;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/EmptyCell;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 2393
    :cond_3
    new-instance p1, Lorg/telegram/ui/Components/StickersAlert$GridAdapter$1;

    iget-object p2, p0, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->context:Landroid/content/Context;

    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/StickersAlert;->access$2800(Lorg/telegram/ui/Components/StickersAlert;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p1, p0, p2, v1, v0}, Lorg/telegram/ui/Components/StickersAlert$GridAdapter$1;-><init>(Lorg/telegram/ui/Components/StickersAlert$GridAdapter;Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 2398
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/StickerEmojiCell;->getImageView()Lorg/telegram/messenger/ImageReceiver;

    move-result-object p2

    const/4 v0, 0x7

    invoke-virtual {p2, v0}, Lorg/telegram/messenger/ImageReceiver;->setLayerNum(I)V

    .line 2411
    :goto_0
    new-instance p2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public updateColors()V
    .locals 4

    .line 2513
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/StickersAlert;->-$$Nest$fgetstickerSetCovereds(Lorg/telegram/ui/Components/StickersAlert;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2514
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/StickersAlert;->-$$Nest$fgetgridView(Lorg/telegram/ui/Components/StickersAlert;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 2515
    iget-object v2, p0, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    invoke-static {v2}, Lorg/telegram/ui/Components/StickersAlert;->-$$Nest$fgetgridView(Lorg/telegram/ui/Components/StickersAlert;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2516
    instance-of v3, v2, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;

    if-eqz v3, :cond_0

    .line 2517
    check-cast v2, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;

    invoke-virtual {v2}, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->updateColors()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
