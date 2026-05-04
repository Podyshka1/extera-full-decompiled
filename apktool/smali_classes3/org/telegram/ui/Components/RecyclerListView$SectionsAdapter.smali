.class public abstract Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$FastScrollAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/RecyclerListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SectionsAdapter"
.end annotation


# instance fields
.field private count:I

.field private hashes:Ljava/util/ArrayList;

.field private sectionCache:Landroid/util/SparseIntArray;

.field private sectionCount:I

.field private sectionCountCache:Landroid/util/SparseIntArray;

.field private sectionPositionCache:Landroid/util/SparseIntArray;


# direct methods
.method static bridge synthetic -$$Nest$fgethashes(Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;)Ljava/util/ArrayList;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;->hashes:Ljava/util/ArrayList;

    return-object p0
.end method

.method public constructor <init>()V
    .locals 1

    .line 359
    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$FastScrollAdapter;-><init>()V

    .line 338
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;->hashes:Ljava/util/ArrayList;

    .line 360
    invoke-virtual {p0}, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;->cleanupCache()V

    return-void
.end method

.method private internalGetCountForSection(I)I
    .locals 2

    .line 400
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;->sectionCountCache:Landroid/util/SparseIntArray;

    const v1, 0x7fffffff

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    if-eq v0, v1, :cond_0

    return v0

    .line 404
    :cond_0
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;->getCountForSection(I)I

    move-result v0

    .line 405
    iget-object v1, p0, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;->sectionCountCache:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseIntArray;->put(II)V

    return v0
.end method

.method private internalGetSectionCount()I
    .locals 1

    .line 410
    iget v0, p0, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;->sectionCount:I

    if-ltz v0, :cond_0

    return v0

    .line 413
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;->getSectionCount()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;->sectionCount:I

    return v0
.end method


# virtual methods
.method public cleanupCache()V
    .locals 1

    .line 341
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;->sectionCache:Landroid/util/SparseIntArray;

    if-nez v0, :cond_0

    .line 342
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;->sectionCache:Landroid/util/SparseIntArray;

    .line 343
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;->sectionPositionCache:Landroid/util/SparseIntArray;

    .line 344
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;->sectionCountCache:Landroid/util/SparseIntArray;

    goto :goto_0

    .line 346
    :cond_0
    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 347
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;->sectionPositionCache:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 348
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;->sectionCountCache:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    :goto_0
    const/4 v0, -0x1

    .line 350
    iput v0, p0, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;->count:I

    .line 351
    iput v0, p0, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;->sectionCount:I

    return-void
.end method

.method public abstract getCountForSection(I)I
.end method

.method public getHash(II)I
    .locals 2

    const v0, -0xc1cc

    mul-int/2addr v0, p1

    .line 499
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;->getItem(II)Ljava/lang/Object;

    move-result-object p1

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object v0, p2, v1

    const/4 v0, 0x1

    aput-object p1, p2, v0

    invoke-static {p2}, Lj$/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1

    .line 387
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;->getSectionForPosition(I)I

    move-result v0

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;->getPositionInSectionForPosition(I)I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;->getItem(II)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public abstract getItem(II)Ljava/lang/Object;
.end method

.method public getItemCount()I
    .locals 4

    .line 376
    iget v0, p0, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;->count:I

    if-ltz v0, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 379
    iput v0, p0, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;->count:I

    .line 380
    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;->internalGetSectionCount()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_1

    .line 381
    iget v2, p0, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;->count:I

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;->internalGetCountForSection(I)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;->count:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 383
    :cond_1
    iget v0, p0, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;->count:I

    return v0
.end method

.method public final getItemViewType(I)I
    .locals 1

    .line 391
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;->getSectionForPosition(I)I

    move-result v0

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;->getPositionInSectionForPosition(I)I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;->getItemViewType(II)I

    move-result p1

    return p1
.end method

.method public abstract getItemViewType(II)I
.end method

