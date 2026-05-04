.class Lorg/telegram/ui/StatisticActivity$Adapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/StatisticActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Adapter"
.end annotation


# instance fields
.field actionsCell:I

.field count:I

.field emptyCells:Landroidx/collection/ArraySet;

.field expandTopMembersRow:I

.field folowersCell:I

.field groupMembersCell:I

.field growCell:I

.field interactionsCell:I

.field ivInteractionsCell:I

.field languagesCell:I

.field membersLanguageCell:I

.field messagesCell:I

.field newFollowersBySourceCell:I

.field newMembersBySourceCell:I

.field notificationsCell:I

.field overviewCell:I

.field overviewHeaderCell:I

.field progressCell:I

.field reactionsByEmotionCell:I

.field recentPostsEndRow:I

.field recentPostsHeaderCell:I

.field recentPostsStartRow:I

.field shadowDivideCells:Landroidx/collection/ArraySet;

.field storyInteractionsCell:I

.field storyReactionsByEmotionCell:I

.field final synthetic this$0:Lorg/telegram/ui/StatisticActivity;

.field topAdminsEndRow:I

.field topAdminsHeaderCell:I

.field topAdminsStartRow:I

.field topDayOfWeeksCell:I

.field topHourseCell:I

.field topInviterEndRow:I

.field topInviterHeaderCell:I

.field topInviterStartRow:I

.field topMembersEndRow:I

.field topMembersHeaderCell:I

.field topMembersStartRow:I

.field viewsBySourceCell:I


