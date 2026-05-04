.class Lorg/telegram/ui/Components/StickersArchiveAlert$ListAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/StickersArchiveAlert;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListAdapter"
.end annotation


# instance fields
.field context:Landroid/content/Context;

.field final synthetic this$0:Lorg/telegram/ui/Components/StickersArchiveAlert;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Components/StickersArchiveAlert;Landroid/content/Context;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lorg/telegram/ui/Components/StickersArchiveAlert$ListAdapter;->this$0:Lorg/telegram/ui/Components/StickersArchiveAlert;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    .line 96
    iput-object p2, p0, Lorg/telegram/ui/Components/StickersArchiveAlert$ListAdapter;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 101
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersArchiveAlert$ListAdapter;->this$0:Lorg/telegram/ui/Components/StickersArchiveAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/StickersArchiveAlert;->-$$Nest$fgetstickerSets(Lorg/telegram/ui/Components/StickersArchiveAlert;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 3

    .line 118
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/ArchivedStickerSetCell;

    iget-object v0, p0, Lorg/telegram/ui/Components/StickersArchiveAlert$ListAdapter;->this$0:Lorg/telegram/ui/Components/StickersArchiveAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/StickersArchiveAlert;->-$$Nest$fgetstickerSets(Lorg/telegram/ui/Components/StickersArchiveAlert;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;

    iget-object v1, p0, Lorg/telegram/ui/Components/StickersArchiveAlert$ListAdapter;->this$0:Lorg/telegram/ui/Components/StickersArchiveAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/StickersArchiveAlert;->-$$Nest$fgetstickerSets(Lorg/telegram/ui/Components/StickersArchiveAlert;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-eq p2, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p1, v0, v2}, Lorg/telegram/ui/Cells/ArchivedStickerSetCell;->setStickersSet(Lorg/telegram/tgnet/TLRPC$StickerSetCovered;Z)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    .line 111
    new-instance p1, Lorg/telegram/ui/Cells/ArchivedStickerSetCell;

    iget-object p2, p0, Lorg/telegram/ui/Components/StickersArchiveAlert$ListAdapter;->context:Landroid/content/Context;

    const/4 v0, 0x0

    invoke-direct {p1, p2, v0}, Lorg/telegram/ui/Cells/ArchivedStickerSetCell;-><init>(Landroid/content/Context;Z)V

    .line 112
    new-instance p2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/high16 v0, 0x42a40000    # 82.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    const/4 v1, -0x1

    invoke-direct {p2, v1, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 113
    new-instance p2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p2
.end method
