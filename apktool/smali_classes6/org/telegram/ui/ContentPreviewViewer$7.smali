.class Lorg/telegram/ui/ContentPreviewViewer$7;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ContentPreviewViewer;->createMyStickerPacksListView()Lorg/telegram/ui/Components/RecyclerListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ContentPreviewViewer;

.field final synthetic val$stickerSetCoveredList:Ljava/util/List;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ContentPreviewViewer;Ljava/util/List;)V
    .locals 0

    .line 2139
    iput-object p1, p0, Lorg/telegram/ui/ContentPreviewViewer$7;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    iput-object p2, p0, Lorg/telegram/ui/ContentPreviewViewer$7;->val$stickerSetCoveredList:Ljava/util/List;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 2162
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer$7;->val$stickerSetCoveredList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 1

    .line 2156
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/ContentPreviewViewer$StickerPackNameView;

    .line 2157
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer$7;->val$stickerSetCoveredList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ContentPreviewViewer$StickerPackNameView;->bind(Lorg/telegram/tgnet/TLRPC$StickerSetCovered;)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    .line 2149
    new-instance p2, Lorg/telegram/ui/ContentPreviewViewer$StickerPackNameView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer$7;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v0}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetresourcesProvider(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v0

    invoke-direct {p2, p1, v0}, Lorg/telegram/ui/ContentPreviewViewer$StickerPackNameView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 2150
    new-instance p1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/high16 v0, 0x42400000    # 48.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    const/4 v1, -0x2

    invoke-direct {p1, v1, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2151
    new-instance p1, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p1
.end method
