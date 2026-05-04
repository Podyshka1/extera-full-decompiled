.class Lorg/telegram/ui/ChatActivity$35;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChatActivity;

.field final synthetic val$messagesSearchLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChatActivity;Landroidx/recyclerview/widget/LinearLayoutManager;)V
    .locals 0

    .line 7737
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$35;->this$0:Lorg/telegram/ui/ChatActivity;

    iput-object p2, p0, Lorg/telegram/ui/ChatActivity$35;->val$messagesSearchLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 4

    .line 7740
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getScrollState()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    .line 7741
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$35;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object p1, p1, Lorg/telegram/ui/ChatActivity;->contentView:Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    .line 7743
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$35;->val$messagesSearchLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result p1

    const/4 p3, -0x1

    const/4 v0, 0x0

    if-ne p1, p3, :cond_1

    move p3, v0

    goto :goto_0

    :cond_1
    move p3, p1

    :goto_0
    if-lez p3, :cond_3

    .line 7745
    iget-object p3, p0, Lorg/telegram/ui/ChatActivity$35;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p3}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetmessagesSearchAdapter(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Adapters/MessagesSearchAdapter;

    move-result-object p3

    iget p3, p3, Lorg/telegram/ui/Adapters/MessagesSearchAdapter;->loadedCount:I

    add-int/lit8 p3, p3, -0x5

    if-le p1, p3, :cond_3

    .line 7746
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$35;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatMode(Lorg/telegram/ui/ChatActivity;)I

    move-result p1

    const/4 p3, 0x7

    if-ne p1, p3, :cond_2

    .line 7747
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$35;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetloading(Lorg/telegram/ui/ChatActivity;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$35;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetendReached(Lorg/telegram/ui/ChatActivity;)[Z

    move-result-object p1

    aget-boolean p1, p1, v0

    if-nez p1, :cond_3

    .line 7748
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$35;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1, p2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fputloading(Lorg/telegram/ui/ChatActivity;Z)V

    .line 7749
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$35;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetwaitingForLoad(Lorg/telegram/ui/ChatActivity;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$35;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetlastLoadIndex(Lorg/telegram/ui/ChatActivity;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7750
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$35;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$5200(Lorg/telegram/ui/ChatActivity;)I

    move-result p1

    invoke-static {p1}, Lorg/telegram/messenger/HashtagSearchController;->getInstance(I)Lorg/telegram/messenger/HashtagSearchController;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$35;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetsearchingHashtag(Lorg/telegram/ui/ChatActivity;)Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lorg/telegram/ui/ChatActivity$35;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p3}, Lorg/telegram/ui/ChatActivity;->access$5100(Lorg/telegram/ui/ChatActivity;)I

    move-result p3

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$35;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetsearchType(Lorg/telegram/ui/ChatActivity;)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$35;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetlastLoadIndex(Lorg/telegram/ui/ChatActivity;)I

    move-result v2

    add-int/lit8 v3, v2, 0x1

    invoke-static {v1, v3}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fputlastLoadIndex(Lorg/telegram/ui/ChatActivity;I)V

    invoke-virtual {p1, p2, p3, v0, v2}, Lorg/telegram/messenger/HashtagSearchController;->searchHashtag(Ljava/lang/String;III)V

    return-void

    .line 7753
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$35;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMediaDataController()Lorg/telegram/messenger/MediaDataController;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/MediaDataController;->loadMoreSearchMessages(Z)V

    :cond_3
    return-void
.end method
