.class Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/SharedMediaLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SavedDialogsAdapter"
.end annotation


# instance fields
.field public attachedToRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

.field private final controller:Lorg/telegram/messenger/SavedMessagesController;

.field private final dialogs:Ljava/util/ArrayList;

.field public final itemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

.field private final mContext:Landroid/content/Context;

.field private notifyOrderUpdate:Ljava/lang/Runnable;

.field private final oldDialogs:Ljava/util/ArrayList;

.field private orderChanged:Z

.field public final selectedDialogs:Ljava/util/HashSet;

.field final synthetic this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

.field public final viewPool:Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;


# direct methods
.method public static synthetic $r8$lambda$Z5DztCyEPTCdVcF0ku9DA_lsu10(Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter;->lambda$new$0()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetdialogs(Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter;)Ljava/util/ArrayList;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter;->dialogs:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetnotifyOrderUpdate(Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter;)Ljava/lang/Runnable;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter;->notifyOrderUpdate:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputorderChanged(Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter;->orderChanged:Z

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/Components/SharedMediaLayout;Landroid/content/Context;)V
    .locals 2

    .line 9084
    iput-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    .line 8993
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter;->oldDialogs:Ljava/util/ArrayList;

    .line 8994
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter;->dialogs:Ljava/util/ArrayList;

    .line 8996
    new-instance v0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter;->notifyOrderUpdate:Ljava/lang/Runnable;

    .line 9010
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    invoke-direct {v0}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter;->viewPool:Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    .line 9012
    new-instance v0, Landroidx/recyclerview/widget/ItemTouchHelper;

    new-instance v1, Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter$1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter$1;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter;)V

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/ItemTouchHelper;-><init>(Landroidx/recyclerview/widget/ItemTouchHelper$Callback;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter;->itemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

    .line 9110
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter;->selectedDialogs:Ljava/util/HashSet;

    .line 9085
    iput-object p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter;->mContext:Landroid/content/Context;

    .line 9086
    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetprofileActivity(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/messenger/MessagesController;->getSavedMessagesController()Lorg/telegram/messenger/SavedMessagesController;

    move-result-object p2

    iput-object p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter;->controller:Lorg/telegram/messenger/SavedMessagesController;

    .line 9087
    invoke-virtual {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->includeSavedDialogs()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 9088
    invoke-virtual {p2, v0}, Lorg/telegram/messenger/SavedMessagesController;->loadDialogs(Z)V

    :cond_0
    const/4 p1, 0x1

    .line 9090
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    .line 9091
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter;->update(Z)V

    return-void
.end method

.method private synthetic lambda$new$0()V
    .locals 4

    .line 8997
    iget-boolean v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter;->orderChanged:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 9000
    iput-boolean v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter;->orderChanged:Z

    .line 9001
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 9002
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 9003
    iget-object v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;

    iget-boolean v2, v2, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->pinned:Z

    if-eqz v2, :cond_1

    .line 9004
    iget-object v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;

    iget-wide v2, v2, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->dialogId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 9007
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetprofileActivity(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getSavedMessagesController()Lorg/telegram/messenger/SavedMessagesController;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/SavedMessagesController;->updatePinnedOrder(Ljava/util/ArrayList;)Z

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 9214
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    if-ltz p1, :cond_1

    .line 9096
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 9097
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;

    iget-wide v0, p1, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->dialogId:J

    return-wide v0

    :cond_1
    :goto_0
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 0

    const/16 p1, 0xd

    return p1
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 8

    .line 9198
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v0, p1, Lorg/telegram/ui/Cells/DialogCell;

    if-nez v0, :cond_0

    return-void

    .line 9199
    :cond_0
    move-object v1, p1

    check-cast v1, Lorg/telegram/ui/Cells/DialogCell;

    .line 9200
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;

    .line 9201
    iget-wide v2, p1, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->dialogId:J

    iget-object v4, p1, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->message:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {p1}, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->getDate()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Lorg/telegram/ui/Cells/DialogCell;->setDialog(JLorg/telegram/messenger/MessageObject;IZZ)V

    const/4 v0, 0x1

    .line 9202
    iput-boolean v0, v1, Lorg/telegram/ui/Cells/DialogCell;->isSavedDialogCell:Z

    .line 9203
    iget-object v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter;->selectedDialogs:Ljava/util/HashSet;

    iget-wide v3, p1, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->dialogId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lorg/telegram/ui/Cells/DialogCell;->setChecked(ZZ)V

    add-int/2addr p2, v0

    .line 9204
    invoke-virtual {p0}, Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter;->getItemCount()I

    move-result p1

    if-ge p2, p1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    iput-boolean v0, v1, Lorg/telegram/ui/Cells/DialogCell;->useSeparator:Z

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 6

    .line 9174
    new-instance v0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter$2;

    iget-object v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v2, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter$2;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter;Lorg/telegram/ui/DialogsActivity;Landroid/content/Context;ZZ)V

    .line 9190
    iget-object p1, v1, Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Cells/DialogCell;->setDialogCellDelegate(Lorg/telegram/ui/Cells/DialogCell$DialogCellDelegate;)V

    const/4 p1, 0x1

    .line 9191
    iput-boolean p1, v0, Lorg/telegram/ui/Cells/DialogCell;->isSavedDialog:Z

    .line 9192
    iget-object p1, v1, Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {p1, p2}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$mgetThemedColor(Lorg/telegram/ui/Components/SharedMediaLayout;I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 9193
    new-instance p1, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p1, v0}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p1
.end method

.method public select(Landroid/view/View;)V
    .locals 12

    .line 9113
    instance-of v0, p1, Lorg/telegram/ui/Cells/DialogCell;

    if-nez v0, :cond_0

    goto :goto_2

    .line 9114
    :cond_0
    check-cast p1, Lorg/telegram/ui/Cells/DialogCell;

    .line 9115
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/DialogCell;->getDialogId()J

    move-result-wide v0

    const/4 v2, 0x0

    move v3, v2

    .line 9117
    :goto_0
    iget-object v4, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 9118
    iget-object v4, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;

    iget-wide v4, v4, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->dialogId:J

    cmp-long v4, v4, v0

    if-nez v4, :cond_1

    .line 9119
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_3

    :goto_2
    return-void

    .line 9125
    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter;->selectedDialogs:Ljava/util/HashSet;

    iget-wide v3, v0, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->dialogId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/16 v3, 0x8

    const/4 v4, 0x1

    if-eqz v1, :cond_4

    .line 9126
    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter;->selectedDialogs:Ljava/util/HashSet;

    iget-wide v5, v0, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->dialogId:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 9127
    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter;->selectedDialogs:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v1

    if-gtz v1, :cond_6

    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    iget-boolean v5, v1, Lorg/telegram/ui/Components/SharedMediaLayout;->isActionModeShowed:Z

    if-eqz v5, :cond_6

    .line 9128
    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/SharedMediaLayout;->showActionMode(Z)V

    goto :goto_3

    .line 9131
    :cond_4
    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter;->selectedDialogs:Ljava/util/HashSet;

    iget-wide v5, v0, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->dialogId:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 9132
    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter;->selectedDialogs:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v1

    if-lez v1, :cond_6

    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    iget-boolean v5, v1, Lorg/telegram/ui/Components/SharedMediaLayout;->isActionModeShowed:Z

    if-nez v5, :cond_6

    .line 9133
    invoke-virtual {v1, v4}, Lorg/telegram/ui/Components/SharedMediaLayout;->showActionMode(Z)V

    .line 9134
    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetgotoItem(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 9135
    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetgotoItem(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 9137
    :cond_5
    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetforwardItem(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 9138
    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetforwardItem(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 9142
    :cond_6
    :goto_3
    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetselectedMessagesCountTextView(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/Components/NumberTextView;

    move-result-object v1

    iget-object v5, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter;->selectedDialogs:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->size()I

    move-result v5

    invoke-virtual {v1, v5, v4}, Lorg/telegram/ui/Components/NumberTextView;->setNumber(IZ)V

    .line 9143
    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter;->selectedDialogs:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v1

    if-lez v1, :cond_7

    move v1, v4

    goto :goto_4

    :cond_7
    move v1, v2

    .line 9144
    :goto_4
    iget-object v5, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter;->selectedDialogs:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_8
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    move v8, v2

    .line 9145
    :goto_5
    iget-object v9, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v8, v9, :cond_a

    .line 9146
    iget-object v9, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;

    .line 9147
    iget-wide v10, v9, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->dialogId:J

    cmp-long v10, v10, v6

    if-nez v10, :cond_9

    .line 9148
    iget-boolean v6, v9, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->pinned:Z

    if-nez v6, :cond_a

    move v1, v2

    goto :goto_6

    :cond_9
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    :cond_a
    :goto_6
    if-nez v1, :cond_8

    .line 9156
    :cond_b
    iget-object v5, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetpinItem(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v5

    if-eqz v5, :cond_d

    .line 9157
    iget-object v5, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetpinItem(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v5

    if-eqz v1, :cond_c

    move v6, v3

    goto :goto_7

    :cond_c
    move v6, v2

    :goto_7
    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 9159
    :cond_d
    iget-object v5, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetunpinItem(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v5

    if-eqz v5, :cond_f

    .line 9160
    iget-object v5, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetunpinItem(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v5

    if-eqz v1, :cond_e

    goto :goto_8

    :cond_e
    move v2, v3

    :goto_8
    invoke-virtual {v5, v2}, Landroid/view/View;->setVisibility(I)V

    .line 9163
    :cond_f
    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter;->selectedDialogs:Ljava/util/HashSet;

    iget-wide v2, v0, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->dialogId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p1, v0, v4}, Lorg/telegram/ui/Cells/DialogCell;->setChecked(ZZ)V

    return-void
.end method

.method public unselectAll()V
    .locals 1

    .line 9168
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter;->selectedDialogs:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    return-void
.end method

.method public update(Z)V
    .locals 2

    .line 9101
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter;->oldDialogs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 9102
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter;->oldDialogs:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 9103
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 9104
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter;->dialogs:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter;->controller:Lorg/telegram/messenger/SavedMessagesController;

    iget-object v1, v1, Lorg/telegram/messenger/SavedMessagesController;->allDialogs:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    if-eqz p1, :cond_0

    .line 9106
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method
