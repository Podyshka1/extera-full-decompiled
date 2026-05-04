.class Lorg/telegram/ui/ChatUsersActivity$ListAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ChatUsersActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lorg/telegram/ui/ChatUsersActivity;


# direct methods
.method public static synthetic $r8$lambda$Q-2jK49SO0jTDGESgO_XVPqP7y8(Lorg/telegram/ui/ChatUsersActivity$ListAdapter;Ljava/lang/Integer;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->lambda$onBindViewHolder$4(Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$UZhAK3bNkJg2guxDwZpwScoPy0c(Lorg/telegram/ui/ChatUsersActivity$ListAdapter;Lorg/telegram/ui/Cells/ManageChatUserCell;Z)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->lambda$onCreateViewHolder$0(Lorg/telegram/ui/Cells/ManageChatUserCell;Z)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$iMTOx0pDMVgklXoTOfx3hoIG0jE(Lorg/telegram/ui/ChatUsersActivity$ListAdapter;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->lambda$onCreateViewHolder$1(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$irSbMzWtKnWL3PuWL5_LR9R9gR0(Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/CharSequence;
    .locals 1

    .line 3744
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "Stars"

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p0, p1}, Lorg/telegram/messenger/LocaleController;->formatPluralStringComma(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$rnHBRfGr2nsVsN3g2Z9uGxEU8VY(Lorg/telegram/ui/ChatUsersActivity$ListAdapter;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->lambda$onCreateViewHolder$2(I)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/ChatUsersActivity;Landroid/content/Context;)V
    .locals 0

    .line 3199
    iput-object p1, p0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    .line 3200
    iput-object p2, p0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->mContext:Landroid/content/Context;

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$4(Ljava/lang/Integer;)V
    .locals 3

    .line 3745
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-long v1, p1

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fputstarsPrice(Lorg/telegram/ui/ChatUsersActivity;J)V

    .line 3746
    iget-object p1, p0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetlistView(Lorg/telegram/ui/ChatUsersActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetpriceInfoRow(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v0

    invoke-static {p1, v0}, Lorg/telegram/messenger/AndroidUtilities;->updateVisibleRow(Lorg/telegram/ui/Components/RecyclerListView;I)V

    return-void
.end method

.method private synthetic lambda$onCreateViewHolder$0(Lorg/telegram/ui/Cells/ManageChatUserCell;Z)Z
    .locals 2

    .line 3256
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetlistViewAdapter(Lorg/telegram/ui/ChatUsersActivity;)Lorg/telegram/ui/ChatUsersActivity$ListAdapter;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->getItem(I)Lorg/telegram/tgnet/TLObject;

    move-result-object v0

    .line 3257
    iget-object v1, p0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    xor-int/lit8 p2, p2, 0x1

    invoke-static {v1, v0, p2, p1}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$mcreateMenuForParticipant(Lorg/telegram/ui/ChatUsersActivity;Lorg/telegram/tgnet/TLObject;ZLandroid/view/View;)Z

    move-result p1

    return p1
.end method

.method private synthetic lambda$onCreateViewHolder$1(I)V
    .locals 2

    .line 3329
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetinfo(Lorg/telegram/ui/ChatUsersActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 3332
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetselectedSlowmode(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v0

    if-lez v0, :cond_1

    if-eqz p1, :cond_2

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetselectedSlowmode(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v0

    if-nez v0, :cond_3

    if-lez p1, :cond_3

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    .line 3333
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v1, p1}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fputselectedSlowmode(Lorg/telegram/ui/ChatUsersActivity;I)V

    if-eqz v0, :cond_4

    .line 3335
    iget-object p1, p0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ChatUsersActivity;->saveState()Lorg/telegram/ui/ChatUsersActivity$DiffCallback;

    move-result-object p1

    .line 3336
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$mupdateRows(Lorg/telegram/ui/ChatUsersActivity;)V

    .line 3337
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ChatUsersActivity;->updateListAnimated(Lorg/telegram/ui/ChatUsersActivity$DiffCallback;)V

    .line 3339
    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetlistViewAdapter(Lorg/telegram/ui/ChatUsersActivity;)Lorg/telegram/ui/ChatUsersActivity$ListAdapter;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetslowmodeInfoRow(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    return-void
.end method

.method private synthetic lambda$onCreateViewHolder$2(I)V
    .locals 1

    .line 3354
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    add-int/lit8 p1, p1, 0x1

    invoke-static {v0, p1}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fputnotRestrictBoosters(Lorg/telegram/ui/ChatUsersActivity;I)V

    return-void
.end method


# virtual methods
.method public getItem(I)Lorg/telegram/tgnet/TLObject;
    .locals 2

    .line 3806
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetparticipantsStartRow(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v0

    if-lt p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetparticipantsEndRow(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 3807
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetparticipants(Lorg/telegram/ui/ChatUsersActivity;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetparticipantsStartRow(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v1

    sub-int/2addr p1, v1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLObject;

    return-object p1

    .line 3808
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetcontactsStartRow(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v0

    if-lt p1, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetcontactsEndRow(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 3809
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetcontacts(Lorg/telegram/ui/ChatUsersActivity;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetcontactsStartRow(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v1

    sub-int/2addr p1, v1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLObject;

    return-object p1

    .line 3810
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetbotStartRow(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v0

    if-lt p1, v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetbotEndRow(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v0

    if-ge p1, v0, :cond_2

    .line 3811
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetbots(Lorg/telegram/ui/ChatUsersActivity;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetbotStartRow(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v1

    sub-int/2addr p1, v1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLObject;

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    .line 3246
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetrowCount(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 2

    .line 3762
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetaddNewRow(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1c

    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetaddNew2Row(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1c

    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetrecentActionsRow(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1c

    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetgigaConvertRow(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v0

    if-ne p1, v0, :cond_0

    goto/16 :goto_7

    .line 3764
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetparticipantsStartRow(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v0

    const/4 v1, 0x0

    if-lt p1, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetparticipantsEndRow(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v0

    if-lt p1, v0, :cond_3

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetbotStartRow(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v0

    if-lt p1, v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetbotEndRow(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v0

    if-lt p1, v0, :cond_3

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetcontactsStartRow(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v0

    if-lt p1, v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetcontactsEndRow(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v0

    if-ge p1, v0, :cond_4

    :cond_3
    return v1

    .line 3768
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetaddNewSectionRow(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1b

    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetparticipantsDividerRow(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1b

    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetparticipantsDivider2Row(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v0

    if-ne p1, v0, :cond_5

    goto/16 :goto_6

    .line 3770
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetrestricted1SectionRow(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1a

    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetpermissionsSectionRow(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1a

    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetslowmodeRow(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1a

    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetgigaHeaderRow(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1a

    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetpriceHeaderRow(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v0

    if-ne p1, v0, :cond_6

    goto/16 :goto_5

    .line 3772
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetparticipantsInfoRow(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v0

    if-eq p1, v0, :cond_19

    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetslowmodeInfoRow(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v0

    if-eq p1, v0, :cond_19

    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetdontRestrictBoostersInfoRow(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v0

    if-eq p1, v0, :cond_19

    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetgigaInfoRow(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v0

    if-eq p1, v0, :cond_19

    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetantiSpamInfoRow(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v0

    if-eq p1, v0, :cond_19

    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgethideMembersInfoRow(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v0

    if-eq p1, v0, :cond_19

    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgettagsInfoRow(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v0

    if-eq p1, v0, :cond_19

    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetsignMessagesInfoRow(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v0

    if-eq p1, v0, :cond_19

    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetpayInfoRow(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v0

    if-eq p1, v0, :cond_19

    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetpriceInfoRow(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v0

    if-ne p1, v0, :cond_7

    goto/16 :goto_4

    .line 3774
    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetblockedEmptyRow(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v0

    if-ne p1, v0, :cond_8

    const/4 p1, 0x4

    return p1

    .line 3776
    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetremovedUsersRow(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v0

    if-ne p1, v0, :cond_9

    const/4 p1, 0x6

    return p1

    .line 3778
    :cond_9
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetchangeInfoRow(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v0

    if-eq p1, v0, :cond_18

    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetaddUsersRow(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v0

    if-eq p1, v0, :cond_18

    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetpinMessagesRow(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v0

    if-eq p1, v0, :cond_18

    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgeteditTagRow(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v0

    if-eq p1, v0, :cond_18

    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetsendMessagesRow(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v0

    if-eq p1, v0, :cond_18

    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetsendStickersRow(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v0

    if-eq p1, v0, :cond_18

    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetembedLinksRow(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v0

    if-eq p1, v0, :cond_18

    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetmanageTopicsRow(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v0

    if-eq p1, v0, :cond_18

    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetdontRestrictBoostersRow(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v0

    if-ne p1, v0, :cond_a

    goto/16 :goto_3

    .line 3781
    :cond_a
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetmembersHeaderRow(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v0

    if-eq p1, v0, :cond_17

    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetcontactsHeaderRow(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v0

    if-eq p1, v0, :cond_17

    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetbotHeaderRow(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v0

    if-eq p1, v0, :cond_17

    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetloadingHeaderRow(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v0

    if-ne p1, v0, :cond_b

    goto/16 :goto_2

    .line 3783
    :cond_b
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetslowmodeSelectRow(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v0

    if-ne p1, v0, :cond_c

    const/16 p1, 0x9

    return p1

    .line 3785
    :cond_c
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetloadingProgressRow(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v0

    if-ne p1, v0, :cond_d

    const/16 p1, 0xa

    return p1

    .line 3787
    :cond_d
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetloadingUserCellRow(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v0

    if-ne p1, v0, :cond_e

    const/16 p1, 0xb

    return p1

    .line 3789
    :cond_e
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetantiSpamRow(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v0

    if-eq p1, v0, :cond_16

    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgethideMembersRow(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v0

    if-eq p1, v0, :cond_16

    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgettagsRow(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v0

    if-ne p1, v0, :cond_f

    goto :goto_1

    .line 3791
    :cond_f
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v0, p1}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$misExpandableSendMediaRow(Lorg/telegram/ui/ChatUsersActivity;I)Z

    move-result v0

    if-eqz v0, :cond_10

    const/16 p1, 0xd

    return p1

    .line 3793
    :cond_10
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetsendMediaRow(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v0

    if-ne p1, v0, :cond_11

    const/16 p1, 0xe

    return p1

    .line 3795
    :cond_11
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetdontRestrictBoostersSliderRow(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v0

    if-ne p1, v0, :cond_12

    const/16 p1, 0xf

    return p1

    .line 3797
    :cond_12
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetsignMessagesRow(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v0

    if-eq p1, v0, :cond_15

    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetsignMessagesProfilesRow(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v0

    if-eq p1, v0, :cond_15

    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetpayRow(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v0

    if-ne p1, v0, :cond_13

    goto :goto_0

    .line 3799
    :cond_13
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetpriceRow(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v0

    if-ne p1, v0, :cond_14

    const/16 p1, 0x11

    return p1

    :cond_14
    return v1

    :cond_15
    :goto_0
    const/16 p1, 0x10

    return p1

    :cond_16
    :goto_1
    const/16 p1, 0xc

    return p1

    :cond_17
    :goto_2
    const/16 p1, 0x8

    return p1

    :cond_18
    :goto_3
    const/4 p1, 0x7

    return p1

    :cond_19
    :goto_4
    const/4 p1, 0x1

    return p1

    :cond_1a
    :goto_5
    const/4 p1, 0x5

    return p1

    :cond_1b
    :goto_6
    const/4 p1, 0x3

    return p1

    :cond_1c
    :goto_7
    const/4 p1, 0x2

    return p1
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 6

    .line 3205
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/16 v1, 0x10

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    return v2

    :cond_0
    const/4 v1, 0x7

    if-eq v0, v1, :cond_a

    const/16 v1, 0xe

    if-eq v0, v1, :cond_a

    const/16 v1, 0xd

    if-ne v0, v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    if-nez v0, :cond_3

    .line 3212
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/ManageChatUserCell;

    .line 3213
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ManageChatUserCell;->getCurrentObject()Ljava/lang/Object;

    move-result-object p1

    .line 3214
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgettype(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v0

    if-eq v0, v2, :cond_2

    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v0, :cond_2

    .line 3215
    check-cast p1, Lorg/telegram/tgnet/TLRPC$User;

    .line 3216
    iget-boolean p1, p1, Lorg/telegram/tgnet/TLRPC$User;->self:Z

    if-eqz p1, :cond_2

    return v3

    :cond_2
    return v2

    .line 3222
    :cond_3
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    if-eqz v0, :cond_9

    const/4 v4, 0x2

    if-eq v0, v4, :cond_9

    const/4 v5, 0x6

    if-ne v0, v5, :cond_4

    goto :goto_0

    :cond_4
    const/16 v5, 0xc

    if-ne v0, v5, :cond_7

    .line 3227
    iget-object v5, p0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetantiSpamRow(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v5

    if-ne p1, v5, :cond_5

    .line 3228
    iget-object p1, p0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetcurrentChat(Lorg/telegram/ui/ChatUsersActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p1

    invoke-static {p1, v1}, Lorg/telegram/messenger/ChatObject;->canUserDoAdminAction(Lorg/telegram/tgnet/TLRPC$Chat;I)Z

    move-result p1

    return p1

    .line 3229
    :cond_5
    iget-object v5, p0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgethideMembersRow(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v5

    if-ne p1, v5, :cond_6

    .line 3230
    iget-object p1, p0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetcurrentChat(Lorg/telegram/ui/ChatUsersActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p1

    invoke-static {p1, v4}, Lorg/telegram/messenger/ChatObject;->canUserDoAdminAction(Lorg/telegram/tgnet/TLRPC$Chat;I)Z

    move-result p1

    return p1

    .line 3231
    :cond_6
    iget-object v4, p0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgettagsRow(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v4

    if-ne p1, v4, :cond_7

    return v2

    :cond_7
    if-ne v0, v1, :cond_8

    return v2

    :cond_8
    return v3

    :cond_9
    :goto_0
    return v2

    .line 3210
    :cond_a
    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetcurrentChat(Lorg/telegram/ui/ChatUsersActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/ChatObject;->canBlockUsers(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result p1

    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    .line 3377
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v3

    const-string v4, ""

    const/4 v5, 0x2

    const/4 v6, 0x3

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_29

    .line 3741
    :pswitch_1
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/Cells/SlideIntChooseView;

    .line 3742
    iget-object v3, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetpriceRow(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v3

    if-ne v2, v3, :cond_77

    const/16 v2, 0xe

    .line 3743
    new-array v2, v2, [I

    fill-array-data v2, :array_0

    iget-object v3, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget-wide v3, v3, Lorg/telegram/messenger/MessagesController;->starsPaidMessageAmountMax:J

    long-to-int v3, v3

    invoke-static {v2, v3}, Lorg/telegram/ui/Cells/SlideIntChooseView;->cut([II)[I

    move-result-object v2

    .line 3744
    iget-object v3, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetstarsPrice(Lorg/telegram/ui/ChatUsersActivity;)J

    move-result-wide v4

    iget-object v3, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget-wide v6, v3, Lorg/telegram/messenger/MessagesController;->starsPaidMessageAmountMax:J

    const-wide/16 v8, 0x1

    invoke-static/range {v4 .. v9}, Lorg/telegram/messenger/Utilities;->clamp(JJJ)J

    move-result-wide v3

    long-to-int v3, v3

    new-instance v4, Lorg/telegram/ui/ChatUsersActivity$ListAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v4}, Lorg/telegram/ui/ChatUsersActivity$ListAdapter$$ExternalSyntheticLambda0;-><init>()V

    const/16 v5, 0x14

    invoke-static {v10, v2, v5, v4}, Lorg/telegram/ui/Cells/SlideIntChooseView$Options;->make(I[IILorg/telegram/messenger/Utilities$Callback2Return;)Lorg/telegram/ui/Cells/SlideIntChooseView$Options;

    move-result-object v2

    new-instance v4, Lorg/telegram/ui/ChatUsersActivity$ListAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v4, v0}, Lorg/telegram/ui/ChatUsersActivity$ListAdapter$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/ChatUsersActivity$ListAdapter;)V

    invoke-virtual {v1, v3, v2, v4}, Lorg/telegram/ui/Cells/SlideIntChooseView;->set(ILorg/telegram/ui/Cells/SlideIntChooseView$Options;Lorg/telegram/messenger/Utilities$Callback;)V

    return-void

    .line 3731
    :pswitch_2
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/Cells/TextCheckCell;

    .line 3732
    iget-object v3, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetsignMessagesRow(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 3733
    sget v2, Lorg/telegram/messenger/R$string;->ChannelSignMessages:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetsignatures(Lorg/telegram/ui/ChatUsersActivity;)Z

    move-result v3

    iget-object v4, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetsignatures(Lorg/telegram/ui/ChatUsersActivity;)Z

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/CharSequence;ZZ)V

    return-void

    .line 3734
    :cond_0
    iget-object v3, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetsignMessagesProfilesRow(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 3735
    sget v2, Lorg/telegram/messenger/R$string;->ChannelSignMessagesWithProfile:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetprofiles(Lorg/telegram/ui/ChatUsersActivity;)Z

    move-result v3

    invoke-virtual {v1, v2, v3, v9}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/CharSequence;ZZ)V

    return-void

    .line 3736
    :cond_1
    iget-object v3, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetpayRow(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v3

    if-ne v2, v3, :cond_77

    .line 3737
    sget v2, Lorg/telegram/messenger/R$string;->GroupMessagesChargePrice:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetenablePrice(Lorg/telegram/ui/ChatUsersActivity;)Z

    move-result v3

    invoke-virtual {v1, v2, v3, v9}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/CharSequence;ZZ)V

    return-void

    .line 3705
    :pswitch_3
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/Cells/CheckBoxCell;

    .line 3706
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v2, :cond_2

    move v7, v10

    goto :goto_0

    :cond_2
    move v7, v9

    .line 3707
    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 3708
    iget-object v3, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetsendMediaPhotosRow(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v3

    if-ne v2, v3, :cond_3

    .line 3709
    const-string v2, "SendMediaPermissionPhotos"

    sget v3, Lorg/telegram/messenger/R$string;->SendMediaPermissionPhotos:I

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    iget-object v2, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetdefaultBannedRights(Lorg/telegram/ui/ChatUsersActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    move-result-object v2

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_photos:Z

    xor-int/lit8 v5, v2, 0x1

    const/4 v6, 0x1

    const-string v4, ""

    move-object v2, v1

    invoke-virtual/range {v2 .. v7}, Lorg/telegram/ui/Cells/CheckBoxCell;->setText(Ljava/lang/CharSequence;Ljava/lang/String;ZZZ)V

    return-void

    .line 3710
    :cond_3
    iget-object v3, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetsendMediaVideosRow(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v3

    if-ne v2, v3, :cond_4

    .line 3711
    const-string v2, "SendMediaPermissionVideos"

    sget v3, Lorg/telegram/messenger/R$string;->SendMediaPermissionVideos:I

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    iget-object v2, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetdefaultBannedRights(Lorg/telegram/ui/ChatUsersActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    move-result-object v2

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_videos:Z

    xor-int/lit8 v5, v2, 0x1

    const/4 v6, 0x1

    const-string v4, ""

    move-object v2, v1

    invoke-virtual/range {v2 .. v7}, Lorg/telegram/ui/Cells/CheckBoxCell;->setText(Ljava/lang/CharSequence;Ljava/lang/String;ZZZ)V

    return-void

    .line 3712
    :cond_4
    iget-object v3, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetsendMediaStickerGifsRow(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v3

    if-ne v2, v3, :cond_5

    .line 3713
    const-string v2, "SendMediaPermissionStickersGifs"

    sget v3, Lorg/telegram/messenger/R$string;->SendMediaPermissionStickersGifs:I

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    iget-object v2, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetdefaultBannedRights(Lorg/telegram/ui/ChatUsersActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    move-result-object v2

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_stickers:Z

    xor-int/lit8 v5, v2, 0x1

    const/4 v6, 0x1

    const-string v4, ""

    move-object v2, v1

    invoke-virtual/range {v2 .. v7}, Lorg/telegram/ui/Cells/CheckBoxCell;->setText(Ljava/lang/CharSequence;Ljava/lang/String;ZZZ)V

    return-void

    .line 3714
    :cond_5
    iget-object v3, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetsendMediaMusicRow(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v3

    if-ne v2, v3, :cond_6

    .line 3715
    const-string v2, "SendMediaPermissionMusic"

    sget v3, Lorg/telegram/messenger/R$string;->SendMediaPermissionMusic:I

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    iget-object v2, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetdefaultBannedRights(Lorg/telegram/ui/ChatUsersActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    move-result-object v2

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_audios:Z

    xor-int/lit8 v5, v2, 0x1

    const/4 v6, 0x1

    const-string v4, ""

    move-object v2, v1

    invoke-virtual/range {v2 .. v7}, Lorg/telegram/ui/Cells/CheckBoxCell;->setText(Ljava/lang/CharSequence;Ljava/lang/String;ZZZ)V

    return-void

    .line 3716
    :cond_6
    iget-object v3, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetsendMediaFilesRow(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v3

    if-ne v2, v3, :cond_7

    .line 3717
    const-string v2, "SendMediaPermissionFiles"

    sget v3, Lorg/telegram/messenger/R$string;->SendMediaPermissionFiles:I

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    iget-object v2, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetdefaultBannedRights(Lorg/telegram/ui/ChatUsersActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    move-result-object v2

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_docs:Z

    xor-int/lit8 v5, v2, 0x1

    const/4 v6, 0x1

    const-string v4, ""

    move-object v2, v1

    invoke-virtual/range {v2 .. v7}, Lorg/telegram/ui/Cells/CheckBoxCell;->setText(Ljava/lang/CharSequence;Ljava/lang/String;ZZZ)V

    return-void

    .line 3718
    :cond_7
    iget-object v3, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetsendMediaVoiceMessagesRow(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v3

    if-ne v2, v3, :cond_8

    .line 3719
    const-string v2, "SendMediaPermissionVoice"

    sget v3, Lorg/telegram/messenger/R$string;->SendMediaPermissionVoice:I

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    iget-object v2, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetdefaultBannedRights(Lorg/telegram/ui/ChatUsersActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    move-result-object v2

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_voices:Z

    xor-int/lit8 v5, v2, 0x1

    const/4 v6, 0x1

    const-string v4, ""

    move-object v2, v1

    invoke-virtual/range {v2 .. v7}, Lorg/telegram/ui/Cells/CheckBoxCell;->setText(Ljava/lang/CharSequence;Ljava/lang/String;ZZZ)V

    return-void

    .line 3720
    :cond_8
    iget-object v3, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetsendMediaVideoMessagesRow(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v3

    if-ne v2, v3, :cond_9

    .line 3721
    const-string v2, "SendMediaPermissionRound"

    sget v3, Lorg/telegram/messenger/R$string;->SendMediaPermissionRound:I

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    iget-object v2, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetdefaultBannedRights(Lorg/telegram/ui/ChatUsersActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    move-result-object v2

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_roundvideos:Z

    xor-int/lit8 v5, v2, 0x1

    const/4 v6, 0x1

    const-string v4, ""

    move-object v2, v1

    invoke-virtual/range {v2 .. v7}, Lorg/telegram/ui/Cells/CheckBoxCell;->setText(Ljava/lang/CharSequence;Ljava/lang/String;ZZZ)V

    return-void

    .line 3722
    :cond_9
    iget-object v3, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetsendMediaEmbededLinksRow(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v3

    if-ne v2, v3, :cond_b

    .line 3723
    const-string v2, "SendMediaEmbededLinks"

    sget v3, Lorg/telegram/messenger/R$string;->SendMediaEmbededLinks:I

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    iget-object v2, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetdefaultBannedRights(Lorg/telegram/ui/ChatUsersActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    move-result-object v2

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->embed_links:Z

    if-nez v2, :cond_a

    iget-object v2, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetdefaultBannedRights(Lorg/telegram/ui/ChatUsersActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    move-result-object v2

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_plain:Z

    if-nez v2, :cond_a

    move v5, v10

    goto :goto_1

    :cond_a
    move v5, v9

    :goto_1
    const/4 v6, 0x0

    const-string v4, ""

    move-object v2, v1

    invoke-virtual/range {v2 .. v7}, Lorg/telegram/ui/Cells/CheckBoxCell;->setText(Ljava/lang/CharSequence;Ljava/lang/String;ZZZ)V

    return-void

    .line 3724
    :cond_b
    iget-object v3, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetsendPollsRow(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v3

    if-ne v2, v3, :cond_c

    .line 3725
    const-string v2, "SendMediaPolls"

    sget v3, Lorg/telegram/messenger/R$string;->SendMediaPolls:I

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    iget-object v2, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetdefaultBannedRights(Lorg/telegram/ui/ChatUsersActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    move-result-object v2

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_polls:Z

    xor-int/lit8 v5, v2, 0x1

    const/4 v6, 0x0

    const-string v4, ""

    move-object v2, v1

    invoke-virtual/range {v2 .. v7}, Lorg/telegram/ui/Cells/CheckBoxCell;->setText(Ljava/lang/CharSequence;Ljava/lang/String;ZZZ)V

    return-void

    :cond_c
    move-object v2, v1

    .line 3728
    invoke-virtual {v2, v10}, Lorg/telegram/ui/Cells/CheckBoxCell;->setPad(I)V

    return-void

    .line 3692
    :pswitch_4
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/Cells/TextCell;

    .line 3693
    iget-object v3, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetantiSpamRow(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v3

    if-ne v2, v3, :cond_10

    .line 3694
    invoke-virtual {v1}, Lorg/telegram/ui/Cells/TextCell;->getCheckBox()Lorg/telegram/ui/Components/Switch;

    move-result-object v2

    iget-object v3, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetcurrentChat(Lorg/telegram/ui/ChatUsersActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v3

    const/16 v4, 0xd

    invoke-static {v3, v4}, Lorg/telegram/messenger/ChatObject;->canUserDoAdminAction(Lorg/telegram/tgnet/TLRPC$Chat;I)Z

    move-result v3

    if-eqz v3, :cond_e

    iget-object v3, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetinfo(Lorg/telegram/ui/ChatUsersActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v3

    if-eqz v3, :cond_d

    iget-object v3, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetinfo(Lorg/telegram/ui/ChatUsersActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v3

    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$ChatFull;->antispam:Z

    if-nez v3, :cond_d

    iget-object v3, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$mgetParticipantsCount(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v3

    iget-object v4, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    iget v4, v4, Lorg/telegram/messenger/MessagesController;->telegramAntispamGroupSizeMin:I

    if-lt v3, v4, :cond_e

    :cond_d
    move v3, v9

    goto :goto_2

    :cond_e
    sget v3, Lorg/telegram/messenger/R$drawable;->permission_locked:I

    :goto_2
    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/Switch;->setIcon(I)V

    .line 3695
    const-string v2, "ChannelAntiSpam"

    sget v3, Lorg/telegram/messenger/R$string;->ChannelAntiSpam:I

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetinfo(Lorg/telegram/ui/ChatUsersActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v3

    if-eqz v3, :cond_f

    iget-object v3, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetinfo(Lorg/telegram/ui/ChatUsersActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v3

    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$ChatFull;->antispam:Z

    if-eqz v3, :cond_f

    goto :goto_3

    :cond_f
    move v10, v9

    :goto_3
    sget v3, Lorg/telegram/messenger/R$drawable;->msg_policy:I

    invoke-virtual {v1, v2, v10, v3, v9}, Lorg/telegram/ui/Cells/TextCell;->setTextAndCheckAndIcon(Ljava/lang/CharSequence;ZIZ)V

    return-void

    .line 3696
    :cond_10
    iget-object v3, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgethideMembersRow(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v3

    if-ne v2, v3, :cond_14

    .line 3697
    invoke-virtual {v1}, Lorg/telegram/ui/Cells/TextCell;->getCheckBox()Lorg/telegram/ui/Components/Switch;

    move-result-object v2

    iget-object v3, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetcurrentChat(Lorg/telegram/ui/ChatUsersActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v3

    invoke-static {v3, v5}, Lorg/telegram/messenger/ChatObject;->canUserDoAdminAction(Lorg/telegram/tgnet/TLRPC$Chat;I)Z

    move-result v3

    if-eqz v3, :cond_12

    iget-object v3, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetinfo(Lorg/telegram/ui/ChatUsersActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v3

    if-eqz v3, :cond_11

    iget-object v3, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetinfo(Lorg/telegram/ui/ChatUsersActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v3

    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants_hidden:Z

    if-nez v3, :cond_11

    iget-object v3, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$mgetParticipantsCount(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v3

    iget-object v4, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    iget v4, v4, Lorg/telegram/messenger/MessagesController;->hiddenMembersGroupSizeMin:I

    if-lt v3, v4, :cond_12

    :cond_11
    move v3, v9

    goto :goto_4

    :cond_12
    sget v3, Lorg/telegram/messenger/R$drawable;->permission_locked:I

    :goto_4
    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/Switch;->setIcon(I)V

    .line 3698
    sget v2, Lorg/telegram/messenger/R$string;->ChannelHideMembers:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetinfo(Lorg/telegram/ui/ChatUsersActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v3

    if-eqz v3, :cond_13

    iget-object v3, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetinfo(Lorg/telegram/ui/ChatUsersActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v3

    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants_hidden:Z

    if-eqz v3, :cond_13

    goto :goto_5

    :cond_13
    move v10, v9

    :goto_5
    invoke-virtual {v1, v2, v10, v9}, Lorg/telegram/ui/Cells/TextCell;->setTextAndCheck(Ljava/lang/CharSequence;ZZ)V

    return-void

    .line 3699
    :cond_14
    iget-object v3, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgettagsRow(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v3

    if-ne v2, v3, :cond_77

    .line 3700
    invoke-virtual {v1}, Lorg/telegram/ui/Cells/TextCell;->getCheckBox()Lorg/telegram/ui/Components/Switch;

    move-result-object v2

    invoke-virtual {v2, v9}, Lorg/telegram/ui/Components/Switch;->setIcon(I)V

    .line 3701
    sget v2, Lorg/telegram/messenger/R$string;->ChannelMemberTags:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetcurrentChat(Lorg/telegram/ui/ChatUsersActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v3

    if-eqz v3, :cond_16

    iget-object v3, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetcurrentChat(Lorg/telegram/ui/ChatUsersActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Chat;->default_banned_rights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    if-eqz v3, :cond_16

    iget-object v3, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetcurrentChat(Lorg/telegram/ui/ChatUsersActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Chat;->default_banned_rights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->edit_rank:Z

    if-nez v3, :cond_15

    goto :goto_6

    :cond_15
    move v10, v9

    :cond_16
    :goto_6
    invoke-virtual {v1, v2, v10, v9}, Lorg/telegram/ui/Cells/TextCell;->setTextAndCheck(Ljava/lang/CharSequence;ZZ)V

    return-void

    .line 3684
    :pswitch_5
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/Components/FlickerLoadingView;

    .line 3685
    iget-object v2, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgettype(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v2

    if-nez v2, :cond_18

    .line 3686
    iget-object v2, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetinfo(Lorg/telegram/ui/ChatUsersActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v2

    if-nez v2, :cond_17

    goto :goto_7

    :cond_17
    iget-object v2, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetinfo(Lorg/telegram/ui/ChatUsersActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v2

    iget v10, v2, Lorg/telegram/tgnet/TLRPC$ChatFull;->kicked_count:I

    :goto_7
    invoke-virtual {v1, v10}, Lorg/telegram/ui/Components/FlickerLoadingView;->setItemsCount(I)V

    return-void

    .line 3688
    :cond_18
    invoke-virtual {v1, v10}, Lorg/telegram/ui/Components/FlickerLoadingView;->setItemsCount(I)V

    return-void

    .line 3664
    :pswitch_6
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/Cells/GraySectionCell;

    .line 3665
    iget-object v3, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetmembersHeaderRow(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v3

    if-ne v2, v3, :cond_1a

    .line 3666
    iget-object v2, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetcurrentChat(Lorg/telegram/ui/ChatUsersActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v2

    if-eqz v2, :cond_19

    iget-object v2, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetcurrentChat(Lorg/telegram/ui/ChatUsersActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v2

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez v2, :cond_19

    .line 3667
    const-string v2, "ChannelOtherSubscribers"

    sget v3, Lorg/telegram/messenger/R$string;->ChannelOtherSubscribers:I

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/GraySectionCell;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 3669
    :cond_19
    const-string v2, "ChannelOtherMembers"

    sget v3, Lorg/telegram/messenger/R$string;->ChannelOtherMembers:I

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/GraySectionCell;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 3671
    :cond_1a
    iget-object v3, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetbotHeaderRow(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v3

    if-ne v2, v3, :cond_1b

    .line 3672
    const-string v2, "ChannelBots"

    sget v3, Lorg/telegram/messenger/R$string;->ChannelBots:I

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/GraySectionCell;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 3673
    :cond_1b
    iget-object v3, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetcontactsHeaderRow(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v3

    if-ne v2, v3, :cond_1d

    .line 3674
    iget-object v2, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetcurrentChat(Lorg/telegram/ui/ChatUsersActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v2

    if-eqz v2, :cond_1c

    iget-object v2, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetcurrentChat(Lorg/telegram/ui/ChatUsersActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v2

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez v2, :cond_1c

    .line 3675
    const-string v2, "ChannelContacts"

    sget v3, Lorg/telegram/messenger/R$string;->ChannelContacts:I

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/GraySectionCell;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 3677
    :cond_1c
    const-string v2, "GroupContacts"

    sget v3, Lorg/telegram/messenger/R$string;->GroupContacts:I

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/GraySectionCell;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 3679
    :cond_1d
    iget-object v3, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetloadingHeaderRow(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v3

    if-ne v2, v3, :cond_77

    .line 3680
    invoke-virtual {v1, v4}, Lorg/telegram/ui/Cells/GraySectionCell;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 3605
    :pswitch_7
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/Cells/TextCheckCell2;

    .line 3606
    invoke-virtual {v1}, Lorg/telegram/ui/Cells/TextCheckCell2;->getCheckBox()Lorg/telegram/ui/Components/Switch;

    move-result-object v3

    invoke-virtual {v3, v10}, Lorg/telegram/ui/Components/Switch;->setDrawIconType(I)V

    .line 3607
    invoke-virtual {v1}, Lorg/telegram/ui/Cells/TextCheckCell2;->getCheckBox()Lorg/telegram/ui/Components/Switch;

    move-result-object v3

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_fill_RedNormal:I

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_switch2TrackChecked:I

    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-virtual {v3, v4, v5, v8, v8}, Lorg/telegram/ui/Components/Switch;->setColors(IIII)V

    .line 3608
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1e

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v2, :cond_1e

    move v3, v10

    goto :goto_8

    :cond_1e
    move v3, v9

    .line 3609
    :goto_8
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 3610
    iget-object v4, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetchangeInfoRow(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v4

    if-ne v2, v4, :cond_21

    .line 3611
    const-string v4, "UserRestrictionsChangeInfo"

    sget v5, Lorg/telegram/messenger/R$string;->UserRestrictionsChangeInfo:I

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetdefaultBannedRights(Lorg/telegram/ui/ChatUsersActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    move-result-object v5

    iget-boolean v5, v5, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->change_info:Z

    if-nez v5, :cond_1f

    iget-object v5, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetcurrentChat(Lorg/telegram/ui/ChatUsersActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v5

    invoke-static {v5}, Lorg/telegram/messenger/ChatObject;->isPublic(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v5

    if-nez v5, :cond_1f

    move v5, v10

    goto :goto_9

    :cond_1f
    move v5, v9

    :goto_9
    iget-object v8, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v8}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetmanageTopicsRow(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v8

    if-eq v8, v7, :cond_20

    move v7, v10

    goto :goto_a

    :cond_20
    move v7, v9

    :goto_a
    invoke-virtual {v1, v4, v5, v7, v3}, Lorg/telegram/ui/Cells/TextCheckCell2;->setTextAndCheck(Ljava/lang/CharSequence;ZZZ)V

    goto/16 :goto_d

    .line 3612
    :cond_21
    iget-object v4, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetaddUsersRow(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v4

    if-ne v2, v4, :cond_22

    .line 3613
    const-string v4, "UserRestrictionsInviteUsers"

    sget v5, Lorg/telegram/messenger/R$string;->UserRestrictionsInviteUsers:I

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetdefaultBannedRights(Lorg/telegram/ui/ChatUsersActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    move-result-object v5

    iget-boolean v5, v5, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->invite_users:Z

    xor-int/2addr v5, v10

    invoke-virtual {v1, v4, v5, v10, v3}, Lorg/telegram/ui/Cells/TextCheckCell2;->setTextAndCheck(Ljava/lang/CharSequence;ZZZ)V

    goto/16 :goto_d

    .line 3614
    :cond_22
    iget-object v4, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetpinMessagesRow(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v4

    if-ne v2, v4, :cond_24

    .line 3615
    sget v4, Lorg/telegram/messenger/R$string;->UserRestrictionsPinMessages:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetdefaultBannedRights(Lorg/telegram/ui/ChatUsersActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    move-result-object v5

    iget-boolean v5, v5, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->pin_messages:Z

    if-nez v5, :cond_23

    iget-object v5, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetcurrentChat(Lorg/telegram/ui/ChatUsersActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v5

    invoke-static {v5}, Lorg/telegram/messenger/ChatObject;->isPublic(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v5

    if-nez v5, :cond_23

    move v5, v10

    goto :goto_b

    :cond_23
    move v5, v9

    :goto_b
    invoke-virtual {v1, v4, v5, v10, v3}, Lorg/telegram/ui/Cells/TextCheckCell2;->setTextAndCheck(Ljava/lang/CharSequence;ZZZ)V

    goto/16 :goto_d

    .line 3616
    :cond_24
    iget-object v4, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgeteditTagRow(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v4

    if-ne v2, v4, :cond_25

    .line 3617
    sget v4, Lorg/telegram/messenger/R$string;->UserRestrictionsEditTags:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetdefaultBannedRights(Lorg/telegram/ui/ChatUsersActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    move-result-object v5

    iget-boolean v5, v5, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->edit_rank:Z

    xor-int/2addr v5, v10

    invoke-virtual {v1, v4, v5, v10, v3}, Lorg/telegram/ui/Cells/TextCheckCell2;->setTextAndCheck(Ljava/lang/CharSequence;ZZZ)V

    goto/16 :goto_d

    .line 3618
    :cond_25
    iget-object v4, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetsendMessagesRow(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v4

    if-ne v2, v4, :cond_26

    .line 3619
    const-string v4, "UserRestrictionsSendText"

    sget v5, Lorg/telegram/messenger/R$string;->UserRestrictionsSendText:I

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetdefaultBannedRights(Lorg/telegram/ui/ChatUsersActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    move-result-object v5

    iget-boolean v5, v5, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_plain:Z

    xor-int/2addr v5, v10

    invoke-virtual {v1, v4, v5, v10, v3}, Lorg/telegram/ui/Cells/TextCheckCell2;->setTextAndCheck(Ljava/lang/CharSequence;ZZZ)V

    goto/16 :goto_d

    .line 3620
    :cond_26
    iget-object v4, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetdontRestrictBoostersRow(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v4

    if-ne v2, v4, :cond_27

    .line 3621
    sget v4, Lorg/telegram/messenger/R$string;->GroupNotRestrictBoosters:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetisEnabledNotRestrictBoosters(Lorg/telegram/ui/ChatUsersActivity;)Z

    move-result v5

    invoke-virtual {v1, v4, v5, v9, v3}, Lorg/telegram/ui/Cells/TextCheckCell2;->setTextAndCheck(Ljava/lang/CharSequence;ZZZ)V

    .line 3622
    invoke-virtual {v1}, Lorg/telegram/ui/Cells/TextCheckCell2;->getCheckBox()Lorg/telegram/ui/Components/Switch;

    move-result-object v3

    invoke-virtual {v3, v9}, Lorg/telegram/ui/Components/Switch;->setDrawIconType(I)V

    .line 3623
    invoke-virtual {v1}, Lorg/telegram/ui/Cells/TextCheckCell2;->getCheckBox()Lorg/telegram/ui/Components/Switch;

    move-result-object v3

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_switchTrack:I

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_switchTrackChecked:I

    invoke-virtual {v3, v4, v5, v8, v8}, Lorg/telegram/ui/Components/Switch;->setColors(IIII)V

    goto/16 :goto_d

    .line 3624
    :cond_27
    iget-object v4, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetsendMediaRow(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v4

    if-ne v2, v4, :cond_29

    .line 3625
    iget-object v4, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$mgetSendMediaSelectedCount(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v4

    .line 3626
    const-string v5, "UserRestrictionsSendMedia"

    sget v7, Lorg/telegram/messenger/R$string;->UserRestrictionsSendMedia:I

    invoke-static {v5, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    if-lez v4, :cond_28

    move v7, v10

    goto :goto_c

    :cond_28
    move v7, v9

    :goto_c
    invoke-virtual {v1, v5, v7, v10, v3}, Lorg/telegram/ui/Cells/TextCheckCell2;->setTextAndCheck(Ljava/lang/CharSequence;ZZZ)V

    .line 3627
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-array v5, v10, [Ljava/lang/Object;

    aput-object v4, v5, v9

    const-string v4, "%d/9"

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetsendMediaExpanded(Lorg/telegram/ui/ChatUsersActivity;)Z

    move-result v4

    xor-int/2addr v4, v10

    new-instance v5, Lorg/telegram/ui/ChatUsersActivity$ListAdapter$1;

    invoke-direct {v5, v0, v1}, Lorg/telegram/ui/ChatUsersActivity$ListAdapter$1;-><init>(Lorg/telegram/ui/ChatUsersActivity$ListAdapter;Lorg/telegram/ui/Cells/TextCheckCell2;)V

    invoke-virtual {v1, v3, v4, v5}, Lorg/telegram/ui/Cells/TextCheckCell2;->setCollapseArrow(Ljava/lang/String;ZLjava/lang/Runnable;)V

    goto/16 :goto_d

    .line 3638
    :cond_29
    iget-object v4, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetsendStickersRow(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v4

    if-ne v2, v4, :cond_2a

    .line 3639
    const-string v4, "UserRestrictionsSendStickers"

    sget v5, Lorg/telegram/messenger/R$string;->UserRestrictionsSendStickers:I

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetdefaultBannedRights(Lorg/telegram/ui/ChatUsersActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    move-result-object v5

    iget-boolean v5, v5, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_stickers:Z

    xor-int/2addr v5, v10

    invoke-virtual {v1, v4, v5, v10, v3}, Lorg/telegram/ui/Cells/TextCheckCell2;->setTextAndCheck(Ljava/lang/CharSequence;ZZZ)V

    goto :goto_d

    .line 3640
    :cond_2a
    iget-object v4, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetembedLinksRow(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v4

    if-ne v2, v4, :cond_2b

    .line 3641
    const-string v4, "UserRestrictionsEmbedLinks"

    sget v5, Lorg/telegram/messenger/R$string;->UserRestrictionsEmbedLinks:I

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetdefaultBannedRights(Lorg/telegram/ui/ChatUsersActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    move-result-object v5

    iget-boolean v5, v5, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->embed_links:Z

    xor-int/2addr v5, v10

    invoke-virtual {v1, v4, v5, v10, v3}, Lorg/telegram/ui/Cells/TextCheckCell2;->setTextAndCheck(Ljava/lang/CharSequence;ZZZ)V

    goto :goto_d

    .line 3642
    :cond_2b
    iget-object v4, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetsendPollsRow(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v4

    if-ne v2, v4, :cond_2c

    .line 3643
    const-string v3, "UserRestrictionsSendPollsShort"

    sget v4, Lorg/telegram/messenger/R$string;->UserRestrictionsSendPollsShort:I

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetdefaultBannedRights(Lorg/telegram/ui/ChatUsersActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    move-result-object v4

    iget-boolean v4, v4, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_polls:Z

    xor-int/2addr v4, v10

    invoke-virtual {v1, v3, v4, v10}, Lorg/telegram/ui/Cells/TextCheckCell2;->setTextAndCheck(Ljava/lang/CharSequence;ZZ)V

    goto :goto_d

    .line 3644
    :cond_2c
    iget-object v4, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetmanageTopicsRow(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v4

    if-ne v2, v4, :cond_2d

    .line 3645
    const-string v4, "CreateTopicsPermission"

    sget v5, Lorg/telegram/messenger/R$string;->CreateTopicsPermission:I

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetdefaultBannedRights(Lorg/telegram/ui/ChatUsersActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    move-result-object v5

    iget-boolean v5, v5, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->manage_topics:Z

    xor-int/2addr v5, v10

    invoke-virtual {v1, v4, v5, v9, v3}, Lorg/telegram/ui/Cells/TextCheckCell2;->setTextAndCheck(Ljava/lang/CharSequence;ZZZ)V

    .line 3647
    :cond_2d
    :goto_d
    iget-object v3, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetpinMessagesRow(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v3

    if-eq v2, v3, :cond_2e

    iget-object v3, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetchangeInfoRow(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v3

    if-ne v2, v3, :cond_2f

    :cond_2e
    iget-object v3, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatUsersActivity;->access$300(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v3

    iget-object v4, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetchatId(Lorg/telegram/ui/ChatUsersActivity;)J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lorg/telegram/messenger/ChatObject;->isDiscussionGroup(IJ)Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 3648
    sget v2, Lorg/telegram/messenger/R$drawable;->permission_locked:I

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/TextCheckCell2;->setIcon(I)V

    return-void

    .line 3649
    :cond_2f
    iget-object v3, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetcurrentChat(Lorg/telegram/ui/ChatUsersActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/ChatObject;->canBlockUsers(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v3

    if-eqz v3, :cond_36

    .line 3650
    iget-object v3, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetaddUsersRow(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v3

    if-ne v2, v3, :cond_30

    iget-object v3, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetcurrentChat(Lorg/telegram/ui/ChatUsersActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v3

    invoke-static {v3, v6}, Lorg/telegram/messenger/ChatObject;->canUserDoAdminAction(Lorg/telegram/tgnet/TLRPC$Chat;I)Z

    move-result v3

    if-eqz v3, :cond_34

    :cond_30
    iget-object v3, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetpinMessagesRow(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v3

    if-ne v2, v3, :cond_31

    iget-object v3, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetcurrentChat(Lorg/telegram/ui/ChatUsersActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v3

    .line 3651
    invoke-static {v3, v9}, Lorg/telegram/messenger/ChatObject;->canUserDoAdminAction(Lorg/telegram/tgnet/TLRPC$Chat;I)Z

    move-result v3

    if-eqz v3, :cond_34

    :cond_31
    iget-object v3, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetchangeInfoRow(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v3

    if-ne v2, v3, :cond_32

    iget-object v3, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetcurrentChat(Lorg/telegram/ui/ChatUsersActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v3

    .line 3652
    invoke-static {v3, v10}, Lorg/telegram/messenger/ChatObject;->canUserDoAdminAction(Lorg/telegram/tgnet/TLRPC$Chat;I)Z

    move-result v3

    if-eqz v3, :cond_34

    :cond_32
    iget-object v3, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetmanageTopicsRow(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v3

    if-ne v2, v3, :cond_33

    iget-object v3, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetcurrentChat(Lorg/telegram/ui/ChatUsersActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v3

    .line 3653
    invoke-static {v3}, Lorg/telegram/messenger/ChatObject;->canManageTopics(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v3

    if-eqz v3, :cond_34

    :cond_33
    iget-object v3, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetcurrentChat(Lorg/telegram/ui/ChatUsersActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v3

    .line 3654
    invoke-static {v3}, Lorg/telegram/messenger/ChatObject;->isPublic(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v3

    if-eqz v3, :cond_35

    iget-object v3, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetpinMessagesRow(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v3

    if-eq v2, v3, :cond_34

    iget-object v3, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetchangeInfoRow(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v3

    if-ne v2, v3, :cond_35

    .line 3655
    :cond_34
    sget v2, Lorg/telegram/messenger/R$drawable;->permission_locked:I

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/TextCheckCell2;->setIcon(I)V

    return-void

    .line 3657
    :cond_35
    invoke-virtual {v1, v9}, Lorg/telegram/ui/Cells/TextCheckCell2;->setIcon(I)V

    return-void

    .line 3660
    :cond_36
    invoke-virtual {v1, v9}, Lorg/telegram/ui/Cells/TextCheckCell2;->setIcon(I)V

    return-void

    .line 3600
    :pswitch_8
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/Cells/TextSettingsCell;

    .line 3601
    const-string v2, "ChannelBlacklist"

    sget v3, Lorg/telegram/messenger/R$string;->ChannelBlacklist:I

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetinfo(Lorg/telegram/ui/ChatUsersActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v3

    if-eqz v3, :cond_37

    iget-object v3, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetinfo(Lorg/telegram/ui/ChatUsersActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v3

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$ChatFull;->kicked_count:I

    goto :goto_e

    :cond_37
    move v3, v9

    :goto_e
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-array v4, v10, [Ljava/lang/Object;

    aput-object v3, v4, v9

    const-string v3, "%d"

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v9}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    return-void

    .line 3577
    :pswitch_9
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/Cells/HeaderCell;

    .line 3578
    iget-object v3, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetrestricted1SectionRow(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v3

    if-ne v2, v3, :cond_3b

    .line 3579
    iget-object v2, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgettype(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v2

    if-nez v2, :cond_3a

    .line 3580
    iget-object v2, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetinfo(Lorg/telegram/ui/ChatUsersActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v2

    if-eqz v2, :cond_38

    iget-object v2, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetinfo(Lorg/telegram/ui/ChatUsersActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v2

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$ChatFull;->kicked_count:I

    goto :goto_f

    :cond_38
    iget-object v2, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetparticipants(Lorg/telegram/ui/ChatUsersActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_f
    if-eqz v2, :cond_39

    .line 3582
    const-string v3, "RemovedUser"

    new-array v4, v9, [Ljava/lang/Object;

    invoke-static {v3, v2, v4}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 3584
    :cond_39
    sget v2, Lorg/telegram/messenger/R$string;->ChannelBlockedUsers:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 3587
    :cond_3a
    sget v2, Lorg/telegram/messenger/R$string;->ChannelRestrictedUsers:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 3589
    :cond_3b
    iget-object v3, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetpermissionsSectionRow(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v3

    if-ne v2, v3, :cond_3c

    .line 3590
    sget v2, Lorg/telegram/messenger/R$string;->ChannelPermissionsHeader:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 3591
    :cond_3c
    iget-object v3, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetslowmodeRow(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v3

    if-ne v2, v3, :cond_3d

    .line 3592
    sget v2, Lorg/telegram/messenger/R$string;->Slowmode:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 3593
    :cond_3d
    iget-object v3, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetgigaHeaderRow(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v3

    if-ne v2, v3, :cond_3e

    .line 3594
    sget v2, Lorg/telegram/messenger/R$string;->BroadcastGroup:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 3595
    :cond_3e
    iget-object v3, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetpriceHeaderRow(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v3

    if-ne v2, v3, :cond_77

    .line 3596
    sget v2, Lorg/telegram/messenger/R$string;->GroupMessagesPriceHeader:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 3570
    :pswitch_a
    iget-object v3, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetaddNewSectionRow(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v3

    if-eq v2, v3, :cond_40

    iget-object v3, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgettype(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v3

    if-ne v3, v6, :cond_3f

    iget-object v3, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetparticipantsDividerRow(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v3

    if-ne v2, v3, :cond_3f

    iget-object v2, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetaddNewRow(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v2

    if-ne v2, v7, :cond_3f

    iget-object v2, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetparticipantsStartRow(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v2

    if-ne v2, v7, :cond_3f

    goto :goto_10

    .line 3573
    :cond_3f
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object v2, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->mContext:Landroid/content/Context;

    sget v3, Lorg/telegram/messenger/R$drawable;->greydivider:I

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    invoke-static {v2, v3, v4}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawableByKey(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 3571
    :cond_40
    :goto_10
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object v2, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->mContext:Landroid/content/Context;

    sget v3, Lorg/telegram/messenger/R$drawable;->greydivider_bottom:I

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    invoke-static {v2, v3, v4}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawableByKey(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 3537
    :pswitch_b
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/Cells/ManageChatTextCell;

    .line 3538
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayIcon:I

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-virtual {v1, v3, v4}, Lorg/telegram/ui/Cells/ManageChatTextCell;->setColors(II)V

    .line 3539
    iget-object v3, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetaddNewRow(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v3

    if-ne v2, v3, :cond_4b

    .line 3540
    iget-object v2, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgettype(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v2

    if-ne v2, v6, :cond_42

    .line 3541
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueIcon:I

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueButton:I

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/Cells/ManageChatTextCell;->setColors(II)V

    .line 3542
    const-string v2, "ChannelAddException"

    sget v3, Lorg/telegram/messenger/R$string;->ChannelAddException:I

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$drawable;->msg_contact_add:I

    iget-object v4, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetparticipantsStartRow(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v4

    if-eq v4, v7, :cond_41

    move v9, v10

    :cond_41
    invoke-virtual {v1, v2, v8, v3, v9}, Lorg/telegram/ui/Cells/ManageChatTextCell;->setText(Ljava/lang/String;Ljava/lang/String;IZ)V

    return-void

    .line 3543
    :cond_42
    iget-object v2, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgettype(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v2

    if-nez v2, :cond_43

    .line 3544
    const-string v2, "ChannelBlockUser"

    sget v3, Lorg/telegram/messenger/R$string;->ChannelBlockUser:I

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$drawable;->msg_user_remove:I

    invoke-virtual {v1, v2, v8, v3, v9}, Lorg/telegram/ui/Cells/ManageChatTextCell;->setText(Ljava/lang/String;Ljava/lang/String;IZ)V

    return-void

    .line 3545
    :cond_43
    iget-object v2, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgettype(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v2

    if-ne v2, v10, :cond_46

    .line 3546
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueIcon:I

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueButton:I

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/Cells/ManageChatTextCell;->setColors(II)V

    .line 3547
    iget-object v2, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetloadingUsers(Lorg/telegram/ui/ChatUsersActivity;)Z

    move-result v2

    if-eqz v2, :cond_44

    iget-object v2, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetfirstLoaded(Lorg/telegram/ui/ChatUsersActivity;)Z

    move-result v2

    if-eqz v2, :cond_45

    :cond_44
    move v9, v10

    .line 3548
    :cond_45
    const-string v2, "ChannelAddAdmin"

    sget v3, Lorg/telegram/messenger/R$string;->ChannelAddAdmin:I

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$drawable;->msg_admin_add:I

    invoke-virtual {v1, v2, v8, v3, v9}, Lorg/telegram/ui/Cells/ManageChatTextCell;->setText(Ljava/lang/String;Ljava/lang/String;IZ)V

    return-void

    .line 3549
    :cond_46
    iget-object v2, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgettype(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v2

    if-ne v2, v5, :cond_77

    .line 3550
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueIcon:I

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueButton:I

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/Cells/ManageChatTextCell;->setColors(II)V

    .line 3551
    iget-object v2, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetaddNew2Row(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v2

    if-ne v2, v7, :cond_48

    iget-object v2, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetloadingUsers(Lorg/telegram/ui/ChatUsersActivity;)Z

    move-result v2

    if-eqz v2, :cond_47

    iget-object v2, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetfirstLoaded(Lorg/telegram/ui/ChatUsersActivity;)Z

    move-result v2

    if-eqz v2, :cond_49

    :cond_47
    iget-object v2, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetmembersHeaderRow(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v2

    if-ne v2, v7, :cond_49

    iget-object v2, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetparticipants(Lorg/telegram/ui/ChatUsersActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_49

    :cond_48
    move v9, v10

    .line 3552
    :cond_49
    iget-object v2, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetisChannel(Lorg/telegram/ui/ChatUsersActivity;)Z

    move-result v2

    if-eqz v2, :cond_4a

    .line 3553
    sget v2, Lorg/telegram/messenger/R$string;->AddSubscriber:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$drawable;->msg_contact_add:I

    invoke-virtual {v1, v2, v8, v3, v9}, Lorg/telegram/ui/Cells/ManageChatTextCell;->setText(Ljava/lang/String;Ljava/lang/String;IZ)V

    return-void

    .line 3555
    :cond_4a
    sget v2, Lorg/telegram/messenger/R$string;->AddMember:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$drawable;->msg_contact_add:I

    invoke-virtual {v1, v2, v8, v3, v9}, Lorg/telegram/ui/Cells/ManageChatTextCell;->setText(Ljava/lang/String;Ljava/lang/String;IZ)V

    return-void

    .line 3558
    :cond_4b
    iget-object v3, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetrecentActionsRow(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v3

    if-ne v2, v3, :cond_4d

    .line 3559
    sget v2, Lorg/telegram/messenger/R$string;->EventLog:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$drawable;->msg_log:I

    iget-object v4, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetantiSpamRow(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v4

    iget-object v5, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetrecentActionsRow(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v5

    if-le v4, v5, :cond_4c

    move v9, v10

    :cond_4c
    invoke-virtual {v1, v2, v8, v3, v9}, Lorg/telegram/ui/Cells/ManageChatTextCell;->setText(Ljava/lang/String;Ljava/lang/String;IZ)V

    return-void

    .line 3560
    :cond_4d
    iget-object v3, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetaddNew2Row(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v3

    if-ne v2, v3, :cond_50

    .line 3561
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueIcon:I

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueButton:I

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/Cells/ManageChatTextCell;->setColors(II)V

    .line 3562
    iget-object v2, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetloadingUsers(Lorg/telegram/ui/ChatUsersActivity;)Z

    move-result v2

    if-eqz v2, :cond_4e

    iget-object v2, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetfirstLoaded(Lorg/telegram/ui/ChatUsersActivity;)Z

    move-result v2

    if-eqz v2, :cond_4f

    :cond_4e
    iget-object v2, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetmembersHeaderRow(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v2

    if-ne v2, v7, :cond_4f

    iget-object v2, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetparticipants(Lorg/telegram/ui/ChatUsersActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4f

    move v9, v10

    .line 3563
    :cond_4f
    const-string v2, "ChannelInviteViaLink"

    sget v3, Lorg/telegram/messenger/R$string;->ChannelInviteViaLink:I

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$drawable;->msg_link2:I

    invoke-virtual {v1, v2, v8, v3, v9}, Lorg/telegram/ui/Cells/ManageChatTextCell;->setText(Ljava/lang/String;Ljava/lang/String;IZ)V

    return-void

    .line 3564
    :cond_50
    iget-object v3, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetgigaConvertRow(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v3

    if-ne v2, v3, :cond_77

    .line 3565
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueIcon:I

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueButton:I

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/Cells/ManageChatTextCell;->setColors(II)V

    .line 3566
    const-string v2, "BroadcastGroupConvert"

    sget v3, Lorg/telegram/messenger/R$string;->BroadcastGroupConvert:I

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$drawable;->msg_channel:I

    invoke-virtual {v1, v2, v8, v3, v9}, Lorg/telegram/ui/Cells/ManageChatTextCell;->setText(Ljava/lang/String;Ljava/lang/String;IZ)V

    return-void

    .line 3471
    :pswitch_c
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    .line 3472
    iget-object v3, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetantiSpamInfoRow(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v3

    if-ne v2, v3, :cond_51

    .line 3473
    const-string v2, "ChannelAntiSpamInfo"

    sget v3, Lorg/telegram/messenger/R$string;->ChannelAntiSpamInfo:I

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    .line 3474
    iget-object v2, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->mContext:Landroid/content/Context;

    sget v3, Lorg/telegram/messenger/R$drawable;->greydivider:I

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    invoke-static {v2, v3, v4}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawableByKey(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 3475
    :cond_51
    iget-object v3, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetparticipantsInfoRow(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v3

    if-ne v2, v3, :cond_5a

    .line 3476
    iget-object v2, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgettype(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v2

    if-eqz v2, :cond_58

    iget-object v2, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgettype(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v2

    if-ne v2, v6, :cond_52

    goto/16 :goto_14

    .line 3483
    :cond_52
    iget-object v2, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgettype(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v2

    if-ne v2, v10, :cond_55

    .line 3484
    iget-object v2, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetaddNewRow(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v2

    if-eq v2, v7, :cond_54

    .line 3485
    iget-object v2, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetisChannel(Lorg/telegram/ui/ChatUsersActivity;)Z

    move-result v2

    if-eqz v2, :cond_53

    .line 3486
    const-string v2, "ChannelAdminsInfo"

    sget v3, Lorg/telegram/messenger/R$string;->ChannelAdminsInfo:I

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    goto :goto_11

    .line 3488
    :cond_53
    const-string v2, "MegaAdminsInfo"

    sget v3, Lorg/telegram/messenger/R$string;->MegaAdminsInfo:I

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    goto :goto_11

    .line 3491
    :cond_54
    invoke-virtual {v1, v4}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    .line 3493
    :goto_11
    iget-object v2, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->mContext:Landroid/content/Context;

    sget v3, Lorg/telegram/messenger/R$drawable;->greydivider_bottom:I

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    invoke-static {v2, v3, v4}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawableByKey(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 3494
    :cond_55
    iget-object v2, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgettype(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v2

    if-ne v2, v5, :cond_77

    .line 3495
    iget-object v2, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetisChannel(Lorg/telegram/ui/ChatUsersActivity;)Z

    move-result v2

    if-eqz v2, :cond_57

    iget-object v2, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetselectType(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v2

    if-eqz v2, :cond_56

    goto :goto_12

    .line 3498
    :cond_56
    const-string v2, "ChannelMembersInfo"

    sget v3, Lorg/telegram/messenger/R$string;->ChannelMembersInfo:I

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    goto :goto_13

    .line 3496
    :cond_57
    :goto_12
    invoke-virtual {v1, v4}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    .line 3500
    :goto_13
    iget-object v2, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->mContext:Landroid/content/Context;

    sget v3, Lorg/telegram/messenger/R$drawable;->greydivider_bottom:I

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    invoke-static {v2, v3, v4}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawableByKey(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 3477
    :cond_58
    :goto_14
    iget-object v2, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetisChannel(Lorg/telegram/ui/ChatUsersActivity;)Z

    move-result v2

    if-eqz v2, :cond_59

    .line 3478
    const-string v2, "NoBlockedChannel2"

    sget v3, Lorg/telegram/messenger/R$string;->NoBlockedChannel2:I

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    goto :goto_15

    .line 3480
    :cond_59
    const-string v2, "NoBlockedGroup2"

    sget v3, Lorg/telegram/messenger/R$string;->NoBlockedGroup2:I

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    .line 3482
    :goto_15
    iget-object v2, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->mContext:Landroid/content/Context;

    sget v3, Lorg/telegram/messenger/R$drawable;->greydivider_bottom:I

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    invoke-static {v2, v3, v4}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawableByKey(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 3502
    :cond_5a
    iget-object v3, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetslowmodeInfoRow(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v3

    if-ne v2, v3, :cond_5d

    .line 3503
    iget-object v2, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->mContext:Landroid/content/Context;

    sget v3, Lorg/telegram/messenger/R$drawable;->greydivider:I

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    invoke-static {v2, v3, v4}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawableByKey(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 3504
    iget-object v2, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetselectedSlowmode(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v3

    invoke-static {v2, v3}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$mgetSecondsForIndex(Lorg/telegram/ui/ChatUsersActivity;I)I

    move-result v2

    .line 3505
    iget-object v3, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetinfo(Lorg/telegram/ui/ChatUsersActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v3

    if-eqz v3, :cond_5c

    if-nez v2, :cond_5b

    goto :goto_16

    .line 3508
    :cond_5b
    sget v3, Lorg/telegram/messenger/R$string;->SlowmodeInfoSelected:I

    iget-object v4, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v4, v2}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$mformatSeconds(Lorg/telegram/ui/ChatUsersActivity;I)Ljava/lang/String;

    move-result-object v2

    new-array v4, v10, [Ljava/lang/Object;

    aput-object v2, v4, v9

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 3506
    :cond_5c
    :goto_16
    sget v2, Lorg/telegram/messenger/R$string;->SlowmodeInfoOff:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 3510
    :cond_5d
    iget-object v3, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetpayInfoRow(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v3

    if-ne v2, v3, :cond_5e

    .line 3511
    iget-object v2, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->mContext:Landroid/content/Context;

    sget v3, Lorg/telegram/messenger/R$drawable;->greydivider:I

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    invoke-static {v2, v3, v4}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawableByKey(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 3512
    sget v2, Lorg/telegram/messenger/R$string;->GroupMessagesChargePriceInfo:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 3513
    :cond_5e
    iget-object v3, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetpriceInfoRow(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v3

    if-ne v2, v3, :cond_5f

    .line 3514
    iget-object v2, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->mContext:Landroid/content/Context;

    sget v3, Lorg/telegram/messenger/R$drawable;->greydivider:I

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    invoke-static {v2, v3, v4}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawableByKey(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 3515
    iget-object v2, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget v2, v2, Lorg/telegram/messenger/MessagesController;->starsPaidMessageCommissionPermille:I

    int-to-float v2, v2

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float/2addr v2, v3

    .line 3516
    iget-object v3, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetstarsPrice(Lorg/telegram/ui/ChatUsersActivity;)J

    move-result-wide v3

    long-to-float v3, v3

    mul-float/2addr v3, v2

    float-to-double v2, v3

    const-wide v6, 0x408f400000000000L    # 1000.0

    div-double/2addr v2, v6

    iget-object v4, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    iget v4, v4, Lorg/telegram/messenger/MessagesController;->starsUsdWithdrawRate1000:F

    float-to-double v6, v4

    mul-double/2addr v2, v6

    double-to-int v2, v2

    int-to-double v2, v2

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    div-double/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    .line 3517
    sget v3, Lorg/telegram/messenger/R$string;->GroupMessagesPriceInfo:I

    iget-object v4, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    iget v4, v4, Lorg/telegram/messenger/MessagesController;->starsPaidMessageCommissionPermille:I

    invoke-static {v4}, Lorg/telegram/ui/bots/AffiliateProgramFragment;->percents(I)Ljava/lang/CharSequence;

    move-result-object v4

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v4, v5, v9

    aput-object v2, v5, v10

    invoke-static {v3, v5}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 3518
    :cond_5f
    iget-object v3, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgethideMembersInfoRow(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v3

    if-ne v2, v3, :cond_60

    .line 3519
    sget v2, Lorg/telegram/messenger/R$string;->ChannelHideMembersInfo:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 3520
    :cond_60
    iget-object v3, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgettagsInfoRow(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v3

    if-ne v2, v3, :cond_61

    .line 3521
    sget v2, Lorg/telegram/messenger/R$string;->ChannelMemberTagsInfo:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 3522
    :cond_61
    iget-object v3, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetgigaInfoRow(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v3

    if-ne v2, v3, :cond_62

    .line 3523
    sget v2, Lorg/telegram/messenger/R$string;->BroadcastGroupConvertInfo:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 3524
    :cond_62
    iget-object v3, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetdontRestrictBoostersInfoRow(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v3

    if-ne v2, v3, :cond_64

    .line 3525
    iget-object v2, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->mContext:Landroid/content/Context;

    sget v3, Lorg/telegram/messenger/R$drawable;->greydivider:I

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    invoke-static {v2, v3, v4}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawableByKey(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 3526
    iget-object v2, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetisEnabledNotRestrictBoosters(Lorg/telegram/ui/ChatUsersActivity;)Z

    move-result v2

    if-eqz v2, :cond_63

    .line 3527
    sget v2, Lorg/telegram/messenger/R$string;->GroupNotRestrictBoostersInfo2:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 3529
    :cond_63
    sget v2, Lorg/telegram/messenger/R$string;->GroupNotRestrictBoostersInfo:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 3531
    :cond_64
    iget-object v3, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetsignMessagesInfoRow(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v3

    if-ne v2, v3, :cond_77

    .line 3532
    iget-object v2, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->mContext:Landroid/content/Context;

    sget v3, Lorg/telegram/messenger/R$drawable;->greydivider_bottom:I

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    invoke-static {v2, v3, v4}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawableByKey(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 3533
    iget-object v2, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetsignatures(Lorg/telegram/ui/ChatUsersActivity;)Z

    move-result v2

    if-eqz v2, :cond_65

    sget v2, Lorg/telegram/messenger/R$string;->ChannelSignProfilesInfo:I

    goto :goto_17

    :cond_65
    sget v2, Lorg/telegram/messenger/R$string;->ChannelSignInfo:I

    :goto_17
    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 3379
    :pswitch_d
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/Cells/ManageChatUserCell;

    .line 3380
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 3381
    invoke-virtual {v0, v2}, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->getItem(I)Lorg/telegram/tgnet/TLObject;

    move-result-object v3

    .line 3385
    iget-object v4, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetparticipantsStartRow(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v4

    if-lt v2, v4, :cond_66

    iget-object v4, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetparticipantsEndRow(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v4

    if-ge v2, v4, :cond_66

    .line 3386
    iget-object v4, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetparticipantsEndRow(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v4

    .line 3387
    iget-object v7, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v7}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetcurrentChat(Lorg/telegram/ui/ChatUsersActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v7

    invoke-static {v7}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v7

    if-eqz v7, :cond_68

    iget-object v7, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v7}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetcurrentChat(Lorg/telegram/ui/ChatUsersActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v7

    iget-boolean v7, v7, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez v7, :cond_68

    :goto_18
    move v7, v10

    goto :goto_19

    .line 3388
    :cond_66
    iget-object v4, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetcontactsStartRow(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v4

    if-lt v2, v4, :cond_67

    iget-object v4, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetcontactsEndRow(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v4

    if-ge v2, v4, :cond_67

    .line 3389
    iget-object v4, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetcontactsEndRow(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v4

    .line 3390
    iget-object v7, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v7}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetcurrentChat(Lorg/telegram/ui/ChatUsersActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v7

    invoke-static {v7}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v7

    if-eqz v7, :cond_68

    iget-object v7, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v7}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetcurrentChat(Lorg/telegram/ui/ChatUsersActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v7

    iget-boolean v7, v7, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez v7, :cond_68

    goto :goto_18

    .line 3392
    :cond_67
    iget-object v4, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetbotEndRow(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v4

    :cond_68
    move v7, v9

    .line 3403
    :goto_19
    instance-of v11, v3, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    if-eqz v11, :cond_69

    .line 3404
    check-cast v3, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    .line 3405
    iget-object v11, v3, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v11}, Lorg/telegram/messenger/MessageObject;->getPeerId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v14

    const-wide/16 v16, 0x0

    .line 3406
    iget-wide v12, v3, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->kicked_by:J

    move/from16 v18, v9

    move v11, v10

    .line 3407
    iget-wide v9, v3, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->promoted_by:J

    move/from16 p1, v11

    .line 3408
    iget-object v11, v3, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->banned_rights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    .line 3409
    iget v5, v3, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->date:I

    .line 3410
    instance-of v8, v3, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantBanned;

    .line 3411
    instance-of v6, v3, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantCreator;

    .line 3412
    instance-of v3, v3, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantAdmin;

    goto :goto_1a

    :cond_69
    move/from16 v18, v9

    move/from16 p1, v10

    const-wide/16 v16, 0x0

    .line 3413
    instance-of v5, v3, Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    if-eqz v5, :cond_77

    .line 3414
    check-cast v3, Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    .line 3415
    iget-wide v14, v3, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:J

    .line 3416
    iget v5, v3, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->date:I

    .line 3421
    instance-of v6, v3, Lorg/telegram/tgnet/TLRPC$TL_chatParticipantCreator;

    .line 3422
    instance-of v3, v3, Lorg/telegram/tgnet/TLRPC$TL_chatParticipantAdmin;

    move-wide/from16 v9, v16

    move-wide v12, v9

    move/from16 v8, v18

    const/4 v11, 0x0

    :goto_1a
    cmp-long v16, v14, v16

    if-lez v16, :cond_6a

    move/from16 v16, v3

    .line 3428
    iget-object v3, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    move/from16 v17, v4

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v3

    move/from16 v19, v6

    move v4, v7

    goto :goto_1b

    :cond_6a
    move/from16 v16, v3

    move/from16 v17, v4

    .line 3430
    iget-object v3, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    move/from16 v19, v6

    move v4, v7

    neg-long v6, v14

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v3, v6}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v3

    :goto_1b
    if-eqz v3, :cond_77

    .line 3433
    iget-object v6, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v6}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgettype(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_6c

    .line 3434
    iget-object v4, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v4, v11}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$mformatUserPermissions(Lorg/telegram/ui/ChatUsersActivity;Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;)Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v5, v17, -0x1

    if-eq v2, v5, :cond_6b

    move/from16 v9, p1

    :goto_1c
    const/4 v2, 0x0

    goto :goto_1d

    :cond_6b
    move/from16 v9, v18

    goto :goto_1c

    :goto_1d
    invoke-virtual {v1, v3, v2, v4, v9}, Lorg/telegram/ui/Cells/ManageChatUserCell;->setData(Ljava/lang/Object;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    return-void

    .line 3435
    :cond_6c
    iget-object v6, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v6}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgettype(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v6

    if-nez v6, :cond_6f

    if-eqz v8, :cond_6d

    .line 3438
    iget-object v4, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v4

    if-eqz v4, :cond_6d

    .line 3440
    sget v5, Lorg/telegram/messenger/R$string;->UserRemovedBy:I

    invoke-static {v4}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v4

    move/from16 v11, p1

    new-array v6, v11, [Ljava/lang/Object;

    aput-object v4, v6, v18

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1e

    :cond_6d
    move/from16 v11, p1

    const/4 v4, 0x0

    :goto_1e
    add-int/lit8 v5, v17, -0x1

    if-eq v2, v5, :cond_6e

    move v9, v11

    :goto_1f
    const/4 v2, 0x0

    goto :goto_20

    :cond_6e
    move/from16 v9, v18

    goto :goto_1f

    .line 3443
    :goto_20
    invoke-virtual {v1, v3, v2, v4, v9}, Lorg/telegram/ui/Cells/ManageChatUserCell;->setData(Ljava/lang/Object;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    return-void

    :cond_6f
    move/from16 v11, p1

    .line 3444
    iget-object v6, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v6}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgettype(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v6

    if-ne v6, v11, :cond_74

    if-eqz v19, :cond_70

    .line 3447
    sget v4, Lorg/telegram/messenger/R$string;->ChannelCreator:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    :goto_21
    const/4 v11, 0x1

    goto :goto_22

    :cond_70
    if-eqz v16, :cond_72

    .line 3449
    iget-object v4, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v4

    if-eqz v4, :cond_72

    .line 3451
    iget-wide v5, v4, Lorg/telegram/tgnet/TLRPC$User;->id:J

    cmp-long v5, v5, v14

    if-nez v5, :cond_71

    .line 3452
    sget v4, Lorg/telegram/messenger/R$string;->ChannelAdministrator:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_21

    .line 3454
    :cond_71
    sget v5, Lorg/telegram/messenger/R$string;->EditAdminPromotedBy:I

    invoke-static {v4}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v4

    const/4 v11, 0x1

    new-array v6, v11, [Ljava/lang/Object;

    aput-object v4, v6, v18

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_22

    :cond_72
    const/4 v11, 0x1

    const/4 v4, 0x0

    :goto_22
    add-int/lit8 v5, v17, -0x1

    if-eq v2, v5, :cond_73

    const/4 v9, 0x1

    :goto_23
    const/4 v2, 0x0

    goto :goto_24

    :cond_73
    move/from16 v9, v18

    goto :goto_23

    .line 3458
    :goto_24
    invoke-virtual {v1, v3, v2, v4, v9}, Lorg/telegram/ui/Cells/ManageChatUserCell;->setData(Ljava/lang/Object;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    return-void

    .line 3459
    :cond_74
    iget-object v6, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v6}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgettype(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_77

    if-eqz v4, :cond_75

    if-eqz v5, :cond_75

    int-to-long v4, v5

    .line 3462
    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->formatJoined(J)Ljava/lang/String;

    move-result-object v4

    :goto_25
    const/4 v11, 0x1

    goto :goto_26

    :cond_75
    const/4 v4, 0x0

    goto :goto_25

    :goto_26
    add-int/lit8 v5, v17, -0x1

    if-eq v2, v5, :cond_76

    move v9, v11

    :goto_27
    const/4 v2, 0x0

    goto :goto_28

    :cond_76
    move/from16 v9, v18

    goto :goto_27

    .line 3466
    :goto_28
    invoke-virtual {v1, v3, v2, v4, v9}, Lorg/telegram/ui/Cells/ManageChatUserCell;->setData(Ljava/lang/Object;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    :cond_77
    :goto_29
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_7
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :array_0
    .array-data 4
        0x1
        0xa
        0x32
        0x64
        0xc8
        0xfa
        0x190
        0x1f4
        0x3e8
        0x9c4
        0x1388
        0x1d4c
        0x2328
        0x2710
    .end array-data
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 18

    move-object/from16 v0, p0

    const/4 v1, 0x5

    .line 3320
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    .line 3323
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x4

    const/4 v6, 0x2

    const/4 v7, 0x3

    const/4 v8, 0x6

    const/4 v9, 0x0

    packed-switch p2, :pswitch_data_0

    .line 3314
    :pswitch_0
    new-instance v1, Lorg/telegram/ui/Components/SlideChooseView;

    iget-object v5, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v1, v5}, Lorg/telegram/ui/Components/SlideChooseView;-><init>(Landroid/content/Context;)V

    .line 3316
    iget-object v5, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetcurrentChat(Lorg/telegram/ui/ChatUsersActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v5

    invoke-static {v5}, Lorg/telegram/messenger/ChatObject;->hasAdminRights(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v5

    invoke-virtual {v1, v5}, Lorg/telegram/ui/Components/SlideChooseView;->setAllowSlide(Z)V

    .line 3317
    iget-object v5, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetselectedSlowmode(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v5

    const-string v6, "SlowmodeOff"

    sget v7, Lorg/telegram/messenger/R$string;->SlowmodeOff:I

    .line 3319
    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    sget v6, Lorg/telegram/messenger/R$string;->SlowmodeSeconds:I

    .line 3320
    new-array v7, v3, [Ljava/lang/Object;

    aput-object v2, v7, v9

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    sget v6, Lorg/telegram/messenger/R$string;->SlowmodeSeconds:I

    const/16 v7, 0xa

    .line 3321
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-array v8, v3, [Ljava/lang/Object;

    aput-object v7, v8, v9

    invoke-static {v6, v8}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    sget v6, Lorg/telegram/messenger/R$string;->SlowmodeSeconds:I

    const/16 v7, 0x1e

    .line 3322
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-array v8, v3, [Ljava/lang/Object;

    aput-object v7, v8, v9

    invoke-static {v6, v8}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    sget v6, Lorg/telegram/messenger/R$string;->SlowmodeMinutes:I

    .line 3323
    new-array v7, v3, [Ljava/lang/Object;

    aput-object v4, v7, v9

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    sget v6, Lorg/telegram/messenger/R$string;->SlowmodeMinutes:I

    .line 3324
    new-array v7, v3, [Ljava/lang/Object;

    aput-object v2, v7, v9

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    sget v2, Lorg/telegram/messenger/R$string;->SlowmodeMinutes:I

    const/16 v6, 0xf

    .line 3325
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-array v7, v3, [Ljava/lang/Object;

    aput-object v6, v7, v9

    invoke-static {v2, v7}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    sget v2, Lorg/telegram/messenger/R$string;->SlowmodeHours:I

    .line 3326
    new-array v3, v3, [Ljava/lang/Object;

    aput-object v4, v3, v9

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    filled-new-array/range {v10 .. v17}, [Ljava/lang/String;

    move-result-object v2

    .line 3317
    invoke-virtual {v1, v5, v2}, Lorg/telegram/ui/Components/SlideChooseView;->setOptions(I[Ljava/lang/String;)V

    .line 3328
    new-instance v2, Lorg/telegram/ui/ChatUsersActivity$ListAdapter$$ExternalSyntheticLambda3;

    invoke-direct {v2, v0}, Lorg/telegram/ui/ChatUsersActivity$ListAdapter$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/ChatUsersActivity$ListAdapter;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/SlideChooseView;->setCallback(Lorg/telegram/ui/Components/SlideChooseView$Callback;)V

    goto/16 :goto_3

    .line 3369
    :pswitch_1
    new-instance v1, Lorg/telegram/ui/Cells/SlideIntChooseView;

    iget-object v2, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->mContext:Landroid/content/Context;

    iget-object v3, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/telegram/ui/Cells/SlideIntChooseView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    goto/16 :goto_3

    .line 3366
    :pswitch_2
    new-instance v1, Lorg/telegram/ui/Cells/TextCheckCell;

    iget-object v2, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->mContext:Landroid/content/Context;

    iget-object v3, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/telegram/ui/Cells/TextCheckCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    goto/16 :goto_3

    .line 3343
    :pswitch_3
    new-instance v2, Lorg/telegram/ui/Components/SlideChooseView;

    iget-object v4, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v2, v4}, Lorg/telegram/ui/Components/SlideChooseView;-><init>(Landroid/content/Context;)V

    .line 3345
    iget-object v4, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    .line 3346
    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v8, Lorg/telegram/messenger/R$drawable;->mini_boost_profile_badge:I

    invoke-static {v4, v8}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iget-object v8, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    .line 3347
    invoke-virtual {v8}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v8

    sget v10, Lorg/telegram/messenger/R$drawable;->mini_boost_profile_badge2:I

    invoke-static {v8, v10}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    iget-object v10, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    .line 3348
    invoke-virtual {v10}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v10

    sget v11, Lorg/telegram/messenger/R$drawable;->mini_boost_profile_badge2:I

    invoke-static {v10, v11}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    iget-object v11, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    .line 3349
    invoke-virtual {v11}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v11

    sget v12, Lorg/telegram/messenger/R$drawable;->mini_boost_profile_badge2:I

    invoke-static {v11, v12}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    iget-object v12, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    .line 3350
    invoke-virtual {v12}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v12

    sget v13, Lorg/telegram/messenger/R$drawable;->mini_boost_profile_badge2:I

    invoke-static {v12, v13}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    aput-object v4, v1, v9

    aput-object v8, v1, v3

    aput-object v10, v1, v6

    aput-object v11, v1, v7

    aput-object v12, v1, v5

    .line 3352
    iget-object v4, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetnotRestrictBoosters(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v4

    if-lez v4, :cond_0

    iget-object v4, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetnotRestrictBoosters(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v4

    add-int/lit8 v9, v4, -0x1

    :cond_0
    const-string v3, "4"

    const-string v4, "5"

    const-string v5, "1"

    const-string v6, "2"

    const-string v7, "3"

    filled-new-array {v5, v6, v7, v3, v4}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v9, v1, v3}, Lorg/telegram/ui/Components/SlideChooseView;->setOptions(I[Landroid/graphics/drawable/Drawable;[Ljava/lang/String;)V

    .line 3353
    new-instance v1, Lorg/telegram/ui/ChatUsersActivity$ListAdapter$$ExternalSyntheticLambda4;

    invoke-direct {v1, v0}, Lorg/telegram/ui/ChatUsersActivity$ListAdapter$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/ChatUsersActivity$ListAdapter;)V

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/SlideChooseView;->setCallback(Lorg/telegram/ui/Components/SlideChooseView$Callback;)V

    move-object v1, v2

    goto/16 :goto_3

    .line 3359
    :pswitch_4
    new-instance v1, Lorg/telegram/ui/Cells/CheckBoxCell;

    iget-object v2, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->mContext:Landroid/content/Context;

    iget-object v4, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v4

    const/16 v6, 0x15

    invoke-direct {v1, v2, v5, v6, v4}, Lorg/telegram/ui/Cells/CheckBoxCell;-><init>(Landroid/content/Context;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 3360
    invoke-virtual {v1}, Lorg/telegram/ui/Cells/CheckBoxCell;->getCheckBoxRound()Lorg/telegram/ui/Components/CheckBox2;

    move-result-object v2

    const/16 v4, 0xe

    invoke-virtual {v2, v4}, Lorg/telegram/ui/Components/CheckBox2;->setDrawBackgroundAsArc(I)V

    .line 3361
    invoke-virtual {v1}, Lorg/telegram/ui/Cells/CheckBoxCell;->getCheckBoxRound()Lorg/telegram/ui/Components/CheckBox2;

    move-result-object v2

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_switch2TrackChecked:I

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_radioBackground:I

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_checkboxCheck:I

    invoke-virtual {v2, v4, v5, v6}, Lorg/telegram/ui/Components/CheckBox2;->setColor(III)V

    .line 3362
    invoke-virtual {v1, v3}, Lorg/telegram/ui/Cells/CheckBoxCell;->setEnabled(Z)V

    goto/16 :goto_3

    .line 3308
    :pswitch_5
    new-instance v7, Lorg/telegram/ui/Cells/TextCell;

    iget-object v8, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->mContext:Landroid/content/Context;

    iget-object v1, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v12

    const/16 v9, 0x17

    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-direct/range {v7 .. v12}, Lorg/telegram/ui/Cells/TextCell;-><init>(Landroid/content/Context;IZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/16 v1, 0x32

    .line 3309
    iput v1, v7, Lorg/telegram/ui/Cells/TextCell;->heightDp:I

    move-object v1, v7

    goto/16 :goto_3

    .line 3299
    :pswitch_6
    new-instance v1, Lorg/telegram/ui/Components/FlickerLoadingView;

    iget-object v2, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lorg/telegram/ui/Components/FlickerLoadingView;-><init>(Landroid/content/Context;)V

    .line 3300
    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/FlickerLoadingView;->setIsSingleCell(Z)V

    .line 3301
    invoke-virtual {v1, v8}, Lorg/telegram/ui/Components/FlickerLoadingView;->setViewType(I)V

    .line 3302
    invoke-virtual {v1, v9}, Lorg/telegram/ui/Components/FlickerLoadingView;->showDate(Z)V

    const/high16 v2, 0x40a00000    # 5.0f

    .line 3303
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/FlickerLoadingView;->setPaddingLeft(I)V

    .line 3304
    new-instance v2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_3

    .line 3296
    :pswitch_7
    new-instance v1, Lorg/telegram/ui/Cells/LoadingCell;

    iget-object v2, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->mContext:Landroid/content/Context;

    const/high16 v3, 0x42200000    # 40.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    const/high16 v4, 0x42f00000    # 120.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-direct {v1, v2, v3, v4}, Lorg/telegram/ui/Cells/LoadingCell;-><init>(Landroid/content/Context;II)V

    goto/16 :goto_3

    .line 3292
    :pswitch_8
    new-instance v1, Lorg/telegram/ui/Cells/GraySectionCell;

    iget-object v2, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->mContext:Landroid/content/Context;

    iget-object v3, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatUsersActivity;->access$200(Lorg/telegram/ui/ChatUsersActivity;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v3

    const/16 v4, 0x1a

    invoke-direct {v1, v2, v4, v3}, Lorg/telegram/ui/Cells/GraySectionCell;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/4 v2, 0x0

    .line 3293
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_3

    .line 3289
    :pswitch_9
    new-instance v1, Lorg/telegram/ui/Cells/TextCheckCell2;

    iget-object v2, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lorg/telegram/ui/Cells/TextCheckCell2;-><init>(Landroid/content/Context;)V

    goto/16 :goto_3

    .line 3285
    :pswitch_a
    new-instance v1, Lorg/telegram/ui/Cells/TextSettingsCell;

    iget-object v2, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lorg/telegram/ui/Cells/TextSettingsCell;-><init>(Landroid/content/Context;)V

    goto/16 :goto_3

    .line 3280
    :pswitch_b
    new-instance v3, Lorg/telegram/ui/Cells/HeaderCell;

    iget-object v4, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->mContext:Landroid/content/Context;

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueHeader:I

    const/16 v7, 0xb

    const/4 v8, 0x0

    const/16 v6, 0x15

    invoke-direct/range {v3 .. v8}, Lorg/telegram/ui/Cells/HeaderCell;-><init>(Landroid/content/Context;IIIZ)V

    const/16 v1, 0x2b

    .line 3281
    invoke-virtual {v3, v1}, Lorg/telegram/ui/Cells/HeaderCell;->setHeight(I)V

    move-object v1, v3

    goto/16 :goto_3

    .line 3271
    :pswitch_c
    new-instance v1, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    iget-object v2, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;)V

    .line 3273
    iget-object v2, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetisChannel(Lorg/telegram/ui/ChatUsersActivity;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3274
    sget v2, Lorg/telegram/messenger/R$string;->NoBlockedChannel2:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 3276
    :cond_1
    sget v2, Lorg/telegram/messenger/R$string;->NoBlockedGroup2:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 3268
    :pswitch_d
    new-instance v1, Lorg/telegram/ui/Cells/ShadowSectionCell;

    iget-object v2, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lorg/telegram/ui/Cells/ShadowSectionCell;-><init>(Landroid/content/Context;)V

    goto :goto_3

    .line 3265
    :pswitch_e
    new-instance v1, Lorg/telegram/ui/Cells/ManageChatTextCell;

    iget-object v2, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lorg/telegram/ui/Cells/ManageChatTextCell;-><init>(Landroid/content/Context;)V

    goto :goto_3

    .line 3262
    :pswitch_f
    new-instance v1, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    iget-object v2, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;)V

    goto :goto_3

    .line 3254
    :pswitch_10
    new-instance v1, Lorg/telegram/ui/Cells/ManageChatUserCell;

    iget-object v2, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->mContext:Landroid/content/Context;

    iget-object v4, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgettype(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgettype(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v4

    if-ne v4, v7, :cond_2

    goto :goto_0

    :cond_2
    move v4, v8

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v4, 0x7

    :goto_1
    iget-object v5, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgettype(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgettype(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v5

    if-ne v5, v7, :cond_5

    :cond_4
    move v6, v8

    :cond_5
    iget-object v5, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetselectType(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v5

    if-nez v5, :cond_6

    goto :goto_2

    :cond_6
    move v3, v9

    :goto_2
    invoke-direct {v1, v2, v4, v6, v3}, Lorg/telegram/ui/Cells/ManageChatUserCell;-><init>(Landroid/content/Context;IIZ)V

    .line 3255
    new-instance v2, Lorg/telegram/ui/ChatUsersActivity$ListAdapter$$ExternalSyntheticLambda2;

    invoke-direct {v2, v0}, Lorg/telegram/ui/ChatUsersActivity$ListAdapter$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/ChatUsersActivity$ListAdapter;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/ManageChatUserCell;->setDelegate(Lorg/telegram/ui/Cells/ManageChatUserCell$ManageChatUserCellDelegate;)V

    .line 3372
    :goto_3
    new-instance v2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {v2, v1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_9
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 1

    .line 3755
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v0, p1, Lorg/telegram/ui/Cells/ManageChatUserCell;

    if-eqz v0, :cond_0

    .line 3756
    check-cast p1, Lorg/telegram/ui/Cells/ManageChatUserCell;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ManageChatUserCell;->recycle()V

    :cond_0
    return-void
.end method
