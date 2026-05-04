.class Lorg/telegram/ui/ChannelColorActivity$PeerColorPicker$2;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChannelColorActivity$PeerColorPicker;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChannelColorActivity$PeerColorPicker;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$currentAccount:I

.field final synthetic val$resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChannelColorActivity$PeerColorPicker;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;I)V
    .locals 0

    .line 2197
    iput-object p1, p0, Lorg/telegram/ui/ChannelColorActivity$PeerColorPicker$2;->this$0:Lorg/telegram/ui/ChannelColorActivity$PeerColorPicker;

    iput-object p2, p0, Lorg/telegram/ui/ChannelColorActivity$PeerColorPicker$2;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lorg/telegram/ui/ChannelColorActivity$PeerColorPicker$2;->val$resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    iput p4, p0, Lorg/telegram/ui/ChannelColorActivity$PeerColorPicker$2;->val$currentAccount:I

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 2222
    iget v0, p0, Lorg/telegram/ui/ChannelColorActivity$PeerColorPicker$2;->val$currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->peerColors:Lorg/telegram/messenger/MessagesController$PeerColors;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2223
    :cond_0
    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$PeerColors;->colors:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 2

    .line 2211
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/ChannelColorActivity$PeerColorPicker$ColorCell;

    .line 2212
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    iget-object v1, p0, Lorg/telegram/ui/ChannelColorActivity$PeerColorPicker$2;->val$resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ChannelColorActivity$PeerColorPicker$ColorCell;->setBackgroundColor(I)V

    .line 2213
    iget-object v0, p0, Lorg/telegram/ui/ChannelColorActivity$PeerColorPicker$2;->this$0:Lorg/telegram/ui/ChannelColorActivity$PeerColorPicker;

    invoke-static {v0}, Lorg/telegram/ui/ChannelColorActivity$PeerColorPicker;->-$$Nest$fgetselectedPosition(Lorg/telegram/ui/ChannelColorActivity$PeerColorPicker;)I

    move-result v0

    const/4 v1, 0x0

    if-ne p2, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/ChannelColorActivity$PeerColorPicker$ColorCell;->setSelected(ZZ)V

    .line 2214
    iget v0, p0, Lorg/telegram/ui/ChannelColorActivity$PeerColorPicker$2;->val$currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->peerColors:Lorg/telegram/messenger/MessagesController$PeerColors;

    if-eqz v0, :cond_1

    if-ltz p2, :cond_1

    .line 2215
    iget-object v1, v0, Lorg/telegram/messenger/MessagesController$PeerColors;->colors:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p2, v1, :cond_1

    .line 2216
    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$PeerColors;->colors:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/messenger/MessagesController$PeerColor;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ChannelColorActivity$PeerColorPicker$ColorCell;->set(Lorg/telegram/messenger/MessagesController$PeerColor;)V

    :cond_1
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    .line 2206
    new-instance p1, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    new-instance p2, Lorg/telegram/ui/ChannelColorActivity$PeerColorPicker$ColorCell;

    iget-object v0, p0, Lorg/telegram/ui/ChannelColorActivity$PeerColorPicker$2;->this$0:Lorg/telegram/ui/ChannelColorActivity$PeerColorPicker;

    iget-object v1, p0, Lorg/telegram/ui/ChannelColorActivity$PeerColorPicker$2;->val$context:Landroid/content/Context;

    invoke-direct {p2, v0, v1}, Lorg/telegram/ui/ChannelColorActivity$PeerColorPicker$ColorCell;-><init>(Lorg/telegram/ui/ChannelColorActivity$PeerColorPicker;Landroid/content/Context;)V

    invoke-direct {p1, p2}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p1
.end method