# direct methods
.method public static synthetic $r8$lambda$e4eMoW2OcnJPFJxqEV0XkrjYVAs(Lorg/telegram/ui/StatisticActivity$Adapter;Lorg/telegram/ui/StatisticActivity$RecentPostInfo;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/StatisticActivity$Adapter;->lambda$onBindViewHolder$0(Lorg/telegram/ui/StatisticActivity$RecentPostInfo;Landroid/view/View;)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/StatisticActivity;)V
    .locals 0

    .line 1126
    iput-object p1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->this$0:Lorg/telegram/ui/StatisticActivity;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    const/4 p1, -0x1

    .line 1128
    iput p1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->overviewHeaderCell:I

    .line 1130
    iput p1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->growCell:I

    .line 1131
    iput p1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->progressCell:I

    .line 1134
    iput p1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->folowersCell:I

    .line 1135
    iput p1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->topHourseCell:I

    .line 1136
    iput p1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->interactionsCell:I

    .line 1137
    iput p1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->ivInteractionsCell:I

    .line 1138
    iput p1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->viewsBySourceCell:I

    .line 1139
    iput p1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->newFollowersBySourceCell:I

    .line 1140
    iput p1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->languagesCell:I

    .line 1141
    iput p1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->notificationsCell:I

    .line 1142
    iput p1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->reactionsByEmotionCell:I

    .line 1143
    iput p1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->storyInteractionsCell:I

    .line 1144
    iput p1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->storyReactionsByEmotionCell:I

    .line 1146
    iput p1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->recentPostsHeaderCell:I

    .line 1147
    iput p1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->recentPostsStartRow:I

    .line 1148
    iput p1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->recentPostsEndRow:I

    .line 1151
    iput p1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->groupMembersCell:I

    .line 1152
    iput p1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->newMembersBySourceCell:I

    .line 1153
    iput p1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->membersLanguageCell:I

    .line 1154
    iput p1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->messagesCell:I

    .line 1155
    iput p1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->actionsCell:I

    .line 1156
    iput p1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->topDayOfWeeksCell:I

    .line 1157
    iput p1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->topMembersHeaderCell:I

    .line 1158
    iput p1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->topMembersStartRow:I

    .line 1159
    iput p1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->topMembersEndRow:I

    .line 1160
    iput p1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->topAdminsHeaderCell:I

    .line 1161
    iput p1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->topAdminsStartRow:I

    .line 1162
    iput p1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->topAdminsEndRow:I

    .line 1163
    iput p1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->topInviterHeaderCell:I

    .line 1164
    iput p1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->topInviterStartRow:I

    .line 1165
    iput p1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->topInviterEndRow:I

    .line 1166
    iput p1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->expandTopMembersRow:I

    .line 1169
    new-instance p1, Landroidx/collection/ArraySet;

    invoke-direct {p1}, Landroidx/collection/ArraySet;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->shadowDivideCells:Landroidx/collection/ArraySet;

    .line 1170
    new-instance p1, Landroidx/collection/ArraySet;

    invoke-direct {p1}, Landroidx/collection/ArraySet;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->emptyCells:Landroidx/collection/ArraySet;

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$0(Lorg/telegram/ui/StatisticActivity$RecentPostInfo;Landroid/view/View;)V
    .locals 3

    .line 1366
    iget-object p2, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->this$0:Lorg/telegram/ui/StatisticActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getOrCreateStoryViewer()Lorg/telegram/ui/Stories/StoryViewer;

    move-result-object p2

    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->this$0:Lorg/telegram/ui/StatisticActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lorg/telegram/ui/StatisticActivity$RecentPostInfo;->getId()I

    move-result p1

    iget-object v1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->this$0:Lorg/telegram/ui/StatisticActivity;

    invoke-static {v1}, Lorg/telegram/ui/StatisticActivity;->-$$Nest$fgetstoriesList(Lorg/telegram/ui/StatisticActivity;)Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->this$0:Lorg/telegram/ui/StatisticActivity;

    invoke-static {v2}, Lorg/telegram/ui/StatisticActivity;->-$$Nest$fgetrecyclerListView(Lorg/telegram/ui/StatisticActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/ui/Stories/StoriesListPlaceProvider;->of(Lorg/telegram/ui/Components/RecyclerListView;)Lorg/telegram/ui/Stories/StoriesListPlaceProvider;

    move-result-object v2

    invoke-virtual {p2, v0, p1, v1, v2}, Lorg/telegram/ui/Stories/StoryViewer;->open(Landroid/content/Context;ILorg/telegram/ui/Stories/StoriesController$StoriesList;Lorg/telegram/ui/Stories/StoryViewer$PlaceProvider;)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 1404
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    .line 1208
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->recentPostsStartRow:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->recentPostsEndRow:I

    if-ge p1, v0, :cond_0

    .line 1209
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->this$0:Lorg/telegram/ui/StatisticActivity;

    invoke-static {v0}, Lorg/telegram/ui/StatisticActivity;->-$$Nest$fgetrecentAllSortedDataLoaded(Lorg/telegram/ui/StatisticActivity;)Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->recentPostsStartRow:I

    sub-int/2addr p1, v1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/StatisticActivity$RecentPostInfo;

    invoke-virtual {p1}, Lorg/telegram/ui/StatisticActivity$RecentPostInfo;->getId()I

    move-result p1

    int-to-long v0, p1

    return-wide v0

    .line 1211
    :cond_0
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->growCell:I

    if-ne p1, v0, :cond_1

    const-wide/16 v0, 0x1

    return-wide v0

    .line 1213
    :cond_1
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->folowersCell:I

    if-ne p1, v0, :cond_2

    const-wide/16 v0, 0x2

    return-wide v0

    .line 1215
    :cond_2
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->topHourseCell:I

    if-ne p1, v0, :cond_3

    const-wide/16 v0, 0x3

    return-wide v0

    .line 1217
    :cond_3
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->interactionsCell:I

    if-ne p1, v0, :cond_4

    const-wide/16 v0, 0x4

    return-wide v0

    .line 1219
    :cond_4
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->notificationsCell:I

    if-ne p1, v0, :cond_5

    const-wide/16 v0, 0x5

    return-wide v0

    .line 1221
    :cond_5
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->ivInteractionsCell:I

    if-ne p1, v0, :cond_6

    const-wide/16 v0, 0x6

    return-wide v0

    .line 1223
    :cond_6
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->viewsBySourceCell:I

    if-ne p1, v0, :cond_7

    const-wide/16 v0, 0x7

    return-wide v0

    .line 1225
    :cond_7
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->newFollowersBySourceCell:I

    if-ne p1, v0, :cond_8

    const-wide/16 v0, 0x8

    return-wide v0

    .line 1227
    :cond_8
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->languagesCell:I

    if-ne p1, v0, :cond_9

    const-wide/16 v0, 0x9

    return-wide v0

    .line 1229
    :cond_9
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->groupMembersCell:I

    if-ne p1, v0, :cond_a

    const-wide/16 v0, 0xa

    return-wide v0

    .line 1231
    :cond_a
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->newMembersBySourceCell:I

    if-ne p1, v0, :cond_b

    const-wide/16 v0, 0xb

    return-wide v0

    .line 1233
    :cond_b
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->membersLanguageCell:I

    if-ne p1, v0, :cond_c

    const-wide/16 v0, 0xc

    return-wide v0

    .line 1235
    :cond_c
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->messagesCell:I

    if-ne p1, v0, :cond_d

    const-wide/16 v0, 0xd

    return-wide v0

    .line 1237
    :cond_d
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->actionsCell:I

    if-ne p1, v0, :cond_e

    const-wide/16 v0, 0xe

    return-wide v0

    .line 1239
    :cond_e
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->topDayOfWeeksCell:I

    if-ne p1, v0, :cond_f

    const-wide/16 v0, 0xf

    return-wide v0

    .line 1241
    :cond_f
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->reactionsByEmotionCell:I

    if-ne p1, v0, :cond_10

    const-wide/16 v0, 0x10

    return-wide v0

    .line 1243
    :cond_10
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->storyInteractionsCell:I

    if-ne p1, v0, :cond_11

    const-wide/16 v0, 0x11

    return-wide v0

    .line 1245
    :cond_11
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->storyReactionsByEmotionCell:I

    if-ne p1, v0, :cond_12

    const-wide/16 v0, 0x12

    return-wide v0

    .line 1248
    :cond_12
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 3

    .line 1176
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->growCell:I

    if-eq p1, v0, :cond_12

    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->folowersCell:I

    if-eq p1, v0, :cond_12

    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->topHourseCell:I

    if-eq p1, v0, :cond_12

    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->notificationsCell:I

    if-eq p1, v0, :cond_12

    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->actionsCell:I

    if-eq p1, v0, :cond_12

    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->groupMembersCell:I

    if-ne p1, v0, :cond_0

    goto/16 :goto_4

    .line 1178
    :cond_0
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->interactionsCell:I

    if-eq p1, v0, :cond_11

    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->ivInteractionsCell:I

    if-eq p1, v0, :cond_11

    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->storyInteractionsCell:I

    if-ne p1, v0, :cond_1

    goto/16 :goto_3

    .line 1180
    :cond_1
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->viewsBySourceCell:I

    if-eq p1, v0, :cond_10

    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->newFollowersBySourceCell:I

    if-eq p1, v0, :cond_10

    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->newMembersBySourceCell:I

    if-eq p1, v0, :cond_10

    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->messagesCell:I

    if-eq p1, v0, :cond_10

    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->reactionsByEmotionCell:I

    if-eq p1, v0, :cond_10

    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->storyReactionsByEmotionCell:I

    if-ne p1, v0, :cond_2

    goto/16 :goto_2

    .line 1182
    :cond_2
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->languagesCell:I

    if-eq p1, v0, :cond_f

    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->membersLanguageCell:I

    if-eq p1, v0, :cond_f

    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->topDayOfWeeksCell:I

    if-ne p1, v0, :cond_3

    goto :goto_1

    .line 1184
    :cond_3
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->recentPostsStartRow:I

    const/16 v1, 0x9

    if-lt p1, v0, :cond_4

    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->recentPostsEndRow:I

    if-gt p1, v0, :cond_4

    return v1

    .line 1186
    :cond_4
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->progressCell:I

    if-ne p1, v0, :cond_5

    const/16 p1, 0xb

    return p1

    .line 1188
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->emptyCells:Landroidx/collection/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/collection/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 p1, 0xc

    return p1

    .line 1190
    :cond_6
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->recentPostsHeaderCell:I

    if-eq p1, v0, :cond_e

    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->overviewHeaderCell:I

    if-eq p1, v0, :cond_e

    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->topAdminsHeaderCell:I

    if-eq p1, v0, :cond_e

    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->topMembersHeaderCell:I

    if-eq p1, v0, :cond_e

    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->topInviterHeaderCell:I

    if-ne p1, v0, :cond_7

    goto :goto_0

    .line 1193
    :cond_7
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->overviewCell:I

    if-ne p1, v0, :cond_8

    const/16 p1, 0xe

    return p1

    .line 1195
    :cond_8
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->topAdminsStartRow:I

    if-lt p1, v0, :cond_9

    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->topAdminsEndRow:I

    if-le p1, v0, :cond_b

    :cond_9
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->topMembersStartRow:I

    if-lt p1, v0, :cond_a

    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->topMembersEndRow:I

    if-le p1, v0, :cond_b

    :cond_a
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->topInviterStartRow:I

    if-lt p1, v0, :cond_c

    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->topInviterEndRow:I

    if-gt p1, v0, :cond_c

    :cond_b
    return v1

    .line 1199
    :cond_c
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->expandTopMembersRow:I

    if-ne p1, v0, :cond_d

    const/16 p1, 0xf

    return p1

    :cond_d
    const/16 p1, 0xa

    return p1

    :cond_e
    :goto_0
    const/16 p1, 0xd

    return p1

    :cond_f
    :goto_1
    const/4 p1, 0x4

    return p1

    :cond_10
    :goto_2
    const/4 p1, 0x2

    return p1

    :cond_11
    :goto_3
    const/4 p1, 0x1

    return p1

    :cond_12
    :goto_4
    const/4 p1, 0x0

    return p1
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 2

    .line 1642
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result p1

    const/16 v0, 0xf

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 6

    .line 1307
    invoke-virtual {p0, p2}, Lorg/telegram/ui/StatisticActivity$Adapter;->getItemViewType(I)I

    move-result v0

    const/4 v1, 0x0

    if-ltz v0, :cond_11

    const/4 v2, 0x4

    if-gt v0, v2, :cond_11

    .line 1310
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->growCell:I

    if-ne v0, p2, :cond_0

    .line 1311
    iget-object p2, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->this$0:Lorg/telegram/ui/StatisticActivity;

    invoke-static {p2}, Lorg/telegram/ui/StatisticActivity;->-$$Nest$fgetgrowthData(Lorg/telegram/ui/StatisticActivity;)Lorg/telegram/ui/StatisticActivity$ChartViewData;

    move-result-object p2

    goto/16 :goto_0

    .line 1312
    :cond_0
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->folowersCell:I

    if-ne v0, p2, :cond_1

    .line 1313
    iget-object p2, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->this$0:Lorg/telegram/ui/StatisticActivity;

    invoke-static {p2}, Lorg/telegram/ui/StatisticActivity;->-$$Nest$fgetfollowersData(Lorg/telegram/ui/StatisticActivity;)Lorg/telegram/ui/StatisticActivity$ChartViewData;

    move-result-object p2

    goto/16 :goto_0

    .line 1314
    :cond_1
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->interactionsCell:I

    if-ne v0, p2, :cond_2

    .line 1315
    iget-object p2, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->this$0:Lorg/telegram/ui/StatisticActivity;

    invoke-static {p2}, Lorg/telegram/ui/StatisticActivity;->-$$Nest$fgetinteractionsData(Lorg/telegram/ui/StatisticActivity;)Lorg/telegram/ui/StatisticActivity$ChartViewData;

    move-result-object p2

    goto/16 :goto_0

    .line 1316
    :cond_2
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->viewsBySourceCell:I

    if-ne v0, p2, :cond_3

    .line 1317
    iget-object p2, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->this$0:Lorg/telegram/ui/StatisticActivity;

    invoke-static {p2}, Lorg/telegram/ui/StatisticActivity;->-$$Nest$fgetviewsBySourceData(Lorg/telegram/ui/StatisticActivity;)Lorg/telegram/ui/StatisticActivity$ChartViewData;

    move-result-object p2

    goto/16 :goto_0

    .line 1318
    :cond_3
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->newFollowersBySourceCell:I

    if-ne v0, p2, :cond_4

    .line 1319
    iget-object p2, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->this$0:Lorg/telegram/ui/StatisticActivity;

    invoke-static {p2}, Lorg/telegram/ui/StatisticActivity;->-$$Nest$fgetnewFollowersBySourceData(Lorg/telegram/ui/StatisticActivity;)Lorg/telegram/ui/StatisticActivity$ChartViewData;

    move-result-object p2

    goto/16 :goto_0

    .line 1320
    :cond_4
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->ivInteractionsCell:I

    if-ne v0, p2, :cond_5

    .line 1321
    iget-object p2, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->this$0:Lorg/telegram/ui/StatisticActivity;

    invoke-static {p2}, Lorg/telegram/ui/StatisticActivity;->-$$Nest$fgetivInteractionsData(Lorg/telegram/ui/StatisticActivity;)Lorg/telegram/ui/StatisticActivity$ChartViewData;

    move-result-object p2

    goto/16 :goto_0

    .line 1322
    :cond_5
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->topHourseCell:I

    if-ne v0, p2, :cond_6

    .line 1323
    iget-object p2, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->this$0:Lorg/telegram/ui/StatisticActivity;

    invoke-static {p2}, Lorg/telegram/ui/StatisticActivity;->-$$Nest$fgettopHoursData(Lorg/telegram/ui/StatisticActivity;)Lorg/telegram/ui/StatisticActivity$ChartViewData;

    move-result-object p2

    goto/16 :goto_0

    .line 1324
    :cond_6
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->notificationsCell:I

    if-ne v0, p2, :cond_7

    .line 1325
    iget-object p2, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->this$0:Lorg/telegram/ui/StatisticActivity;

    invoke-static {p2}, Lorg/telegram/ui/StatisticActivity;->-$$Nest$fgetnotificationsData(Lorg/telegram/ui/StatisticActivity;)Lorg/telegram/ui/StatisticActivity$ChartViewData;

    move-result-object p2

    goto/16 :goto_0

    .line 1326
    :cond_7
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->reactionsByEmotionCell:I

    if-ne v0, p2, :cond_8

    .line 1327
    iget-object p2, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->this$0:Lorg/telegram/ui/StatisticActivity;

    invoke-static {p2}, Lorg/telegram/ui/StatisticActivity;->-$$Nest$fgetreactionsByEmotionData(Lorg/telegram/ui/StatisticActivity;)Lorg/telegram/ui/StatisticActivity$ChartViewData;

    move-result-object p2

    goto :goto_0

    .line 1328
    :cond_8
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->storyInteractionsCell:I

    if-ne v0, p2, :cond_9

    .line 1329
    iget-object p2, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->this$0:Lorg/telegram/ui/StatisticActivity;

    invoke-static {p2}, Lorg/telegram/ui/StatisticActivity;->-$$Nest$fgetstoryInteractionsData(Lorg/telegram/ui/StatisticActivity;)Lorg/telegram/ui/StatisticActivity$ChartViewData;

    move-result-object p2

    goto :goto_0

    .line 1330
    :cond_9
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->storyReactionsByEmotionCell:I

    if-ne v0, p2, :cond_a

    .line 1331
    iget-object p2, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->this$0:Lorg/telegram/ui/StatisticActivity;

    invoke-static {p2}, Lorg/telegram/ui/StatisticActivity;->-$$Nest$fgetstoryReactionsByEmotionData(Lorg/telegram/ui/StatisticActivity;)Lorg/telegram/ui/StatisticActivity$ChartViewData;

    move-result-object p2

    goto :goto_0

    .line 1332
    :cond_a
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->groupMembersCell:I

    if-ne v0, p2, :cond_b

    .line 1333
    iget-object p2, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->this$0:Lorg/telegram/ui/StatisticActivity;

    invoke-static {p2}, Lorg/telegram/ui/StatisticActivity;->-$$Nest$fgetgroupMembersData(Lorg/telegram/ui/StatisticActivity;)Lorg/telegram/ui/StatisticActivity$ChartViewData;

    move-result-object p2

    goto :goto_0

    .line 1334
    :cond_b
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->newMembersBySourceCell:I

    if-ne v0, p2, :cond_c

    .line 1335
    iget-object p2, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->this$0:Lorg/telegram/ui/StatisticActivity;

    invoke-static {p2}, Lorg/telegram/ui/StatisticActivity;->-$$Nest$fgetnewMembersBySourceData(Lorg/telegram/ui/StatisticActivity;)Lorg/telegram/ui/StatisticActivity$ChartViewData;

    move-result-object p2

    goto :goto_0

    .line 1336
    :cond_c
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->membersLanguageCell:I

    if-ne v0, p2, :cond_d

    .line 1337
    iget-object p2, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->this$0:Lorg/telegram/ui/StatisticActivity;

    invoke-static {p2}, Lorg/telegram/ui/StatisticActivity;->-$$Nest$fgetmembersLanguageData(Lorg/telegram/ui/StatisticActivity;)Lorg/telegram/ui/StatisticActivity$ChartViewData;

    move-result-object p2

    goto :goto_0

    .line 1338
    :cond_d
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->messagesCell:I

    if-ne v0, p2, :cond_e

    .line 1339
    iget-object p2, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->this$0:Lorg/telegram/ui/StatisticActivity;

    invoke-static {p2}, Lorg/telegram/ui/StatisticActivity;->-$$Nest$fgetmessagesData(Lorg/telegram/ui/StatisticActivity;)Lorg/telegram/ui/StatisticActivity$ChartViewData;

    move-result-object p2

    goto :goto_0

    .line 1340
    :cond_e
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->actionsCell:I

    if-ne v0, p2, :cond_f

    .line 1341
    iget-object p2, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->this$0:Lorg/telegram/ui/StatisticActivity;

    invoke-static {p2}, Lorg/telegram/ui/StatisticActivity;->-$$Nest$fgetactionsData(Lorg/telegram/ui/StatisticActivity;)Lorg/telegram/ui/StatisticActivity$ChartViewData;

    move-result-object p2

    goto :goto_0

    .line 1342
    :cond_f
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->topDayOfWeeksCell:I

    if-ne v0, p2, :cond_10

    .line 1343
    iget-object p2, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->this$0:Lorg/telegram/ui/StatisticActivity;

    invoke-static {p2}, Lorg/telegram/ui/StatisticActivity;->-$$Nest$fgettopDayOfWeeksData(Lorg/telegram/ui/StatisticActivity;)Lorg/telegram/ui/StatisticActivity$ChartViewData;

    move-result-object p2

    goto :goto_0

    .line 1345
    :cond_10
    iget-object p2, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->this$0:Lorg/telegram/ui/StatisticActivity;

    invoke-static {p2}, Lorg/telegram/ui/StatisticActivity;->-$$Nest$fgetlanguagesData(Lorg/telegram/ui/StatisticActivity;)Lorg/telegram/ui/StatisticActivity$ChartViewData;

    move-result-object p2

    .line 1347
    :goto_0
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/StatisticActivity$ChartCell;

    invoke-virtual {p1, p2, v1}, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->updateData(Lorg/telegram/ui/StatisticActivity$ChartViewData;Z)V

    return-void

    :cond_11
    const/16 v2, 0x9

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v0, v2, :cond_17

    .line 1349
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->this$0:Lorg/telegram/ui/StatisticActivity;

    invoke-static {v0}, Lorg/telegram/ui/StatisticActivity;->-$$Nest$fgetisMegagroup(Lorg/telegram/ui/StatisticActivity;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1350
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->topAdminsStartRow:I

    if-lt p2, v0, :cond_12

    iget v1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->topAdminsEndRow:I

    if-gt p2, v1, :cond_12

    sub-int/2addr p2, v0

    .line 1352
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/StatisticPostInfoCell;

    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->this$0:Lorg/telegram/ui/StatisticActivity;

    invoke-static {v0}, Lorg/telegram/ui/StatisticActivity;->-$$Nest$fgettopAdmins(Lorg/telegram/ui/StatisticActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/ui/StatisticActivity$MemberData;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/StatisticPostInfoCell;->setData(Lorg/telegram/ui/StatisticActivity$MemberData;)V

    return-void

    .line 1353
    :cond_12
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->topMembersStartRow:I

    if-lt p2, v0, :cond_13

    iget v1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->topMembersEndRow:I

    if-gt p2, v1, :cond_13

    sub-int/2addr p2, v0

    .line 1355
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/StatisticPostInfoCell;

    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->this$0:Lorg/telegram/ui/StatisticActivity;

    invoke-static {v0}, Lorg/telegram/ui/StatisticActivity;->-$$Nest$fgettopMembersVisible(Lorg/telegram/ui/StatisticActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/ui/StatisticActivity$MemberData;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/StatisticPostInfoCell;->setData(Lorg/telegram/ui/StatisticActivity$MemberData;)V

    return-void

    .line 1356
    :cond_13
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->topInviterStartRow:I

    if-lt p2, v0, :cond_1f

    iget v1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->topInviterEndRow:I

    if-gt p2, v1, :cond_1f

    sub-int/2addr p2, v0

    .line 1358
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/StatisticPostInfoCell;

    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->this$0:Lorg/telegram/ui/StatisticActivity;

    invoke-static {v0}, Lorg/telegram/ui/StatisticActivity;->-$$Nest$fgettopInviters(Lorg/telegram/ui/StatisticActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/ui/StatisticActivity$MemberData;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/StatisticPostInfoCell;->setData(Lorg/telegram/ui/StatisticActivity$MemberData;)V

    return-void

    .line 1361
    :cond_14
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->recentPostsStartRow:I

    sub-int/2addr p2, v0

    .line 1362
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->this$0:Lorg/telegram/ui/StatisticActivity;

    invoke-static {v0}, Lorg/telegram/ui/StatisticActivity;->-$$Nest$fgetrecentAllSortedDataLoaded(Lorg/telegram/ui/StatisticActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/StatisticActivity$RecentPostInfo;

    .line 1363
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/StatisticPostInfoCell;

    .line 1364
    iget-object v2, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->this$0:Lorg/telegram/ui/StatisticActivity;

    invoke-static {v2}, Lorg/telegram/ui/StatisticActivity;->-$$Nest$fgetrecentAllSortedDataLoaded(Lorg/telegram/ui/StatisticActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v4

    if-ne p2, v2, :cond_15

    move v1, v4

    :cond_15
    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Cells/StatisticPostInfoCell;->setData(Lorg/telegram/ui/StatisticActivity$RecentPostInfo;Z)V

    .line 1365
    invoke-virtual {v0}, Lorg/telegram/ui/StatisticActivity$RecentPostInfo;->isStory()Z

    move-result p2

    if-eqz p2, :cond_16

    .line 1366
    new-instance p2, Lorg/telegram/ui/StatisticActivity$Adapter$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0, v0}, Lorg/telegram/ui/StatisticActivity$Adapter$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/StatisticActivity$Adapter;Lorg/telegram/ui/StatisticActivity$RecentPostInfo;)V

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/StatisticPostInfoCell;->setImageViewAction(Landroid/view/View$OnClickListener;)V

    return-void

    .line 1368
    :cond_16
    invoke-virtual {p1, v3}, Lorg/telegram/ui/Cells/StatisticPostInfoCell;->setImageViewAction(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_17
    const/16 v2, 0xd

    if-ne v0, v2, :cond_1c

    .line 1372
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Charts/view_data/ChartHeaderView;

    .line 1373
    invoke-virtual {p1, v4}, Lorg/telegram/ui/Charts/view_data/ChartHeaderView;->showDate(Z)V

    .line 1374
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->this$0:Lorg/telegram/ui/StatisticActivity;

    invoke-static {v0}, Lorg/telegram/ui/StatisticActivity;->-$$Nest$fgetminDateOverview(Lorg/telegram/ui/StatisticActivity;)J

    move-result-wide v2

    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->this$0:Lorg/telegram/ui/StatisticActivity;

    invoke-static {v0}, Lorg/telegram/ui/StatisticActivity;->-$$Nest$fgetmaxDateOverview(Lorg/telegram/ui/StatisticActivity;)J

    move-result-wide v4

    invoke-virtual {p1, v2, v3, v4, v5}, Lorg/telegram/ui/Charts/view_data/ChartHeaderView;->setDates(JJ)V

    const/high16 v0, 0x41800000    # 16.0f

    .line 1375
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-virtual {p1, v1, v2, v1, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 1376
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->overviewHeaderCell:I

    if-ne p2, v0, :cond_18

    .line 1377
    const-string p2, "StatisticOverview"

    sget v0, Lorg/telegram/messenger/R$string;->StatisticOverview:I

    invoke-static {p2, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Charts/view_data/ChartHeaderView;->setTitle(Ljava/lang/String;)V

    return-void

    .line 1378
    :cond_18
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->topAdminsHeaderCell:I

    if-ne p2, v0, :cond_19

    .line 1379
    const-string p2, "TopAdmins"

    sget v0, Lorg/telegram/messenger/R$string;->TopAdmins:I

    invoke-static {p2, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Charts/view_data/ChartHeaderView;->setTitle(Ljava/lang/String;)V

    return-void

    .line 1380
    :cond_19
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->topInviterHeaderCell:I

    if-ne p2, v0, :cond_1a

    .line 1381
    const-string p2, "TopInviters"

    sget v0, Lorg/telegram/messenger/R$string;->TopInviters:I

    invoke-static {p2, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Charts/view_data/ChartHeaderView;->setTitle(Ljava/lang/String;)V

    return-void

    .line 1382
    :cond_1a
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->topMembersHeaderCell:I

    if-ne p2, v0, :cond_1b

    .line 1383
    const-string p2, "TopMembers"

    sget v0, Lorg/telegram/messenger/R$string;->TopMembers:I

    invoke-static {p2, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Charts/view_data/ChartHeaderView;->setTitle(Ljava/lang/String;)V

    return-void

    .line 1385
    :cond_1b
    invoke-virtual {p1, v1}, Lorg/telegram/ui/Charts/view_data/ChartHeaderView;->showDate(Z)V

    const/high16 p2, 0x40000000    # 2.0f

    .line 1386
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    const/high16 v1, 0x41700000    # 15.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    const/high16 v2, 0x40c00000    # 6.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-virtual {p1, v0, v1, p2, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 1387
    const-string p2, "RecentPostsCapitalize"

    sget v0, Lorg/telegram/messenger/R$string;->RecentPostsCapitalize:I

    invoke-static {p2, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Charts/view_data/ChartHeaderView;->setTitle(Ljava/lang/String;)V

    return-void

    :cond_1c
    const/16 p2, 0xe

    if-ne v0, p2, :cond_1e

    .line 1390
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/StatisticActivity$OverviewCell;

    .line 1391
    iget-object p2, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->this$0:Lorg/telegram/ui/StatisticActivity;

    invoke-static {p2}, Lorg/telegram/ui/StatisticActivity;->-$$Nest$fgetisMegagroup(Lorg/telegram/ui/StatisticActivity;)Z

    move-result p2

    if-eqz p2, :cond_1d

    .line 1392
    iget-object p2, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->this$0:Lorg/telegram/ui/StatisticActivity;

    invoke-static {p2}, Lorg/telegram/ui/StatisticActivity;->-$$Nest$fgetoverviewChatData(Lorg/telegram/ui/StatisticActivity;)Lorg/telegram/ui/StatisticActivity$OverviewChatData;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/StatisticActivity$OverviewCell;->setData(Lorg/telegram/ui/StatisticActivity$OverviewChatData;)V

    return-void

    .line 1394
    :cond_1d
    iget-object p2, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->this$0:Lorg/telegram/ui/StatisticActivity;

    invoke-static {p2}, Lorg/telegram/ui/StatisticActivity;->-$$Nest$fgetoverviewChannelData(Lorg/telegram/ui/StatisticActivity;)Lorg/telegram/ui/StatisticActivity$OverviewChannelData;

    move-result-object p2

    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->this$0:Lorg/telegram/ui/StatisticActivity;

    invoke-static {v0}, Lorg/telegram/ui/StatisticActivity;->-$$Nest$fgetchat(Lorg/telegram/ui/StatisticActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/StatisticActivity$OverviewCell;->setData(Lorg/telegram/ui/StatisticActivity$OverviewChannelData;Lorg/telegram/tgnet/TLRPC$ChatFull;)V

    return-void

    :cond_1e
    const/16 p2, 0xf

    if-ne v0, p2, :cond_1f

    .line 1397
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/ManageChatTextCell;

    .line 1398
    iget-object p2, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->this$0:Lorg/telegram/ui/StatisticActivity;

    invoke-static {p2}, Lorg/telegram/ui/StatisticActivity;->-$$Nest$fgettopMembersAll(Lorg/telegram/ui/StatisticActivity;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->this$0:Lorg/telegram/ui/StatisticActivity;

    invoke-static {v0}, Lorg/telegram/ui/StatisticActivity;->-$$Nest$fgettopMembersVisible(Lorg/telegram/ui/StatisticActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr p2, v0

    new-array v0, v1, [Ljava/lang/Object;

    const-string v2, "ShowVotes"

    invoke-static {v2, p2, v0}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    sget v0, Lorg/telegram/messenger/R$drawable;->arrow_more:I

    invoke-virtual {p1, p2, v3, v0, v1}, Lorg/telegram/ui/Cells/ManageChatTextCell;->setText(Ljava/lang/String;Ljava/lang/String;IZ)V

    :cond_1f
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 8

    const/4 v0, 0x4

    const/4 v1, 0x0

    if-ltz p2, :cond_0

    if-gt p2, v0, :cond_0

    .line 1255
    new-instance v2, Lorg/telegram/ui/StatisticActivity$Adapter$1;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object p1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->this$0:Lorg/telegram/ui/StatisticActivity;

    invoke-static {p1}, Lorg/telegram/ui/StatisticActivity;->access$000(Lorg/telegram/ui/StatisticActivity;)I

    move-result v5

    iget-object p1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->this$0:Lorg/telegram/ui/StatisticActivity;

    invoke-static {p1}, Lorg/telegram/ui/StatisticActivity;->-$$Nest$fgetsharedUi(Lorg/telegram/ui/StatisticActivity;)Lorg/telegram/ui/Charts/BaseChartView$SharedUiComponents;

    move-result-object v7

    move-object v3, p0

    move v6, p2

    invoke-direct/range {v2 .. v7}, Lorg/telegram/ui/StatisticActivity$Adapter$1;-><init>(Lorg/telegram/ui/StatisticActivity$Adapter;Landroid/content/Context;IILorg/telegram/ui/Charts/BaseChartView$SharedUiComponents;)V

    .line 1264
    invoke-virtual {v2, v1}, Landroid/view/View;->setWillNotDraw(Z)V

    goto/16 :goto_0

    :cond_0
    move-object v3, p0

    move v6, p2

    const/16 p2, 0x9

    if-ne v6, p2, :cond_1

    .line 1266
    new-instance v2, Lorg/telegram/ui/StatisticActivity$Adapter$2;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, v3, Lorg/telegram/ui/StatisticActivity$Adapter;->this$0:Lorg/telegram/ui/StatisticActivity;

    invoke-static {p2}, Lorg/telegram/ui/StatisticActivity;->-$$Nest$fgetchat(Lorg/telegram/ui/StatisticActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object p2

    iget-object v0, v3, Lorg/telegram/ui/StatisticActivity$Adapter;->this$0:Lorg/telegram/ui/StatisticActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v0

    invoke-direct {v2, p0, p1, p2, v0}, Lorg/telegram/ui/StatisticActivity$Adapter$2;-><init>(Lorg/telegram/ui/StatisticActivity$Adapter;Landroid/content/Context;Lorg/telegram/tgnet/TLRPC$ChatFull;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 1275
    invoke-virtual {v2, v1}, Landroid/view/View;->setWillNotDraw(Z)V

    goto/16 :goto_0

    :cond_1
    const/16 p2, 0xb

    if-ne v6, p2, :cond_2

    .line 1277
    new-instance v2, Lorg/telegram/ui/Cells/LoadingCell;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v2, p1}, Lorg/telegram/ui/Cells/LoadingCell;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_2
    const/16 p2, 0xc

    if-ne v6, p2, :cond_3

    .line 1279
    new-instance v2, Lorg/telegram/ui/Cells/EmptyCell;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const/high16 p2, 0x41700000    # 15.0f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    invoke-direct {v2, p1, p2}, Lorg/telegram/ui/Cells/EmptyCell;-><init>(Landroid/content/Context;I)V

    goto :goto_0

    :cond_3
    const/16 v2, 0xd

    if-ne v6, v2, :cond_4

    .line 1281
    new-instance v2, Lorg/telegram/ui/StatisticActivity$Adapter$3;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/StatisticActivity$Adapter$3;-><init>(Lorg/telegram/ui/StatisticActivity$Adapter;Landroid/content/Context;)V

    .line 1290
    invoke-virtual {v2, v1}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 1291
    invoke-virtual {v2}, Landroid/view/View;->getPaddingLeft()I

    move-result p1

    const/high16 p2, 0x41800000    # 16.0f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v1

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    invoke-virtual {v2, p1, v0, v1, p2}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    :cond_4
    const/16 v2, 0xe

    if-ne v6, v2, :cond_6

    .line 1294
    new-instance v2, Lorg/telegram/ui/StatisticActivity$OverviewCell;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, v3, Lorg/telegram/ui/StatisticActivity$Adapter;->this$0:Lorg/telegram/ui/StatisticActivity;

    invoke-static {p2}, Lorg/telegram/ui/StatisticActivity;->-$$Nest$fgetisMegagroup(Lorg/telegram/ui/StatisticActivity;)Z

    move-result p2

    if-eqz p2, :cond_5

    const/4 v0, 0x2

    :cond_5
    invoke-direct {v2, p1, v0}, Lorg/telegram/ui/StatisticActivity$OverviewCell;-><init>(Landroid/content/Context;I)V

    goto :goto_0

    :cond_6
    const/16 v0, 0xf

    if-ne v6, v0, :cond_7

    .line 1296
    new-instance v2, Lorg/telegram/ui/Cells/ManageChatTextCell;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v2, p1}, Lorg/telegram/ui/Cells/ManageChatTextCell;-><init>(Landroid/content/Context;)V

    .line 1297
    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueIcon:I

    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueButton:I

    invoke-virtual {v2, p1, p2}, Lorg/telegram/ui/Cells/ManageChatTextCell;->setColors(II)V

    goto :goto_0

    .line 1299
    :cond_7
    new-instance v2, Lorg/telegram/ui/Cells/ShadowSectionCell;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v2, p1, p2, v1}, Lorg/telegram/ui/Cells/ShadowSectionCell;-><init>(Landroid/content/Context;II)V

    .line 1301
    :goto_0
    new-instance p1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 p2, -0x1

    const/4 v0, -0x2

    invoke-direct {p1, p2, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {v2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1302
    new-instance p1, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p1, v2}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p1
.end method

.method public update()V
    .locals 3

    const/4 v0, -0x1

    .line 1408
    iput v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->growCell:I

    .line 1409
    iput v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->folowersCell:I

    .line 1410
    iput v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->interactionsCell:I

    .line 1411
    iput v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->viewsBySourceCell:I

    .line 1412
    iput v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->newFollowersBySourceCell:I

    .line 1413
    iput v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->languagesCell:I

    .line 1414
    iput v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->recentPostsStartRow:I

    .line 1415
    iput v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->recentPostsEndRow:I

    .line 1416
    iput v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->progressCell:I

    .line 1417
    iput v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->recentPostsHeaderCell:I

    .line 1418
    iput v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->ivInteractionsCell:I

    .line 1419
    iput v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->topHourseCell:I

    .line 1420
    iput v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->notificationsCell:I

    .line 1421
    iput v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->storyReactionsByEmotionCell:I

    .line 1422
    iput v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->storyInteractionsCell:I

    .line 1423
    iput v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->reactionsByEmotionCell:I

    .line 1424
    iput v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->groupMembersCell:I

    .line 1425
    iput v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->newMembersBySourceCell:I

    .line 1426
    iput v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->membersLanguageCell:I

    .line 1427
    iput v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->messagesCell:I

    .line 1428
    iput v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->actionsCell:I

    .line 1429
    iput v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->topDayOfWeeksCell:I

    .line 1430
    iput v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->topMembersHeaderCell:I

    .line 1431
    iput v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->topMembersStartRow:I

    .line 1432
    iput v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->topMembersEndRow:I

    .line 1433
    iput v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->topAdminsHeaderCell:I

    .line 1434
    iput v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->topAdminsStartRow:I

    .line 1435
    iput v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->topAdminsEndRow:I

    .line 1436
    iput v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->topInviterHeaderCell:I

    .line 1437
    iput v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->topInviterStartRow:I

    .line 1438
    iput v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->topInviterEndRow:I

    .line 1439
    iput v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->expandTopMembersRow:I

    const/4 v0, 0x0

    .line 1441
    iput v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    .line 1442
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->emptyCells:Landroidx/collection/ArraySet;

    invoke-virtual {v0}, Landroidx/collection/ArraySet;->clear()V

    .line 1443
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->shadowDivideCells:Landroidx/collection/ArraySet;

    invoke-virtual {v0}, Landroidx/collection/ArraySet;->clear()V

    .line 1445
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->this$0:Lorg/telegram/ui/StatisticActivity;

    invoke-static {v0}, Lorg/telegram/ui/StatisticActivity;->-$$Nest$fgetisMegagroup(Lorg/telegram/ui/StatisticActivity;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 1446
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->this$0:Lorg/telegram/ui/StatisticActivity;

    invoke-static {v0}, Lorg/telegram/ui/StatisticActivity;->-$$Nest$fgetoverviewChatData(Lorg/telegram/ui/StatisticActivity;)Lorg/telegram/ui/StatisticActivity$OverviewChatData;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1447
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    add-int/lit8 v1, v0, 0x1

    iput v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->overviewHeaderCell:I

    add-int/lit8 v0, v0, 0x2

    .line 1448
    iput v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    iput v1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->overviewCell:I

    .line 1451
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->this$0:Lorg/telegram/ui/StatisticActivity;

    invoke-static {v0}, Lorg/telegram/ui/StatisticActivity;->-$$Nest$fgetgrowthData(Lorg/telegram/ui/StatisticActivity;)Lorg/telegram/ui/StatisticActivity$ChartViewData;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->this$0:Lorg/telegram/ui/StatisticActivity;

    invoke-static {v0}, Lorg/telegram/ui/StatisticActivity;->-$$Nest$fgetgrowthData(Lorg/telegram/ui/StatisticActivity;)Lorg/telegram/ui/StatisticActivity$ChartViewData;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/ui/StatisticActivity$ChartViewData;->isEmpty:Z

    if-nez v0, :cond_2

    .line 1452
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    if-lez v0, :cond_1

    .line 1453
    iget-object v1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->shadowDivideCells:Landroidx/collection/ArraySet;

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/collection/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1455
    :cond_1
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    iput v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->growCell:I

    .line 1457
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->this$0:Lorg/telegram/ui/StatisticActivity;

    invoke-static {v0}, Lorg/telegram/ui/StatisticActivity;->-$$Nest$fgetgroupMembersData(Lorg/telegram/ui/StatisticActivity;)Lorg/telegram/ui/StatisticActivity$ChartViewData;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->this$0:Lorg/telegram/ui/StatisticActivity;

    invoke-static {v0}, Lorg/telegram/ui/StatisticActivity;->-$$Nest$fgetgroupMembersData(Lorg/telegram/ui/StatisticActivity;)Lorg/telegram/ui/StatisticActivity$ChartViewData;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/ui/StatisticActivity$ChartViewData;->isEmpty:Z

    if-nez v0, :cond_4

    .line 1458
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    if-lez v0, :cond_3

    .line 1459
    iget-object v1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->shadowDivideCells:Landroidx/collection/ArraySet;

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/collection/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1461
    :cond_3
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    iput v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->groupMembersCell:I

    .line 1463
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->this$0:Lorg/telegram/ui/StatisticActivity;

    invoke-static {v0}, Lorg/telegram/ui/StatisticActivity;->-$$Nest$fgetnewMembersBySourceData(Lorg/telegram/ui/StatisticActivity;)Lorg/telegram/ui/StatisticActivity$ChartViewData;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->this$0:Lorg/telegram/ui/StatisticActivity;

    invoke-static {v0}, Lorg/telegram/ui/StatisticActivity;->-$$Nest$fgetnewMembersBySourceData(Lorg/telegram/ui/StatisticActivity;)Lorg/telegram/ui/StatisticActivity$ChartViewData;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/ui/StatisticActivity$ChartViewData;->isEmpty:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->this$0:Lorg/telegram/ui/StatisticActivity;

    invoke-static {v0}, Lorg/telegram/ui/StatisticActivity;->-$$Nest$fgetnewMembersBySourceData(Lorg/telegram/ui/StatisticActivity;)Lorg/telegram/ui/StatisticActivity$ChartViewData;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/ui/StatisticActivity$ChartViewData;->isError:Z

    if-nez v0, :cond_6

    .line 1464
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    if-lez v0, :cond_5

    .line 1465
    iget-object v1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->shadowDivideCells:Landroidx/collection/ArraySet;

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/collection/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1467
    :cond_5
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    iput v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->newMembersBySourceCell:I

    .line 1469
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->this$0:Lorg/telegram/ui/StatisticActivity;

    invoke-static {v0}, Lorg/telegram/ui/StatisticActivity;->-$$Nest$fgetmembersLanguageData(Lorg/telegram/ui/StatisticActivity;)Lorg/telegram/ui/StatisticActivity$ChartViewData;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->this$0:Lorg/telegram/ui/StatisticActivity;

    invoke-static {v0}, Lorg/telegram/ui/StatisticActivity;->-$$Nest$fgetmembersLanguageData(Lorg/telegram/ui/StatisticActivity;)Lorg/telegram/ui/StatisticActivity$ChartViewData;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/ui/StatisticActivity$ChartViewData;->isEmpty:Z

    if-nez v0, :cond_8

    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->this$0:Lorg/telegram/ui/StatisticActivity;

    invoke-static {v0}, Lorg/telegram/ui/StatisticActivity;->-$$Nest$fgetmembersLanguageData(Lorg/telegram/ui/StatisticActivity;)Lorg/telegram/ui/StatisticActivity$ChartViewData;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/ui/StatisticActivity$ChartViewData;->isError:Z

    if-nez v0, :cond_8

    .line 1470
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    if-lez v0, :cond_7

    .line 1471
    iget-object v1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->shadowDivideCells:Landroidx/collection/ArraySet;

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/collection/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1473
    :cond_7
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    iput v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->membersLanguageCell:I

    .line 1475
    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->this$0:Lorg/telegram/ui/StatisticActivity;

    invoke-static {v0}, Lorg/telegram/ui/StatisticActivity;->-$$Nest$fgetmessagesData(Lorg/telegram/ui/StatisticActivity;)Lorg/telegram/ui/StatisticActivity$ChartViewData;

    move-result-object v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->this$0:Lorg/telegram/ui/StatisticActivity;

    invoke-static {v0}, Lorg/telegram/ui/StatisticActivity;->-$$Nest$fgetmessagesData(Lorg/telegram/ui/StatisticActivity;)Lorg/telegram/ui/StatisticActivity$ChartViewData;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/ui/StatisticActivity$ChartViewData;->isEmpty:Z

    if-nez v0, :cond_a

    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->this$0:Lorg/telegram/ui/StatisticActivity;

    invoke-static {v0}, Lorg/telegram/ui/StatisticActivity;->-$$Nest$fgetmessagesData(Lorg/telegram/ui/StatisticActivity;)Lorg/telegram/ui/StatisticActivity$ChartViewData;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/ui/StatisticActivity$ChartViewData;->isError:Z

    if-nez v0, :cond_a

    .line 1476
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    if-lez v0, :cond_9

    .line 1477
    iget-object v1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->shadowDivideCells:Landroidx/collection/ArraySet;

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/collection/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1479
    :cond_9
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    iput v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->messagesCell:I

    .line 1481
    :cond_a
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->this$0:Lorg/telegram/ui/StatisticActivity;

    invoke-static {v0}, Lorg/telegram/ui/StatisticActivity;->-$$Nest$fgetactionsData(Lorg/telegram/ui/StatisticActivity;)Lorg/telegram/ui/StatisticActivity$ChartViewData;

    move-result-object v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->this$0:Lorg/telegram/ui/StatisticActivity;

    invoke-static {v0}, Lorg/telegram/ui/StatisticActivity;->-$$Nest$fgetactionsData(Lorg/telegram/ui/StatisticActivity;)Lorg/telegram/ui/StatisticActivity$ChartViewData;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/ui/StatisticActivity$ChartViewData;->isEmpty:Z

    if-nez v0, :cond_c

    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->this$0:Lorg/telegram/ui/StatisticActivity;

    invoke-static {v0}, Lorg/telegram/ui/StatisticActivity;->-$$Nest$fgetactionsData(Lorg/telegram/ui/StatisticActivity;)Lorg/telegram/ui/StatisticActivity$ChartViewData;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/ui/StatisticActivity$ChartViewData;->isError:Z

    if-nez v0, :cond_c

    .line 1482
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    if-lez v0, :cond_b

    .line 1483
    iget-object v1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->shadowDivideCells:Landroidx/collection/ArraySet;

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/collection/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1485
    :cond_b
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    iput v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->actionsCell:I

    .line 1487
    :cond_c
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->this$0:Lorg/telegram/ui/StatisticActivity;

    invoke-static {v0}, Lorg/telegram/ui/StatisticActivity;->-$$Nest$fgettopHoursData(Lorg/telegram/ui/StatisticActivity;)Lorg/telegram/ui/StatisticActivity$ChartViewData;

    move-result-object v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->this$0:Lorg/telegram/ui/StatisticActivity;

    invoke-static {v0}, Lorg/telegram/ui/StatisticActivity;->-$$Nest$fgettopHoursData(Lorg/telegram/ui/StatisticActivity;)Lorg/telegram/ui/StatisticActivity$ChartViewData;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/ui/StatisticActivity$ChartViewData;->isEmpty:Z

    if-nez v0, :cond_e

    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->this$0:Lorg/telegram/ui/StatisticActivity;

    invoke-static {v0}, Lorg/telegram/ui/StatisticActivity;->-$$Nest$fgettopHoursData(Lorg/telegram/ui/StatisticActivity;)Lorg/telegram/ui/StatisticActivity$ChartViewData;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/ui/StatisticActivity$ChartViewData;->isError:Z

    if-nez v0, :cond_e

    .line 1488
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    if-lez v0, :cond_d

    .line 1489
    iget-object v1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->shadowDivideCells:Landroidx/collection/ArraySet;

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/collection/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1491
    :cond_d
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    iput v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->topHourseCell:I

    .line 1494
    :cond_e
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->this$0:Lorg/telegram/ui/StatisticActivity;

    invoke-static {v0}, Lorg/telegram/ui/StatisticActivity;->-$$Nest$fgettopDayOfWeeksData(Lorg/telegram/ui/StatisticActivity;)Lorg/telegram/ui/StatisticActivity$ChartViewData;

    move-result-object v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->this$0:Lorg/telegram/ui/StatisticActivity;

    invoke-static {v0}, Lorg/telegram/ui/StatisticActivity;->-$$Nest$fgettopDayOfWeeksData(Lorg/telegram/ui/StatisticActivity;)Lorg/telegram/ui/StatisticActivity$ChartViewData;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/ui/StatisticActivity$ChartViewData;->isEmpty:Z

    if-nez v0, :cond_10

    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->this$0:Lorg/telegram/ui/StatisticActivity;

    invoke-static {v0}, Lorg/telegram/ui/StatisticActivity;->-$$Nest$fgettopDayOfWeeksData(Lorg/telegram/ui/StatisticActivity;)Lorg/telegram/ui/StatisticActivity$ChartViewData;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/ui/StatisticActivity$ChartViewData;->isError:Z

    if-nez v0, :cond_10

    .line 1495
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    if-lez v0, :cond_f

    .line 1496
    iget-object v1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->shadowDivideCells:Landroidx/collection/ArraySet;

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/collection/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1498
    :cond_f
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    iput v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->topDayOfWeeksCell:I

    .line 1501
    :cond_10
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->this$0:Lorg/telegram/ui/StatisticActivity;

    invoke-static {v0}, Lorg/telegram/ui/StatisticActivity;->-$$Nest$fgettopMembersVisible(Lorg/telegram/ui/StatisticActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_13

    .line 1502
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    if-lez v0, :cond_11

    .line 1503
    iget-object v1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->shadowDivideCells:Landroidx/collection/ArraySet;

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/collection/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1505
    :cond_11
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    add-int/lit8 v1, v0, 0x1

    iput v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->topMembersHeaderCell:I

    add-int/lit8 v0, v0, 0x2

    .line 1506
    iput v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    iput v1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->topMembersStartRow:I

    .line 1507
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->this$0:Lorg/telegram/ui/StatisticActivity;

    invoke-static {v0}, Lorg/telegram/ui/StatisticActivity;->-$$Nest$fgettopMembersVisible(Lorg/telegram/ui/StatisticActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/2addr v1, v0

    add-int/lit8 v0, v1, -0x1

    iput v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->topMembersEndRow:I

    .line 1508
    iput v1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    .line 1509
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->this$0:Lorg/telegram/ui/StatisticActivity;

    invoke-static {v0}, Lorg/telegram/ui/StatisticActivity;->-$$Nest$fgettopMembersVisible(Lorg/telegram/ui/StatisticActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->this$0:Lorg/telegram/ui/StatisticActivity;

    invoke-static {v1}, Lorg/telegram/ui/StatisticActivity;->-$$Nest$fgettopMembersAll(Lorg/telegram/ui/StatisticActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eq v0, v1, :cond_12

    .line 1510
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    iput v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->expandTopMembersRow:I

    goto :goto_0

    .line 1512
    :cond_12
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->emptyCells:Landroidx/collection/ArraySet;

    iget v1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/collection/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1516
    :cond_13
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->this$0:Lorg/telegram/ui/StatisticActivity;

    invoke-static {v0}, Lorg/telegram/ui/StatisticActivity;->-$$Nest$fgettopAdmins(Lorg/telegram/ui/StatisticActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_15

    .line 1517
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    if-lez v0, :cond_14

    .line 1518
    iget-object v1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->shadowDivideCells:Landroidx/collection/ArraySet;

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/collection/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1520
    :cond_14
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    add-int/lit8 v1, v0, 0x1

    iput v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->topAdminsHeaderCell:I

    add-int/lit8 v0, v0, 0x2

    .line 1521
    iput v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    iput v1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->topAdminsStartRow:I

    .line 1522
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->this$0:Lorg/telegram/ui/StatisticActivity;

    invoke-static {v0}, Lorg/telegram/ui/StatisticActivity;->-$$Nest$fgettopAdmins(Lorg/telegram/ui/StatisticActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/2addr v1, v0

    add-int/lit8 v0, v1, -0x1

    iput v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->topAdminsEndRow:I

    .line 1524
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->emptyCells:Landroidx/collection/ArraySet;

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/collection/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1527
    :cond_15
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->this$0:Lorg/telegram/ui/StatisticActivity;

    invoke-static {v0}, Lorg/telegram/ui/StatisticActivity;->-$$Nest$fgettopInviters(Lorg/telegram/ui/StatisticActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_17

    .line 1528
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    if-lez v0, :cond_16

    .line 1529
    iget-object v1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->shadowDivideCells:Landroidx/collection/ArraySet;

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/collection/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1531
    :cond_16
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    add-int/lit8 v1, v0, 0x1

    iput v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->topInviterHeaderCell:I

    add-int/lit8 v0, v0, 0x2

    .line 1532
    iput v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    iput v1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->topInviterStartRow:I

    .line 1533
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->this$0:Lorg/telegram/ui/StatisticActivity;

    invoke-static {v0}, Lorg/telegram/ui/StatisticActivity;->-$$Nest$fgettopInviters(Lorg/telegram/ui/StatisticActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/2addr v1, v0

    add-int/lit8 v0, v1, -0x1

    iput v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->topInviterEndRow:I

    .line 1534
    iput v1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    .line 1537
    :cond_17
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    if-lez v0, :cond_33

    .line 1538
    iget-object v1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->emptyCells:Landroidx/collection/ArraySet;

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/collection/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1539
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->shadowDivideCells:Landroidx/collection/ArraySet;

    iget v1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/collection/ArraySet;->add(Ljava/lang/Object;)Z

    return-void

    .line 1542
    :cond_18
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->this$0:Lorg/telegram/ui/StatisticActivity;

    invoke-static {v0}, Lorg/telegram/ui/StatisticActivity;->-$$Nest$fgetoverviewChannelData(Lorg/telegram/ui/StatisticActivity;)Lorg/telegram/ui/StatisticActivity$OverviewChannelData;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 1543
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    add-int/lit8 v1, v0, 0x1

    iput v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->overviewHeaderCell:I

    add-int/lit8 v0, v0, 0x2

    .line 1544
    iput v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    iput v1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->overviewCell:I

    .line 1547
    :cond_19
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->this$0:Lorg/telegram/ui/StatisticActivity;

    invoke-static {v0}, Lorg/telegram/ui/StatisticActivity;->-$$Nest$fgetgrowthData(Lorg/telegram/ui/StatisticActivity;)Lorg/telegram/ui/StatisticActivity$ChartViewData;

    move-result-object v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->this$0:Lorg/telegram/ui/StatisticActivity;

    invoke-static {v0}, Lorg/telegram/ui/StatisticActivity;->-$$Nest$fgetgrowthData(Lorg/telegram/ui/StatisticActivity;)Lorg/telegram/ui/StatisticActivity$ChartViewData;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/ui/StatisticActivity$ChartViewData;->isEmpty:Z

    if-nez v0, :cond_1b

    .line 1548
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    if-lez v0, :cond_1a

    .line 1549
    iget-object v1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->shadowDivideCells:Landroidx/collection/ArraySet;

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/collection/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1551
    :cond_1a
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    iput v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->growCell:I

    .line 1554
    :cond_1b
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->this$0:Lorg/telegram/ui/StatisticActivity;

    invoke-static {v0}, Lorg/telegram/ui/StatisticActivity;->-$$Nest$fgetfollowersData(Lorg/telegram/ui/StatisticActivity;)Lorg/telegram/ui/StatisticActivity$ChartViewData;

    move-result-object v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->this$0:Lorg/telegram/ui/StatisticActivity;

    invoke-static {v0}, Lorg/telegram/ui/StatisticActivity;->-$$Nest$fgetfollowersData(Lorg/telegram/ui/StatisticActivity;)Lorg/telegram/ui/StatisticActivity$ChartViewData;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/ui/StatisticActivity$ChartViewData;->isEmpty:Z

    if-nez v0, :cond_1d

    .line 1555
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    if-lez v0, :cond_1c

    .line 1556
    iget-object v1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->shadowDivideCells:Landroidx/collection/ArraySet;

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/collection/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1558
    :cond_1c
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    iput v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->folowersCell:I

    .line 1560
    :cond_1d
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->this$0:Lorg/telegram/ui/StatisticActivity;

    invoke-static {v0}, Lorg/telegram/ui/StatisticActivity;->-$$Nest$fgetnotificationsData(Lorg/telegram/ui/StatisticActivity;)Lorg/telegram/ui/StatisticActivity$ChartViewData;

    move-result-object v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->this$0:Lorg/telegram/ui/StatisticActivity;

    invoke-static {v0}, Lorg/telegram/ui/StatisticActivity;->-$$Nest$fgetnotificationsData(Lorg/telegram/ui/StatisticActivity;)Lorg/telegram/ui/StatisticActivity$ChartViewData;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/ui/StatisticActivity$ChartViewData;->isEmpty:Z

    if-nez v0, :cond_1f

    .line 1561
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    if-lez v0, :cond_1e

    .line 1562
    iget-object v1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->shadowDivideCells:Landroidx/collection/ArraySet;

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/collection/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1564
    :cond_1e
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    iput v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->notificationsCell:I

    .line 1566
    :cond_1f
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->this$0:Lorg/telegram/ui/StatisticActivity;

    invoke-static {v0}, Lorg/telegram/ui/StatisticActivity;->-$$Nest$fgettopHoursData(Lorg/telegram/ui/StatisticActivity;)Lorg/telegram/ui/StatisticActivity$ChartViewData;

    move-result-object v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->this$0:Lorg/telegram/ui/StatisticActivity;

    invoke-static {v0}, Lorg/telegram/ui/StatisticActivity;->-$$Nest$fgettopHoursData(Lorg/telegram/ui/StatisticActivity;)Lorg/telegram/ui/StatisticActivity$ChartViewData;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/ui/StatisticActivity$ChartViewData;->isEmpty:Z

    if-nez v0, :cond_21

    .line 1567
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    if-lez v0, :cond_20

    .line 1568
    iget-object v1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->shadowDivideCells:Landroidx/collection/ArraySet;

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/collection/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1570
    :cond_20
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    iput v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->topHourseCell:I

    .line 1572
    :cond_21
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->this$0:Lorg/telegram/ui/StatisticActivity;

    invoke-static {v0}, Lorg/telegram/ui/StatisticActivity;->-$$Nest$fgetviewsBySourceData(Lorg/telegram/ui/StatisticActivity;)Lorg/telegram/ui/StatisticActivity$ChartViewData;

    move-result-object v0

    if-eqz v0, :cond_23

    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->this$0:Lorg/telegram/ui/StatisticActivity;

    invoke-static {v0}, Lorg/telegram/ui/StatisticActivity;->-$$Nest$fgetviewsBySourceData(Lorg/telegram/ui/StatisticActivity;)Lorg/telegram/ui/StatisticActivity$ChartViewData;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/ui/StatisticActivity$ChartViewData;->isEmpty:Z

    if-nez v0, :cond_23

    .line 1573
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    if-lez v0, :cond_22

    .line 1574
    iget-object v1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->shadowDivideCells:Landroidx/collection/ArraySet;

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/collection/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1576
    :cond_22
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    iput v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->viewsBySourceCell:I

    .line 1578
    :cond_23
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->this$0:Lorg/telegram/ui/StatisticActivity;

    invoke-static {v0}, Lorg/telegram/ui/StatisticActivity;->-$$Nest$fgetnewFollowersBySourceData(Lorg/telegram/ui/StatisticActivity;)Lorg/telegram/ui/StatisticActivity$ChartViewData;

    move-result-object v0

    if-eqz v0, :cond_25

    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->this$0:Lorg/telegram/ui/StatisticActivity;

    invoke-static {v0}, Lorg/telegram/ui/StatisticActivity;->-$$Nest$fgetnewFollowersBySourceData(Lorg/telegram/ui/StatisticActivity;)Lorg/telegram/ui/StatisticActivity$ChartViewData;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/ui/StatisticActivity$ChartViewData;->isEmpty:Z

    if-nez v0, :cond_25

    .line 1579
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    if-lez v0, :cond_24

    .line 1580
    iget-object v1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->shadowDivideCells:Landroidx/collection/ArraySet;

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/collection/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1582
    :cond_24
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    iput v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->newFollowersBySourceCell:I

    .line 1584
    :cond_25
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->this$0:Lorg/telegram/ui/StatisticActivity;

    invoke-static {v0}, Lorg/telegram/ui/StatisticActivity;->-$$Nest$fgetlanguagesData(Lorg/telegram/ui/StatisticActivity;)Lorg/telegram/ui/StatisticActivity$ChartViewData;

    move-result-object v0

    if-eqz v0, :cond_27

    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->this$0:Lorg/telegram/ui/StatisticActivity;

    invoke-static {v0}, Lorg/telegram/ui/StatisticActivity;->-$$Nest$fgetlanguagesData(Lorg/telegram/ui/StatisticActivity;)Lorg/telegram/ui/StatisticActivity$ChartViewData;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/ui/StatisticActivity$ChartViewData;->isEmpty:Z

    if-nez v0, :cond_27

    .line 1585
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    if-lez v0, :cond_26

    .line 1586
    iget-object v1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->shadowDivideCells:Landroidx/collection/ArraySet;

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/collection/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1588
    :cond_26
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    iput v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->languagesCell:I

    .line 1590
    :cond_27
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->this$0:Lorg/telegram/ui/StatisticActivity;

    invoke-static {v0}, Lorg/telegram/ui/StatisticActivity;->-$$Nest$fgetinteractionsData(Lorg/telegram/ui/StatisticActivity;)Lorg/telegram/ui/StatisticActivity$ChartViewData;

    move-result-object v0

    if-eqz v0, :cond_29

    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->this$0:Lorg/telegram/ui/StatisticActivity;

    invoke-static {v0}, Lorg/telegram/ui/StatisticActivity;->-$$Nest$fgetinteractionsData(Lorg/telegram/ui/StatisticActivity;)Lorg/telegram/ui/StatisticActivity$ChartViewData;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/ui/StatisticActivity$ChartViewData;->isEmpty:Z

    if-nez v0, :cond_29

    .line 1591
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    if-lez v0, :cond_28

    .line 1592
    iget-object v1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->shadowDivideCells:Landroidx/collection/ArraySet;

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/collection/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1594
    :cond_28
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    iput v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->interactionsCell:I

    .line 1596
    :cond_29
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->this$0:Lorg/telegram/ui/StatisticActivity;

    invoke-static {v0}, Lorg/telegram/ui/StatisticActivity;->-$$Nest$fgetivInteractionsData(Lorg/telegram/ui/StatisticActivity;)Lorg/telegram/ui/StatisticActivity$ChartViewData;

    move-result-object v0

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->this$0:Lorg/telegram/ui/StatisticActivity;

    invoke-static {v0}, Lorg/telegram/ui/StatisticActivity;->-$$Nest$fgetivInteractionsData(Lorg/telegram/ui/StatisticActivity;)Lorg/telegram/ui/StatisticActivity$ChartViewData;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/ui/StatisticActivity$ChartViewData;->loading:Z

    if-nez v0, :cond_2b

    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->this$0:Lorg/telegram/ui/StatisticActivity;

    invoke-static {v0}, Lorg/telegram/ui/StatisticActivity;->-$$Nest$fgetivInteractionsData(Lorg/telegram/ui/StatisticActivity;)Lorg/telegram/ui/StatisticActivity$ChartViewData;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/ui/StatisticActivity$ChartViewData;->isError:Z

    if-nez v0, :cond_2b

    .line 1597
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    if-lez v0, :cond_2a

    .line 1598
    iget-object v1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->shadowDivideCells:Landroidx/collection/ArraySet;

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/collection/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1600
    :cond_2a
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    iput v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->ivInteractionsCell:I

    .line 1602
    :cond_2b
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->this$0:Lorg/telegram/ui/StatisticActivity;

    invoke-static {v0}, Lorg/telegram/ui/StatisticActivity;->-$$Nest$fgetreactionsByEmotionData(Lorg/telegram/ui/StatisticActivity;)Lorg/telegram/ui/StatisticActivity$ChartViewData;

    move-result-object v0

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->this$0:Lorg/telegram/ui/StatisticActivity;

    invoke-static {v0}, Lorg/telegram/ui/StatisticActivity;->-$$Nest$fgetreactionsByEmotionData(Lorg/telegram/ui/StatisticActivity;)Lorg/telegram/ui/StatisticActivity$ChartViewData;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/ui/StatisticActivity$ChartViewData;->isEmpty:Z

    if-nez v0, :cond_2d

    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->this$0:Lorg/telegram/ui/StatisticActivity;

    invoke-static {v0}, Lorg/telegram/ui/StatisticActivity;->-$$Nest$fgetreactionsByEmotionData(Lorg/telegram/ui/StatisticActivity;)Lorg/telegram/ui/StatisticActivity$ChartViewData;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/ui/StatisticActivity$ChartViewData;->isError:Z

    if-nez v0, :cond_2d

    .line 1603
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    if-lez v0, :cond_2c

    .line 1604
    iget-object v1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->shadowDivideCells:Landroidx/collection/ArraySet;

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/collection/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1606
    :cond_2c
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    iput v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->reactionsByEmotionCell:I

    .line 1608
    :cond_2d
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->this$0:Lorg/telegram/ui/StatisticActivity;

    invoke-static {v0}, Lorg/telegram/ui/StatisticActivity;->-$$Nest$fgetstoryInteractionsData(Lorg/telegram/ui/StatisticActivity;)Lorg/telegram/ui/StatisticActivity$ChartViewData;

    move-result-object v0

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->this$0:Lorg/telegram/ui/StatisticActivity;

    invoke-static {v0}, Lorg/telegram/ui/StatisticActivity;->-$$Nest$fgetstoryInteractionsData(Lorg/telegram/ui/StatisticActivity;)Lorg/telegram/ui/StatisticActivity$ChartViewData;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/ui/StatisticActivity$ChartViewData;->isEmpty:Z

    if-nez v0, :cond_2f

    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->this$0:Lorg/telegram/ui/StatisticActivity;

    invoke-static {v0}, Lorg/telegram/ui/StatisticActivity;->-$$Nest$fgetstoryInteractionsData(Lorg/telegram/ui/StatisticActivity;)Lorg/telegram/ui/StatisticActivity$ChartViewData;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/ui/StatisticActivity$ChartViewData;->isError:Z

    if-nez v0, :cond_2f

    .line 1609
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    if-lez v0, :cond_2e

    .line 1610
    iget-object v1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->shadowDivideCells:Landroidx/collection/ArraySet;

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/collection/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1612
    :cond_2e
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    iput v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->storyInteractionsCell:I

    .line 1614
    :cond_2f
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->this$0:Lorg/telegram/ui/StatisticActivity;

    invoke-static {v0}, Lorg/telegram/ui/StatisticActivity;->-$$Nest$fgetstoryReactionsByEmotionData(Lorg/telegram/ui/StatisticActivity;)Lorg/telegram/ui/StatisticActivity$ChartViewData;

    move-result-object v0

    if-eqz v0, :cond_31

    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->this$0:Lorg/telegram/ui/StatisticActivity;

    invoke-static {v0}, Lorg/telegram/ui/StatisticActivity;->-$$Nest$fgetstoryReactionsByEmotionData(Lorg/telegram/ui/StatisticActivity;)Lorg/telegram/ui/StatisticActivity$ChartViewData;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/ui/StatisticActivity$ChartViewData;->isEmpty:Z

    if-nez v0, :cond_31

    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->this$0:Lorg/telegram/ui/StatisticActivity;

    invoke-static {v0}, Lorg/telegram/ui/StatisticActivity;->-$$Nest$fgetstoryReactionsByEmotionData(Lorg/telegram/ui/StatisticActivity;)Lorg/telegram/ui/StatisticActivity$ChartViewData;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/ui/StatisticActivity$ChartViewData;->isError:Z

    if-nez v0, :cond_31

    .line 1615
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    if-lez v0, :cond_30

    .line 1616
    iget-object v1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->shadowDivideCells:Landroidx/collection/ArraySet;

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/collection/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1618
    :cond_30
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    iput v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->storyReactionsByEmotionCell:I

    .line 1621
    :cond_31
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->shadowDivideCells:Landroidx/collection/ArraySet;

    iget v1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/collection/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1623
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->this$0:Lorg/telegram/ui/StatisticActivity;

    invoke-static {v0}, Lorg/telegram/ui/StatisticActivity;->-$$Nest$fgetrecentAllSortedDataLoaded(Lorg/telegram/ui/StatisticActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_33

    .line 1624
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    add-int/lit8 v1, v0, 0x1

    iput v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->recentPostsHeaderCell:I

    add-int/lit8 v0, v0, 0x2

    .line 1625
    iput v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    iput v1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->recentPostsStartRow:I

    .line 1626
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->this$0:Lorg/telegram/ui/StatisticActivity;

    invoke-static {v0}, Lorg/telegram/ui/StatisticActivity;->-$$Nest$fgetrecentAllSortedDataLoaded(Lorg/telegram/ui/StatisticActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/2addr v1, v0

    add-int/lit8 v0, v1, -0x1

    iput v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->recentPostsEndRow:I

    .line 1627
    iput v1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    .line 1629
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->this$0:Lorg/telegram/ui/StatisticActivity;

    invoke-static {v0}, Lorg/telegram/ui/StatisticActivity;->-$$Nest$fgetrecentPostsLoaded(Lorg/telegram/ui/StatisticActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->this$0:Lorg/telegram/ui/StatisticActivity;

    invoke-static {v1}, Lorg/telegram/ui/StatisticActivity;->-$$Nest$fgetrecentPostsAll(Lorg/telegram/ui/StatisticActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eq v0, v1, :cond_32

    .line 1630
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    iput v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->progressCell:I

    goto :goto_1

    .line 1632
    :cond_32
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->emptyCells:Landroidx/collection/ArraySet;

    iget v1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/collection/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1635
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->shadowDivideCells:Landroidx/collection/ArraySet;

    iget v1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/collection/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_33
    return-void
.end method
