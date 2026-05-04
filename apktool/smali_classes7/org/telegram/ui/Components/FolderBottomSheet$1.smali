.class Lorg/telegram/ui/Components/FolderBottomSheet$1;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/FolderBottomSheet;->createAdapter(Lorg/telegram/ui/Components/RecyclerListView;)Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/FolderBottomSheet;


# direct methods
.method public static synthetic $r8$lambda$lPMrt2fnboFaftPg7TNON8dutzw(Lorg/telegram/ui/Components/FolderBottomSheet$1;J)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/FolderBottomSheet$1;->lambda$onBindViewHolder$0(J)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/Components/FolderBottomSheet;)V
    .locals 0

    .line 960
    iput-object p1, p0, Lorg/telegram/ui/Components/FolderBottomSheet$1;->this$0:Lorg/telegram/ui/Components/FolderBottomSheet;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$0(J)V
    .locals 2

    .line 1052
    iget-object v0, p0, Lorg/telegram/ui/Components/FolderBottomSheet$1;->this$0:Lorg/telegram/ui/Components/FolderBottomSheet;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/FolderBottomSheet;->dismiss()V

    .line 1053
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    neg-long p1, p1

    .line 1054
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 1059
    :cond_0
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$Chat;->username:Ljava/lang/String;

    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p2

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Lorg/telegram/messenger/MessagesController;->openByUserName(Ljava/lang/String;Lorg/telegram/ui/ActionBar/BaseFragment;I)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 1105
    iget-object v0, p0, Lorg/telegram/ui/Components/FolderBottomSheet$1;->this$0:Lorg/telegram/ui/Components/FolderBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/FolderBottomSheet;->-$$Nest$fgetrowsCount(Lorg/telegram/ui/Components/FolderBottomSheet;)I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 1093
    iget-object v0, p0, Lorg/telegram/ui/Components/FolderBottomSheet$1;->this$0:Lorg/telegram/ui/Components/FolderBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/FolderBottomSheet;->-$$Nest$fgettitleRow(Lorg/telegram/ui/Components/FolderBottomSheet;)I

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1095
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/FolderBottomSheet$1;->this$0:Lorg/telegram/ui/Components/FolderBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/FolderBottomSheet;->-$$Nest$fgetsectionRow(Lorg/telegram/ui/Components/FolderBottomSheet;)I

    move-result v0

    if-eq p1, v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/Components/FolderBottomSheet$1;->this$0:Lorg/telegram/ui/Components/FolderBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/FolderBottomSheet;->-$$Nest$fgetusersSectionRow(Lorg/telegram/ui/Components/FolderBottomSheet;)I

    move-result v0

    if-eq p1, v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/Components/FolderBottomSheet$1;->this$0:Lorg/telegram/ui/Components/FolderBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/FolderBottomSheet;->-$$Nest$fgetalreadySectionRow(Lorg/telegram/ui/Components/FolderBottomSheet;)I

    move-result v0

    if-ne p1, v0, :cond_1

    goto :goto_1

    .line 1097
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/FolderBottomSheet$1;->this$0:Lorg/telegram/ui/Components/FolderBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/FolderBottomSheet;->-$$Nest$fgetheaderRow(Lorg/telegram/ui/Components/FolderBottomSheet;)I

    move-result v0

    if-eq p1, v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Components/FolderBottomSheet$1;->this$0:Lorg/telegram/ui/Components/FolderBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/FolderBottomSheet;->-$$Nest$fgetalreadyHeaderRow(Lorg/telegram/ui/Components/FolderBottomSheet;)I

    move-result v0

    if-ne p1, v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x2

    return p1

    :cond_3
    :goto_0
    const/4 p1, 0x3

    return p1

    :cond_4
    :goto_1
    const/4 p1, 0x1

    return p1
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 2

    .line 970
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/FolderBottomSheet$1;->this$0:Lorg/telegram/ui/Components/FolderBottomSheet;

    invoke-static {v1}, Lorg/telegram/ui/Components/FolderBottomSheet;->-$$Nest$fgetusersStartRow(Lorg/telegram/ui/Components/FolderBottomSheet;)I

    move-result v1

    if-lt v0, v1, :cond_0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    iget-object v0, p0, Lorg/telegram/ui/Components/FolderBottomSheet$1;->this$0:Lorg/telegram/ui/Components/FolderBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/FolderBottomSheet;->-$$Nest$fgetusersEndRow(Lorg/telegram/ui/Components/FolderBottomSheet;)I

    move-result v0

    if-gt p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 10

    .line 995
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-ne v0, v1, :cond_b

    .line 997
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/GroupCreateUserCell;

    .line 999
    iget-object v0, p0, Lorg/telegram/ui/Components/FolderBottomSheet$1;->this$0:Lorg/telegram/ui/Components/FolderBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/FolderBottomSheet;->-$$Nest$fgetusersStartRow(Lorg/telegram/ui/Components/FolderBottomSheet;)I

    move-result v0

    if-lt p2, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/FolderBottomSheet$1;->this$0:Lorg/telegram/ui/Components/FolderBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/FolderBottomSheet;->-$$Nest$fgetusersEndRow(Lorg/telegram/ui/Components/FolderBottomSheet;)I

    move-result v0

    if-gt p2, v0, :cond_0

    .line 1000
    iget-object v0, p0, Lorg/telegram/ui/Components/FolderBottomSheet$1;->this$0:Lorg/telegram/ui/Components/FolderBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/FolderBottomSheet;->-$$Nest$fgetpeers(Lorg/telegram/ui/Components/FolderBottomSheet;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/FolderBottomSheet$1;->this$0:Lorg/telegram/ui/Components/FolderBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/FolderBottomSheet;->-$$Nest$fgetpeers(Lorg/telegram/ui/Components/FolderBottomSheet;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/FolderBottomSheet$1;->this$0:Lorg/telegram/ui/Components/FolderBottomSheet;

    invoke-static {v1}, Lorg/telegram/ui/Components/FolderBottomSheet;->-$$Nest$fgetusersStartRow(Lorg/telegram/ui/Components/FolderBottomSheet;)I

    move-result v1

    sub-int/2addr p2, v1

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/tgnet/TLRPC$Peer;

    goto :goto_0

    .line 1001
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/FolderBottomSheet$1;->this$0:Lorg/telegram/ui/Components/FolderBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/FolderBottomSheet;->-$$Nest$fgetalreadyUsersStartRow(Lorg/telegram/ui/Components/FolderBottomSheet;)I

    move-result v0

    if-lt p2, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/FolderBottomSheet$1;->this$0:Lorg/telegram/ui/Components/FolderBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/FolderBottomSheet;->-$$Nest$fgetalreadyUsersEndRow(Lorg/telegram/ui/Components/FolderBottomSheet;)I

    move-result v0

    if-gt p2, v0, :cond_1

    .line 1002
    iget-object v0, p0, Lorg/telegram/ui/Components/FolderBottomSheet$1;->this$0:Lorg/telegram/ui/Components/FolderBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/FolderBottomSheet;->-$$Nest$fgetalreadyPeers(Lorg/telegram/ui/Components/FolderBottomSheet;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/FolderBottomSheet$1;->this$0:Lorg/telegram/ui/Components/FolderBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/FolderBottomSheet;->-$$Nest$fgetalreadyPeers(Lorg/telegram/ui/Components/FolderBottomSheet;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/FolderBottomSheet$1;->this$0:Lorg/telegram/ui/Components/FolderBottomSheet;

    invoke-static {v1}, Lorg/telegram/ui/Components/FolderBottomSheet;->-$$Nest$fgetalreadyUsersStartRow(Lorg/telegram/ui/Components/FolderBottomSheet;)I

    move-result v1

    sub-int/2addr p2, v1

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/tgnet/TLRPC$Peer;

    goto :goto_0

    :cond_1
    move-object p2, v3

    :goto_0
    const-wide/16 v0, 0x0

    if-eqz p2, :cond_5

    .line 1009
    instance-of v4, p2, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    if-eqz v4, :cond_3

    .line 1010
    iget-wide v3, p2, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    .line 1011
    iget-object v5, p0, Lorg/telegram/ui/Components/FolderBottomSheet$1;->this$0:Lorg/telegram/ui/Components/FolderBottomSheet;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->getBaseFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    iget-wide v6, p2, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v5, p2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p2

    .line 1013
    invoke-static {p2}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v5

    if-eqz p2, :cond_2

    .line 1014
    iget-boolean v6, p2, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-eqz v6, :cond_2

    .line 1015
    sget v6, Lorg/telegram/messenger/R$string;->FilterInviteBot:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 1017
    :cond_2
    sget v6, Lorg/telegram/messenger/R$string;->FilterInviteUser:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    :goto_1
    move-wide v7, v3

    move-object v3, p2

    goto :goto_3

    .line 1019
    :cond_3
    instance-of v4, p2, Lorg/telegram/tgnet/TLRPC$TL_peerChat;

    if-eqz v4, :cond_4

    .line 1020
    iget-wide v4, p2, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:J

    neg-long v4, v4

    .line 1021
    iget-object v6, p0, Lorg/telegram/ui/Components/FolderBottomSheet$1;->this$0:Lorg/telegram/ui/Components/FolderBottomSheet;

    invoke-virtual {v6}, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->getBaseFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    iget-wide v7, p2, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v6, p2}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p2

    :goto_2
    move-object v6, v3

    move-wide v7, v4

    move-object v3, p2

    move-object v5, v6

    goto :goto_3

    .line 1022
    :cond_4
    instance-of v4, p2, Lorg/telegram/tgnet/TLRPC$TL_peerChannel;

    if-eqz v4, :cond_5

    .line 1023
    iget-wide v4, p2, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:J

    neg-long v4, v4

    .line 1024
    iget-object v6, p0, Lorg/telegram/ui/Components/FolderBottomSheet$1;->this$0:Lorg/telegram/ui/Components/FolderBottomSheet;

    invoke-virtual {v6}, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->getBaseFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    iget-wide v7, p2, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v6, p2}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p2

    goto :goto_2

    :cond_5
    move-wide v7, v0

    move-object v5, v3

    move-object v6, v5

    .line 1027
    :goto_3
    instance-of p2, v3, Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz p2, :cond_9

    .line 1028
    move-object p2, v3

    check-cast p2, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 1029
    iget-object v5, p2, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    .line 1030
    iget v4, p2, Lorg/telegram/tgnet/TLRPC$Chat;->participants_count:I

    if-eqz v4, :cond_7

    .line 1031
    invoke-static {p2}, Lorg/telegram/messenger/ChatObject;->isChannelAndNotMegaGroup(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1032
    const-string v4, "Subscribers"

    iget p2, p2, Lorg/telegram/tgnet/TLRPC$Chat;->participants_count:I

    invoke-static {v4, p2}, Lorg/telegram/messenger/LocaleController;->formatPluralStringComma(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    goto :goto_4

    .line 1034
    :cond_6
    const-string v4, "Members"

    iget p2, p2, Lorg/telegram/tgnet/TLRPC$Chat;->participants_count:I

    invoke-static {v4, p2}, Lorg/telegram/messenger/LocaleController;->formatPluralStringComma(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    goto :goto_4

    .line 1037
    :cond_7
    invoke-static {p2}, Lorg/telegram/messenger/ChatObject;->isChannelAndNotMegaGroup(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result p2

    if-eqz p2, :cond_8

    .line 1038
    sget p2, Lorg/telegram/messenger/R$string;->ChannelPublic:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_4

    .line 1040
    :cond_8
    sget p2, Lorg/telegram/messenger/R$string;->MegaPublic:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1044
    :cond_9
    :goto_4
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1045
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/GroupCreateUserCell;->getCheckBox()Lorg/telegram/ui/Components/CheckBox2;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/ui/Components/CheckBox2;->getCheckBoxBase()Lorg/telegram/ui/Components/CheckBoxBase;

    move-result-object p2

    iget-object v4, p0, Lorg/telegram/ui/Components/FolderBottomSheet$1;->this$0:Lorg/telegram/ui/Components/FolderBottomSheet;

    invoke-static {v4}, Lorg/telegram/ui/Components/FolderBottomSheet;->-$$Nest$fgetalreadyJoined(Lorg/telegram/ui/Components/FolderBottomSheet;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    const/high16 v4, 0x3f000000    # 0.5f

    goto :goto_5

    :cond_a
    const/high16 v4, 0x3f800000    # 1.0f

    :goto_5
    invoke-virtual {p2, v4}, Lorg/telegram/ui/Components/CheckBoxBase;->setAlpha(F)V

    .line 1046
    iget-object p2, p0, Lorg/telegram/ui/Components/FolderBottomSheet$1;->this$0:Lorg/telegram/ui/Components/FolderBottomSheet;

    invoke-static {p2}, Lorg/telegram/ui/Components/FolderBottomSheet;->-$$Nest$fgetselectedPeers(Lorg/telegram/ui/Components/FolderBottomSheet;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    invoke-virtual {p1, p2, v2}, Lorg/telegram/ui/Cells/GroupCreateUserCell;->setChecked(ZZ)V

    .line 1047
    invoke-virtual {p1, v3, v5, v6}, Lorg/telegram/ui/Cells/GroupCreateUserCell;->setObject(Ljava/lang/Object;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    cmp-long p2, v7, v0

    if-gez p2, :cond_12

    .line 1051
    new-instance p2, Lorg/telegram/ui/Components/FolderBottomSheet$1$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0, v7, v8}, Lorg/telegram/ui/Components/FolderBottomSheet$1$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/FolderBottomSheet$1;J)V

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/GroupCreateUserCell;->setOpenChatView(Ljava/lang/Runnable;)V

    return-void

    :cond_b
    const/4 v1, 0x3

    .line 1062
    const-string v4, ""

    if-ne v0, v1, :cond_d

    .line 1063
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Components/FolderBottomSheet$HeaderCell;

    .line 1064
    iget-object v0, p0, Lorg/telegram/ui/Components/FolderBottomSheet$1;->this$0:Lorg/telegram/ui/Components/FolderBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/FolderBottomSheet;->-$$Nest$fgetalreadyHeaderRow(Lorg/telegram/ui/Components/FolderBottomSheet;)I

    move-result v0

    if-ne p2, v0, :cond_c

    .line 1065
    sget p2, Lorg/telegram/messenger/R$string;->FolderLinkHeaderAlready:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v2}, Lorg/telegram/ui/Components/FolderBottomSheet$HeaderCell;->setText(Ljava/lang/CharSequence;Z)V

    .line 1066
    invoke-virtual {p1, v4, v3}, Lorg/telegram/ui/Components/FolderBottomSheet$HeaderCell;->setAction(Ljava/lang/CharSequence;Ljava/lang/Runnable;)V

    return-void

    .line 1068
    :cond_c
    iget-object p2, p0, Lorg/telegram/ui/Components/FolderBottomSheet$1;->this$0:Lorg/telegram/ui/Components/FolderBottomSheet;

    invoke-static {p2, p1}, Lorg/telegram/ui/Components/FolderBottomSheet;->-$$Nest$fputheaderCell(Lorg/telegram/ui/Components/FolderBottomSheet;Lorg/telegram/ui/Components/FolderBottomSheet$HeaderCell;)V

    .line 1069
    iget-object p1, p0, Lorg/telegram/ui/Components/FolderBottomSheet$1;->this$0:Lorg/telegram/ui/Components/FolderBottomSheet;

    invoke-static {p1, v2}, Lorg/telegram/ui/Components/FolderBottomSheet;->-$$Nest$mupdateHeaderCell(Lorg/telegram/ui/Components/FolderBottomSheet;Z)V

    return-void

    :cond_d
    const/4 v1, 0x1

    if-ne v0, v1, :cond_11

    .line 1072
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    .line 1073
    iget-object v0, p0, Lorg/telegram/ui/Components/FolderBottomSheet$1;->this$0:Lorg/telegram/ui/Components/FolderBottomSheet;

    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$drawable;->greydivider:I

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    invoke-static {v0, v1, v3}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawableByKey(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 1074
    iget-object v0, p0, Lorg/telegram/ui/Components/FolderBottomSheet$1;->this$0:Lorg/telegram/ui/Components/FolderBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/FolderBottomSheet;->-$$Nest$fgetalreadySectionRow(Lorg/telegram/ui/Components/FolderBottomSheet;)I

    move-result v0

    if-eq p2, v0, :cond_10

    iget-object v0, p0, Lorg/telegram/ui/Components/FolderBottomSheet$1;->this$0:Lorg/telegram/ui/Components/FolderBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/FolderBottomSheet;->-$$Nest$fgetsectionRow(Lorg/telegram/ui/Components/FolderBottomSheet;)I

    move-result v0

    if-eq p2, v0, :cond_10

    iget-object p2, p0, Lorg/telegram/ui/Components/FolderBottomSheet$1;->this$0:Lorg/telegram/ui/Components/FolderBottomSheet;

    invoke-static {p2}, Lorg/telegram/ui/Components/FolderBottomSheet;->-$$Nest$fgetpeers(Lorg/telegram/ui/Components/FolderBottomSheet;)Ljava/util/ArrayList;

    move-result-object p2

    if-eqz p2, :cond_10

    iget-object p2, p0, Lorg/telegram/ui/Components/FolderBottomSheet$1;->this$0:Lorg/telegram/ui/Components/FolderBottomSheet;

    invoke-static {p2}, Lorg/telegram/ui/Components/FolderBottomSheet;->-$$Nest$fgetpeers(Lorg/telegram/ui/Components/FolderBottomSheet;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_e

    goto :goto_6

    .line 1078
    :cond_e
    invoke-virtual {p1, v2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setFixedSize(I)V

    .line 1079
    iget-object p2, p0, Lorg/telegram/ui/Components/FolderBottomSheet$1;->this$0:Lorg/telegram/ui/Components/FolderBottomSheet;

    invoke-static {p2}, Lorg/telegram/ui/Components/FolderBottomSheet;->-$$Nest$fgetdeleting(Lorg/telegram/ui/Components/FolderBottomSheet;)Z

    move-result p2

    if-eqz p2, :cond_f

    .line 1080
    sget p2, Lorg/telegram/messenger/R$string;->FolderLinkHintRemove:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 1082
    :cond_f
    sget p2, Lorg/telegram/messenger/R$string;->FolderLinkHint:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_10
    :goto_6
    const/16 p2, 0xc

    .line 1075
    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setFixedSize(I)V

    .line 1076
    invoke-virtual {p1, v4}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_11
    if-nez v0, :cond_12

    .line 1086
    iget-object p2, p0, Lorg/telegram/ui/Components/FolderBottomSheet$1;->this$0:Lorg/telegram/ui/Components/FolderBottomSheet;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Components/FolderBottomSheet$TitleCell;

    invoke-static {p2, p1}, Lorg/telegram/ui/Components/FolderBottomSheet;->-$$Nest$fputtitleCell(Lorg/telegram/ui/Components/FolderBottomSheet;Lorg/telegram/ui/Components/FolderBottomSheet$TitleCell;)V

    .line 1087
    iget-object p1, p0, Lorg/telegram/ui/Components/FolderBottomSheet$1;->this$0:Lorg/telegram/ui/Components/FolderBottomSheet;

    invoke-virtual {p1, v2}, Lorg/telegram/ui/Components/FolderBottomSheet;->updateCount(Z)V

    :cond_12
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 8

    const/4 p1, 0x1

    const/4 v0, 0x0

    if-nez p2, :cond_2

    .line 978
    iget-object p2, p0, Lorg/telegram/ui/Components/FolderBottomSheet$1;->this$0:Lorg/telegram/ui/Components/FolderBottomSheet;

    new-instance v1, Lorg/telegram/ui/Components/FolderBottomSheet$TitleCell;

    iget-object v2, p0, Lorg/telegram/ui/Components/FolderBottomSheet$1;->this$0:Lorg/telegram/ui/Components/FolderBottomSheet;

    invoke-virtual {v2}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/Components/FolderBottomSheet$1;->this$0:Lorg/telegram/ui/Components/FolderBottomSheet;

    invoke-static {v4}, Lorg/telegram/ui/Components/FolderBottomSheet;->-$$Nest$fgetinvite(Lorg/telegram/ui/Components/FolderBottomSheet;)Lorg/telegram/tgnet/tl/TL_chatlists$chatlist_ChatlistInvite;

    move-result-object v4

    instance-of v4, v4, Lorg/telegram/tgnet/tl/TL_chatlists$TL_chatlists_chatlistInviteAlready;

    if-nez v4, :cond_1

    iget-object v4, p0, Lorg/telegram/ui/Components/FolderBottomSheet$1;->this$0:Lorg/telegram/ui/Components/FolderBottomSheet;

    invoke-static {v4}, Lorg/telegram/ui/Components/FolderBottomSheet;->-$$Nest$fgetupdates(Lorg/telegram/ui/Components/FolderBottomSheet;)Lorg/telegram/tgnet/tl/TL_chatlists$TL_chatlists_chatlistUpdates;

    move-result-object v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    move v4, v0

    goto :goto_1

    :cond_1
    :goto_0
    move v4, p1

    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/Components/FolderBottomSheet$1;->this$0:Lorg/telegram/ui/Components/FolderBottomSheet;

    invoke-static {p1}, Lorg/telegram/ui/Components/FolderBottomSheet;->-$$Nest$fgetescapedTitle(Lorg/telegram/ui/Components/FolderBottomSheet;)Ljava/lang/CharSequence;

    move-result-object v5

    iget-object p1, p0, Lorg/telegram/ui/Components/FolderBottomSheet$1;->this$0:Lorg/telegram/ui/Components/FolderBottomSheet;

    invoke-static {p1}, Lorg/telegram/ui/Components/FolderBottomSheet;->-$$Nest$fgettitleEntities(Lorg/telegram/ui/Components/FolderBottomSheet;)Ljava/util/ArrayList;

    move-result-object v6

    iget-object p1, p0, Lorg/telegram/ui/Components/FolderBottomSheet$1;->this$0:Lorg/telegram/ui/Components/FolderBottomSheet;

    invoke-static {p1}, Lorg/telegram/ui/Components/FolderBottomSheet;->-$$Nest$fgettitleNoanimate(Lorg/telegram/ui/Components/FolderBottomSheet;)Z

    move-result v7

    invoke-direct/range {v1 .. v7}, Lorg/telegram/ui/Components/FolderBottomSheet$TitleCell;-><init>(Lorg/telegram/ui/Components/FolderBottomSheet;Landroid/content/Context;ZLjava/lang/CharSequence;Ljava/util/ArrayList;Z)V

    invoke-static {p2, v1}, Lorg/telegram/ui/Components/FolderBottomSheet;->-$$Nest$fputtitleCell(Lorg/telegram/ui/Components/FolderBottomSheet;Lorg/telegram/ui/Components/FolderBottomSheet$TitleCell;)V

    goto :goto_2

    :cond_2
    if-ne p2, p1, :cond_3

    .line 980
    new-instance v1, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    iget-object p1, p0, Lorg/telegram/ui/Components/FolderBottomSheet$1;->this$0:Lorg/telegram/ui/Components/FolderBottomSheet;

    invoke-virtual {p1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v1, p1}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;)V

    .line 981
    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_2

    :cond_3
    const/4 v1, 0x2

    if-ne p2, v1, :cond_4

    .line 983
    new-instance v1, Lorg/telegram/ui/Cells/GroupCreateUserCell;

    iget-object p2, p0, Lorg/telegram/ui/Components/FolderBottomSheet$1;->this$0:Lorg/telegram/ui/Components/FolderBottomSheet;

    invoke-virtual {p2}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {v1, p2, p1, v0, v0}, Lorg/telegram/ui/Cells/GroupCreateUserCell;-><init>(Landroid/content/Context;IIZ)V

    .line 984
    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_2

    :cond_4
    const/4 p1, 0x3

    if-ne p2, p1, :cond_5

    .line 987
    new-instance v1, Lorg/telegram/ui/Components/FolderBottomSheet$HeaderCell;

    iget-object p1, p0, Lorg/telegram/ui/Components/FolderBottomSheet$1;->this$0:Lorg/telegram/ui/Components/FolderBottomSheet;

    invoke-virtual {p1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v1, p1}, Lorg/telegram/ui/Components/FolderBottomSheet$HeaderCell;-><init>(Landroid/content/Context;)V

    .line 988
    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_2

    :cond_5
    const/4 v1, 0x0

    .line 990
    :goto_2
    new-instance p1, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p1, v1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p1
.end method
