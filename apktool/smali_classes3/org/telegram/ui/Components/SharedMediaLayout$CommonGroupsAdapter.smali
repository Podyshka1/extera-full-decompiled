.class Lorg/telegram/ui/Components/SharedMediaLayout$CommonGroupsAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/SharedMediaLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CommonGroupsAdapter"
.end annotation


# instance fields
.field private chats:Ljava/util/ArrayList;

.field private endReached:Z

.field private firstLoaded:Z

.field private loading:Z

.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lorg/telegram/ui/Components/SharedMediaLayout;


# direct methods
.method public static synthetic $r8$lambda$RngUuOCFVQMEfSI6a6CIpzQAlgg(Lorg/telegram/ui/Components/SharedMediaLayout$CommonGroupsAdapter;ILorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/SharedMediaLayout$CommonGroupsAdapter;->lambda$getChats$1(ILorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zJeW8FJUhjM6DYp1hem7fvC2Kv0(Lorg/telegram/ui/Components/SharedMediaLayout$CommonGroupsAdapter;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/SharedMediaLayout$CommonGroupsAdapter;->lambda$getChats$0(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetchats(Lorg/telegram/ui/Components/SharedMediaLayout$CommonGroupsAdapter;)Ljava/util/ArrayList;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$CommonGroupsAdapter;->chats:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetendReached(Lorg/telegram/ui/Components/SharedMediaLayout$CommonGroupsAdapter;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$CommonGroupsAdapter;->endReached:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetloading(Lorg/telegram/ui/Components/SharedMediaLayout$CommonGroupsAdapter;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$CommonGroupsAdapter;->loading:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$mgetChats(Lorg/telegram/ui/Components/SharedMediaLayout$CommonGroupsAdapter;JI)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/SharedMediaLayout$CommonGroupsAdapter;->getChats(JI)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/Components/SharedMediaLayout;Landroid/content/Context;)V
    .locals 0

    .line 9684
    iput-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$CommonGroupsAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    .line 9679
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$CommonGroupsAdapter;->chats:Ljava/util/ArrayList;

    .line 9685
    iput-object p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$CommonGroupsAdapter;->mContext:Landroid/content/Context;

    return-void
.end method

.method private getChats(JI)V
    .locals 4

    .line 9689
    iget-boolean v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$CommonGroupsAdapter;->loading:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 9692
    :cond_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getCommonChats;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_getCommonChats;-><init>()V

    .line 9694
    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$CommonGroupsAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetdialog_id(Lorg/telegram/ui/Components/SharedMediaLayout;)J

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 9695
    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$CommonGroupsAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetprofileActivity(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$CommonGroupsAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v2}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetdialog_id(Lorg/telegram/ui/Components/SharedMediaLayout;)J

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/telegram/messenger/DialogObject;->getEncryptedChatId(J)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/MessagesController;->getEncryptedChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    move-result-object v1

    .line 9696
    iget-wide v1, v1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->user_id:J

    goto :goto_0

    .line 9698
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$CommonGroupsAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetdialog_id(Lorg/telegram/ui/Components/SharedMediaLayout;)J

    move-result-wide v1

    .line 9700
    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout$CommonGroupsAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetprofileActivity(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Lorg/telegram/messenger/MessagesController;->getInputUser(J)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getCommonChats;->user_id:Lorg/telegram/tgnet/TLRPC$InputUser;

    .line 9701
    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$TL_inputUserEmpty;

    if-eqz v1, :cond_2

    :goto_1
    return-void

    .line 9704
    :cond_2
    iput p3, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getCommonChats;->limit:I

    .line 9705
    iput-wide p1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getCommonChats;->max_id:J

    const/4 p1, 0x1

    .line 9706
    iput-boolean p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$CommonGroupsAdapter;->loading:Z

    .line 9707
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 9708
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$CommonGroupsAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetprofileActivity(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    new-instance p2, Lorg/telegram/ui/Components/SharedMediaLayout$CommonGroupsAdapter$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0, p3}, Lorg/telegram/ui/Components/SharedMediaLayout$CommonGroupsAdapter$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout$CommonGroupsAdapter;I)V

    invoke-virtual {p1, v0, p2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    move-result p1

    .line 9733
    iget-object p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$CommonGroupsAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p2}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetprofileActivity(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p2

    iget-object p3, p0, Lorg/telegram/ui/Components/SharedMediaLayout$CommonGroupsAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p3}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetprofileActivity(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p3

    invoke-virtual {p3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getClassGuid()I

    move-result p3

    invoke-virtual {p2, p1, p3}, Lorg/telegram/tgnet/ConnectionsManager;->bindRequestToGuid(II)V

    return-void
.end method

.method private synthetic lambda$getChats$0(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;I)V
    .locals 4

    .line 9709
    invoke-virtual {p0}, Lorg/telegram/ui/Components/SharedMediaLayout$CommonGroupsAdapter;->getItemCount()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_2

    .line 9711
    check-cast p2, Lorg/telegram/tgnet/TLRPC$messages_Chats;

    .line 9712
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$CommonGroupsAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetprofileActivity(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-object v3, p2, Lorg/telegram/tgnet/TLRPC$messages_Chats;->chats:Ljava/util/ArrayList;

    invoke-virtual {p1, v3, v2}, Lorg/telegram/messenger/MessagesController;->putChats(Ljava/util/ArrayList;Z)V

    .line 9713
    iget-object p1, p2, Lorg/telegram/tgnet/TLRPC$messages_Chats;->chats:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p2, Lorg/telegram/tgnet/TLRPC$messages_Chats;->chats:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-eq p1, p3, :cond_0

    goto :goto_0

    :cond_0
    move p1, v2

    goto :goto_1

    :cond_1
    :goto_0
    move p1, v1

    :goto_1
    iput-boolean p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$CommonGroupsAdapter;->endReached:Z

    .line 9714
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$CommonGroupsAdapter;->chats:Ljava/util/ArrayList;

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$messages_Chats;->chats:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    .line 9716
    :cond_2
    iput-boolean v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$CommonGroupsAdapter;->endReached:Z

    :goto_2
    move p1, v2

    .line 9719
    :goto_3
    iget-object p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$CommonGroupsAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p2}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetmediaPages(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object p2

    array-length p2, p2

    if-ge p1, p2, :cond_5

    .line 9720
    iget-object p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$CommonGroupsAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p2}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetmediaPages(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object p2

    aget-object p2, p2, p1

    iget p2, p2, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->selectedType:I

    const/4 p3, 0x6

    if-ne p2, p3, :cond_4

    .line 9721
    iget-object p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$CommonGroupsAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p2}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetmediaPages(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object p2

    aget-object p2, p2, p1

    invoke-static {p2}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->-$$Nest$fgetlistView(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 9722
    iget-object p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$CommonGroupsAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p2}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetmediaPages(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object p2

    aget-object p2, p2, p1

    invoke-static {p2}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->-$$Nest$fgetlistView(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object p2

    .line 9723
    iget-boolean p3, p0, Lorg/telegram/ui/Components/SharedMediaLayout$CommonGroupsAdapter;->firstLoaded:Z

    if-nez p3, :cond_3

    if-nez v0, :cond_4

    .line 9724
    :cond_3
    iget-object p3, p0, Lorg/telegram/ui/Components/SharedMediaLayout$CommonGroupsAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    const/4 v3, 0x0

    invoke-static {p3, p2, v2, v3}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$manimateItemsEnter(Lorg/telegram/ui/Components/SharedMediaLayout;Lorg/telegram/ui/Components/RecyclerListView;ILandroid/util/SparseBooleanArray;)V

    :cond_4
    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    .line 9729
    :cond_5
    iput-boolean v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$CommonGroupsAdapter;->loading:Z

    .line 9730
    iput-boolean v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$CommonGroupsAdapter;->firstLoaded:Z

    .line 9731
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method private synthetic lambda$getChats$1(ILorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    .line 9708
    new-instance v0, Lorg/telegram/ui/Components/SharedMediaLayout$CommonGroupsAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p3, p2, p1}, Lorg/telegram/ui/Components/SharedMediaLayout$CommonGroupsAdapter$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout$CommonGroupsAdapter;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;I)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 3

    .line 9743
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$CommonGroupsAdapter;->chats:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$CommonGroupsAdapter;->loading:Z

    if-nez v0, :cond_0

    return v1

    .line 9746
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$CommonGroupsAdapter;->chats:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 9747
    iget-object v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$CommonGroupsAdapter;->chats:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 9748
    iget-boolean v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$CommonGroupsAdapter;->endReached:Z

    if-nez v2, :cond_1

    add-int/2addr v0, v1

    :cond_1
    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 9792
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$CommonGroupsAdapter;->chats:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$CommonGroupsAdapter;->loading:Z

    if-nez v0, :cond_0

    const/16 p1, 0xf

    return p1

    .line 9795
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$CommonGroupsAdapter;->chats:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    const/16 p1, 0xe

    return p1

    :cond_1
    const/16 p1, 0x10

    return p1
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 1

    .line 9738
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$CommonGroupsAdapter;->chats:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 8

    .line 9781
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/16 v1, 0xe

    if-ne v0, v1, :cond_3

    .line 9782
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v0, p1, Lorg/telegram/ui/Cells/ProfileSearchCell;

    if-nez v0, :cond_0

    goto :goto_1

    .line 9783
    :cond_0
    move-object v1, p1

    check-cast v1, Lorg/telegram/ui/Cells/ProfileSearchCell;

    .line 9784
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$CommonGroupsAdapter;->chats:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lorg/telegram/tgnet/TLRPC$Chat;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 9785
    invoke-virtual/range {v1 .. v7}, Lorg/telegram/ui/Cells/ProfileSearchCell;->setData(Ljava/lang/Object;Lorg/telegram/tgnet/TLRPC$EncryptedChat;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)V

    .line 9786
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$CommonGroupsAdapter;->chats:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    if-ne p2, p1, :cond_2

    iget-boolean p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$CommonGroupsAdapter;->endReached:Z

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :cond_2
    :goto_0
    iput-boolean v0, v1, Lorg/telegram/ui/Cells/ProfileSearchCell;->useSeparator:Z

    :cond_3
    :goto_1
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 4

    const/16 p1, 0xe

    const/4 v0, -0x1

    if-eq p2, p1, :cond_1

    const/16 p1, 0xf

    if-eq p2, p1, :cond_0

    .line 9768
    new-instance p1, Lorg/telegram/ui/Components/FlickerLoadingView;

    iget-object p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$CommonGroupsAdapter;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$CommonGroupsAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetresourcesProvider(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v1

    invoke-direct {p1, p2, v1}, Lorg/telegram/ui/Components/FlickerLoadingView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/4 p2, 0x1

    .line 9769
    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/FlickerLoadingView;->setIsSingleCell(Z)V

    const/4 v1, 0x0

    .line 9770
    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/FlickerLoadingView;->showDate(Z)V

    .line 9771
    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/FlickerLoadingView;->setViewType(I)V

    goto :goto_0

    .line 9763
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$CommonGroupsAdapter;->mContext:Landroid/content/Context;

    iget-object p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$CommonGroupsAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p2}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetdialog_id(Lorg/telegram/ui/Components/SharedMediaLayout;)J

    move-result-wide v1

    iget-object p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$CommonGroupsAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p2}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetresourcesProvider(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object p2

    const/4 v3, 0x6

    invoke-static {p1, v3, v1, v2, p2}, Lorg/telegram/ui/Components/SharedMediaLayout;->createEmptyStubView(Landroid/content/Context;IJLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Landroid/view/View;

    move-result-object p1

    .line 9764
    new-instance p2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    invoke-direct {p2, v0, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 9765
    new-instance p2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p2

    .line 9760
    :cond_1
    new-instance p1, Lorg/telegram/ui/Cells/ProfileSearchCell;

    iget-object p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$CommonGroupsAdapter;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$CommonGroupsAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetresourcesProvider(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v1

    invoke-direct {p1, p2, v1}, Lorg/telegram/ui/Cells/ProfileSearchCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 9775
    :goto_0
    new-instance p2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {p2, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 9776
    new-instance p2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p2
.end method
