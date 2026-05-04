.class Lorg/telegram/ui/ChatEditTypeActivity$UsernamesListView$Adapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ChatEditTypeActivity$UsernamesListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Adapter"
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ChatEditTypeActivity$UsernamesListView;


# direct methods
.method private constructor <init>(Lorg/telegram/ui/ChatEditTypeActivity$UsernamesListView;)V
    .locals 0

    .line 986
    iput-object p1, p0, Lorg/telegram/ui/ChatEditTypeActivity$UsernamesListView$Adapter;->this$1:Lorg/telegram/ui/ChatEditTypeActivity$UsernamesListView;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/ui/ChatEditTypeActivity$UsernamesListView;Lorg/telegram/ui/ChatEditTypeActivity-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatEditTypeActivity$UsernamesListView$Adapter;-><init>(Lorg/telegram/ui/ChatEditTypeActivity$UsernamesListView;)V

    return-void
.end method

.method private swapListElements(Ljava/util/List;II)V
    .locals 2

    .line 1010
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_username;

    .line 1011
    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_username;

    invoke-interface {p1, p2, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1012
    invoke-interface {p1, p3, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 1089
    iget-object v0, p0, Lorg/telegram/ui/ChatEditTypeActivity$UsernamesListView$Adapter;->this$1:Lorg/telegram/ui/ChatEditTypeActivity$UsernamesListView;

    iget-object v0, v0, Lorg/telegram/ui/ChatEditTypeActivity$UsernamesListView;->this$0:Lorg/telegram/ui/ChatEditTypeActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatEditTypeActivity;->-$$Nest$fgetusernames(Lorg/telegram/ui/ChatEditTypeActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1080
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChatEditTypeActivity$UsernamesListView$Adapter;->this$1:Lorg/telegram/ui/ChatEditTypeActivity$UsernamesListView;

    iget-object v0, v0, Lorg/telegram/ui/ChatEditTypeActivity$UsernamesListView;->this$0:Lorg/telegram/ui/ChatEditTypeActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatEditTypeActivity;->-$$Nest$fgetusernames(Lorg/telegram/ui/ChatEditTypeActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt p1, v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x2

    return p1
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 1

    .line 1094
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    return v0

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public moveElement(II)V
    .locals 3

    add-int/lit8 v0, p1, -0x1

    add-int/lit8 v1, p2, -0x1

    .line 1018
    iget-object v2, p0, Lorg/telegram/ui/ChatEditTypeActivity$UsernamesListView$Adapter;->this$1:Lorg/telegram/ui/ChatEditTypeActivity$UsernamesListView;

    iget-object v2, v2, Lorg/telegram/ui/ChatEditTypeActivity$UsernamesListView;->this$0:Lorg/telegram/ui/ChatEditTypeActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatEditTypeActivity;->-$$Nest$fgetusernames(Lorg/telegram/ui/ChatEditTypeActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/ChatEditTypeActivity$UsernamesListView$Adapter;->this$1:Lorg/telegram/ui/ChatEditTypeActivity$UsernamesListView;

    iget-object v2, v2, Lorg/telegram/ui/ChatEditTypeActivity$UsernamesListView;->this$0:Lorg/telegram/ui/ChatEditTypeActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatEditTypeActivity;->-$$Nest$fgetusernames(Lorg/telegram/ui/ChatEditTypeActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_0

    goto :goto_1

    .line 1022
    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/ChatEditTypeActivity$UsernamesListView$Adapter;->this$1:Lorg/telegram/ui/ChatEditTypeActivity$UsernamesListView;

    iget-object v2, v2, Lorg/telegram/ui/ChatEditTypeActivity$UsernamesListView;->this$0:Lorg/telegram/ui/ChatEditTypeActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatEditTypeActivity;->-$$Nest$fgetusernames(Lorg/telegram/ui/ChatEditTypeActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_username;

    .line 1023
    iget-object v2, p0, Lorg/telegram/ui/ChatEditTypeActivity$UsernamesListView$Adapter;->this$1:Lorg/telegram/ui/ChatEditTypeActivity$UsernamesListView;

    iget-object v2, v2, Lorg/telegram/ui/ChatEditTypeActivity$UsernamesListView;->this$0:Lorg/telegram/ui/ChatEditTypeActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatEditTypeActivity;->-$$Nest$fgetusernames(Lorg/telegram/ui/ChatEditTypeActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1025
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemMoved(II)V

    const/4 p1, 0x0

    .line 1027
    :goto_0
    iget-object p2, p0, Lorg/telegram/ui/ChatEditTypeActivity$UsernamesListView$Adapter;->this$1:Lorg/telegram/ui/ChatEditTypeActivity$UsernamesListView;

    iget-object p2, p2, Lorg/telegram/ui/ChatEditTypeActivity$UsernamesListView;->this$0:Lorg/telegram/ui/ChatEditTypeActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatEditTypeActivity;->-$$Nest$fgetusernames(Lorg/telegram/ui/ChatEditTypeActivity;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge p1, p2, :cond_1

    add-int/lit8 p1, p1, 0x1

    .line 1028
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 5

    .line 1054
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    if-eqz v0, :cond_5

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 p2, 0x2

    if-eq v0, p2, :cond_0

    goto :goto_1

    .line 1070
    :cond_0
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p2, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    sget v0, Lorg/telegram/messenger/R$string;->UsernamesChannelHelp:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    .line 1071
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    iget-object p2, p0, Lorg/telegram/ui/ChatEditTypeActivity$UsernamesListView$Adapter;->this$1:Lorg/telegram/ui/ChatEditTypeActivity$UsernamesListView;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    sget v0, Lorg/telegram/messenger/R$drawable;->greydivider_bottom:I

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    invoke-static {p2, v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawableByKey(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 1060
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ChatEditTypeActivity$UsernamesListView$Adapter;->this$1:Lorg/telegram/ui/ChatEditTypeActivity$UsernamesListView;

    iget-object v0, v0, Lorg/telegram/ui/ChatEditTypeActivity$UsernamesListView;->this$0:Lorg/telegram/ui/ChatEditTypeActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatEditTypeActivity;->-$$Nest$fgetusernames(Lorg/telegram/ui/ChatEditTypeActivity;)Ljava/util/ArrayList;

    move-result-object v0

    add-int/lit8 v2, p2, -0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_username;

    .line 1061
    iget-object v2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v2, Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;

    iget-boolean v2, v2, Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;->editable:Z

    if-eqz v2, :cond_2

    .line 1062
    iget-object v2, p0, Lorg/telegram/ui/ChatEditTypeActivity$UsernamesListView$Adapter;->this$1:Lorg/telegram/ui/ChatEditTypeActivity$UsernamesListView;

    iget-object v2, v2, Lorg/telegram/ui/ChatEditTypeActivity$UsernamesListView;->this$0:Lorg/telegram/ui/ChatEditTypeActivity;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lorg/telegram/ui/ChatEditTypeActivity;->-$$Nest$fputeditableUsernameCell(Lorg/telegram/ui/ChatEditTypeActivity;Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;)V

    .line 1064
    :cond_2
    iget-object v2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v2, Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;

    iget-object v3, p0, Lorg/telegram/ui/ChatEditTypeActivity$UsernamesListView$Adapter;->this$1:Lorg/telegram/ui/ChatEditTypeActivity$UsernamesListView;

    iget-object v3, v3, Lorg/telegram/ui/ChatEditTypeActivity$UsernamesListView;->this$0:Lorg/telegram/ui/ChatEditTypeActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatEditTypeActivity;->-$$Nest$fgetusernames(Lorg/telegram/ui/ChatEditTypeActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    if-ge p2, v3, :cond_3

    goto :goto_0

    :cond_3
    move v1, v4

    :goto_0
    invoke-virtual {v2, v0, v1, v4}, Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;->set(Lorg/telegram/tgnet/TLRPC$TL_username;ZZ)V

    if-eqz v0, :cond_4

    .line 1065
    iget-boolean p2, v0, Lorg/telegram/tgnet/TLRPC$TL_username;->editable:Z

    if-eqz p2, :cond_4

    .line 1066
    iget-object p2, p0, Lorg/telegram/ui/ChatEditTypeActivity$UsernamesListView$Adapter;->this$1:Lorg/telegram/ui/ChatEditTypeActivity$UsernamesListView;

    iget-object p2, p2, Lorg/telegram/ui/ChatEditTypeActivity$UsernamesListView;->this$0:Lorg/telegram/ui/ChatEditTypeActivity;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;

    invoke-static {p2, p1}, Lorg/telegram/ui/ChatEditTypeActivity;->-$$Nest$fputeditableUsernameCell(Lorg/telegram/ui/ChatEditTypeActivity;Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;)V

    :cond_4
    :goto_1
    return-void

    .line 1056
    :cond_5
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p2, Lorg/telegram/ui/Cells/HeaderCell;

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    iget-object v1, p0, Lorg/telegram/ui/ChatEditTypeActivity$UsernamesListView$Adapter;->this$1:Lorg/telegram/ui/ChatEditTypeActivity$UsernamesListView;

    invoke-static {v1}, Lorg/telegram/ui/ChatEditTypeActivity$UsernamesListView;->access$400(Lorg/telegram/ui/ChatEditTypeActivity$UsernamesListView;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1057
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/HeaderCell;

    sget p2, Lorg/telegram/messenger/R$string;->UsernamesChannelHeader:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 3

    if-eqz p2, :cond_2

    const/4 p1, 0x1

    if-eq p2, p1, :cond_1

    const/4 p1, 0x2

    if-eq p2, p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1047
    :cond_0
    new-instance p1, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    new-instance p2, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    iget-object v0, p0, Lorg/telegram/ui/ChatEditTypeActivity$UsernamesListView$Adapter;->this$1:Lorg/telegram/ui/ChatEditTypeActivity$UsernamesListView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ChatEditTypeActivity$UsernamesListView$Adapter;->this$1:Lorg/telegram/ui/ChatEditTypeActivity$UsernamesListView;

    invoke-static {v1}, Lorg/telegram/ui/ChatEditTypeActivity$UsernamesListView;->access$300(Lorg/telegram/ui/ChatEditTypeActivity$UsernamesListView;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v1

    const/16 v2, 0xc

    invoke-direct {p2, v0, v2, v1}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-direct {p1, p2}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p1

    .line 1038
    :cond_1
    new-instance p1, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    new-instance p2, Lorg/telegram/ui/ChatEditTypeActivity$UsernamesListView$Adapter$1;

    iget-object v0, p0, Lorg/telegram/ui/ChatEditTypeActivity$UsernamesListView$Adapter;->this$1:Lorg/telegram/ui/ChatEditTypeActivity$UsernamesListView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ChatEditTypeActivity$UsernamesListView$Adapter;->this$1:Lorg/telegram/ui/ChatEditTypeActivity$UsernamesListView;

    invoke-static {v1}, Lorg/telegram/ui/ChatEditTypeActivity$UsernamesListView;->access$200(Lorg/telegram/ui/ChatEditTypeActivity$UsernamesListView;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v1

    invoke-direct {p2, p0, v0, v1}, Lorg/telegram/ui/ChatEditTypeActivity$UsernamesListView$Adapter$1;-><init>(Lorg/telegram/ui/ChatEditTypeActivity$UsernamesListView$Adapter;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-direct {p1, p2}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p1

    .line 1036
    :cond_2
    new-instance p1, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    new-instance p2, Lorg/telegram/ui/Cells/HeaderCell;

    iget-object v0, p0, Lorg/telegram/ui/ChatEditTypeActivity$UsernamesListView$Adapter;->this$1:Lorg/telegram/ui/ChatEditTypeActivity$UsernamesListView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ChatEditTypeActivity$UsernamesListView$Adapter;->this$1:Lorg/telegram/ui/ChatEditTypeActivity$UsernamesListView;

    invoke-static {v1}, Lorg/telegram/ui/ChatEditTypeActivity$UsernamesListView;->access$100(Lorg/telegram/ui/ChatEditTypeActivity$UsernamesListView;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v1

    invoke-direct {p2, v0, v1}, Lorg/telegram/ui/Cells/HeaderCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-direct {p1, p2}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p1
.end method

.method public swapElements(II)V
    .locals 5

    const/4 v0, 0x3

    .line 1004
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    add-int/lit8 v1, p1, -0x1

    add-int/lit8 v2, p2, -0x1

    .line 991
    iget-object v3, p0, Lorg/telegram/ui/ChatEditTypeActivity$UsernamesListView$Adapter;->this$1:Lorg/telegram/ui/ChatEditTypeActivity$UsernamesListView;

    iget-object v3, v3, Lorg/telegram/ui/ChatEditTypeActivity$UsernamesListView;->this$0:Lorg/telegram/ui/ChatEditTypeActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatEditTypeActivity;->-$$Nest$fgetusernames(Lorg/telegram/ui/ChatEditTypeActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    iget-object v3, p0, Lorg/telegram/ui/ChatEditTypeActivity$UsernamesListView$Adapter;->this$1:Lorg/telegram/ui/ChatEditTypeActivity$UsernamesListView;

    iget-object v3, v3, Lorg/telegram/ui/ChatEditTypeActivity$UsernamesListView;->this$0:Lorg/telegram/ui/ChatEditTypeActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatEditTypeActivity;->-$$Nest$fgetusernames(Lorg/telegram/ui/ChatEditTypeActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v2, v3, :cond_0

    goto :goto_0

    :cond_0
    if-eq p1, p2, :cond_1

    .line 995
    iget-object v3, p0, Lorg/telegram/ui/ChatEditTypeActivity$UsernamesListView$Adapter;->this$1:Lorg/telegram/ui/ChatEditTypeActivity$UsernamesListView;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lorg/telegram/ui/ChatEditTypeActivity$UsernamesListView;->-$$Nest$fputneedReorder(Lorg/telegram/ui/ChatEditTypeActivity$UsernamesListView;Z)V

    .line 998
    :cond_1
    iget-object v3, p0, Lorg/telegram/ui/ChatEditTypeActivity$UsernamesListView$Adapter;->this$1:Lorg/telegram/ui/ChatEditTypeActivity$UsernamesListView;

    iget-object v3, v3, Lorg/telegram/ui/ChatEditTypeActivity$UsernamesListView;->this$0:Lorg/telegram/ui/ChatEditTypeActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatEditTypeActivity;->-$$Nest$fgetusernames(Lorg/telegram/ui/ChatEditTypeActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-direct {p0, v3, v1, v2}, Lorg/telegram/ui/ChatEditTypeActivity$UsernamesListView$Adapter;->swapListElements(Ljava/util/List;II)V

    .line 1000
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemMoved(II)V

    .line 1002
    iget-object v1, p0, Lorg/telegram/ui/ChatEditTypeActivity$UsernamesListView$Adapter;->this$1:Lorg/telegram/ui/ChatEditTypeActivity$UsernamesListView;

    iget-object v1, v1, Lorg/telegram/ui/ChatEditTypeActivity$UsernamesListView;->this$0:Lorg/telegram/ui/ChatEditTypeActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatEditTypeActivity;->-$$Nest$fgetusernames(Lorg/telegram/ui/ChatEditTypeActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eq p1, v1, :cond_2

    if-ne p2, v1, :cond_3

    .line 1004
    :cond_2
    invoke-virtual {p0, p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    .line 1005
    invoke-virtual {p0, p2, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    :cond_3
    :goto_0
    return-void
.end method
