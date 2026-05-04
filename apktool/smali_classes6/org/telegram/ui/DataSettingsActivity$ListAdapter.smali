.class Lorg/telegram/ui/DataSettingsActivity$ListAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/DataSettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lorg/telegram/ui/DataSettingsActivity;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/DataSettingsActivity;Landroid/content/Context;)V
    .locals 0

    .line 637
    iput-object p1, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    .line 638
    iput-object p2, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 643
    iget-object v0, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DataSettingsActivity;->-$$Nest$fgetrowCount(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 928
    iget-object v0, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DataSettingsActivity;->-$$Nest$fgetmediaDownloadSection2Row(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_a

    iget-object v0, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DataSettingsActivity;->-$$Nest$fgetusageSection2Row(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_a

    iget-object v0, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DataSettingsActivity;->-$$Nest$fgetcallsSection2Row(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_a

    iget-object v0, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DataSettingsActivity;->-$$Nest$fgetproxySection2Row(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_a

    iget-object v0, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DataSettingsActivity;->-$$Nest$fgetautoplaySectionRow(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_a

    iget-object v0, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DataSettingsActivity;->-$$Nest$fgetclearDraftsSectionRow(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_a

    iget-object v0, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DataSettingsActivity;->-$$Nest$fgetsaveToGalleryDividerRow(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v0

    if-ne p1, v0, :cond_0

    goto/16 :goto_4

    .line 930
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DataSettingsActivity;->-$$Nest$fgetmediaDownloadSectionRow(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_9

    iget-object v0, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DataSettingsActivity;->-$$Nest$fgetstreamSectionRow(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_9

    iget-object v0, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DataSettingsActivity;->-$$Nest$fgetcallsSectionRow(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_9

    iget-object v0, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DataSettingsActivity;->-$$Nest$fgetusageSectionRow(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_9

    iget-object v0, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DataSettingsActivity;->-$$Nest$fgetproxySectionRow(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_9

    iget-object v0, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DataSettingsActivity;->-$$Nest$fgetautoplayHeaderRow(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_9

    iget-object v0, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DataSettingsActivity;->-$$Nest$fgetsaveToGallerySectionRow(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v0

    if-ne p1, v0, :cond_1

    goto/16 :goto_3

    .line 932
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DataSettingsActivity;->-$$Nest$fgetenableCacheStreamRow(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_8

    iget-object v0, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DataSettingsActivity;->-$$Nest$fgetenableStreamRow(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_8

    iget-object v0, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DataSettingsActivity;->-$$Nest$fgetenableAllStreamRow(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_8

    iget-object v0, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DataSettingsActivity;->-$$Nest$fgetenableMkvRow(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_8

    iget-object v0, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DataSettingsActivity;->-$$Nest$fgetautoplayGifsRow(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_8

    iget-object v0, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DataSettingsActivity;->-$$Nest$fgetautoplayVideoRow(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v0

    if-ne p1, v0, :cond_2

    goto :goto_2

    .line 934
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DataSettingsActivity;->-$$Nest$fgetenableAllStreamInfoRow(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v0

    if-ne p1, v0, :cond_3

    const/4 p1, 0x4

    return p1

    .line 936
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DataSettingsActivity;->-$$Nest$fgetmobileRow(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_7

    iget-object v0, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DataSettingsActivity;->-$$Nest$fgetwifiRow(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_7

    iget-object v0, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DataSettingsActivity;->-$$Nest$fgetroamingRow(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_7

    iget-object v0, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DataSettingsActivity;->-$$Nest$fgetsaveToGalleryGroupsRow(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_7

    iget-object v0, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DataSettingsActivity;->-$$Nest$fgetsaveToGalleryPeerRow(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_7

    iget-object v0, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DataSettingsActivity;->-$$Nest$fgetsaveToGalleryChannelsRow(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v0

    if-ne p1, v0, :cond_4

    goto :goto_1

    .line 938
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DataSettingsActivity;->-$$Nest$fgetstorageUsageRow(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DataSettingsActivity;->-$$Nest$fgetdataUsageRow(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DataSettingsActivity;->-$$Nest$fgetstorageNumRow(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v0

    if-ne p1, v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 p1, 0x1

    return p1

    :cond_6
    :goto_0
    const/4 p1, 0x6

    return p1

    :cond_7
    :goto_1
    const/4 p1, 0x5

    return p1

    :cond_8
    :goto_2
    const/4 p1, 0x3

    return p1

    :cond_9
    :goto_3
    const/4 p1, 0x2

    return p1

    :cond_a
    :goto_4
    const/4 p1, 0x0

    return p1
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 0

    .line 892
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->isRowEnabled(I)Z

    move-result p1

    return p1
.end method

.method public isRowEnabled(I)Z
    .locals 1

    .line 885
    iget-object v0, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DataSettingsActivity;->-$$Nest$fgetmobileRow(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DataSettingsActivity;->-$$Nest$fgetroamingRow(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DataSettingsActivity;->-$$Nest$fgetwifiRow(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DataSettingsActivity;->-$$Nest$fgetstorageUsageRow(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DataSettingsActivity;->-$$Nest$fgetuseLessDataForCallsRow(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DataSettingsActivity;->-$$Nest$fgetdataUsageRow(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DataSettingsActivity;->-$$Nest$fgetproxyRow(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DataSettingsActivity;->-$$Nest$fgetclearDraftsRow(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DataSettingsActivity;->-$$Nest$fgetenableCacheStreamRow(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DataSettingsActivity;->-$$Nest$fgetenableStreamRow(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DataSettingsActivity;->-$$Nest$fgetenableAllStreamRow(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DataSettingsActivity;->-$$Nest$fgetenableMkvRow(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DataSettingsActivity;->-$$Nest$fgetquickRepliesRow(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DataSettingsActivity;->-$$Nest$fgetautoplayVideoRow(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DataSettingsActivity;->-$$Nest$fgetautoplayGifsRow(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DataSettingsActivity;->-$$Nest$fgetstorageNumRow(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DataSettingsActivity;->-$$Nest$fgetsaveToGalleryGroupsRow(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DataSettingsActivity;->-$$Nest$fgetsaveToGalleryPeerRow(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DataSettingsActivity;->-$$Nest$fgetsaveToGalleryChannelsRow(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DataSettingsActivity;->-$$Nest$fgetresetDownloadRow(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v0

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
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    .line 648
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v3

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_14

    .line 653
    :pswitch_0
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object v9, v1

    check-cast v9, Lorg/telegram/ui/Cells/TextCell;

    .line 654
    iget-object v1, v0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DataSettingsActivity;->-$$Nest$fgetstorageUsageRow(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v1

    if-ne v2, v1, :cond_2

    .line 655
    iget-object v1, v0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DataSettingsActivity;->-$$Nest$fgetstorageUsageLoading(Lorg/telegram/ui/DataSettingsActivity;)Z

    move-result v1

    const/16 v2, 0x2d

    if-eqz v1, :cond_0

    .line 656
    sget v1, Lorg/telegram/messenger/R$string;->StorageUsage:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v10

    sget v13, Lorg/telegram/messenger/R$drawable;->msg_filled_storageusage:I

    const v15, -0xca9718

    const/16 v16, 0x1

    const-string v11, ""

    const/4 v12, 0x0

    const v14, -0xb07a0a

    invoke-virtual/range {v9 .. v16}, Lorg/telegram/ui/Cells/TextCell;->setTextAndValueAndColorfulIcon(Ljava/lang/String;Ljava/lang/CharSequence;ZIIIZ)V

    .line 657
    iget-object v1, v0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DataSettingsActivity;->-$$Nest$fgetupdateStorageUsageAnimated(Lorg/telegram/ui/DataSettingsActivity;)Z

    move-result v1

    invoke-virtual {v9, v7, v2, v1}, Lorg/telegram/ui/Cells/TextCell;->setDrawLoading(ZIZ)V

    goto :goto_2

    .line 659
    :cond_0
    sget v1, Lorg/telegram/messenger/R$string;->StorageUsage:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v10

    iget-object v1, v0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DataSettingsActivity;->-$$Nest$fgetstorageUsageSize(Lorg/telegram/ui/DataSettingsActivity;)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-gtz v1, :cond_1

    const-string v1, ""

    :goto_0
    move-object v11, v1

    goto :goto_1

    :cond_1
    iget-object v1, v0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DataSettingsActivity;->-$$Nest$fgetstorageUsageSize(Lorg/telegram/ui/DataSettingsActivity;)J

    move-result-wide v3

    invoke-static {v3, v4}, Lorg/telegram/messenger/AndroidUtilities;->formatFileSize(J)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :goto_1
    sget v13, Lorg/telegram/messenger/R$drawable;->msg_filled_storageusage:I

    const v15, -0xca9718

    const/16 v16, 0x1

    const/4 v12, 0x1

    const v14, -0xb07a0a

    invoke-virtual/range {v9 .. v16}, Lorg/telegram/ui/Cells/TextCell;->setTextAndValueAndColorfulIcon(Ljava/lang/String;Ljava/lang/CharSequence;ZIIIZ)V

    .line 660
    iget-object v1, v0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DataSettingsActivity;->-$$Nest$fgetupdateStorageUsageAnimated(Lorg/telegram/ui/DataSettingsActivity;)Z

    move-result v1

    invoke-virtual {v9, v8, v2, v1}, Lorg/telegram/ui/Cells/TextCell;->setDrawLoading(ZIZ)V

    .line 662
    :goto_2
    iget-object v1, v0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v1, v8}, Lorg/telegram/ui/DataSettingsActivity;->-$$Nest$fputupdateStorageUsageAnimated(Lorg/telegram/ui/DataSettingsActivity;Z)V

    return-void

    .line 663
    :cond_2
    iget-object v1, v0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DataSettingsActivity;->-$$Nest$fgetdataUsageRow(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v1

    if-ne v2, v1, :cond_4

    .line 664
    iget-object v1, v0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DataSettingsActivity;->access$000(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v1

    invoke-static {v1}, Lorg/telegram/messenger/StatsController;->getInstance(I)Lorg/telegram/messenger/StatsController;

    move-result-object v1

    const/4 v2, 0x6

    .line 666
    invoke-virtual {v1, v8, v2}, Lorg/telegram/messenger/StatsController;->getReceivedBytesCount(II)J

    move-result-wide v10

    .line 667
    invoke-virtual {v1, v7, v2}, Lorg/telegram/messenger/StatsController;->getReceivedBytesCount(II)J

    move-result-wide v12

    add-long/2addr v10, v12

    .line 668
    invoke-virtual {v1, v6, v2}, Lorg/telegram/messenger/StatsController;->getReceivedBytesCount(II)J

    move-result-wide v12

    add-long/2addr v10, v12

    .line 669
    invoke-virtual {v1, v8, v2}, Lorg/telegram/messenger/StatsController;->getSentBytesCount(II)J

    move-result-wide v12

    add-long/2addr v10, v12

    .line 670
    invoke-virtual {v1, v7, v2}, Lorg/telegram/messenger/StatsController;->getSentBytesCount(II)J

    move-result-wide v12

    add-long/2addr v10, v12

    .line 671
    invoke-virtual {v1, v6, v2}, Lorg/telegram/messenger/StatsController;->getSentBytesCount(II)J

    move-result-wide v1

    add-long/2addr v10, v1

    .line 673
    sget v1, Lorg/telegram/messenger/R$string;->NetworkUsage:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v11}, Lorg/telegram/messenger/AndroidUtilities;->formatFileSize(J)Ljava/lang/String;

    move-result-object v11

    sget v13, Lorg/telegram/messenger/R$drawable;->msg_filled_datausage:I

    iget-object v2, v0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DataSettingsActivity;->-$$Nest$fgetstorageNumRow(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v2

    if-eq v2, v4, :cond_3

    move/from16 v16, v7

    goto :goto_3

    :cond_3
    move/from16 v16, v8

    :goto_3
    const/4 v12, 0x1

    const v14, -0xaa35b9

    const v15, -0xd84bcc

    move-object v10, v1

    invoke-virtual/range {v9 .. v16}, Lorg/telegram/ui/Cells/TextCell;->setTextAndValueAndColorfulIcon(Ljava/lang/String;Ljava/lang/CharSequence;ZIIIZ)V

    return-void

    .line 674
    :cond_4
    iget-object v1, v0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DataSettingsActivity;->-$$Nest$fgetstorageNumRow(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v1

    if-ne v2, v1, :cond_30

    .line 675
    iget-object v1, v0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DataSettingsActivity;->-$$Nest$fgetstorageDirs(Lorg/telegram/ui/DataSettingsActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 676
    sget-object v2, Lorg/telegram/messenger/SharedConfig;->storageCacheDir:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 677
    iget-object v2, v0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DataSettingsActivity;->-$$Nest$fgetstorageDirs(Lorg/telegram/ui/DataSettingsActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_4
    if-ge v8, v2, :cond_6

    .line 678
    iget-object v3, v0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DataSettingsActivity;->-$$Nest$fgetstorageDirs(Lorg/telegram/ui/DataSettingsActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 679
    sget-object v4, Lorg/telegram/messenger/SharedConfig;->storageCacheDir:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    move-object v1, v3

    goto :goto_5

    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_6
    :goto_5
    if-eqz v1, :cond_8

    .line 685
    const-string v2, "/storage/emulated/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    goto :goto_7

    :cond_7
    sget v1, Lorg/telegram/messenger/R$string;->SdCard:I

    :goto_6
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object v11, v1

    goto :goto_8

    :cond_8
    :goto_7
    sget v1, Lorg/telegram/messenger/R$string;->InternalStorage:I

    goto :goto_6

    .line 686
    :goto_8
    sget v1, Lorg/telegram/messenger/R$string;->StoragePath:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v10

    sget v13, Lorg/telegram/messenger/R$drawable;->msg_filled_sdcard:I

    const v15, -0x1e75ef

    const/16 v16, 0x0

    const/4 v12, 0x1

    const v14, -0xf60e5

    invoke-virtual/range {v9 .. v16}, Lorg/telegram/ui/Cells/TextCell;->setTextAndValueAndColorfulIcon(Ljava/lang/String;Ljava/lang/CharSequence;ZIIIZ)V

    return-void

    .line 775
    :pswitch_1
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object v9, v1

    check-cast v9, Lorg/telegram/ui/Cells/NotificationsCheckCell;

    .line 781
    iget-object v1, v0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DataSettingsActivity;->-$$Nest$fgetsaveToGalleryPeerRow(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v1

    if-ne v2, v1, :cond_9

    .line 782
    sget v1, Lorg/telegram/messenger/R$string;->SaveToGalleryPrivate:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 783
    sget-object v2, Lorg/telegram/messenger/SaveToGallerySettingsHelper;->user:Lorg/telegram/messenger/SaveToGallerySettingsHelper$SharedSettings;

    iget-object v3, v0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DataSettingsActivity;->access$100(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/SaveToGallerySettingsHelper$SharedSettings;->createDescription(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 784
    sget-object v3, Lorg/telegram/messenger/SaveToGallerySettingsHelper;->user:Lorg/telegram/messenger/SaveToGallerySettingsHelper$SharedSettings;

    invoke-virtual {v3}, Lorg/telegram/messenger/SaveToGallerySettingsHelper$Settings;->enabled()Z

    move-result v3

    :goto_9
    move-object v10, v1

    move v15, v7

    goto/16 :goto_c

    .line 785
    :cond_9
    iget-object v1, v0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DataSettingsActivity;->-$$Nest$fgetsaveToGalleryGroupsRow(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v1

    if-ne v2, v1, :cond_a

    .line 786
    sget v1, Lorg/telegram/messenger/R$string;->SaveToGalleryGroups:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 787
    sget-object v2, Lorg/telegram/messenger/SaveToGallerySettingsHelper;->groups:Lorg/telegram/messenger/SaveToGallerySettingsHelper$SharedSettings;

    iget-object v3, v0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DataSettingsActivity;->access$200(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/SaveToGallerySettingsHelper$SharedSettings;->createDescription(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 788
    sget-object v3, Lorg/telegram/messenger/SaveToGallerySettingsHelper;->groups:Lorg/telegram/messenger/SaveToGallerySettingsHelper$SharedSettings;

    invoke-virtual {v3}, Lorg/telegram/messenger/SaveToGallerySettingsHelper$Settings;->enabled()Z

    move-result v3

    goto :goto_9

    .line 789
    :cond_a
    iget-object v1, v0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DataSettingsActivity;->-$$Nest$fgetsaveToGalleryChannelsRow(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v1

    if-ne v2, v1, :cond_b

    .line 790
    sget v1, Lorg/telegram/messenger/R$string;->SaveToGalleryChannels:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 791
    sget-object v2, Lorg/telegram/messenger/SaveToGallerySettingsHelper;->channels:Lorg/telegram/messenger/SaveToGallerySettingsHelper$SharedSettings;

    iget-object v3, v0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DataSettingsActivity;->access$300(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/SaveToGallerySettingsHelper$SharedSettings;->createDescription(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 792
    sget-object v3, Lorg/telegram/messenger/SaveToGallerySettingsHelper;->channels:Lorg/telegram/messenger/SaveToGallerySettingsHelper$SharedSettings;

    invoke-virtual {v3}, Lorg/telegram/messenger/SaveToGallerySettingsHelper$Settings;->enabled()Z

    move-result v3

    move-object v10, v1

    move v15, v8

    goto/16 :goto_c

    .line 794
    :cond_b
    iget-object v1, v0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DataSettingsActivity;->-$$Nest$fgetmobileRow(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v1

    if-ne v2, v1, :cond_c

    .line 795
    sget v1, Lorg/telegram/messenger/R$string;->WhenUsingMobileData:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 796
    iget-object v2, v0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DataSettingsActivity;->access$400(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v2

    invoke-static {v2}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/DownloadController;->mobilePreset:Lorg/telegram/messenger/DownloadController$Preset;

    iget-boolean v3, v2, Lorg/telegram/messenger/DownloadController$Preset;->enabled:Z

    .line 797
    iget-object v2, v0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DataSettingsActivity;->access$500(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v2

    invoke-static {v2}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/DownloadController;->getCurrentMobilePreset()Lorg/telegram/messenger/DownloadController$Preset;

    move-result-object v2

    :goto_a
    move-object v10, v5

    move-object v5, v2

    move-object v2, v10

    goto :goto_9

    .line 798
    :cond_c
    iget-object v1, v0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DataSettingsActivity;->-$$Nest$fgetwifiRow(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v1

    if-ne v2, v1, :cond_d

    .line 799
    sget v1, Lorg/telegram/messenger/R$string;->WhenConnectedOnWiFi:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 800
    iget-object v2, v0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DataSettingsActivity;->access$600(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v2

    invoke-static {v2}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/DownloadController;->wifiPreset:Lorg/telegram/messenger/DownloadController$Preset;

    iget-boolean v3, v2, Lorg/telegram/messenger/DownloadController$Preset;->enabled:Z

    .line 801
    iget-object v2, v0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DataSettingsActivity;->access$700(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v2

    invoke-static {v2}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/DownloadController;->getCurrentWiFiPreset()Lorg/telegram/messenger/DownloadController$Preset;

    move-result-object v2

    goto :goto_a

    .line 803
    :cond_d
    sget v1, Lorg/telegram/messenger/R$string;->WhenRoaming:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 804
    iget-object v2, v0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DataSettingsActivity;->access$800(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v2

    invoke-static {v2}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/DownloadController;->roamingPreset:Lorg/telegram/messenger/DownloadController$Preset;

    iget-boolean v3, v2, Lorg/telegram/messenger/DownloadController$Preset;->enabled:Z

    .line 805
    iget-object v2, v0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DataSettingsActivity;->access$900(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v2

    invoke-static {v2}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/DownloadController;->getCurrentRoamingPreset()Lorg/telegram/messenger/DownloadController$Preset;

    move-result-object v2

    .line 806
    iget-object v4, v0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v4}, Lorg/telegram/ui/DataSettingsActivity;->-$$Nest$fgetresetDownloadRow(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v4

    if-ltz v4, :cond_e

    move v4, v7

    goto :goto_b

    :cond_e
    move v4, v8

    :goto_b
    move-object v10, v5

    move-object v5, v2

    move-object v2, v10

    move-object v10, v1

    move v15, v4

    :goto_c
    if-eqz v5, :cond_1b

    .line 810
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move v1, v8

    move v4, v1

    move v6, v4

    move v11, v6

    move v12, v11

    .line 815
    :goto_d
    iget-object v13, v5, Lorg/telegram/messenger/DownloadController$Preset;->mask:[I

    array-length v14, v13

    const/16 v16, 0x8

    const/16 v17, 0x4

    if-ge v1, v14, :cond_12

    if-nez v4, :cond_f

    .line 816
    aget v14, v13, v1

    and-int/2addr v14, v7

    if-eqz v14, :cond_f

    add-int/lit8 v6, v6, 0x1

    move v4, v7

    :cond_f
    if-nez v11, :cond_10

    .line 820
    aget v14, v13, v1

    and-int/lit8 v14, v14, 0x4

    if-eqz v14, :cond_10

    add-int/lit8 v6, v6, 0x1

    move v11, v7

    :cond_10
    if-nez v12, :cond_11

    .line 824
    aget v13, v13, v1

    and-int/lit8 v13, v13, 0x8

    if-eqz v13, :cond_11

    add-int/lit8 v6, v6, 0x1

    move v12, v7

    :cond_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 829
    :cond_12
    iget-boolean v1, v5, Lorg/telegram/messenger/DownloadController$Preset;->enabled:Z

    if-eqz v1, :cond_17

    if-eqz v6, :cond_17

    if-eqz v4, :cond_13

    .line 831
    sget v1, Lorg/telegram/messenger/R$string;->AutoDownloadPhotosOn:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 833
    :cond_13
    const-string v1, " (%1$s)"

    const-string v6, ", "

    if-eqz v11, :cond_15

    .line 834
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v13

    if-lez v13, :cond_14

    .line 835
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 837
    :cond_14
    sget v13, Lorg/telegram/messenger/R$string;->AutoDownloadVideosOn:I

    invoke-static {v13}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 838
    iget-object v13, v5, Lorg/telegram/messenger/DownloadController$Preset;->sizes:[J

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/DownloadController;->typeToIndex(I)I

    move-result v14

    move/from16 p1, v3

    move/from16 p2, v4

    aget-wide v3, v13, v14

    invoke-static {v3, v4, v7, v8}, Lorg/telegram/messenger/AndroidUtilities;->formatFileSize(JZZ)Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    aput-object v3, v4, v8

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_e

    :cond_15
    move/from16 p1, v3

    move/from16 p2, v4

    :goto_e
    if-eqz v12, :cond_18

    .line 841
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_16

    .line 842
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 844
    :cond_16
    sget v3, Lorg/telegram/messenger/R$string;->AutoDownloadFilesOn:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 845
    iget-object v3, v5, Lorg/telegram/messenger/DownloadController$Preset;->sizes:[J

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/DownloadController;->typeToIndex(I)I

    move-result v4

    aget-wide v4, v3, v4

    invoke-static {v4, v5, v7, v8}, Lorg/telegram/messenger/AndroidUtilities;->formatFileSize(JZZ)Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    aput-object v3, v4, v8

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_f

    :cond_17
    move/from16 p1, v3

    move/from16 p2, v4

    .line 848
    sget v1, Lorg/telegram/messenger/R$string;->NoMediaAutoDownload:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_18
    :goto_f
    if-nez p2, :cond_19

    if-nez v11, :cond_19

    if-eqz v12, :cond_1a

    :cond_19
    if-eqz p1, :cond_1a

    move v8, v7

    :cond_1a
    move v12, v8

    :goto_10
    move-object v11, v2

    goto :goto_11

    :cond_1b
    move/from16 p1, v3

    move/from16 v12, p1

    goto :goto_10

    .line 855
    :goto_11
    invoke-virtual {v9, v7}, Lorg/telegram/ui/Cells/NotificationsCheckCell;->setAnimationsEnabled(Z)V

    const/4 v13, 0x0

    const/4 v14, 0x1

    .line 856
    invoke-virtual/range {v9 .. v15}, Lorg/telegram/ui/Cells/NotificationsCheckCell;->setTextAndValueAndCheck(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZIZZ)V

    return-void

    .line 768
    :pswitch_2
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    .line 769
    iget-object v3, v0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DataSettingsActivity;->-$$Nest$fgetenableAllStreamInfoRow(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v3

    if-ne v2, v3, :cond_30

    .line 770
    sget v2, Lorg/telegram/messenger/R$string;->EnableAllStreamingInfo:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 751
    :pswitch_3
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/Cells/TextCheckCell;

    .line 752
    iget-object v3, v0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DataSettingsActivity;->-$$Nest$fgetenableStreamRow(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v3

    if-ne v2, v3, :cond_1d

    .line 753
    sget v2, Lorg/telegram/messenger/R$string;->EnableStreaming:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget-boolean v3, Lorg/telegram/messenger/SharedConfig;->streamMedia:Z

    iget-object v5, v0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v5}, Lorg/telegram/ui/DataSettingsActivity;->-$$Nest$fgetenableAllStreamRow(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v5

    if-eq v5, v4, :cond_1c

    goto :goto_12

    :cond_1c
    move v7, v8

    :goto_12
    invoke-virtual {v1, v2, v3, v7}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/CharSequence;ZZ)V

    return-void

    .line 754
    :cond_1d
    iget-object v3, v0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DataSettingsActivity;->-$$Nest$fgetenableCacheStreamRow(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v3

    if-ne v2, v3, :cond_1e

    goto/16 :goto_14

    .line 756
    :cond_1e
    iget-object v3, v0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DataSettingsActivity;->-$$Nest$fgetenableMkvRow(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v3

    if-ne v2, v3, :cond_1f

    .line 757
    const-string v2, "(beta only) Show MKV as Video"

    sget-boolean v3, Lorg/telegram/messenger/SharedConfig;->streamMkv:Z

    invoke-virtual {v1, v2, v3, v7}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/CharSequence;ZZ)V

    return-void

    .line 758
    :cond_1f
    iget-object v3, v0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DataSettingsActivity;->-$$Nest$fgetenableAllStreamRow(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v3

    if-ne v2, v3, :cond_20

    .line 759
    const-string v2, "(beta only) Stream All Videos"

    sget-boolean v3, Lorg/telegram/messenger/SharedConfig;->streamAllVideo:Z

    invoke-virtual {v1, v2, v3, v8}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/CharSequence;ZZ)V

    return-void

    .line 760
    :cond_20
    iget-object v3, v0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DataSettingsActivity;->-$$Nest$fgetautoplayGifsRow(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v3

    if-ne v2, v3, :cond_21

    .line 761
    sget v2, Lorg/telegram/messenger/R$string;->AutoplayGIF:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->isAutoplayGifs()Z

    move-result v3

    invoke-virtual {v1, v2, v3, v7}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/CharSequence;ZZ)V

    return-void

    .line 762
    :cond_21
    iget-object v3, v0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DataSettingsActivity;->-$$Nest$fgetautoplayVideoRow(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v3

    if-ne v2, v3, :cond_30

    .line 763
    sget v2, Lorg/telegram/messenger/R$string;->AutoplayVideo:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->isAutoplayVideo()Z

    move-result v3

    invoke-virtual {v1, v2, v3, v8}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/CharSequence;ZZ)V

    return-void

    .line 732
    :pswitch_4
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/Cells/HeaderCell;

    .line 733
    iget-object v3, v0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DataSettingsActivity;->-$$Nest$fgetmediaDownloadSectionRow(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v3

    if-ne v2, v3, :cond_22

    .line 734
    sget v2, Lorg/telegram/messenger/R$string;->AutomaticMediaDownload:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 735
    :cond_22
    iget-object v3, v0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DataSettingsActivity;->-$$Nest$fgetusageSectionRow(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v3

    if-ne v2, v3, :cond_23

    .line 736
    sget v2, Lorg/telegram/messenger/R$string;->DataUsage:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 737
    :cond_23
    iget-object v3, v0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DataSettingsActivity;->-$$Nest$fgetcallsSectionRow(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v3

    if-ne v2, v3, :cond_24

    .line 738
    sget v2, Lorg/telegram/messenger/R$string;->Calls:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 739
    :cond_24
    iget-object v3, v0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DataSettingsActivity;->-$$Nest$fgetproxySectionRow(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v3

    if-ne v2, v3, :cond_25

    .line 740
    sget v2, Lorg/telegram/messenger/R$string;->Proxy:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 741
    :cond_25
    iget-object v3, v0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DataSettingsActivity;->-$$Nest$fgetstreamSectionRow(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v3

    if-ne v2, v3, :cond_26

    .line 742
    sget v2, Lorg/telegram/messenger/R$string;->Streaming:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 743
    :cond_26
    iget-object v3, v0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DataSettingsActivity;->-$$Nest$fgetautoplayHeaderRow(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v3

    if-ne v2, v3, :cond_27

    .line 744
    sget v2, Lorg/telegram/messenger/R$string;->AutoplayMedia:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 745
    :cond_27
    iget-object v3, v0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DataSettingsActivity;->-$$Nest$fgetsaveToGallerySectionRow(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v3

    if-ne v2, v3, :cond_30

    .line 746
    sget v2, Lorg/telegram/messenger/R$string;->SaveToGallerySettings:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 691
    :pswitch_5
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/Cells/TextSettingsCell;

    .line 692
    invoke-virtual {v1, v8}, Lorg/telegram/ui/Cells/TextSettingsCell;->setCanDisable(Z)V

    .line 693
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextColor(I)V

    .line 694
    iget-object v3, v0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DataSettingsActivity;->-$$Nest$fgetuseLessDataForCallsRow(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v3

    if-ne v2, v3, :cond_2c

    .line 695
    invoke-virtual {v1, v8}, Lorg/telegram/ui/Cells/TextSettingsCell;->setIcon(I)V

    .line 696
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v2

    .line 698
    const-string v3, "VoipDataSaving"

    invoke-static {}, Lorg/telegram/ui/Components/voip/VoIPHelper;->getDataSavingDefault()I

    move-result v4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_2b

    if-eq v2, v7, :cond_2a

    if-eq v2, v6, :cond_29

    const/4 v3, 0x3

    if-eq v2, v3, :cond_28

    goto :goto_13

    .line 706
    :cond_28
    sget v2, Lorg/telegram/messenger/R$string;->UseLessDataOnRoaming:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_13

    .line 709
    :cond_29
    sget v2, Lorg/telegram/messenger/R$string;->UseLessDataAlways:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_13

    .line 703
    :cond_2a
    sget v2, Lorg/telegram/messenger/R$string;->UseLessDataOnMobile:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_13

    .line 700
    :cond_2b
    sget v2, Lorg/telegram/messenger/R$string;->UseLessDataNever:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 712
    :goto_13
    sget v2, Lorg/telegram/messenger/R$string;->VoipUseLessData:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DataSettingsActivity;->-$$Nest$fgetupdateVoipUseLessData(Lorg/telegram/ui/DataSettingsActivity;)Z

    move-result v3

    invoke-virtual {v1, v2, v5, v3, v8}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)V

    .line 713
    iget-object v1, v0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v1, v8}, Lorg/telegram/ui/DataSettingsActivity;->-$$Nest$fputupdateVoipUseLessData(Lorg/telegram/ui/DataSettingsActivity;Z)V

    return-void

    .line 714
    :cond_2c
    iget-object v3, v0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DataSettingsActivity;->-$$Nest$fgetproxyRow(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v3

    if-ne v2, v3, :cond_2d

    .line 715
    invoke-virtual {v1, v8}, Lorg/telegram/ui/Cells/TextSettingsCell;->setIcon(I)V

    .line 716
    sget v2, Lorg/telegram/messenger/R$string;->ProxySettings:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v8}, Lorg/telegram/ui/Cells/TextSettingsCell;->setText(Ljava/lang/CharSequence;Z)V

    return-void

    .line 717
    :cond_2d
    iget-object v3, v0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DataSettingsActivity;->-$$Nest$fgetresetDownloadRow(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v3

    if-ne v2, v3, :cond_2e

    .line 718
    invoke-virtual {v1, v8}, Lorg/telegram/ui/Cells/TextSettingsCell;->setIcon(I)V

    .line 719
    invoke-virtual {v1, v7}, Lorg/telegram/ui/Cells/TextSettingsCell;->setCanDisable(Z)V

    .line 720
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedRegular:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextColor(I)V

    .line 721
    sget v2, Lorg/telegram/messenger/R$string;->ResetAutomaticMediaDownload:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v8}, Lorg/telegram/ui/Cells/TextSettingsCell;->setText(Ljava/lang/CharSequence;Z)V

    return-void

    .line 722
    :cond_2e
    iget-object v3, v0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DataSettingsActivity;->-$$Nest$fgetquickRepliesRow(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v3

    if-ne v2, v3, :cond_2f

    .line 723
    invoke-virtual {v1, v8}, Lorg/telegram/ui/Cells/TextSettingsCell;->setIcon(I)V

    .line 724
    sget v2, Lorg/telegram/messenger/R$string;->VoipQuickReplies:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v8}, Lorg/telegram/ui/Cells/TextSettingsCell;->setText(Ljava/lang/CharSequence;Z)V

    return-void

    .line 725
    :cond_2f
    iget-object v3, v0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DataSettingsActivity;->-$$Nest$fgetclearDraftsRow(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v3

    if-ne v2, v3, :cond_30

    .line 726
    invoke-virtual {v1, v8}, Lorg/telegram/ui/Cells/TextSettingsCell;->setIcon(I)V

    .line 727
    sget v2, Lorg/telegram/messenger/R$string;->PrivacyDeleteCloudDrafts:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v8}, Lorg/telegram/ui/Cells/TextSettingsCell;->setText(Ljava/lang/CharSequence;Z)V

    :cond_30
    :goto_14
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

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

    .line 919
    new-instance p1, Lorg/telegram/ui/Cells/TextCell;

    iget-object p2, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/TextCell;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 915
    :cond_0
    new-instance p1, Lorg/telegram/ui/Cells/NotificationsCheckCell;

    iget-object p2, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/NotificationsCheckCell;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 912
    :cond_1
    new-instance p1, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    iget-object p2, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 909
    :cond_2
    new-instance p1, Lorg/telegram/ui/Cells/TextCheckCell;

    iget-object p2, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/TextCheckCell;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 906
    :cond_3
    new-instance p1, Lorg/telegram/ui/Cells/HeaderCell;

    iget-object p2, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->mContext:Landroid/content/Context;

    const/16 v0, 0x16

    invoke-direct {p1, p2, v0}, Lorg/telegram/ui/Cells/HeaderCell;-><init>(Landroid/content/Context;I)V

    goto :goto_0

    .line 903
    :cond_4
    new-instance p1, Lorg/telegram/ui/Cells/TextSettingsCell;

    iget-object p2, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/TextSettingsCell;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 900
    :cond_5
    new-instance p1, Lorg/telegram/ui/Cells/ShadowSectionCell;

    iget-object p2, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/ShadowSectionCell;-><init>(Landroid/content/Context;)V

    .line 922
    :goto_0
    new-instance p2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-direct {p2, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 923
    new-instance p2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 2

    .line 864
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_5

    .line 866
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Cells/TextCheckCell;

    .line 867
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    .line 868
    iget-object v1, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DataSettingsActivity;->-$$Nest$fgetenableCacheStreamRow(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v1

    if-ne p1, v1, :cond_0

    .line 869
    sget-boolean p1, Lorg/telegram/messenger/SharedConfig;->saveStreamMedia:Z

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    return-void

    .line 870
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DataSettingsActivity;->-$$Nest$fgetenableStreamRow(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v1

    if-ne p1, v1, :cond_1

    .line 871
    sget-boolean p1, Lorg/telegram/messenger/SharedConfig;->streamMedia:Z

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    return-void

    .line 872
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DataSettingsActivity;->-$$Nest$fgetenableAllStreamRow(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v1

    if-ne p1, v1, :cond_2

    .line 873
    sget-boolean p1, Lorg/telegram/messenger/SharedConfig;->streamAllVideo:Z

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    return-void

    .line 874
    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DataSettingsActivity;->-$$Nest$fgetenableMkvRow(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v1

    if-ne p1, v1, :cond_3

    .line 875
    sget-boolean p1, Lorg/telegram/messenger/SharedConfig;->streamMkv:Z

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    return-void

    .line 876
    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DataSettingsActivity;->-$$Nest$fgetautoplayGifsRow(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v1

    if-ne p1, v1, :cond_4

    .line 877
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->isAutoplayGifs()Z

    move-result p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    return-void

    .line 878
    :cond_4
    iget-object v1, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DataSettingsActivity;->-$$Nest$fgetautoplayVideoRow(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v1

    if-ne p1, v1, :cond_5

    .line 879
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->isAutoplayVideo()Z

    move-result p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    :cond_5
    return-void
.end method
