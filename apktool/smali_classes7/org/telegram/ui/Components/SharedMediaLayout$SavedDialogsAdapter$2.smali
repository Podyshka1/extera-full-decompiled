.class Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter$2;
.super Lorg/telegram/ui/Cells/DialogCell;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter;Lorg/telegram/ui/DialogsActivity;Landroid/content/Context;ZZ)V
    .locals 0

    .line 9174
    iput-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter$2;->this$1:Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter;

    invoke-direct {p0, p2, p3, p4, p5}, Lorg/telegram/ui/Cells/DialogCell;-><init>(Lorg/telegram/ui/DialogsActivity;Landroid/content/Context;ZZ)V

    return-void
.end method


# virtual methods
.method public getIsPinned()Z
    .locals 2

    .line 9181
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter$2;->this$1:Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter;

    iget-object v0, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter;->attachedToRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter$2;->this$1:Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter;

    if-ne v0, v1, :cond_0

    .line 9182
    iget-object v0, v1, Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter;->attachedToRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 9183
    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter$2;->this$1:Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter;

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter;->-$$Nest$fgetdialogs(Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 9184
    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter$2;->this$1:Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter;

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter;->-$$Nest$fgetdialogs(Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;

    iget-boolean v0, v0, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->pinned:Z

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isForumCell()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
