.class Lorg/telegram/ui/FilteredSearchView$SharedDocumentsAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/FilteredSearchView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SharedDocumentsAdapter"
.end annotation


# instance fields
.field private currentType:I

.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lorg/telegram/ui/FilteredSearchView;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/FilteredSearchView;Landroid/content/Context;I)V
    .locals 0

    .line 1381
    iput-object p1, p0, Lorg/telegram/ui/FilteredSearchView$SharedDocumentsAdapter;->this$0:Lorg/telegram/ui/FilteredSearchView;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;-><init>()V

    .line 1382
    iput-object p2, p0, Lorg/telegram/ui/FilteredSearchView$SharedDocumentsAdapter;->mContext:Landroid/content/Context;

    .line 1383
    iput p3, p0, Lorg/telegram/ui/FilteredSearchView$SharedDocumentsAdapter;->currentType:I

    return-void
.end method


# virtual methods
.method public getCountForSection(I)I
    .locals 3

    .line 1406
    iget-object v0, p0, Lorg/telegram/ui/FilteredSearchView$SharedDocumentsAdapter;->this$0:Lorg/telegram/ui/FilteredSearchView;

    iget-object v0, v0, Lorg/telegram/ui/FilteredSearchView;->sections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge p1, v0, :cond_1

    .line 1407
    iget-object v0, p0, Lorg/telegram/ui/FilteredSearchView$SharedDocumentsAdapter;->this$0:Lorg/telegram/ui/FilteredSearchView;

    iget-object v2, v0, Lorg/telegram/ui/FilteredSearchView;->sectionArrays:Ljava/util/HashMap;

    iget-object v0, v0, Lorg/telegram/ui/FilteredSearchView;->sections:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez p1, :cond_0

    const/4 v1, 0x0

    :cond_0
    add-int/2addr v0, v1

    return v0

    :cond_1
    return v1
.end method

.method public getItem(II)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemViewType(II)I
    .locals 2

    .line 1544
    iget-object v0, p0, Lorg/telegram/ui/FilteredSearchView$SharedDocumentsAdapter;->this$0:Lorg/telegram/ui/FilteredSearchView;

    iget-object v0, v0, Lorg/telegram/ui/FilteredSearchView;->sections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge p1, v0, :cond_3

    if-eqz p1, :cond_0

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1548
    :cond_0
    iget p1, p0, Lorg/telegram/ui/FilteredSearchView$SharedDocumentsAdapter;->currentType:I

    if-eq p1, v1, :cond_2

    const/4 p2, 0x4

    if-ne p1, p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x3

    return p1

    :cond_3
    return v1
.end method

