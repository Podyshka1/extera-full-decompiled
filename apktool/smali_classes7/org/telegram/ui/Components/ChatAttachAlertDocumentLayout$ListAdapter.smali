.class Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListAdapter"
.end annotation


# instance fields
.field private history:Ljava/util/ArrayList;

.field private items:Ljava/util/ArrayList;

.field private mContext:Landroid/content/Context;

.field private recentItems:Ljava/util/ArrayList;

.field final synthetic this$0:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;


# direct methods
.method static bridge synthetic -$$Nest$fgethistory(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;)Ljava/util/ArrayList;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;->history:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetitems(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;)Ljava/util/ArrayList;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;->items:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetrecentItems(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;)Ljava/util/ArrayList;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;->recentItems:Ljava/util/ArrayList;

    return-object p0
.end method

.method public constructor <init>(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;Landroid/content/Context;)V
    .locals 0

    .line 1398
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    .line 1391
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;->items:Ljava/util/ArrayList;

    .line 1392
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;->history:Ljava/util/ArrayList;

    .line 1393
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;->recentItems:Ljava/util/ArrayList;

    .line 1399
    iput-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getItem(I)Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListItem;
    .locals 2

    .line 1417
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 1419
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListItem;

    return-object p1

    .line 1420
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;->history:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;->recentItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    if-eq p1, v0, :cond_1

    add-int/lit8 v0, v0, 0x1

    if-eq p1, v0, :cond_1

    .line 1421
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    sub-int/2addr p1, v0

    .line 1422
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;->recentItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 1423
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;->recentItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListItem;

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemCount()I
    .locals 2

    .line 1409
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1410
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;->history:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;->recentItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1411
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;->recentItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getItemViewType(I)I
    .locals 2

    .line 1431
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;->getItemCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x3

    return p1

    .line 1434
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne p1, v0, :cond_1

    const/4 p1, 0x2

    return p1

    :cond_1
    add-int/2addr v0, v1

    if-ne p1, v0, :cond_2

    const/4 p1, 0x0

    return p1

    :cond_2
    return v1
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 1

    .line 1404
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    return v0

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .line 1501
    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 1502
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->-$$Nest$mupdateEmptyView(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;)V

    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 9

    .line 1472
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    return-void

    .line 1482
    :cond_0
    invoke-virtual {p0, p2}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;->getItem(I)Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListItem;

    move-result-object v0

    .line 1483
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object v2, p1

    check-cast v2, Lorg/telegram/ui/Cells/SharedDocumentCell;

    .line 1484
    iget v7, v0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListItem;->icon:I

    const/4 p1, 0x0

    if-eqz v7, :cond_2

    .line 1485
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListItem;->title:Ljava/lang/String;

    iget-object v4, v0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListItem;->subtitle:Ljava/lang/String;

    iget-object v5, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v1

    if-eq p2, v5, :cond_1

    move v8, v1

    goto :goto_0

    :cond_1
    move v8, p1

    :goto_0
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v2 .. v8}, Lorg/telegram/ui/Cells/SharedDocumentCell;->setTextAndValueAndTypeAndThumb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    goto :goto_1

    .line 1487
    :cond_2
    iget-object p2, v0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListItem;->ext:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p2

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListItem;->ext:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-virtual {p2, p1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 1488
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListItem;->title:Ljava/lang/String;

    iget-object v4, v0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListItem;->subtitle:Ljava/lang/String;

    iget-object v6, v0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListItem;->thumb:Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v8}, Lorg/telegram/ui/Cells/SharedDocumentCell;->setTextAndValueAndTypeAndThumb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 1490
    :goto_1
    iget-object p2, v0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListItem;->file:Ljava/io/File;

    if-eqz p2, :cond_3

    .line 1491
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->-$$Nest$fgetselectedFiles(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;)Ljava/util/HashMap;

    move-result-object p1

    iget-object p2, v0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListItem;->file:Ljava/io/File;

    invoke-virtual {p2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;

    invoke-static {p2}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->-$$Nest$fgetscrolling(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;)Z

    move-result p2

    xor-int/2addr p2, v1

    invoke-virtual {v2, p1, p2}, Lorg/telegram/ui/Cells/SharedDocumentCell;->setChecked(ZZ)V

    return-void

    .line 1493
    :cond_3
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;

    invoke-static {p2}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->-$$Nest$fgetscrolling(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;)Z

    move-result p2

    xor-int/2addr p2, v1

    invoke-virtual {v2, p1, p2}, Lorg/telegram/ui/Cells/SharedDocumentCell;->setChecked(ZZ)V

    return-void

    .line 1474
    :cond_4
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/HeaderCell;

    .line 1475
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;

    invoke-static {p2}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->-$$Nest$fgetsortByName(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 1476
    sget p2, Lorg/telegram/messenger/R$string;->RecentFilesAZ:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 1478
    :cond_5
    sget p2, Lorg/telegram/messenger/R$string;->RecentFiles:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    if-eqz p2, :cond_2

    const/4 p1, 0x1

    if-eq p2, p1, :cond_1

    const/4 p1, 0x2

    if-eq p2, p1, :cond_0

    .line 1463
    new-instance p1, Landroid/view/View;

    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const p2, -0x8100

    .line 1464
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 1455
    :cond_0
    new-instance p1, Lorg/telegram/ui/Cells/ShadowSectionCell;

    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/ShadowSectionCell;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 1452
    :cond_1
    new-instance p2, Lorg/telegram/ui/Cells/SharedDocumentCell;

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;

    iget-object v1, v1, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {p2, v0, p1, v1}, Lorg/telegram/ui/Cells/SharedDocumentCell;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    move-object p1, p2

    goto :goto_0

    .line 1449
    :cond_2
    new-instance p1, Lorg/telegram/ui/Cells/HeaderCell;

    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {p1, p2, v0}, Lorg/telegram/ui/Cells/HeaderCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 1467
    :goto_0
    new-instance p2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p2
.end method
