.class Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout$ListAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;Landroid/content/Context;)V
    .locals 0

    .line 556
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    .line 557
    iput-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout$ListAdapter;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 2

    .line 562
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->-$$Nest$fgetaudioEntries(Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->-$$Nest$fgetaudioEntries(Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 2

    .line 620
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout$ListAdapter;->getItemCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x2

    return p1

    :cond_0
    if-nez p1, :cond_1

    return v1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 0

    .line 572
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .line 631
    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 632
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->-$$Nest$mupdateEmptyView(Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;)V

    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 5

    .line 607
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    if-nez v0, :cond_2

    add-int/lit8 p2, p2, -0x1

    .line 609
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->-$$Nest$fgetaudioEntries(Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MediaController$AudioEntry;

    .line 611
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/SharedAudioCell;

    .line 612
    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 613
    iget-object v1, v0, Lorg/telegram/messenger/MediaController$AudioEntry;->messageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->-$$Nest$fgetaudioEntries(Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    const/4 v4, 0x0

    if-eq p2, v2, :cond_0

    move p2, v3

    goto :goto_0

    :cond_0
    move p2, v4

    :goto_0
    invoke-virtual {p1, v1, p2}, Lorg/telegram/ui/Cells/SharedAudioCell;->setMessageObject(Lorg/telegram/messenger/MessageObject;Z)V

    .line 614
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;

    invoke-static {p2}, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->-$$Nest$fgetselectedAudios(Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;)Landroid/util/LongSparseArray;

    move-result-object p2

    iget-wide v0, v0, Lorg/telegram/messenger/MediaController$AudioEntry;->id:J

    invoke-virtual {p2, v0, v1}, Landroid/util/LongSparseArray;->indexOfKey(J)I

    move-result p2

    if-ltz p2, :cond_1

    goto :goto_1

    :cond_1
    move v3, v4

    :goto_1
    invoke-virtual {p1, v3, v4}, Lorg/telegram/ui/Cells/SharedAudioCell;->setChecked(ZZ)V

    :cond_2
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 3

    const p1, -0x8100

    .line 599
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p2, :cond_1

    if-eq p2, v0, :cond_0

    .line 598
    new-instance p2, Landroid/view/View;

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 599
    invoke-virtual {p2, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 593
    :cond_0
    new-instance p2, Landroid/view/View;

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 594
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/high16 v1, 0x42600000    # 56.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    const/4 v2, -0x1

    invoke-direct {v0, v2, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 595
    invoke-virtual {p2, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 580
    :cond_1
    new-instance p2, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout$ListAdapter$1;

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout$ListAdapter;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;

    iget-object v1, v1, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {p2, p0, p1, v1}, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout$ListAdapter$1;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout$ListAdapter;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 589
    invoke-virtual {p2, v0}, Lorg/telegram/ui/Cells/SharedAudioCell;->setCheckForButtonPress(Z)V

    .line 602
    :goto_0
    new-instance p1, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p1
.end method