.method public getLetter(I)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getPositionForScrollProgress(Lorg/telegram/ui/Components/RecyclerListView;F[I)V
    .locals 0

    const/4 p1, 0x0

    .line 1565
    aput p1, p3, p1

    const/4 p2, 0x1

    .line 1566
    aput p1, p3, p2

    return-void
.end method

.method public getSectionCount()I
    .locals 3

    .line 1393
    iget-object v0, p0, Lorg/telegram/ui/FilteredSearchView$SharedDocumentsAdapter;->this$0:Lorg/telegram/ui/FilteredSearchView;

    iget-object v0, v0, Lorg/telegram/ui/FilteredSearchView;->sections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 1396
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/FilteredSearchView$SharedDocumentsAdapter;->this$0:Lorg/telegram/ui/FilteredSearchView;

    iget-object v0, v0, Lorg/telegram/ui/FilteredSearchView;->sections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v2, p0, Lorg/telegram/ui/FilteredSearchView$SharedDocumentsAdapter;->this$0:Lorg/telegram/ui/FilteredSearchView;

    iget-object v2, v2, Lorg/telegram/ui/FilteredSearchView;->sections:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lorg/telegram/ui/FilteredSearchView$SharedDocumentsAdapter;->this$0:Lorg/telegram/ui/FilteredSearchView;

    invoke-static {v2}, Lorg/telegram/ui/FilteredSearchView;->-$$Nest$fgetendReached(Lorg/telegram/ui/FilteredSearchView;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    :cond_2
    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public getSectionHeaderView(ILandroid/view/View;)Landroid/view/View;
    .locals 2

    if-nez p2, :cond_0

    .line 1415
    new-instance p2, Lorg/telegram/ui/Cells/GraySectionCell;

    iget-object v0, p0, Lorg/telegram/ui/FilteredSearchView$SharedDocumentsAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, v0}, Lorg/telegram/ui/Cells/GraySectionCell;-><init>(Landroid/content/Context;)V

    .line 1416
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_graySection:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    const v1, -0xd000001

    and-int/2addr v0, v1

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 1419
    invoke-virtual {p2, p1}, Landroid/view/View;->setAlpha(F)V

    return-object p2

    .line 1422
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/FilteredSearchView$SharedDocumentsAdapter;->this$0:Lorg/telegram/ui/FilteredSearchView;

    iget-object v0, v0, Lorg/telegram/ui/FilteredSearchView;->sections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_2

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1423
    invoke-virtual {p2, v0}, Landroid/view/View;->setAlpha(F)V

    .line 1424
    iget-object v0, p0, Lorg/telegram/ui/FilteredSearchView$SharedDocumentsAdapter;->this$0:Lorg/telegram/ui/FilteredSearchView;

    iget-object v0, v0, Lorg/telegram/ui/FilteredSearchView;->sections:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 1425
    iget-object v0, p0, Lorg/telegram/ui/FilteredSearchView$SharedDocumentsAdapter;->this$0:Lorg/telegram/ui/FilteredSearchView;

    iget-object v0, v0, Lorg/telegram/ui/FilteredSearchView;->sectionArrays:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 1426
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/MessageObject;

    .line 1427
    iget-object p1, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget p1, p1, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    int-to-long v0, p1

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->formatSectionDate(J)Ljava/lang/String;

    move-result-object p1

    .line 1428
    move-object v0, p2

    check-cast v0, Lorg/telegram/ui/Cells/GraySectionCell;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Cells/GraySectionCell;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-object p2
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;II)Z
    .locals 0

    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public onBindViewHolder(IILandroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 6

    .line 1482
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_b

    .line 1483
    iget-object v0, p0, Lorg/telegram/ui/FilteredSearchView$SharedDocumentsAdapter;->this$0:Lorg/telegram/ui/FilteredSearchView;

    iget-object v0, v0, Lorg/telegram/ui/FilteredSearchView;->sections:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1484
    iget-object v1, p0, Lorg/telegram/ui/FilteredSearchView$SharedDocumentsAdapter;->this$0:Lorg/telegram/ui/FilteredSearchView;

    iget-object v1, v1, Lorg/telegram/ui/FilteredSearchView;->sectionArrays:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 1485
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_a

    const/4 v3, 0x1

    if-eq v1, v3, :cond_5

    const/4 v4, 0x3

    if-eq v1, v4, :cond_0

    goto/16 :goto_2

    :cond_0
    if-eqz p1, :cond_1

    add-int/lit8 p2, p2, -0x1

    .line 1519
    :cond_1
    iget-object p3, p3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p3, Lorg/telegram/ui/Cells/SharedAudioCell;

    .line 1520
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/MessageObject;

    .line 1521
    invoke-virtual {p3}, Lorg/telegram/ui/Cells/SharedAudioCell;->getMessage()Lorg/telegram/messenger/MessageObject;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {p3}, Lorg/telegram/ui/Cells/SharedAudioCell;->getMessage()Lorg/telegram/messenger/MessageObject;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v5

    if-ne v4, v5, :cond_2

    move v4, v3

    goto :goto_0

    :cond_2
    move v4, v2

    .line 1522
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v3

    if-ne p2, v0, :cond_3

    iget-object p2, p0, Lorg/telegram/ui/FilteredSearchView$SharedDocumentsAdapter;->this$0:Lorg/telegram/ui/FilteredSearchView;

    iget-object p2, p2, Lorg/telegram/ui/FilteredSearchView;->sections:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    sub-int/2addr p2, v3

    if-ne p1, p2, :cond_4

    iget-object p1, p0, Lorg/telegram/ui/FilteredSearchView$SharedDocumentsAdapter;->this$0:Lorg/telegram/ui/FilteredSearchView;

    invoke-static {p1}, Lorg/telegram/ui/FilteredSearchView;->-$$Nest$fgetisLoading(Lorg/telegram/ui/FilteredSearchView;)Z

    move-result p1

    if-eqz p1, :cond_4

    :cond_3
    move v2, v3

    :cond_4
    invoke-virtual {p3, v1, v2}, Lorg/telegram/ui/Cells/SharedAudioCell;->setMessageObject(Lorg/telegram/messenger/MessageObject;Z)V

    .line 1523
    invoke-virtual {p3}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance p2, Lorg/telegram/ui/FilteredSearchView$SharedDocumentsAdapter$3;

    invoke-direct {p2, p0, p3, v1, v4}, Lorg/telegram/ui/FilteredSearchView$SharedDocumentsAdapter$3;-><init>(Lorg/telegram/ui/FilteredSearchView$SharedDocumentsAdapter;Lorg/telegram/ui/Cells/SharedAudioCell;Lorg/telegram/messenger/MessageObject;Z)V

    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void

    :cond_5
    if-eqz p1, :cond_6

    add-int/lit8 p2, p2, -0x1

    .line 1496
    :cond_6
    iget-object p3, p3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p3, Lorg/telegram/ui/Cells/SharedDocumentCell;

    .line 1497
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/MessageObject;

    .line 1498
    invoke-virtual {p3}, Lorg/telegram/ui/Cells/SharedDocumentCell;->getMessage()Lorg/telegram/messenger/MessageObject;

    move-result-object v4

    if-eqz v4, :cond_7

    invoke-virtual {p3}, Lorg/telegram/ui/Cells/SharedDocumentCell;->getMessage()Lorg/telegram/messenger/MessageObject;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v5

    if-ne v4, v5, :cond_7

    move v4, v3

    goto :goto_1

    :cond_7
    move v4, v2

    .line 1499
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v3

    if-ne p2, v0, :cond_8

    iget-object p2, p0, Lorg/telegram/ui/FilteredSearchView$SharedDocumentsAdapter;->this$0:Lorg/telegram/ui/FilteredSearchView;

    iget-object p2, p2, Lorg/telegram/ui/FilteredSearchView;->sections:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    sub-int/2addr p2, v3

    if-ne p1, p2, :cond_9

    iget-object p1, p0, Lorg/telegram/ui/FilteredSearchView$SharedDocumentsAdapter;->this$0:Lorg/telegram/ui/FilteredSearchView;

    invoke-static {p1}, Lorg/telegram/ui/FilteredSearchView;->-$$Nest$fgetisLoading(Lorg/telegram/ui/FilteredSearchView;)Z

    move-result p1

    if-eqz p1, :cond_9

    :cond_8
    move v2, v3

    :cond_9
    invoke-virtual {p3, v1, v2}, Lorg/telegram/ui/Cells/SharedDocumentCell;->setDocument(Lorg/telegram/messenger/MessageObject;Z)V

    .line 1500
    invoke-virtual {p3}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance p2, Lorg/telegram/ui/FilteredSearchView$SharedDocumentsAdapter$2;

    invoke-direct {p2, p0, p3, v1, v4}, Lorg/telegram/ui/FilteredSearchView$SharedDocumentsAdapter$2;-><init>(Lorg/telegram/ui/FilteredSearchView$SharedDocumentsAdapter;Lorg/telegram/ui/Cells/SharedDocumentCell;Lorg/telegram/messenger/MessageObject;Z)V

    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void

    .line 1487
    :cond_a
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/MessageObject;

    .line 1488
    iget-object p1, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget p1, p1, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    int-to-long p1, p1

    invoke-static {p1, p2}, Lorg/telegram/messenger/LocaleController;->formatSectionDate(J)Ljava/lang/String;

    move-result-object p1

    .line 1489
    iget-object p2, p3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p2, Lorg/telegram/ui/Cells/GraySectionCell;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Cells/GraySectionCell;->setText(Ljava/lang/CharSequence;)V

    :cond_b
    :goto_2
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 3

    if-eqz p2, :cond_4

    const/4 p1, 0x2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_3

    if-eq p2, p1, :cond_0

    .line 1456
    new-instance p1, Lorg/telegram/ui/FilteredSearchView$SharedDocumentsAdapter$1;

    iget-object p2, p0, Lorg/telegram/ui/FilteredSearchView$SharedDocumentsAdapter;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-direct {p1, p0, p2, v0, v1}, Lorg/telegram/ui/FilteredSearchView$SharedDocumentsAdapter$1;-><init>(Lorg/telegram/ui/FilteredSearchView$SharedDocumentsAdapter;Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    goto :goto_3

    .line 1445
    :cond_0
    new-instance p2, Lorg/telegram/ui/Components/FlickerLoadingView;

    iget-object v1, p0, Lorg/telegram/ui/FilteredSearchView$SharedDocumentsAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, v1}, Lorg/telegram/ui/Components/FlickerLoadingView;-><init>(Landroid/content/Context;)V

    .line 1446
    iget v1, p0, Lorg/telegram/ui/FilteredSearchView$SharedDocumentsAdapter;->currentType:I

    const/4 v2, 0x4

    if-eq v1, p1, :cond_2

    if-ne v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x3

    .line 1449
    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/FlickerLoadingView;->setViewType(I)V

    goto :goto_1

    .line 1447
    :cond_2
    :goto_0
    invoke-virtual {p2, v2}, Lorg/telegram/ui/Components/FlickerLoadingView;->setViewType(I)V

    .line 1451
    :goto_1
    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/FlickerLoadingView;->setIsSingleCell(Z)V

    :goto_2
    move-object p1, p2

    goto :goto_3

    .line 1442
    :cond_3
    new-instance p2, Lorg/telegram/ui/Cells/SharedDocumentCell;

    iget-object v0, p0, Lorg/telegram/ui/FilteredSearchView$SharedDocumentsAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, v0, p1}, Lorg/telegram/ui/Cells/SharedDocumentCell;-><init>(Landroid/content/Context;I)V

    goto :goto_2

    .line 1439
    :cond_4
    new-instance p1, Lorg/telegram/ui/Cells/GraySectionCell;

    iget-object p2, p0, Lorg/telegram/ui/FilteredSearchView$SharedDocumentsAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/GraySectionCell;-><init>(Landroid/content/Context;)V

    .line 1476
    :goto_3
    new-instance p2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-direct {p2, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1477
    new-instance p2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p2
.end method
