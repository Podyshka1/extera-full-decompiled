.class Lorg/telegram/ui/Components/SharedMediaLayout$ChannelRecommendationsAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/SharedMediaLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChannelRecommendationsAdapter"
.end annotation


# instance fields
.field private final chats:Ljava/util/ArrayList;

.field private final mContext:Landroid/content/Context;

.field private more:I

.field final synthetic this$0:Lorg/telegram/ui/Components/SharedMediaLayout;


# direct methods
.method public static synthetic $r8$lambda$D199DDwdgZYPcV4F_iQbQ3shxpE(Lorg/telegram/ui/Components/SharedMediaLayout$ChannelRecommendationsAdapter;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/SharedMediaLayout$ChannelRecommendationsAdapter;->lambda$openPreview$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$HI1a2_HBGTwup9G7_F8tiW4o-3A(Lorg/telegram/ui/Components/SharedMediaLayout$ChannelRecommendationsAdapter;Lorg/telegram/tgnet/TLRPC$Chat;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/SharedMediaLayout$ChannelRecommendationsAdapter;->lambda$openPreview$2(Lorg/telegram/tgnet/TLRPC$Chat;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fdN-ZEr6du8hCdyZ1uZWXe2VwC4(Lorg/telegram/ui/Components/SharedMediaLayout$ChannelRecommendationsAdapter;Lorg/telegram/tgnet/TLRPC$Chat;ILandroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/SharedMediaLayout$ChannelRecommendationsAdapter;->lambda$openPreview$3(Lorg/telegram/tgnet/TLRPC$Chat;ILandroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$joquH4bmUk4dwv-n8Fpa0qmD0nU(Lorg/telegram/ui/Components/SharedMediaLayout$ChannelRecommendationsAdapter;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/SharedMediaLayout$ChannelRecommendationsAdapter;->lambda$onCreateViewHolder$0()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetchats(Lorg/telegram/ui/Components/SharedMediaLayout$ChannelRecommendationsAdapter;)Ljava/util/ArrayList;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$ChannelRecommendationsAdapter;->chats:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmore(Lorg/telegram/ui/Components/SharedMediaLayout$ChannelRecommendationsAdapter;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$ChannelRecommendationsAdapter;->more:I

    return p0
.end method

.method public constructor <init>(Lorg/telegram/ui/Components/SharedMediaLayout;Landroid/content/Context;)V
    .locals 0

    .line 9460
    iput-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$ChannelRecommendationsAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    .line 9457
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$ChannelRecommendationsAdapter;->chats:Ljava/util/ArrayList;

    .line 9461
    iput-object p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$ChannelRecommendationsAdapter;->mContext:Landroid/content/Context;

    const/4 p1, 0x0

    .line 9462
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/SharedMediaLayout$ChannelRecommendationsAdapter;->update(Z)V

    return-void
.end method

.method private synthetic lambda$onCreateViewHolder$0()V
    .locals 3

    .line 9513
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$ChannelRecommendationsAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetprofileActivity(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 9514
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$ChannelRecommendationsAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetprofileActivity(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/PremiumPreviewFragment;

    const-string/jumbo v2, "similar_channels"

    invoke-direct {v1, v2}, Lorg/telegram/ui/PremiumPreviewFragment;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    :cond_0
    return-void
.end method

.method private synthetic lambda$openPreview$1(Landroid/view/View;)V
    .locals 0

    .line 9552
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$ChannelRecommendationsAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetprofileActivity(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$ChannelRecommendationsAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetprofileActivity(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 9553
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$ChannelRecommendationsAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetprofileActivity(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object p1

    invoke-interface {p1}, Lorg/telegram/ui/ActionBar/INavigationLayout;->expandPreviewFragment()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$openPreview$2(Lorg/telegram/tgnet/TLRPC$Chat;)V
    .locals 6

    .line 9572
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$ChannelRecommendationsAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetprofileActivity(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$raw;->contact_check:I

    sget v2, Lorg/telegram/messenger/R$string;->YouJoinedChannel:I

    if-nez p1, :cond_0

    const-string p1, ""

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    :goto_0
    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-static {v2, v4}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1, v3}, Lorg/telegram/ui/Components/Bulletin;->show(Z)Lorg/telegram/ui/Components/Bulletin;

    return-void
.end method

.method private synthetic lambda$openPreview$3(Lorg/telegram/tgnet/TLRPC$Chat;ILandroid/view/View;)V
    .locals 8

    .line 9562
    iget-object p3, p0, Lorg/telegram/ui/Components/SharedMediaLayout$ChannelRecommendationsAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p3}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetprofileActivity(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p3

    invoke-virtual {p3}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishPreviewFragment()V

    const/4 p3, 0x0

    .line 9563
    iput-boolean p3, p1, Lorg/telegram/tgnet/TLRPC$Chat;->left:Z

    .line 9564
    invoke-virtual {p0, p3}, Lorg/telegram/ui/Components/SharedMediaLayout$ChannelRecommendationsAdapter;->update(Z)V

    .line 9565
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    .line 9566
    iget-object p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$ChannelRecommendationsAdapter;->chats:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    .line 9567
    iget-object p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$ChannelRecommendationsAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->updateTabs(Z)V

    .line 9568
    iget-object p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$ChannelRecommendationsAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p2}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$mcheckCurrentTabValid(Lorg/telegram/ui/Components/SharedMediaLayout;)V

    .line 9570
    :cond_0
    iget-object p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$ChannelRecommendationsAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p2}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetprofileActivity(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p2

    sget v1, Lorg/telegram/messenger/NotificationCenter;->channelRecommendationsLoaded:I

    iget-object v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$ChannelRecommendationsAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v2}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetdialog_id(Lorg/telegram/ui/Components/SharedMediaLayout;)J

    move-result-wide v2

    neg-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v2, v0, p3

    invoke-virtual {p2, v1, v0}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 9571
    iget-object p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$ChannelRecommendationsAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p2}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetprofileActivity(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v1, p1, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    iget-object p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$ChannelRecommendationsAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p2}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetprofileActivity(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v3

    iget-object p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$ChannelRecommendationsAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p2}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetprofileActivity(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v6

    new-instance v7, Lorg/telegram/ui/Components/SharedMediaLayout$ChannelRecommendationsAdapter$$ExternalSyntheticLambda3;

    invoke-direct {v7, p0, p1}, Lorg/telegram/ui/Components/SharedMediaLayout$ChannelRecommendationsAdapter$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout$ChannelRecommendationsAdapter;Lorg/telegram/tgnet/TLRPC$Chat;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v7}, Lorg/telegram/messenger/MessagesController;->addUserToChat(JLorg/telegram/tgnet/TLRPC$User;ILjava/lang/String;Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 9505
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$ChannelRecommendationsAdapter;->chats:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 9602
    iget v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$ChannelRecommendationsAdapter;->more:I

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/SharedMediaLayout$ChannelRecommendationsAdapter;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_0

    const/16 p1, 0x12

    return p1

    :cond_0
    const/16 p1, 0x11

    return p1
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 7

    .line 9587
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/16 v1, 0x11

    if-ne v0, v1, :cond_1

    .line 9588
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v0, p1, Lorg/telegram/ui/Cells/ProfileSearchCell;

    if-nez v0, :cond_0

    goto :goto_3

    .line 9589
    :cond_0
    check-cast p1, Lorg/telegram/ui/Cells/ProfileSearchCell;

    :goto_0
    move-object v0, p1

    goto :goto_1

    .line 9590
    :cond_1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/16 v1, 0x12

    if-ne v0, v1, :cond_3

    .line 9591
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v0, p1, Lorg/telegram/ui/Components/SharedMediaLayout$MoreRecommendationsCell;

    if-nez v0, :cond_2

    goto :goto_3

    .line 9592
    :cond_2
    check-cast p1, Lorg/telegram/ui/Components/SharedMediaLayout$MoreRecommendationsCell;

    iget-object p1, p1, Lorg/telegram/ui/Components/SharedMediaLayout$MoreRecommendationsCell;->channelCell:Lorg/telegram/ui/Cells/ProfileSearchCell;

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    goto :goto_0

    :goto_1
    if-eqz v0, :cond_5

    .line 9595
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$ChannelRecommendationsAdapter;->chats:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/ui/Cells/ProfileSearchCell;->setData(Ljava/lang/Object;Lorg/telegram/tgnet/TLRPC$EncryptedChat;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)V

    .line 9596
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$ChannelRecommendationsAdapter;->chats:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v1, 0x1

    sub-int/2addr p1, v1

    if-eq p2, p1, :cond_4

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    :goto_2
    iput-boolean v1, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->useSeparator:Z

    :cond_5
    :goto_3
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 6

    const/16 p1, 0x12

    if-ne p2, p1, :cond_2

    .line 9512
    new-instance v0, Lorg/telegram/ui/Components/SharedMediaLayout$MoreRecommendationsCell;

    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$ChannelRecommendationsAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetprofileActivity(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p1

    if-nez p1, :cond_0

    sget p1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    :goto_0
    move v1, p1

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$ChannelRecommendationsAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetprofileActivity(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getCurrentAccount()I

    move-result p1

    goto :goto_0

    :goto_1
    iget-object v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$ChannelRecommendationsAdapter;->mContext:Landroid/content/Context;

    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$ChannelRecommendationsAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetdialog_id(Lorg/telegram/ui/Components/SharedMediaLayout;)J

    move-result-wide p1

    const-wide/16 v3, 0x0

    cmp-long p1, p1, v3

    if-lez p1, :cond_1

    const/4 p1, 0x1

    :goto_2
    move v3, p1

    goto :goto_3

    :cond_1
    const/4 p1, 0x0

    goto :goto_2

    :goto_3
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$ChannelRecommendationsAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetresourcesProvider(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v4

    new-instance v5, Lorg/telegram/ui/Components/SharedMediaLayout$ChannelRecommendationsAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v5, p0}, Lorg/telegram/ui/Components/SharedMediaLayout$ChannelRecommendationsAdapter$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout$ChannelRecommendationsAdapter;)V

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/SharedMediaLayout$MoreRecommendationsCell;-><init>(ILandroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Ljava/lang/Runnable;)V

    goto :goto_4

    .line 9519
    :cond_2
    new-instance v0, Lorg/telegram/ui/Cells/ProfileSearchCell;

    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$ChannelRecommendationsAdapter;->mContext:Landroid/content/Context;

    iget-object p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$ChannelRecommendationsAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p2}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetresourcesProvider(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Lorg/telegram/ui/Cells/ProfileSearchCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 9521
    :goto_4
    new-instance p1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 p2, -0x1

    const/4 v1, -0x2

    invoke-direct {p1, p2, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 9522
    new-instance p1, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p1, v0}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p1
.end method

.method public openPreview(I)V
    .locals 8

    if-ltz p1, :cond_4

    .line 9526
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$ChannelRecommendationsAdapter;->chats:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto/16 :goto_1

    .line 9527
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$ChannelRecommendationsAdapter;->chats:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLObject;

    .line 9529
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 9530
    instance-of v2, v0, Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v2, :cond_1

    .line 9531
    move-object v3, v0

    check-cast v3, Lorg/telegram/tgnet/TLRPC$Chat;

    iget-wide v3, v3, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    const-string v5, "chat_id"

    invoke-virtual {v1, v5, v3, v4}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    goto :goto_0

    .line 9532
    :cond_1
    instance-of v3, v0, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v3, :cond_4

    .line 9533
    move-object v3, v0

    check-cast v3, Lorg/telegram/tgnet/TLRPC$User;

    iget-wide v3, v3, Lorg/telegram/tgnet/TLRPC$User;->id:J

    const-string/jumbo v5, "user_id"

    invoke-virtual {v1, v5, v3, v4}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 9537
    :goto_0
    new-instance v3, Lorg/telegram/ui/ChatActivity;

    invoke-direct {v3, v1}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    .line 9538
    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$ChannelRecommendationsAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetprofileActivity(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v1

    instance-of v1, v1, Lorg/telegram/ui/ProfileActivity;

    if-eqz v1, :cond_2

    .line 9539
    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$ChannelRecommendationsAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetprofileActivity(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ProfileActivity;->prepareBlurBitmap()V

    .line 9542
    :cond_2
    new-instance v1, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    iget-object v4, p0, Lorg/telegram/ui/Components/SharedMediaLayout$ChannelRecommendationsAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/R$drawable;->popup_fixed_alert:I

    iget-object v6, p0, Lorg/telegram/ui/Components/SharedMediaLayout$ChannelRecommendationsAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v6}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetresourcesProvider(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v6

    const/4 v7, 0x2

    invoke-direct {v1, v4, v5, v6, v7}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;I)V

    .line 9543
    iget-object v4, p0, Lorg/telegram/ui/Components/SharedMediaLayout$ChannelRecommendationsAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuBackground:I

    invoke-static {v4, v5}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$mgetThemedColor(Lorg/telegram/ui/Components/SharedMediaLayout;I)I

    move-result v4

    invoke-virtual {v1, v4}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->setBackgroundColor(I)V

    if-eqz v2, :cond_3

    .line 9546
    check-cast v0, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 9548
    new-instance v2, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    iget-object v4, p0, Lorg/telegram/ui/Components/SharedMediaLayout$ChannelRecommendationsAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v2, v4, v5, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;-><init>(Landroid/content/Context;ZZ)V

    .line 9549
    sget v4, Lorg/telegram/messenger/R$string;->OpenChannel2:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget v6, Lorg/telegram/messenger/R$drawable;->msg_channel:I

    invoke-virtual {v2, v4, v6}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    const/16 v4, 0xa0

    .line 9550
    invoke-virtual {v2, v4}, Landroid/view/View;->setMinimumWidth(I)V

    .line 9551
    new-instance v6, Lorg/telegram/ui/Components/SharedMediaLayout$ChannelRecommendationsAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v6, p0}, Lorg/telegram/ui/Components/SharedMediaLayout$ChannelRecommendationsAdapter$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout$ChannelRecommendationsAdapter;)V

    invoke-virtual {v2, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9556
    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;)V

    .line 9558
    new-instance v2, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    iget-object v6, p0, Lorg/telegram/ui/Components/SharedMediaLayout$ChannelRecommendationsAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v2, v6, v5, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;-><init>(Landroid/content/Context;ZZ)V

    .line 9559
    sget v5, Lorg/telegram/messenger/R$string;->ProfileJoinChannel:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    sget v6, Lorg/telegram/messenger/R$drawable;->msg_addbot:I

    invoke-virtual {v2, v5, v6}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    .line 9560
    invoke-virtual {v2, v4}, Landroid/view/View;->setMinimumWidth(I)V

    .line 9561
    new-instance v4, Lorg/telegram/ui/Components/SharedMediaLayout$ChannelRecommendationsAdapter$$ExternalSyntheticLambda2;

    invoke-direct {v4, p0, v0, p1}, Lorg/telegram/ui/Components/SharedMediaLayout$ChannelRecommendationsAdapter$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout$ChannelRecommendationsAdapter;Lorg/telegram/tgnet/TLRPC$Chat;I)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9575
    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;)V

    .line 9576
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$ChannelRecommendationsAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetprofileActivity(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p1

    invoke-virtual {p1, v3, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragmentAsPreviewWithMenu(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;)Z

    return-void

    .line 9577
    :cond_3
    instance-of p1, v0, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz p1, :cond_4

    .line 9580
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$ChannelRecommendationsAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetprofileActivity(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p1

    invoke-virtual {p1, v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragmentAsPreview(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    :cond_4
    :goto_1
    return-void
.end method

.method public update(Z)V
    .locals 5

    .line 9466
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$ChannelRecommendationsAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetprofileActivity(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 9469
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$ChannelRecommendationsAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetdialog_id(Lorg/telegram/ui/Components/SharedMediaLayout;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/telegram/messenger/DialogObject;->isChatDialog(J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9470
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$ChannelRecommendationsAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetprofileActivity(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getCurrentAccount()I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$ChannelRecommendationsAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetdialog_id(Lorg/telegram/ui/Components/SharedMediaLayout;)J

    move-result-wide v1

    neg-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 9471
    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->isChannelAndNotMegaGroup(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_3

    .line 9475
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$ChannelRecommendationsAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetprofileActivity(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getCurrentAccount()I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$ChannelRecommendationsAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetdialog_id(Lorg/telegram/ui/Components/SharedMediaLayout;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    if-nez v0, :cond_2

    goto/16 :goto_3

    .line 9480
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$ChannelRecommendationsAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetprofileActivity(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getCurrentAccount()I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$ChannelRecommendationsAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetdialog_id(Lorg/telegram/ui/Components/SharedMediaLayout;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MessagesController;->getChannelRecommendations(J)Lorg/telegram/messenger/MessagesController$ChannelRecommendations;

    move-result-object v0

    .line 9481
    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$ChannelRecommendationsAdapter;->chats:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    move v2, v1

    .line 9483
    :goto_0
    iget-object v3, v0, Lorg/telegram/messenger/MessagesController$ChannelRecommendations;->chats:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 9484
    iget-object v3, v0, Lorg/telegram/messenger/MessagesController$ChannelRecommendations;->chats:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLObject;

    .line 9485
    instance-of v4, v3, Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v4, :cond_3

    move-object v4, v3

    check-cast v4, Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v4}, Lorg/telegram/messenger/ChatObject;->isNotInChat(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 9486
    iget-object v4, p0, Lorg/telegram/ui/Components/SharedMediaLayout$ChannelRecommendationsAdapter;->chats:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 9488
    :cond_3
    iget-object v4, p0, Lorg/telegram/ui/Components/SharedMediaLayout$ChannelRecommendationsAdapter;->chats:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 9492
    :cond_4
    iget-object v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$ChannelRecommendationsAdapter;->chats:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$ChannelRecommendationsAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v2}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetprofileActivity(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getCurrentAccount()I

    move-result v2

    invoke-static {v2}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_2

    :cond_5
    iget v1, v0, Lorg/telegram/messenger/MessagesController$ChannelRecommendations;->more:I

    :cond_6
    :goto_2
    iput v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$ChannelRecommendationsAdapter;->more:I

    if-eqz p1, :cond_7

    .line 9494
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_7
    :goto_3
    return-void
.end method
