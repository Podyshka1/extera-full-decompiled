.class Lorg/telegram/ui/MessageStatisticActivity$ListAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/MessageStatisticActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lorg/telegram/ui/MessageStatisticActivity;


# direct methods
.method public static synthetic $r8$lambda$w6O3azHmXYS3cOKKFvDejJR18LE(Lorg/telegram/ui/MessageStatisticActivity$ListAdapter;Lorg/telegram/messenger/MessageObject;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/MessageStatisticActivity$ListAdapter;->lambda$onBindViewHolder$0(Lorg/telegram/messenger/MessageObject;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/MessageStatisticActivity;Landroid/content/Context;)V
    .locals 0

    .line 808
    iput-object p1, p0, Lorg/telegram/ui/MessageStatisticActivity$ListAdapter;->this$0:Lorg/telegram/ui/MessageStatisticActivity;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    .line 809
    iput-object p2, p0, Lorg/telegram/ui/MessageStatisticActivity$ListAdapter;->mContext:Landroid/content/Context;

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$0(Lorg/telegram/messenger/MessageObject;Landroid/view/View;)V
    .locals 2

    .line 972
    iget-object p2, p0, Lorg/telegram/ui/MessageStatisticActivity$ListAdapter;->this$0:Lorg/telegram/ui/MessageStatisticActivity;

    invoke-static {p2, p1}, Lorg/telegram/ui/MessageStatisticActivity;->-$$Nest$mcheckIsDeletedStory(Lorg/telegram/ui/MessageStatisticActivity;Lorg/telegram/messenger/MessageObject;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    .line 975
    :cond_0
    iget-object p2, p0, Lorg/telegram/ui/MessageStatisticActivity$ListAdapter;->this$0:Lorg/telegram/ui/MessageStatisticActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getOrCreateStoryViewer()Lorg/telegram/ui/Stories/StoryViewer;

    move-result-object p2

    iget-object v0, p0, Lorg/telegram/ui/MessageStatisticActivity$ListAdapter;->this$0:Lorg/telegram/ui/MessageStatisticActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object p1, p1, Lorg/telegram/messenger/MessageObject;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    iget-object v1, p0, Lorg/telegram/ui/MessageStatisticActivity$ListAdapter;->this$0:Lorg/telegram/ui/MessageStatisticActivity;

    invoke-static {v1}, Lorg/telegram/ui/MessageStatisticActivity;->-$$Nest$fgetlistView(Lorg/telegram/ui/MessageStatisticActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/ui/Stories/StoriesListPlaceProvider;->of(Lorg/telegram/ui/Components/RecyclerListView;)Lorg/telegram/ui/Stories/StoriesListPlaceProvider;

    move-result-object v1

    invoke-virtual {p2, v0, p1, v1}, Lorg/telegram/ui/Stories/StoryViewer;->open(Landroid/content/Context;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Lorg/telegram/ui/Stories/StoryViewer$PlaceProvider;)V

    return-void
.end method


# virtual methods
.method public getItem(I)Lorg/telegram/messenger/MessageObject;
    .locals 2

    .line 1056
    iget-object v0, p0, Lorg/telegram/ui/MessageStatisticActivity$ListAdapter;->this$0:Lorg/telegram/ui/MessageStatisticActivity;

    invoke-static {v0}, Lorg/telegram/ui/MessageStatisticActivity;->-$$Nest$fgetstartRow(Lorg/telegram/ui/MessageStatisticActivity;)I

    move-result v0

    if-lt p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/MessageStatisticActivity$ListAdapter;->this$0:Lorg/telegram/ui/MessageStatisticActivity;

    invoke-static {v0}, Lorg/telegram/ui/MessageStatisticActivity;->-$$Nest$fgetendRow(Lorg/telegram/ui/MessageStatisticActivity;)I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 1057
    iget-object v0, p0, Lorg/telegram/ui/MessageStatisticActivity$ListAdapter;->this$0:Lorg/telegram/ui/MessageStatisticActivity;

    invoke-static {v0}, Lorg/telegram/ui/MessageStatisticActivity;->-$$Nest$fgetmessages(Lorg/telegram/ui/MessageStatisticActivity;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/MessageStatisticActivity$ListAdapter;->this$0:Lorg/telegram/ui/MessageStatisticActivity;

    invoke-static {v1}, Lorg/telegram/ui/MessageStatisticActivity;->-$$Nest$fgetstartRow(Lorg/telegram/ui/MessageStatisticActivity;)I

    move-result v1

    sub-int/2addr p1, v1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/MessageObject;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    .line 824
    iget-object v0, p0, Lorg/telegram/ui/MessageStatisticActivity$ListAdapter;->this$0:Lorg/telegram/ui/MessageStatisticActivity;

    invoke-static {v0}, Lorg/telegram/ui/MessageStatisticActivity;->-$$Nest$fgetrowCount(Lorg/telegram/ui/MessageStatisticActivity;)I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 2

    .line 1037
    iget-object v0, p0, Lorg/telegram/ui/MessageStatisticActivity$ListAdapter;->this$0:Lorg/telegram/ui/MessageStatisticActivity;

    iget-object v0, v0, Lorg/telegram/ui/MessageStatisticActivity;->shadowDivideCells:Landroidx/collection/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/collection/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 1039
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/MessageStatisticActivity$ListAdapter;->this$0:Lorg/telegram/ui/MessageStatisticActivity;

    invoke-static {v0}, Lorg/telegram/ui/MessageStatisticActivity;->-$$Nest$fgetheaderRow(Lorg/telegram/ui/MessageStatisticActivity;)I

    move-result v0

    if-eq p1, v0, :cond_7

    iget-object v0, p0, Lorg/telegram/ui/MessageStatisticActivity$ListAdapter;->this$0:Lorg/telegram/ui/MessageStatisticActivity;

    invoke-static {v0}, Lorg/telegram/ui/MessageStatisticActivity;->-$$Nest$fgetoverviewHeaderRow(Lorg/telegram/ui/MessageStatisticActivity;)I

    move-result v0

    if-ne p1, v0, :cond_1

    goto :goto_0

    .line 1041
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/MessageStatisticActivity$ListAdapter;->this$0:Lorg/telegram/ui/MessageStatisticActivity;

    invoke-static {v0}, Lorg/telegram/ui/MessageStatisticActivity;->-$$Nest$fgetloadingRow(Lorg/telegram/ui/MessageStatisticActivity;)I

    move-result v0

    if-ne p1, v0, :cond_2

    const/4 p1, 0x3

    return p1

    .line 1043
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/MessageStatisticActivity$ListAdapter;->this$0:Lorg/telegram/ui/MessageStatisticActivity;

    invoke-static {v0}, Lorg/telegram/ui/MessageStatisticActivity;->-$$Nest$fgetinteractionsChartRow(Lorg/telegram/ui/MessageStatisticActivity;)I

    move-result v0

    if-ne p1, v0, :cond_3

    const/4 p1, 0x4

    return p1

    .line 1045
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/MessageStatisticActivity$ListAdapter;->this$0:Lorg/telegram/ui/MessageStatisticActivity;

    invoke-static {v0}, Lorg/telegram/ui/MessageStatisticActivity;->-$$Nest$fgetoverviewRow(Lorg/telegram/ui/MessageStatisticActivity;)I

    move-result v0

    if-ne p1, v0, :cond_4

    const/4 p1, 0x5

    return p1

    .line 1047
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/MessageStatisticActivity$ListAdapter;->this$0:Lorg/telegram/ui/MessageStatisticActivity;

    invoke-static {v0}, Lorg/telegram/ui/MessageStatisticActivity;->-$$Nest$fgetemptyRow(Lorg/telegram/ui/MessageStatisticActivity;)I

    move-result v0

    if-ne p1, v0, :cond_5

    const/4 p1, 0x6

    return p1

    .line 1049
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/MessageStatisticActivity$ListAdapter;->this$0:Lorg/telegram/ui/MessageStatisticActivity;

    invoke-static {v0}, Lorg/telegram/ui/MessageStatisticActivity;->-$$Nest$fgetreactionsByEmotionChartRow(Lorg/telegram/ui/MessageStatisticActivity;)I

    move-result v0

    if-ne p1, v0, :cond_6

    const/4 p1, 0x7

    return p1

    :cond_6
    const/4 p1, 0x0

    return p1

    :cond_7
    :goto_0
    const/4 p1, 0x2

    return p1
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 1

    .line 814
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    if-nez v0, :cond_0

    .line 816
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/ManageChatUserCell;

    .line 817
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ManageChatUserCell;->getCurrentObject()Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Lorg/telegram/tgnet/TLObject;

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 10

    .line 959
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_6

    if-eq v0, v2, :cond_5

    if-eq v0, v1, :cond_3

    const/4 p2, 0x4

    const/4 v1, -0x2

    const/4 v2, -0x1

    if-eq v0, p2, :cond_2

    const/4 p2, 0x5

    if-eq v0, p2, :cond_1

    const/4 p2, 0x7

    if-eq v0, p2, :cond_0

    goto/16 :goto_8

    .line 1021
    :cond_0
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/StatisticActivity$BaseChartCell;

    .line 1022
    iget-object p2, p0, Lorg/telegram/ui/MessageStatisticActivity$ListAdapter;->this$0:Lorg/telegram/ui/MessageStatisticActivity;

    invoke-static {p2}, Lorg/telegram/ui/MessageStatisticActivity;->-$$Nest$fgetreactionsByEmotionData(Lorg/telegram/ui/MessageStatisticActivity;)Lorg/telegram/ui/StatisticActivity$ChartViewData;

    move-result-object p2

    invoke-virtual {p1, p2, v3}, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->updateData(Lorg/telegram/ui/StatisticActivity$ChartViewData;Z)V

    .line 1023
    new-instance p2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    invoke-direct {p2, v2, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    .line 1017
    :cond_1
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/MessageStatisticActivity$OverviewCell;

    .line 1018
    invoke-virtual {p1}, Lorg/telegram/ui/MessageStatisticActivity$OverviewCell;->setData()V

    return-void

    .line 1012
    :cond_2
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/StatisticActivity$BaseChartCell;

    .line 1013
    iget-object p2, p0, Lorg/telegram/ui/MessageStatisticActivity$ListAdapter;->this$0:Lorg/telegram/ui/MessageStatisticActivity;

    invoke-static {p2}, Lorg/telegram/ui/MessageStatisticActivity;->-$$Nest$fgetinteractionsViewData(Lorg/telegram/ui/MessageStatisticActivity;)Lorg/telegram/ui/StatisticActivity$ChartViewData;

    move-result-object p2

    invoke-virtual {p1, p2, v3}, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->updateData(Lorg/telegram/ui/StatisticActivity$ChartViewData;Z)V

    .line 1014
    new-instance p2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    invoke-direct {p2, v2, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    .line 1000
    :cond_3
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/HeaderCell;

    .line 1001
    iget-object v0, p0, Lorg/telegram/ui/MessageStatisticActivity$ListAdapter;->this$0:Lorg/telegram/ui/MessageStatisticActivity;

    invoke-static {v0}, Lorg/telegram/ui/MessageStatisticActivity;->-$$Nest$fgetoverviewHeaderRow(Lorg/telegram/ui/MessageStatisticActivity;)I

    move-result v0

    if-ne p2, v0, :cond_4

    const/16 p2, 0x9

    .line 1002
    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/HeaderCell;->setTopMargin(I)V

    const/high16 p2, 0x41000000    # 8.0f

    .line 1003
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    invoke-virtual {p1, v3, v3, v3, p2}, Landroid/view/View;->setPadding(IIII)V

    .line 1004
    sget p2, Lorg/telegram/messenger/R$string;->StatisticOverview:I

    new-array v0, v3, [Ljava/lang/Object;

    const-string v1, "StatisticOverview"

    invoke-static {v1, p2, v0}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_4
    const/16 p2, 0xb

    .line 1006
    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/HeaderCell;->setTopMargin(I)V

    .line 1007
    invoke-virtual {p1, v3, v3, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 1008
    sget p2, Lorg/telegram/messenger/R$string;->PublicShares:I

    new-array v0, v3, [Ljava/lang/Object;

    const-string v1, "PublicShares"

    invoke-static {v1, p2, v0}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 997
    :cond_5
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object p2, p0, Lorg/telegram/ui/MessageStatisticActivity$ListAdapter;->mContext:Landroid/content/Context;

    sget v0, Lorg/telegram/messenger/R$drawable;->greydivider_bottom:I

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    invoke-static {p2, v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawableByKey(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 961
    :cond_6
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/ManageChatUserCell;

    .line 962
    invoke-virtual {p0, p2}, Lorg/telegram/ui/MessageStatisticActivity$ListAdapter;->getItem(I)Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    .line 963
    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v4}, Lorg/telegram/messenger/MessageObject;->getDialogId(Lorg/telegram/tgnet/TLRPC$Message;)J

    move-result-wide v4

    .line 966
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isStory()Z

    move-result v6

    const-string v7, "Views"

    const/4 v8, 0x0

    if-eqz v6, :cond_b

    .line 967
    invoke-static {v4, v5}, Lorg/telegram/messenger/DialogObject;->isUserDialog(J)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lorg/telegram/ui/MessageStatisticActivity$ListAdapter;->this$0:Lorg/telegram/ui/MessageStatisticActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v1

    goto :goto_0

    :cond_7
    iget-object v1, p0, Lorg/telegram/ui/MessageStatisticActivity$ListAdapter;->this$0:Lorg/telegram/ui/MessageStatisticActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    neg-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v1

    .line 968
    :goto_0
    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    iget-object v4, v4, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->views:Lorg/telegram/tgnet/tl/TL_stories$StoryViews;

    if-eqz v4, :cond_9

    iget v4, v4, Lorg/telegram/tgnet/tl/TL_stories$StoryViews;->views_count:I

    if-nez v4, :cond_8

    goto :goto_1

    .line 969
    :cond_8
    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v7, v4, v5}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_9
    :goto_1
    sget v4, Lorg/telegram/messenger/R$string;->NoViews:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 970
    :goto_2
    iget-object v5, p0, Lorg/telegram/ui/MessageStatisticActivity$ListAdapter;->this$0:Lorg/telegram/ui/MessageStatisticActivity;

    invoke-static {v5}, Lorg/telegram/ui/MessageStatisticActivity;->-$$Nest$fgetendRow(Lorg/telegram/ui/MessageStatisticActivity;)I

    move-result v5

    sub-int/2addr v5, v2

    if-eq p2, v5, :cond_a

    goto :goto_3

    :cond_a
    move v2, v3

    :goto_3
    invoke-virtual {p1, v1, v8, v4, v2}, Lorg/telegram/ui/Cells/ManageChatUserCell;->setData(Ljava/lang/Object;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    .line 971
    iget-object p2, v0, Lorg/telegram/messenger/MessageObject;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    new-instance v1, Lorg/telegram/ui/MessageStatisticActivity$ListAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0}, Lorg/telegram/ui/MessageStatisticActivity$ListAdapter$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/MessageStatisticActivity$ListAdapter;Lorg/telegram/messenger/MessageObject;)V

    invoke-virtual {p1, p2, v1}, Lorg/telegram/ui/Cells/ManageChatUserCell;->setStoryItem(Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Landroid/view/View$OnClickListener;)V

    return-void

    .line 978
    :cond_b
    invoke-virtual {p1, v8, v8}, Lorg/telegram/ui/Cells/ManageChatUserCell;->setStoryItem(Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Landroid/view/View$OnClickListener;)V

    .line 979
    invoke-static {v4, v5}, Lorg/telegram/messenger/DialogObject;->isUserDialog(J)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 980
    iget-object v0, p0, Lorg/telegram/ui/MessageStatisticActivity$ListAdapter;->this$0:Lorg/telegram/ui/MessageStatisticActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    :goto_4
    move-object v1, v8

    goto :goto_6

    .line 982
    :cond_c
    iget-object v6, p0, Lorg/telegram/ui/MessageStatisticActivity$ListAdapter;->this$0:Lorg/telegram/ui/MessageStatisticActivity;

    invoke-virtual {v6}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    neg-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v6, v4}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v4

    .line 984
    invoke-static {v4}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v5

    if-eqz v5, :cond_d

    iget-boolean v5, v4, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez v5, :cond_d

    .line 985
    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->views:I

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v7, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_5
    move-object v1, v0

    move-object v0, v4

    goto :goto_6

    .line 986
    :cond_d
    iget v5, v4, Lorg/telegram/tgnet/TLRPC$Chat;->participants_count:I

    if-eqz v5, :cond_e

    .line 987
    const-string v6, "Members"

    new-array v9, v3, [Ljava/lang/Object;

    invoke-static {v6, v5, v9}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 988
    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->views:I

    new-array v6, v3, [Ljava/lang/Object;

    invoke-static {v7, v0, v6}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v5, v1, v3

    aput-object v0, v1, v2

    const-string v0, "%1$s, %2$s"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :cond_e
    move-object v0, v4

    goto :goto_4

    :goto_6
    if-eqz v0, :cond_10

    .line 992
    iget-object v4, p0, Lorg/telegram/ui/MessageStatisticActivity$ListAdapter;->this$0:Lorg/telegram/ui/MessageStatisticActivity;

    invoke-static {v4}, Lorg/telegram/ui/MessageStatisticActivity;->-$$Nest$fgetendRow(Lorg/telegram/ui/MessageStatisticActivity;)I

    move-result v4

    sub-int/2addr v4, v2

    if-eq p2, v4, :cond_f

    goto :goto_7

    :cond_f
    move v2, v3

    :goto_7
    invoke-virtual {p1, v0, v8, v1, v2}, Lorg/telegram/ui/Cells/ManageChatUserCell;->setData(Ljava/lang/Object;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    :cond_10
    :goto_8
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 13

    if-eqz p2, :cond_6

    const/4 p1, 0x1

    if-eq p2, p1, :cond_5

    const/4 v0, 0x2

    if-eq p2, v0, :cond_4

    const/4 v1, 0x4

    if-eq p2, v1, :cond_2

    const/4 v2, 0x5

    const/4 v3, -0x1

    if-eq p2, v2, :cond_1

    const/4 v2, 0x6

    if-eq p2, v2, :cond_0

    const/4 v2, 0x7

    if-eq p2, v2, :cond_2

    .line 951
    new-instance p1, Lorg/telegram/ui/Cells/LoadingCell;

    iget-object p2, p0, Lorg/telegram/ui/MessageStatisticActivity$ListAdapter;->mContext:Landroid/content/Context;

    const/high16 v0, 0x42200000    # 40.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    const/high16 v1, 0x42f00000    # 120.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-direct {p1, p2, v0, v1}, Lorg/telegram/ui/Cells/LoadingCell;-><init>(Landroid/content/Context;II)V

    :goto_0
    move-object v5, p0

    goto/16 :goto_3

    .line 946
    :cond_0
    new-instance p1, Lorg/telegram/ui/Cells/EmptyCell;

    iget-object p2, p0, Lorg/telegram/ui/MessageStatisticActivity$ListAdapter;->mContext:Landroid/content/Context;

    const/16 v0, 0x10

    invoke-direct {p1, p2, v0}, Lorg/telegram/ui/Cells/EmptyCell;-><init>(Landroid/content/Context;I)V

    .line 947
    new-instance p2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    invoke-direct {p2, v3, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 942
    :cond_1
    new-instance p1, Lorg/telegram/ui/MessageStatisticActivity$OverviewCell;

    iget-object p2, p0, Lorg/telegram/ui/MessageStatisticActivity$ListAdapter;->this$0:Lorg/telegram/ui/MessageStatisticActivity;

    iget-object v0, p0, Lorg/telegram/ui/MessageStatisticActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2, v0}, Lorg/telegram/ui/MessageStatisticActivity$OverviewCell;-><init>(Lorg/telegram/ui/MessageStatisticActivity;Landroid/content/Context;)V

    .line 943
    new-instance p2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {p2, v3, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 846
    :cond_2
    new-instance v4, Lorg/telegram/ui/MessageStatisticActivity$ListAdapter$1;

    iget-object v6, p0, Lorg/telegram/ui/MessageStatisticActivity$ListAdapter;->mContext:Landroid/content/Context;

    if-ne p2, v1, :cond_3

    move v7, p1

    goto :goto_1

    :cond_3
    move v7, v0

    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/MessageStatisticActivity$ListAdapter;->this$0:Lorg/telegram/ui/MessageStatisticActivity;

    new-instance v8, Lorg/telegram/ui/Charts/BaseChartView$SharedUiComponents;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object p2

    invoke-direct {v8, p2}, Lorg/telegram/ui/Charts/BaseChartView$SharedUiComponents;-><init>(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-static {p1, v8}, Lorg/telegram/ui/MessageStatisticActivity;->-$$Nest$fputsharedUi(Lorg/telegram/ui/MessageStatisticActivity;Lorg/telegram/ui/Charts/BaseChartView$SharedUiComponents;)V

    iget-object p1, p0, Lorg/telegram/ui/MessageStatisticActivity$ListAdapter;->this$0:Lorg/telegram/ui/MessageStatisticActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v9

    move-object v5, p0

    invoke-direct/range {v4 .. v9}, Lorg/telegram/ui/MessageStatisticActivity$ListAdapter$1;-><init>(Lorg/telegram/ui/MessageStatisticActivity$ListAdapter;Landroid/content/Context;ILorg/telegram/ui/Charts/BaseChartView$SharedUiComponents;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    move-object p1, v4

    goto :goto_3

    :cond_4
    move-object v5, p0

    .line 840
    new-instance v6, Lorg/telegram/ui/Cells/HeaderCell;

    iget-object v7, v5, Lorg/telegram/ui/MessageStatisticActivity$ListAdapter;->mContext:Landroid/content/Context;

    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    iget-object p1, v5, Lorg/telegram/ui/MessageStatisticActivity$ListAdapter;->this$0:Lorg/telegram/ui/MessageStatisticActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v12

    const/16 v9, 0x10

    const/16 v10, 0xb

    const/4 v11, 0x0

    invoke-direct/range {v6 .. v12}, Lorg/telegram/ui/Cells/HeaderCell;-><init>(Landroid/content/Context;IIIZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/16 p1, 0x2b

    .line 841
    invoke-virtual {v6, p1}, Lorg/telegram/ui/Cells/HeaderCell;->setHeight(I)V

    :goto_2
    move-object p1, v6

    goto :goto_3

    :cond_5
    move-object v5, p0

    .line 837
    new-instance p1, Lorg/telegram/ui/Cells/ShadowSectionCell;

    iget-object p2, v5, Lorg/telegram/ui/MessageStatisticActivity$ListAdapter;->mContext:Landroid/content/Context;

    iget-object v0, v5, Lorg/telegram/ui/MessageStatisticActivity$ListAdapter;->this$0:Lorg/telegram/ui/MessageStatisticActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lorg/telegram/ui/Cells/ShadowSectionCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    goto :goto_3

    :cond_6
    move-object v5, p0

    .line 832
    new-instance v6, Lorg/telegram/ui/Cells/ManageChatUserCell;

    iget-object v7, v5, Lorg/telegram/ui/MessageStatisticActivity$ListAdapter;->mContext:Landroid/content/Context;

    iget-object p1, v5, Lorg/telegram/ui/MessageStatisticActivity$ListAdapter;->this$0:Lorg/telegram/ui/MessageStatisticActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v11

    const/4 v8, 0x6

    const/4 v9, 0x2

    const/4 v10, 0x0

    invoke-direct/range {v6 .. v11}, Lorg/telegram/ui/Cells/ManageChatUserCell;-><init>(Landroid/content/Context;IIZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 833
    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_divider:I

    invoke-virtual {v6, p1}, Lorg/telegram/ui/Cells/ManageChatUserCell;->setDividerColor(I)V

    goto :goto_2

    .line 954
    :goto_3
    new-instance p2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 1

    .line 1030
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v0, p1, Lorg/telegram/ui/Cells/ManageChatUserCell;

    if-eqz v0, :cond_0

    .line 1031
    check-cast p1, Lorg/telegram/ui/Cells/ManageChatUserCell;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ManageChatUserCell;->recycle()V

    :cond_0
    return-void
.end method
