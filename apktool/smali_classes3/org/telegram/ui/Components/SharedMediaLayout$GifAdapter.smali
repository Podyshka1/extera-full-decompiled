.class Lorg/telegram/ui/Components/SharedMediaLayout$GifAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/SharedMediaLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GifAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lorg/telegram/ui/Components/SharedMediaLayout;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Components/SharedMediaLayout;Landroid/content/Context;)V
    .locals 0

    .line 8910
    iput-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$GifAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    .line 8911
    iput-object p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$GifAdapter;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 2

    .line 8924
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$GifAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetsharedMediaData(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    move-result-object v0

    const/4 v1, 0x5

    aget-object v0, v0, v1

    iget-object v0, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->messages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$GifAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetsharedMediaData(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    move-result-object v0

    aget-object v0, v0, v1

    iget-boolean v0, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->loading:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 8927
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$GifAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetsharedMediaData(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    move-result-object v0

    aget-object v0, v0, v1

    iget-object v0, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->messages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 8937
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$GifAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetsharedMediaData(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    move-result-object p1

    const/4 v0, 0x5

    aget-object p1, p1, v0

    iget-object p1, p1, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->messages:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$GifAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetsharedMediaData(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    move-result-object p1

    aget-object p1, p1, v0

    iget-boolean p1, p1, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->loading:Z

    if-nez p1, :cond_0

    const/16 p1, 0xb

    return p1

    :cond_0
    const/16 p1, 0xc

    return p1
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 1

    .line 8916
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$GifAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetsharedMediaData(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    move-result-object p1

    const/4 v0, 0x5

    aget-object p1, p1, v0

    iget-object p1, p1, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->messages:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$GifAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetsharedMediaData(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    move-result-object p1

    aget-object p1, p1, v0

    iget-boolean p1, p1, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->loading:Z

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 8

    .line 8957
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_4

    .line 8958
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$GifAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetsharedMediaData(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    move-result-object v0

    const/4 v1, 0x5

    aget-object v0, v0, v1

    iget-object v0, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->messages:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/messenger/MessageObject;

    .line 8959
    invoke-virtual {p2}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 8961
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v1, p1, Lorg/telegram/ui/Cells/ContextLinkCell;

    if-nez v1, :cond_0

    goto :goto_1

    .line 8962
    :cond_0
    check-cast p1, Lorg/telegram/ui/Cells/ContextLinkCell;

    .line 8963
    iget-object v1, p2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    const/4 v2, 0x0

    invoke-virtual {p1, v0, p2, v1, v2}, Lorg/telegram/ui/Cells/ContextLinkCell;->setGif(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/Object;IZ)V

    .line 8964
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$GifAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    iget-boolean v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->isActionModeShowed:Z

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    .line 8965
    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetselectedFiles(Lorg/telegram/ui/Components/SharedMediaLayout;)[Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {p2}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v4

    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$GifAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetdialog_id(Lorg/telegram/ui/Components/SharedMediaLayout;)J

    move-result-wide v6

    cmp-long v1, v4, v6

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    aget-object v0, v0, v1

    invoke-virtual {p2}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result p2

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result p2

    if-ltz p2, :cond_2

    move v2, v3

    :cond_2
    iget-object p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$GifAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p2}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetscrolling(Lorg/telegram/ui/Components/SharedMediaLayout;)Z

    move-result p2

    xor-int/2addr p2, v3

    invoke-virtual {p1, v2, p2}, Lorg/telegram/ui/Cells/ContextLinkCell;->setChecked(ZZ)V

    return-void

    .line 8967
    :cond_3
    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetscrolling(Lorg/telegram/ui/Components/SharedMediaLayout;)Z

    move-result p2

    xor-int/2addr p2, v3

    invoke-virtual {p1, v2, p2}, Lorg/telegram/ui/Cells/ContextLinkCell;->setChecked(ZZ)V

    :cond_4
    :goto_1
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 3

    const/16 p1, 0xb

    if-ne p2, p1, :cond_0

    .line 8946
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$GifAdapter;->mContext:Landroid/content/Context;

    iget-object p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$GifAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p2}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetdialog_id(Lorg/telegram/ui/Components/SharedMediaLayout;)J

    move-result-wide v0

    iget-object p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$GifAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p2}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetresourcesProvider(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object p2

    const/4 v2, 0x5

    invoke-static {p1, v2, v0, v1, p2}, Lorg/telegram/ui/Components/SharedMediaLayout;->createEmptyStubView(Landroid/content/Context;IJLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Landroid/view/View;

    move-result-object p1

    .line 8947
    new-instance p2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p2, v0, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 8948
    new-instance p2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p2

    .line 8950
    :cond_0
    new-instance p1, Lorg/telegram/ui/Cells/ContextLinkCell;

    iget-object p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$GifAdapter;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$GifAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetresourcesProvider(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p1, p2, v1, v0}, Lorg/telegram/ui/Cells/ContextLinkCell;-><init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 8951
    invoke-virtual {p1, v1}, Lorg/telegram/ui/Cells/ContextLinkCell;->setCanPreviewGif(Z)V

    .line 8952
    new-instance p2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 3

    .line 8975
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v0, p1, Lorg/telegram/ui/Cells/ContextLinkCell;

    if-eqz v0, :cond_1

    .line 8976
    check-cast p1, Lorg/telegram/ui/Cells/ContextLinkCell;

    .line 8977
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ContextLinkCell;->getPhotoImage()Lorg/telegram/messenger/ImageReceiver;

    move-result-object p1

    .line 8978
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$GifAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetmediaPages(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget v0, v0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->selectedType:I

    const/4 v2, 0x5

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    .line 8979
    invoke-virtual {p1, v0}, Lorg/telegram/messenger/ImageReceiver;->setAllowStartAnimation(Z)V

    .line 8980
    invoke-virtual {p1}, Lorg/telegram/messenger/ImageReceiver;->startAnimation()V

    return-void

    .line 8982
    :cond_0
    invoke-virtual {p1, v1}, Lorg/telegram/messenger/ImageReceiver;->setAllowStartAnimation(Z)V

    .line 8983
    invoke-virtual {p1}, Lorg/telegram/messenger/ImageReceiver;->stopAnimation()V

    :cond_1
    return-void
.end method
