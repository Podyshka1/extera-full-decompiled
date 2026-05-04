.class Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/NotificationsSettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lorg/telegram/ui/NotificationsSettingsActivity;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/NotificationsSettingsActivity;Landroid/content/Context;)V
    .locals 0

    .line 921
    iput-object p1, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    .line 922
    iput-object p2, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 938
    iget-object v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/NotificationsSettingsActivity;->-$$Nest$fgetrowCount(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 1190
    iget-object v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/NotificationsSettingsActivity;->-$$Nest$fgeteventsSectionRow(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_9

    iget-object v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/NotificationsSettingsActivity;->-$$Nest$fgetotherSectionRow(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_9

    iget-object v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/NotificationsSettingsActivity;->-$$Nest$fgetresetSectionRow(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_9

    iget-object v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/NotificationsSettingsActivity;->-$$Nest$fgetcallsSectionRow(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_9

    iget-object v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/NotificationsSettingsActivity;->-$$Nest$fgetbadgeNumberSection(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_9

    iget-object v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/NotificationsSettingsActivity;->-$$Nest$fgetinappSectionRow(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_9

    iget-object v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/NotificationsSettingsActivity;->-$$Nest$fgetnotificationsSectionRow(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_9

    iget-object v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/NotificationsSettingsActivity;->-$$Nest$fgetaccountsSectionRow(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v0

    if-ne p1, v0, :cond_0

    goto/16 :goto_3

    .line 1194
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/NotificationsSettingsActivity;->-$$Nest$fgetinappSoundRow(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_8

    iget-object v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/NotificationsSettingsActivity;->-$$Nest$fgetinappVibrateRow(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_8

    iget-object v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/NotificationsSettingsActivity;->-$$Nest$fgetnotificationsServiceConnectionRow(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_8

    iget-object v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/NotificationsSettingsActivity;->-$$Nest$fgetinappPreviewRow(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_8

    iget-object v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/NotificationsSettingsActivity;->-$$Nest$fgetcontactJoinedRow(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_8

    iget-object v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/NotificationsSettingsActivity;->-$$Nest$fgetpinnedMessageRow(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_8

    iget-object v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/NotificationsSettingsActivity;->-$$Nest$fgetnotificationsServiceRow(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_8

    iget-object v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/NotificationsSettingsActivity;->-$$Nest$fgetbadgeNumberMutedRow(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_8

    iget-object v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/NotificationsSettingsActivity;->-$$Nest$fgetbadgeNumberMessagesRow(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_8

    iget-object v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/NotificationsSettingsActivity;->-$$Nest$fgetbadgeNumberShowRow(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_8

    iget-object v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/NotificationsSettingsActivity;->-$$Nest$fgetinappPriorityRow(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_8

    iget-object v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/NotificationsSettingsActivity;->-$$Nest$fgetinchatSoundRow(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_8

    iget-object v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/NotificationsSettingsActivity;->-$$Nest$fgetandroidAutoAlertRow(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_8

    iget-object v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/NotificationsSettingsActivity;->-$$Nest$fgetaccountsAllRow(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v0

    if-ne p1, v0, :cond_1

    goto/16 :goto_2

    .line 1200
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/NotificationsSettingsActivity;->-$$Nest$fgetresetNotificationsRow(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v0

    if-ne p1, v0, :cond_2

    const/4 p1, 0x2

    return p1

    .line 1202
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/NotificationsSettingsActivity;->-$$Nest$fgetprivateRow(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_7

    iget-object v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/NotificationsSettingsActivity;->-$$Nest$fgetgroupRow(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_7

    iget-object v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/NotificationsSettingsActivity;->-$$Nest$fgetchannelsRow(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_7

    iget-object v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/NotificationsSettingsActivity;->-$$Nest$fgetstoriesRow(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_7

    iget-object v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/NotificationsSettingsActivity;->-$$Nest$fgetreactionsRow(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v0

    if-ne p1, v0, :cond_3

    goto :goto_1

    .line 1204
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/NotificationsSettingsActivity;->-$$Nest$fgeteventsSection2Row(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/NotificationsSettingsActivity;->-$$Nest$fgetnotificationsSection2Row(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/NotificationsSettingsActivity;->-$$Nest$fgetotherSection2Row(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/NotificationsSettingsActivity;->-$$Nest$fgetresetSection2Row(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/NotificationsSettingsActivity;->-$$Nest$fgetcallsSection2Row(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/NotificationsSettingsActivity;->-$$Nest$fgetbadgeNumberSection2Row(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/NotificationsSettingsActivity;->-$$Nest$fgetresetNotificationsSectionRow(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v0

    if-ne p1, v0, :cond_4

    goto :goto_0

    .line 1208
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/NotificationsSettingsActivity;->-$$Nest$fgetaccountsInfoRow(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v0

    if-ne p1, v0, :cond_5

    const/4 p1, 0x6

    return p1

    :cond_5
    const/4 p1, 0x5

    return p1

    :cond_6
    :goto_0
    const/4 p1, 0x4

    return p1

    :cond_7
    :goto_1
    const/4 p1, 0x3

    return p1

    :cond_8
    :goto_2
    const/4 p1, 0x1

    return p1

    :cond_9
    :goto_3
    const/4 p1, 0x0

    return p1
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 1

    .line 927
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    .line 928
    iget-object v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/NotificationsSettingsActivity;->-$$Nest$fgetnotificationsSectionRow(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/NotificationsSettingsActivity;->-$$Nest$fgetnotificationsSection2Row(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/NotificationsSettingsActivity;->-$$Nest$fgetinappSectionRow(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/NotificationsSettingsActivity;->-$$Nest$fgeteventsSectionRow(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/NotificationsSettingsActivity;->-$$Nest$fgetotherSectionRow(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/NotificationsSettingsActivity;->-$$Nest$fgetresetSectionRow(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/NotificationsSettingsActivity;->-$$Nest$fgetbadgeNumberSection(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/NotificationsSettingsActivity;->-$$Nest$fgetotherSection2Row(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/NotificationsSettingsActivity;->-$$Nest$fgetresetSection2Row(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/NotificationsSettingsActivity;->-$$Nest$fgetcallsSection2Row(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/NotificationsSettingsActivity;->-$$Nest$fgetcallsSectionRow(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/NotificationsSettingsActivity;->-$$Nest$fgetbadgeNumberSection2Row(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/NotificationsSettingsActivity;->-$$Nest$fgetaccountsSectionRow(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/NotificationsSettingsActivity;->-$$Nest$fgetaccountsInfoRow(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/NotificationsSettingsActivity;->-$$Nest$fgetresetNotificationsSectionRow(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/NotificationsSettingsActivity;->-$$Nest$fgeteventsSection2Row(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    .line 973
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v3

    if-eqz v3, :cond_36

    const-string v4, "Vibrate"

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq v3, v6, :cond_27

    const/4 v7, 0x2

    if-eq v3, v7, :cond_26

    const/4 v8, 0x3

    if-eq v3, v8, :cond_c

    const/4 v9, 0x5

    if-eq v3, v9, :cond_1

    const/4 v4, 0x6

    if-eq v3, v4, :cond_0

    goto/16 :goto_f

    .line 1179
    :cond_0
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    .line 1180
    iget-object v3, v0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v3}, Lorg/telegram/ui/NotificationsSettingsActivity;->-$$Nest$fgetaccountsInfoRow(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v3

    if-ne v2, v3, :cond_3e

    .line 1181
    const-string v2, "ShowNotificationsForInfo"

    sget v3, Lorg/telegram/messenger/R$string;->ShowNotificationsForInfo:I

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 1140
    :cond_1
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/Cells/TextSettingsCell;

    .line 1141
    iget-object v3, v0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v3}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$1200(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v3

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getNotificationsSettings(I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 1142
    iget-object v9, v0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v9}, Lorg/telegram/ui/NotificationsSettingsActivity;->-$$Nest$fgetcallsRingtoneRow(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v9

    if-ne v2, v9, :cond_3

    .line 1143
    const-string v2, "DefaultRingtone"

    sget v4, Lorg/telegram/messenger/R$string;->DefaultRingtone:I

    invoke-static {v2, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const-string v4, "CallsRingtone"

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1144
    const-string v3, "NoSound"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1145
    sget v2, Lorg/telegram/messenger/R$string;->NoSound:I

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 1147
    :cond_2
    const-string v3, "VoipSettingsRingtone"

    sget v4, Lorg/telegram/messenger/R$string;->VoipSettingsRingtone:I

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v4}, Lorg/telegram/ui/NotificationsSettingsActivity;->-$$Nest$fgetupdateRingtone(Lorg/telegram/ui/NotificationsSettingsActivity;)Z

    move-result v4

    invoke-virtual {v1, v3, v2, v4, v5}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)V

    .line 1148
    iget-object v1, v0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v1, v5}, Lorg/telegram/ui/NotificationsSettingsActivity;->-$$Nest$fputupdateRingtone(Lorg/telegram/ui/NotificationsSettingsActivity;Z)V

    return-void

    .line 1149
    :cond_3
    iget-object v9, v0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v9}, Lorg/telegram/ui/NotificationsSettingsActivity;->-$$Nest$fgetcallsVibrateRow(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v9

    if-ne v2, v9, :cond_9

    .line 1150
    const-string v2, "vibrate_calls"

    invoke-interface {v3, v2, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_4

    .line 1152
    sget v2, Lorg/telegram/messenger/R$string;->Vibrate:I

    invoke-static {v4, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "VibrationDefault"

    sget v4, Lorg/telegram/messenger/R$string;->VibrationDefault:I

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v4}, Lorg/telegram/ui/NotificationsSettingsActivity;->-$$Nest$fgetupdateVibrate(Lorg/telegram/ui/NotificationsSettingsActivity;)Z

    move-result v4

    invoke-virtual {v1, v2, v3, v4, v6}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)V

    goto :goto_0

    :cond_4
    if-ne v2, v6, :cond_5

    .line 1154
    sget v2, Lorg/telegram/messenger/R$string;->Vibrate:I

    invoke-static {v4, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Short"

    sget v4, Lorg/telegram/messenger/R$string;->Short:I

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v4}, Lorg/telegram/ui/NotificationsSettingsActivity;->-$$Nest$fgetupdateVibrate(Lorg/telegram/ui/NotificationsSettingsActivity;)Z

    move-result v4

    invoke-virtual {v1, v2, v3, v4, v6}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)V

    goto :goto_0

    :cond_5
    if-ne v2, v7, :cond_6

    .line 1156
    sget v2, Lorg/telegram/messenger/R$string;->Vibrate:I

    invoke-static {v4, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "VibrationDisabled"

    sget v4, Lorg/telegram/messenger/R$string;->VibrationDisabled:I

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v4}, Lorg/telegram/ui/NotificationsSettingsActivity;->-$$Nest$fgetupdateVibrate(Lorg/telegram/ui/NotificationsSettingsActivity;)Z

    move-result v4

    invoke-virtual {v1, v2, v3, v4, v6}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)V

    goto :goto_0

    :cond_6
    if-ne v2, v8, :cond_7

    .line 1158
    sget v2, Lorg/telegram/messenger/R$string;->Vibrate:I

    invoke-static {v4, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Long"

    sget v4, Lorg/telegram/messenger/R$string;->Long:I

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v4}, Lorg/telegram/ui/NotificationsSettingsActivity;->-$$Nest$fgetupdateVibrate(Lorg/telegram/ui/NotificationsSettingsActivity;)Z

    move-result v4

    invoke-virtual {v1, v2, v3, v4, v6}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)V

    goto :goto_0

    :cond_7
    const/4 v3, 0x4

    if-ne v2, v3, :cond_8

    .line 1160
    sget v2, Lorg/telegram/messenger/R$string;->Vibrate:I

    invoke-static {v4, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "OnlyIfSilent"

    sget v4, Lorg/telegram/messenger/R$string;->OnlyIfSilent:I

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v4}, Lorg/telegram/ui/NotificationsSettingsActivity;->-$$Nest$fgetupdateVibrate(Lorg/telegram/ui/NotificationsSettingsActivity;)Z

    move-result v4

    invoke-virtual {v1, v2, v3, v4, v6}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)V

    .line 1162
    :cond_8
    :goto_0
    iget-object v1, v0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v1, v5}, Lorg/telegram/ui/NotificationsSettingsActivity;->-$$Nest$fputupdateVibrate(Lorg/telegram/ui/NotificationsSettingsActivity;Z)V

    return-void

    .line 1163
    :cond_9
    iget-object v4, v0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v4}, Lorg/telegram/ui/NotificationsSettingsActivity;->-$$Nest$fgetrepeatRow(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v4

    if-ne v2, v4, :cond_3e

    .line 1164
    const-string v2, "repeat_messages"

    const/16 v4, 0x3c

    invoke-interface {v3, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_a

    .line 1167
    const-string v2, "RepeatNotificationsNever"

    sget v3, Lorg/telegram/messenger/R$string;->RepeatNotificationsNever:I

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_a
    if-ge v2, v4, :cond_b

    .line 1169
    const-string v3, "Minutes"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v3, v2, v4}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 1171
    :cond_b
    div-int/2addr v2, v4

    new-array v3, v5, [Ljava/lang/Object;

    const-string v4, "Hours"

    invoke-static {v4, v2, v3}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1173
    :goto_1
    const-string v3, "RepeatNotifications"

    sget v4, Lorg/telegram/messenger/R$string;->RepeatNotifications:I

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v4}, Lorg/telegram/ui/NotificationsSettingsActivity;->-$$Nest$fgetupdateRepeatNotifications(Lorg/telegram/ui/NotificationsSettingsActivity;)Z

    move-result v4

    invoke-virtual {v1, v3, v2, v4, v5}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)V

    .line 1174
    iget-object v1, v0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v1, v5}, Lorg/telegram/ui/NotificationsSettingsActivity;->-$$Nest$fputupdateRepeatNotifications(Lorg/telegram/ui/NotificationsSettingsActivity;Z)V

    return-void

    .line 1040
    :cond_c
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object v8, v1

    check-cast v8, Lorg/telegram/ui/Cells/NotificationsCheckCell;

    .line 1041
    iget-object v1, v0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$1000(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v1

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getNotificationsSettings(I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1042
    iget-object v3, v0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v3}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$1100(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v3

    invoke-static {v3}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v3

    .line 1051
    iget-object v4, v0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v4}, Lorg/telegram/ui/NotificationsSettingsActivity;->-$$Nest$fgetprivateRow(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v4

    const-string v9, "EnableReactionsStories"

    const-string v10, "EnableReactionsMessages"

    const-string v11, "EnableAllStories"

    const/4 v12, 0x0

    if-ne v2, v4, :cond_d

    .line 1052
    sget v4, Lorg/telegram/messenger/R$string;->NotificationsPrivateChats:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1053
    iget-object v13, v0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v13}, Lorg/telegram/ui/NotificationsSettingsActivity;->-$$Nest$fgetexceptionUsers(Lorg/telegram/ui/NotificationsSettingsActivity;)Ljava/util/ArrayList;

    move-result-object v13

    .line 1054
    const-string v14, "EnableAll2"

    invoke-interface {v1, v14, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v14

    .line 1055
    sget v15, Lorg/telegram/messenger/R$drawable;->msg_openprofile:I

    :goto_2
    move/from16 v20, v14

    move-object v14, v12

    move-object v12, v13

    move/from16 v13, v20

    goto/16 :goto_5

    .line 1056
    :cond_d
    iget-object v4, v0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v4}, Lorg/telegram/ui/NotificationsSettingsActivity;->-$$Nest$fgetgroupRow(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v4

    if-ne v2, v4, :cond_e

    .line 1057
    sget v4, Lorg/telegram/messenger/R$string;->NotificationsGroups:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1058
    iget-object v13, v0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v13}, Lorg/telegram/ui/NotificationsSettingsActivity;->-$$Nest$fgetexceptionChats(Lorg/telegram/ui/NotificationsSettingsActivity;)Ljava/util/ArrayList;

    move-result-object v13

    .line 1059
    const-string v14, "EnableGroup2"

    invoke-interface {v1, v14, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v14

    .line 1060
    sget v15, Lorg/telegram/messenger/R$drawable;->msg_groups:I

    goto :goto_2

    .line 1061
    :cond_e
    iget-object v4, v0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v4}, Lorg/telegram/ui/NotificationsSettingsActivity;->-$$Nest$fgetstoriesRow(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v4

    const v13, 0x7fffffff

    if-ne v2, v4, :cond_10

    .line 1062
    sget v4, Lorg/telegram/messenger/R$string;->NotificationStories:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1063
    iget-object v12, v0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v12}, Lorg/telegram/ui/NotificationsSettingsActivity;->-$$Nest$fgetexceptionStories(Lorg/telegram/ui/NotificationsSettingsActivity;)Ljava/util/ArrayList;

    move-result-object v12

    .line 1064
    iget-object v14, v0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v14}, Lorg/telegram/ui/NotificationsSettingsActivity;->-$$Nest$fgetexceptionAutoStories(Lorg/telegram/ui/NotificationsSettingsActivity;)Ljava/util/ArrayList;

    move-result-object v14

    .line 1065
    invoke-interface {v1, v11, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v15

    if-eqz v15, :cond_f

    move v13, v5

    .line 1066
    :cond_f
    sget v15, Lorg/telegram/messenger/R$drawable;->msg_menu_stories:I

    goto :goto_5

    .line 1067
    :cond_10
    iget-object v4, v0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v4}, Lorg/telegram/ui/NotificationsSettingsActivity;->-$$Nest$fgetreactionsRow(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v4

    if-ne v2, v4, :cond_13

    .line 1068
    sget v4, Lorg/telegram/messenger/R$string;->NotificationReactions:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1071
    invoke-interface {v1, v10, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v14

    if-nez v14, :cond_12

    invoke-interface {v1, v9, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v14

    if-eqz v14, :cond_11

    goto :goto_3

    :cond_11
    move v14, v13

    goto :goto_4

    :cond_12
    :goto_3
    move v14, v5

    .line 1072
    :goto_4
    sget v15, Lorg/telegram/messenger/R$drawable;->msg_reactions:I

    move v13, v14

    move-object v14, v12

    goto :goto_5

    .line 1074
    :cond_13
    sget v4, Lorg/telegram/messenger/R$string;->NotificationsChannels:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1075
    iget-object v13, v0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v13}, Lorg/telegram/ui/NotificationsSettingsActivity;->-$$Nest$fgetexceptionChannels(Lorg/telegram/ui/NotificationsSettingsActivity;)Ljava/util/ArrayList;

    move-result-object v13

    .line 1076
    const-string v14, "EnableChannel2"

    invoke-interface {v1, v14, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v14

    .line 1077
    sget v15, Lorg/telegram/messenger/R$drawable;->msg_channel:I

    goto/16 :goto_2

    :goto_5
    if-ge v13, v3, :cond_14

    move/from16 v16, v6

    goto :goto_6

    :cond_14
    move/from16 v16, v5

    :goto_6
    const v17, 0x1e13380

    if-eqz v16, :cond_15

    :goto_7
    move v7, v5

    move/from16 v18, v7

    goto :goto_8

    :cond_15
    sub-int v7, v13, v17

    if-lt v7, v3, :cond_16

    goto :goto_7

    :cond_16
    move/from16 v18, v5

    const/4 v7, 0x2

    .line 1087
    :goto_8
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1088
    iget-object v6, v0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v6}, Lorg/telegram/ui/NotificationsSettingsActivity;->-$$Nest$fgetreactionsRow(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v6

    move-object/from16 p1, v4

    const-string v4, ", "

    move/from16 v19, v7

    const-string v7, "NotificationsOff"

    if-ne v2, v6, :cond_1b

    if-lez v13, :cond_17

    .line 1091
    sget v1, Lorg/telegram/messenger/R$string;->NotificationsOff:I

    invoke-static {v7, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v12, v18

    goto/16 :goto_d

    :cond_17
    const/4 v3, 0x1

    .line 1094
    invoke-interface {v1, v10, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_18

    .line 1095
    sget v6, Lorg/telegram/messenger/R$string;->NotificationReactionsMessages:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1097
    :cond_18
    invoke-interface {v1, v9, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 1098
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_19

    .line 1099
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1101
    :cond_19
    sget v1, Lorg/telegram/messenger/R$string;->NotificationReactionsStories:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1a
    const/4 v12, 0x1

    goto/16 :goto_d

    .line 1104
    :cond_1b
    const-string v6, "NotificationsOn"

    if-eqz v12, :cond_22

    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_22

    if-ge v13, v3, :cond_1c

    const/16 v16, 0x1

    goto :goto_9

    :cond_1c
    move/from16 v16, v18

    :goto_9
    if-eqz v16, :cond_1d

    .line 1106
    sget v3, Lorg/telegram/messenger/R$string;->NotificationsOn:I

    invoke-static {v6, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a

    :cond_1d
    sub-int v6, v13, v17

    if-lt v6, v3, :cond_1e

    .line 1108
    sget v3, Lorg/telegram/messenger/R$string;->NotificationsOff:I

    invoke-static {v7, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a

    .line 1110
    :cond_1e
    sget v3, Lorg/telegram/messenger/R$string;->NotificationsOffUntil:I

    int-to-long v6, v13

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->stringForMessageListDate(J)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    new-array v9, v7, [Ljava/lang/Object;

    aput-object v6, v9, v18

    const-string v6, "NotificationsOffUntil"

    invoke-static {v6, v3, v9}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1112
    :goto_a
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-eqz v3, :cond_1f

    .line 1113
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1115
    :cond_1f
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1116
    iget-object v4, v0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v4}, Lorg/telegram/ui/NotificationsSettingsActivity;->-$$Nest$fgetstoriesRow(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v4

    if-ne v2, v4, :cond_20

    invoke-interface {v1, v11}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_20

    if-eqz v14, :cond_20

    .line 1117
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v3, v1

    .line 1119
    :cond_20
    const-string v1, "Exception"

    move/from16 v4, v18

    new-array v6, v4, [Ljava/lang/Object;

    invoke-static {v1, v3, v6}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_21
    :goto_b
    move/from16 v12, v16

    goto :goto_d

    :cond_22
    if-eqz v14, :cond_24

    .line 1120
    invoke-virtual {v14}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_24

    if-lez v13, :cond_23

    .line 1122
    sget v3, Lorg/telegram/messenger/R$string;->NotificationsOff:I

    invoke-static {v7, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_c

    .line 1124
    :cond_23
    sget v3, Lorg/telegram/messenger/R$string;->NotificationsOn:I

    invoke-static {v6, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1126
    :goto_c
    invoke-virtual {v14}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_21

    invoke-interface {v1, v11}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_21

    .line 1127
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1128
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v4, 0x0

    new-array v3, v4, [Ljava/lang/Object;

    const-string v4, "AutoException"

    invoke-static {v4, v1, v3}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b

    .line 1131
    :cond_24
    const-string v1, "TapToChange"

    sget v3, Lorg/telegram/messenger/R$string;->TapToChange:I

    invoke-static {v1, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b

    .line 1133
    :goto_d
    iget-object v1, v0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/NotificationsSettingsActivity;->-$$Nest$fgetreactionsRow(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v1

    move v11, v15

    if-eq v2, v1, :cond_25

    const/4 v15, 0x1

    goto :goto_e

    :cond_25
    const/4 v15, 0x0

    :goto_e
    const/4 v14, 0x0

    move-object/from16 v9, p1

    move-object v10, v5

    move/from16 v13, v19

    invoke-virtual/range {v8 .. v15}, Lorg/telegram/ui/Cells/NotificationsCheckCell;->setTextAndValueAndIconAndCheck(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZIZZ)V

    return-void

    .line 1032
    :cond_26
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    const/4 v3, 0x1

    .line 1033
    invoke-virtual {v1, v3}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setMultilineDetail(Z)V

    .line 1034
    iget-object v3, v0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v3}, Lorg/telegram/ui/NotificationsSettingsActivity;->-$$Nest$fgetresetNotificationsRow(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v3

    if-ne v2, v3, :cond_3e

    .line 1035
    const-string v2, "ResetAllNotifications"

    sget v3, Lorg/telegram/messenger/R$string;->ResetAllNotifications:I

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "UndoAllCustom"

    sget v4, Lorg/telegram/messenger/R$string;->UndoAllCustom:I

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setTextAndValue(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    return-void

    .line 996
    :cond_27
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object v5, v1

    check-cast v5, Lorg/telegram/ui/Cells/TextCheckCell;

    .line 997
    iget-object v1, v0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$600(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v1

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getNotificationsSettings(I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 998
    iget-object v3, v0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v3}, Lorg/telegram/ui/NotificationsSettingsActivity;->-$$Nest$fgetinappSoundRow(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v3

    if-ne v2, v3, :cond_28

    .line 999
    sget v2, Lorg/telegram/messenger/R$string;->InAppSounds:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "EnableInAppSounds"

    const/4 v7, 0x1

    invoke-interface {v1, v3, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v5, v2, v1, v7}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/CharSequence;ZZ)V

    return-void

    :cond_28
    const/4 v7, 0x1

    .line 1000
    iget-object v3, v0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v3}, Lorg/telegram/ui/NotificationsSettingsActivity;->-$$Nest$fgetinappVibrateRow(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v3

    if-ne v2, v3, :cond_29

    .line 1001
    sget v2, Lorg/telegram/messenger/R$string;->InAppVibrate:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "EnableInAppVibrate"

    invoke-interface {v1, v3, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v5, v2, v1, v7}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/CharSequence;ZZ)V

    return-void

    .line 1002
    :cond_29
    iget-object v3, v0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v3}, Lorg/telegram/ui/NotificationsSettingsActivity;->-$$Nest$fgetinappPreviewRow(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v3

    if-ne v2, v3, :cond_2a

    .line 1003
    sget v2, Lorg/telegram/messenger/R$string;->InAppPreview:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "EnableInAppPreview"

    invoke-interface {v1, v3, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v5, v2, v1, v7}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/CharSequence;ZZ)V

    return-void

    .line 1004
    :cond_2a
    iget-object v3, v0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v3}, Lorg/telegram/ui/NotificationsSettingsActivity;->-$$Nest$fgetinappPriorityRow(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v3

    if-ne v2, v3, :cond_2b

    .line 1005
    sget v2, Lorg/telegram/messenger/R$string;->InAppPopup:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    sget v2, Lorg/telegram/messenger/R$string;->InAppPopupInfo:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "EnableInAppPopup"

    invoke-interface {v1, v3, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object v7, v2

    invoke-virtual/range {v5 .. v10}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndValueAndCheck(Ljava/lang/CharSequence;Ljava/lang/String;ZZZ)V

    return-void

    .line 1006
    :cond_2b
    iget-object v3, v0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v3}, Lorg/telegram/ui/NotificationsSettingsActivity;->-$$Nest$fgetcontactJoinedRow(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v3

    if-ne v2, v3, :cond_2c

    .line 1007
    const-string v2, "ContactJoined"

    sget v3, Lorg/telegram/messenger/R$string;->ContactJoined:I

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "EnableContactJoined"

    const/4 v7, 0x1

    invoke-interface {v1, v3, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v5, v2, v1, v7}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/CharSequence;ZZ)V

    return-void

    :cond_2c
    const/4 v7, 0x1

    .line 1008
    iget-object v3, v0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v3}, Lorg/telegram/ui/NotificationsSettingsActivity;->-$$Nest$fgetpinnedMessageRow(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v3

    if-ne v2, v3, :cond_2d

    .line 1009
    sget v2, Lorg/telegram/messenger/R$string;->PinnedMessages:I

    const-string v3, "PinnedMessages"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v3, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const/4 v3, 0x0

    invoke-virtual {v5, v2, v1, v3}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/CharSequence;ZZ)V

    return-void

    :cond_2d
    const/4 v3, 0x0

    .line 1010
    iget-object v6, v0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v6}, Lorg/telegram/ui/NotificationsSettingsActivity;->-$$Nest$fgetandroidAutoAlertRow(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v6

    if-ne v2, v6, :cond_2e

    .line 1011
    const-string v2, "EnableAutoNotifications"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const-string v2, "Android Auto"

    invoke-virtual {v5, v2, v1, v7}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/CharSequence;ZZ)V

    return-void

    .line 1012
    :cond_2e
    iget-object v3, v0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v3}, Lorg/telegram/ui/NotificationsSettingsActivity;->-$$Nest$fgetnotificationsServiceRow(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v3

    if-ne v2, v3, :cond_2f

    .line 1013
    const-string v2, "NotificationsService"

    sget v3, Lorg/telegram/messenger/R$string;->NotificationsService:I

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    const-string v2, "NotificationsServiceInfo"

    sget v3, Lorg/telegram/messenger/R$string;->NotificationsServiceInfo:I

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    iget-object v2, v0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-boolean v2, v2, Lorg/telegram/messenger/MessagesController;->keepAliveService:Z

    const-string v3, "pushService"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    const/4 v9, 0x1

    const/4 v10, 0x1

    invoke-virtual/range {v5 .. v10}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndValueAndCheck(Ljava/lang/CharSequence;Ljava/lang/String;ZZZ)V

    return-void

    .line 1014
    :cond_2f
    iget-object v3, v0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v3}, Lorg/telegram/ui/NotificationsSettingsActivity;->-$$Nest$fgetnotificationsServiceConnectionRow(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v3

    if-ne v2, v3, :cond_30

    .line 1015
    const-string v2, "NotificationsServiceConnection"

    sget v3, Lorg/telegram/messenger/R$string;->NotificationsServiceConnection:I

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    const-string v2, "NotificationsServiceConnectionInfo"

    sget v3, Lorg/telegram/messenger/R$string;->NotificationsServiceConnectionInfo:I

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    iget-object v2, v0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-boolean v2, v2, Lorg/telegram/messenger/MessagesController;->backgroundConnection:Z

    const-string v3, "pushConnection"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    const/4 v9, 0x1

    const/4 v10, 0x1

    invoke-virtual/range {v5 .. v10}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndValueAndCheck(Ljava/lang/CharSequence;Ljava/lang/String;ZZZ)V

    return-void

    .line 1016
    :cond_30
    iget-object v3, v0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v3}, Lorg/telegram/ui/NotificationsSettingsActivity;->-$$Nest$fgetbadgeNumberShowRow(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v3

    if-ne v2, v3, :cond_31

    .line 1017
    const-string v1, "BadgeNumberShow"

    sget v2, Lorg/telegram/messenger/R$string;->BadgeNumberShow:I

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v2}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$700(Lorg/telegram/ui/NotificationsSettingsActivity;)Lorg/telegram/messenger/NotificationsController;

    move-result-object v2

    iget-boolean v2, v2, Lorg/telegram/messenger/NotificationsController;->showBadgeNumber:Z

    const/4 v7, 0x1

    invoke-virtual {v5, v1, v2, v7}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/CharSequence;ZZ)V

    return-void

    :cond_31
    const/4 v7, 0x1

    .line 1018
    iget-object v3, v0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v3}, Lorg/telegram/ui/NotificationsSettingsActivity;->-$$Nest$fgetbadgeNumberMutedRow(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v3

    if-ne v2, v3, :cond_32

    .line 1019
    const-string v1, "BadgeNumberMutedChats"

    sget v2, Lorg/telegram/messenger/R$string;->BadgeNumberMutedChats:I

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v2}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$800(Lorg/telegram/ui/NotificationsSettingsActivity;)Lorg/telegram/messenger/NotificationsController;

    move-result-object v2

    iget-boolean v2, v2, Lorg/telegram/messenger/NotificationsController;->showBadgeMuted:Z

    invoke-virtual {v5, v1, v2, v7}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/CharSequence;ZZ)V

    return-void

    .line 1020
    :cond_32
    iget-object v3, v0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v3}, Lorg/telegram/ui/NotificationsSettingsActivity;->-$$Nest$fgetbadgeNumberMessagesRow(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v3

    if-ne v2, v3, :cond_33

    .line 1021
    const-string v1, "BadgeNumberUnread"

    sget v2, Lorg/telegram/messenger/R$string;->BadgeNumberUnread:I

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v2}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$900(Lorg/telegram/ui/NotificationsSettingsActivity;)Lorg/telegram/messenger/NotificationsController;

    move-result-object v2

    iget-boolean v2, v2, Lorg/telegram/messenger/NotificationsController;->showBadgeMessages:Z

    const/4 v4, 0x0

    invoke-virtual {v5, v1, v2, v4}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/CharSequence;ZZ)V

    return-void

    .line 1022
    :cond_33
    iget-object v3, v0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v3}, Lorg/telegram/ui/NotificationsSettingsActivity;->-$$Nest$fgetinchatSoundRow(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v3

    if-ne v2, v3, :cond_34

    .line 1023
    const-string v2, "InChatSound"

    sget v3, Lorg/telegram/messenger/R$string;->InChatSound:I

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "EnableInChatSound"

    const/4 v7, 0x1

    invoke-interface {v1, v3, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v5, v2, v1, v7}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/CharSequence;ZZ)V

    return-void

    :cond_34
    const/4 v7, 0x1

    .line 1024
    iget-object v3, v0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v3}, Lorg/telegram/ui/NotificationsSettingsActivity;->-$$Nest$fgetcallsVibrateRow(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v3

    if-ne v2, v3, :cond_35

    .line 1025
    sget v2, Lorg/telegram/messenger/R$string;->Vibrate:I

    invoke-static {v4, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "EnableCallVibrate"

    invoke-interface {v1, v3, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v5, v2, v1, v7}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/CharSequence;ZZ)V

    return-void

    .line 1026
    :cond_35
    iget-object v1, v0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/NotificationsSettingsActivity;->-$$Nest$fgetaccountsAllRow(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v1

    if-ne v2, v1, :cond_3e

    .line 1027
    sget v1, Lorg/telegram/messenger/R$string;->AllAccounts:I

    const-string v2, "AllAccounts"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalNotificationsSettings()Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3, v2, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    const/4 v4, 0x0

    invoke-virtual {v5, v1, v2, v4}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/CharSequence;ZZ)V

    return-void

    .line 975
    :cond_36
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/Cells/HeaderCell;

    .line 976
    iget-object v3, v0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v3}, Lorg/telegram/ui/NotificationsSettingsActivity;->-$$Nest$fgetnotificationsSectionRow(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v3

    if-ne v2, v3, :cond_37

    .line 977
    const-string v2, "NotificationsForChats"

    sget v3, Lorg/telegram/messenger/R$string;->NotificationsForChats:I

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 978
    :cond_37
    iget-object v3, v0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v3}, Lorg/telegram/ui/NotificationsSettingsActivity;->-$$Nest$fgetinappSectionRow(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v3

    if-ne v2, v3, :cond_38

    .line 979
    const-string v2, "InAppNotifications"

    sget v3, Lorg/telegram/messenger/R$string;->InAppNotifications:I

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 980
    :cond_38
    iget-object v3, v0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v3}, Lorg/telegram/ui/NotificationsSettingsActivity;->-$$Nest$fgeteventsSectionRow(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v3

    if-ne v2, v3, :cond_39

    .line 981
    const-string v2, "Events"

    sget v3, Lorg/telegram/messenger/R$string;->Events:I

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 982
    :cond_39
    iget-object v3, v0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v3}, Lorg/telegram/ui/NotificationsSettingsActivity;->-$$Nest$fgetotherSectionRow(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v3

    if-ne v2, v3, :cond_3a

    .line 983
    const-string v2, "NotificationsOther"

    sget v3, Lorg/telegram/messenger/R$string;->NotificationsOther:I

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 984
    :cond_3a
    iget-object v3, v0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v3}, Lorg/telegram/ui/NotificationsSettingsActivity;->-$$Nest$fgetresetSectionRow(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v3

    if-ne v2, v3, :cond_3b

    .line 985
    const-string v2, "Reset"

    sget v3, Lorg/telegram/messenger/R$string;->Reset:I

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 986
    :cond_3b
    iget-object v3, v0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v3}, Lorg/telegram/ui/NotificationsSettingsActivity;->-$$Nest$fgetcallsSectionRow(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v3

    if-ne v2, v3, :cond_3c

    .line 987
    const-string v2, "VoipNotificationSettings"

    sget v3, Lorg/telegram/messenger/R$string;->VoipNotificationSettings:I

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 988
    :cond_3c
    iget-object v3, v0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v3}, Lorg/telegram/ui/NotificationsSettingsActivity;->-$$Nest$fgetbadgeNumberSection(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v3

    if-ne v2, v3, :cond_3d

    .line 989
    const-string v2, "BadgeNumber"

    sget v3, Lorg/telegram/messenger/R$string;->BadgeNumber:I

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 990
    :cond_3d
    iget-object v3, v0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v3}, Lorg/telegram/ui/NotificationsSettingsActivity;->-$$Nest$fgetaccountsSectionRow(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v3

    if-ne v2, v3, :cond_3e

    .line 991
    const-string v2, "ShowNotificationsFor"

    sget v3, Lorg/telegram/messenger/R$string;->ShowNotificationsFor:I

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    :cond_3e
    :goto_f
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 7

    if-eqz p2, :cond_5

    const/4 p1, 0x1

    if-eq p2, p1, :cond_4

    const/4 p1, 0x2

    if-eq p2, p1, :cond_3

    const/4 p1, 0x3

    if-eq p2, p1, :cond_2

    const/4 p1, 0x4

    if-eq p2, p1, :cond_1

    const/4 p1, 0x5

    if-eq p2, p1, :cond_0

    .line 965
    new-instance p1, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    iget-object p2, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$500(Lorg/telegram/ui/NotificationsSettingsActivity;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    goto :goto_0

    .line 961
    :cond_0
    new-instance p1, Lorg/telegram/ui/Cells/TextSettingsCell;

    iget-object p2, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$400(Lorg/telegram/ui/NotificationsSettingsActivity;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lorg/telegram/ui/Cells/TextSettingsCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    goto :goto_0

    .line 958
    :cond_1
    new-instance p1, Lorg/telegram/ui/Cells/ShadowSectionCell;

    iget-object p2, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$300(Lorg/telegram/ui/NotificationsSettingsActivity;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lorg/telegram/ui/Cells/ShadowSectionCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    goto :goto_0

    .line 955
    :cond_2
    new-instance v1, Lorg/telegram/ui/Cells/NotificationsCheckCell;

    iget-object v2, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->mContext:Landroid/content/Context;

    iget-object p1, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {p1}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$200(Lorg/telegram/ui/NotificationsSettingsActivity;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v6

    const/16 v3, 0x15

    const/16 v4, 0x40

    const/4 v5, 0x1

    invoke-direct/range {v1 .. v6}, Lorg/telegram/ui/Cells/NotificationsCheckCell;-><init>(Landroid/content/Context;IIZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    move-object p1, v1

    goto :goto_0

    .line 952
    :cond_3
    new-instance p1, Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    iget-object p2, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 949
    :cond_4
    new-instance p1, Lorg/telegram/ui/Cells/TextCheckCell;

    iget-object p2, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$100(Lorg/telegram/ui/NotificationsSettingsActivity;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lorg/telegram/ui/Cells/TextCheckCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    goto :goto_0

    .line 946
    :cond_5
    new-instance p1, Lorg/telegram/ui/Cells/HeaderCell;

    iget-object p2, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$000(Lorg/telegram/ui/NotificationsSettingsActivity;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lorg/telegram/ui/Cells/HeaderCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 968
    :goto_0
    new-instance p2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p2
.end method
