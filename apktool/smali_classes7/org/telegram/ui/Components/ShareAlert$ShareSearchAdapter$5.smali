.class Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$5;
.super Lorg/telegram/ui/Adapters/DialogsSearchAdapter$CategoryAdapterRecycler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;Landroid/content/Context;IZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 0

    .line 3707
    iput-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$5;->this$1:Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;

    move-object p1, p0

    invoke-direct/range {p1 .. p6}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$CategoryAdapterRecycler;-><init>(Landroid/content/Context;IZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 8

    .line 3710
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/HintDialogCell;

    .line 3711
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$5;->this$1:Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;

    iget-object v0, v0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ShareAlert;->-$$Nest$fgetdarkTheme(Lorg/telegram/ui/Components/ShareAlert;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$5;->this$1:Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;

    iget-object v0, v0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    iget-boolean v0, v0, Lorg/telegram/ui/Components/ShareAlert;->forceDarkThemeForHint:Z

    if-eqz v0, :cond_1

    .line 3712
    :cond_0
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_nameText:I

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_inviteMembersBackground:I

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Cells/HintDialogCell;->setColors(II)V

    .line 3715
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$5;->this$1:Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;

    iget-object v0, v0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ShareAlert;->access$6600(Lorg/telegram/ui/Components/ShareAlert;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MediaDataController;->hints:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_topPeer;

    .line 3719
    iget-object v0, p2, Lorg/telegram/tgnet/TLRPC$TL_topPeer;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iget-wide v1, v0, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    const/4 v6, 0x0

    if-eqz v5, :cond_2

    .line 3721
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$5;->this$1:Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;

    iget-object v0, v0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ShareAlert;->access$6700(Lorg/telegram/ui/Components/ShareAlert;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$TL_topPeer;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iget-wide v3, p2, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v0, p2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p2

    move-object v7, v6

    move-object v6, p2

    move-object p2, v7

    goto :goto_0

    .line 3722
    :cond_2
    iget-wide v1, v0, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_3

    neg-long v1, v1

    .line 3724
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$5;->this$1:Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;

    iget-object v0, v0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ShareAlert;->access$6800(Lorg/telegram/ui/Components/ShareAlert;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$TL_topPeer;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iget-wide v3, p2, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v0, p2}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p2

    goto :goto_0

    .line 3725
    :cond_3
    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:J

    cmp-long v2, v0, v3

    if-eqz v2, :cond_4

    neg-long v1, v0

    .line 3727
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$5;->this$1:Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;

    iget-object v0, v0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ShareAlert;->access$6900(Lorg/telegram/ui/Components/ShareAlert;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$TL_topPeer;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iget-wide v3, p2, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v0, p2}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p2

    goto :goto_0

    :cond_4
    move-wide v1, v3

    move-object p2, v6

    .line 3729
    :goto_0
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/HintDialogCell;->getDialogId()J

    move-result-wide v3

    cmp-long v0, v1, v3

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v0, :cond_5

    move v0, v4

    goto :goto_1

    :cond_5
    move v0, v3

    .line 3730
    :goto_1
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    if-eqz v6, :cond_6

    .line 3733
    invoke-static {v6}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    :cond_6
    if-eqz p2, :cond_7

    .line 3735
    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    goto :goto_2

    .line 3734
    :cond_7
    const-string p2, ""

    .line 3737
    :goto_2
    invoke-virtual {p1, v1, v2, v4, p2}, Lorg/telegram/ui/Cells/HintDialogCell;->setDialog(JZLjava/lang/CharSequence;)V

    .line 3738
    iget-object p2, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$5;->this$1:Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;

    iget-object p2, p2, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    iget-object p2, p2, Lorg/telegram/ui/Components/ShareAlert;->selectedDialogs:Landroidx/collection/LongSparseArray;

    invoke-virtual {p2, v1, v2}, Landroidx/collection/LongSparseArray;->indexOfKey(J)I

    move-result p2

    if-ltz p2, :cond_8

    move v3, v4

    :cond_8
    invoke-virtual {p1, v3, v0}, Lorg/telegram/ui/Cells/HintDialogCell;->setChecked(ZZ)V

    return-void
.end method