.method public getPositionInSectionForPosition(I)I
    .locals 4

    .line 436
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;->sectionPositionCache:Landroid/util/SparseIntArray;

    const v1, 0x7fffffff

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    if-eq v0, v1, :cond_0

    return v0

    .line 441
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;->internalGetSectionCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_2

    .line 442
    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;->internalGetCountForSection(I)I

    move-result v3

    add-int/2addr v3, v2

    if-lt p1, v2, :cond_1

    if-ge p1, v3, :cond_1

    sub-int v0, p1, v2

    .line 446
    iget-object v1, p0, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;->sectionPositionCache:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseIntArray;->put(II)V

    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    move v2, v3

    goto :goto_0

    :cond_2
    const/4 p1, -0x1

    return p1
.end method

.method public abstract getSectionCount()I
.end method

.method public final getSectionForPosition(I)I
    .locals 4

    .line 418
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;->sectionCache:Landroid/util/SparseIntArray;

    const v1, 0x7fffffff

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    if-eq v0, v1, :cond_0

    return v0

    .line 423
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;->internalGetSectionCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_2

    .line 424
    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;->internalGetCountForSection(I)I

    move-result v3

    add-int/2addr v3, v2

    if-lt p1, v2, :cond_1

    if-ge p1, v3, :cond_1

    .line 427
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;->sectionCache:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->put(II)V

    return v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    move v2, v3

    goto :goto_0

    :cond_2
    const/4 p1, -0x1

    return p1
.end method

.method public abstract getSectionHeaderView(ILandroid/view/View;)Landroid/view/View;
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 2

    .line 370
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    .line 371
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;->getSectionForPosition(I)I

    move-result v1

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;->getPositionInSectionForPosition(I)I

    move-result v0

    invoke-virtual {p0, p1, v1, v0}, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;->isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;II)Z

    move-result p1

    return p1
.end method

.method public abstract isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;II)Z
.end method

.method public notifyDataSetChanged()V
    .locals 1

    const/4 v0, 0x0

    .line 365
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;->update(Z)V

    return-void
.end method

.method public notifySectionsChanged()V
    .locals 0

    .line 355
    invoke-virtual {p0}, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;->cleanupCache()V

    return-void
.end method

.method public abstract onBindViewHolder(IILandroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 1

    .line 396
    invoke-virtual {p0, p2}, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;->getSectionForPosition(I)I

    move-result v0

    invoke-virtual {p0, p2}, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;->getPositionInSectionForPosition(I)I

    move-result p2

    invoke-virtual {p0, v0, p2, p1}, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;->onBindViewHolder(IILandroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method public update(Z)V
    .locals 2

    .line 455
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;->hashes:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 456
    invoke-virtual {p0}, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;->updateHashes()V

    if-eqz p1, :cond_0

    .line 459
    new-instance p1, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter$1;

    invoke-direct {p1, p0, v0}, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter$1;-><init>(Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;Ljava/util/ArrayList;)V

    const/4 v0, 0x1

    invoke-static {p1, v0}, Landroidx/recyclerview/widget/DiffUtil;->calculateDiff(Landroidx/recyclerview/widget/DiffUtil$Callback;Z)Landroidx/recyclerview/widget/DiffUtil$DiffResult;

    move-result-object p1

    .line 479
    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->dispatchUpdatesTo(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void

    .line 481
    :cond_0
    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public updateHashes()V
    .locals 7

    .line 486
    invoke-virtual {p0}, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;->cleanupCache()V

    .line 488
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;->hashes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 490
    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;->internalGetSectionCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 491
    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;->internalGetCountForSection(I)I

    move-result v3

    move v4, v1

    :goto_1
    if-ge v4, v3, :cond_0

    .line 493
    iget-object v5, p0, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;->hashes:Ljava/util/ArrayList;

    invoke-virtual {p0, v2, v4}, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;->getHash(II)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
