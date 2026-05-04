.class Lorg/telegram/ui/DialogsActivity$19;
.super Lorg/telegram/ui/Adapters/DialogsAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/DialogsActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/DialogsActivity;

.field final synthetic val$viewPage:Lorg/telegram/ui/DialogsActivity$ViewPage;


# direct methods
.method constructor <init>(Lorg/telegram/ui/DialogsActivity;Lorg/telegram/ui/DialogsActivity;Landroid/content/Context;IIZLjava/util/ArrayList;ILorg/telegram/tgnet/TLRPC$RequestPeerType;Lorg/telegram/ui/DialogsActivity$ViewPage;)V
    .locals 0

    .line 4826
    iput-object p1, p0, Lorg/telegram/ui/DialogsActivity$19;->this$0:Lorg/telegram/ui/DialogsActivity;

    iput-object p10, p0, Lorg/telegram/ui/DialogsActivity$19;->val$viewPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-object p1, p0

    invoke-direct/range {p1 .. p9}, Lorg/telegram/ui/Adapters/DialogsAdapter;-><init>(Lorg/telegram/ui/DialogsActivity;Landroid/content/Context;IIZLjava/util/ArrayList;ILorg/telegram/tgnet/TLRPC$RequestPeerType;)V

    return-void
.end method


# virtual methods
.method public notifyDataSetChanged()V
    .locals 2

    .line 4829
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$19;->val$viewPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-virtual {p0}, Lorg/telegram/ui/Adapters/DialogsAdapter;->getItemCount()I

    move-result v1

    invoke-static {v0, v1}, Lorg/telegram/ui/DialogsActivity$ViewPage;->-$$Nest$fputlastItemsCount(Lorg/telegram/ui/DialogsActivity$ViewPage;I)V

    .line 4831
    :try_start_0
    invoke-super {p0}, Lorg/telegram/ui/Adapters/DialogsAdapter;->notifyDataSetChanged()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4833
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 4835
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$19;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetinitialDialogsType(Lorg/telegram/ui/DialogsActivity;)I

    move-result v0

    const/16 v1, 0xf

    if-ne v0, v1, :cond_1

    .line 4836
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$19;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    iget-boolean v1, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->isEmpty:Z

    if-eqz v1, :cond_0

    const/16 v1, 0x8

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method protected onArchiveSettingsClick()V
    .locals 2

    .line 4866
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$19;->this$0:Lorg/telegram/ui/DialogsActivity;

    new-instance v1, Lorg/telegram/ui/ArchiveSettingsActivity;

    invoke-direct {v1}, Lorg/telegram/ui/ArchiveSettingsActivity;-><init>()V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/DialogsActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method public onButtonClicked(Lorg/telegram/ui/Cells/DialogCell;)V
    .locals 9

    .line 4842
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/DialogCell;->getMessage()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4843
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$19;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getTopicsController()Lorg/telegram/messenger/TopicsController;

    move-result-object v0

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/DialogCell;->getDialogId()J

    move-result-wide v1

    neg-long v1, v1

    iget-object v3, p0, Lorg/telegram/ui/DialogsActivity$19;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity;->access$7000(Lorg/telegram/ui/DialogsActivity;)I

    move-result v3

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/DialogCell;->getMessage()Lorg/telegram/messenger/MessageObject;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Lorg/telegram/messenger/MessageObject;->getTopicId(ILorg/telegram/tgnet/TLRPC$Message;Z)J

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/telegram/messenger/TopicsController;->findTopic(JJ)Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4845
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$19;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetonlySelect(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4846
    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$19;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/DialogCell;->getDialogId()J

    move-result-wide v3

    iget p1, v0, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->id:I

    int-to-long v5, p1

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v8}, Lorg/telegram/ui/DialogsActivity;->didSelectResult(JJZZ)V

    return-void

    .line 4848
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$19;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/DialogCell;->getDialogId()J

    move-result-wide v2

    neg-long v2, v2

    const/4 p1, 0x0

    invoke-static {v1, v2, v3, v0, p1}, Lorg/telegram/ui/Components/Forum/ForumUtilities;->openTopic(Lorg/telegram/ui/ActionBar/BaseFragment;JLorg/telegram/tgnet/TLRPC$TL_forumTopic;I)V

    :cond_1
    return-void
.end method

.method public onButtonLongPress(Lorg/telegram/ui/Cells/DialogCell;)V
    .locals 8

    .line 4856
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$19;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$19;->val$viewPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    iget-object v1, v1, Lorg/telegram/ui/DialogsActivity$ViewPage;->listView:Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v3

    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$19;->val$viewPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity$ViewPage;->-$$Nest$fgetdialogsType(Lorg/telegram/ui/DialogsActivity$ViewPage;)I

    move-result v6

    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$19;->val$viewPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity$ViewPage;->-$$Nest$fgetdialogsAdapter(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/Adapters/DialogsAdapter;

    move-result-object v7

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p1

    invoke-static/range {v0 .. v7}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$monItemLongClick(Lorg/telegram/ui/DialogsActivity;Lorg/telegram/ui/Components/RecyclerListView;Landroid/view/View;IFFILandroidx/recyclerview/widget/RecyclerView$Adapter;)Z

    return-void
.end method

.method public onCreateGroupForThisClick()V
    .locals 1

    .line 4861
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$19;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$mcreateGroupForThis(Lorg/telegram/ui/DialogsActivity;)V

    return-void
.end method

.method protected onOpenBot(Lorg/telegram/tgnet/TLRPC$User;)V
    .locals 2

    .line 4875
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$19;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$7100(Lorg/telegram/ui/DialogsActivity;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/telegram/messenger/MessagesController;->openApp(Lorg/telegram/tgnet/TLRPC$User;I)V

    return-void
.end method

.method protected showOpenBotButton()Z
    .locals 1

    .line 4871
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$19;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetinitialDialogsType(Lorg/telegram/ui/DialogsActivity;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
