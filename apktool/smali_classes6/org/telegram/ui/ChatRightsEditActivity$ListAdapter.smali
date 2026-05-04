.class Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ChatRightsEditActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListAdapter"
.end annotation


# instance fields
.field private final VIEW_TYPE_ADD_BOT_CELL:I

.field private final VIEW_TYPE_EXPANDABLE_SWITCH:I

.field private final VIEW_TYPE_HEADER_CELL:I

.field private final VIEW_TYPE_INFO_CELL:I

.field private final VIEW_TYPE_INNER_CHECK:I

.field private final VIEW_TYPE_RANK_CELL:I

.field private final VIEW_TYPE_SHADOW_CELL:I

.field private final VIEW_TYPE_SWITCH_CELL:I

.field private final VIEW_TYPE_TAG_CELL:I

.field private final VIEW_TYPE_TRANSFER_CELL:I

.field private final VIEW_TYPE_UNTIL_DATE_CELL:I

.field private final VIEW_TYPE_USER_CELL:I

.field private ignoreTextChange:Z

.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lorg/telegram/ui/ChatRightsEditActivity;


# direct methods
.method public static synthetic $r8$lambda$54e7amrMpAR8f6tmD2Lrg81_dtc(Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;Lorg/telegram/ui/Cells/TextCheckCell2;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->lambda$onBindViewHolder$2(Lorg/telegram/ui/Cells/TextCheckCell2;)V

    return-void
.end method

.method public static synthetic $r8$lambda$RIABjoJtZz-1yaTNh13hjDgQ0z8(Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->lambda$onCreateViewHolder$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$cMkr0qZpdTso6ID3vZUJoVkAFRM(Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->lambda$onBindViewHolder$4(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$i0VfgUjKn2J5w2gQuyhTSC_Fcbg(Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;Lorg/telegram/ui/Cells/TextCheckCell2;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->lambda$onBindViewHolder$3(Lorg/telegram/ui/Cells/TextCheckCell2;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kgpNE2gbR-RoyB1ngIZzz4kx8BU(Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;Lorg/telegram/ui/Cells/TextCheckCell2;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->lambda$onBindViewHolder$1(Lorg/telegram/ui/Cells/TextCheckCell2;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetignoreTextChange(Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->ignoreTextChange:Z

    return p0
.end method

.method public constructor <init>(Lorg/telegram/ui/ChatRightsEditActivity;Landroid/content/Context;)V
    .locals 3

    .line 1599
    iput-object p1, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    const/4 v0, 0x0

    .line 1583
    iput v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->VIEW_TYPE_USER_CELL:I

    const/4 v0, 0x1

    .line 1584
    iput v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->VIEW_TYPE_INFO_CELL:I

    const/4 v1, 0x2

    .line 1585
    iput v1, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->VIEW_TYPE_TRANSFER_CELL:I

    const/4 v2, 0x3

    .line 1586
    iput v2, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->VIEW_TYPE_HEADER_CELL:I

    const/4 v2, 0x4

    .line 1587
    iput v2, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->VIEW_TYPE_SWITCH_CELL:I

    const/4 v2, 0x5

    .line 1588
    iput v2, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->VIEW_TYPE_SHADOW_CELL:I

    const/4 v2, 0x6

    .line 1589
    iput v2, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->VIEW_TYPE_UNTIL_DATE_CELL:I

    const/4 v2, 0x7

    .line 1590
    iput v2, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->VIEW_TYPE_RANK_CELL:I

    const/16 v2, 0x8

    .line 1591
    iput v2, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->VIEW_TYPE_ADD_BOT_CELL:I

    const/16 v2, 0x9

    .line 1592
    iput v2, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->VIEW_TYPE_EXPANDABLE_SWITCH:I

    const/16 v2, 0xa

    .line 1593
    iput v2, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->VIEW_TYPE_INNER_CHECK:I

    const/16 v2, 0xb

    .line 1594
    iput v2, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->VIEW_TYPE_TAG_CELL:I

    .line 1600
    invoke-static {p1}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetcurrentType(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result p1

    if-ne p1, v1, :cond_0

    .line 1601
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    .line 1603
    :cond_0
    iput-object p2, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->mContext:Landroid/content/Context;

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$1(Lorg/telegram/ui/Cells/TextCheckCell2;)V
    .locals 2

    .line 1936
    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1937
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$mallDefaultMediaBanned(Lorg/telegram/ui/ChatRightsEditActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1938
    new-instance p1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v0, Lorg/telegram/messenger/R$string;->UserRestrictionsCantModify:I

    .line 1939
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/R$string;->UserRestrictionsCantModifyEnabled:I

    .line 1940
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/R$string;->OK:I

    .line 1941
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    .line 1942
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    .line 1943
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->show()V

    return-void

    .line 1946
    :cond_1
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/TextCheckCell2;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 1947
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Cells/TextCheckCell2;->setChecked(Z)V

    .line 1948
    iget-object p1, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {p1, v0}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$msetSendMediaEnabled(Lorg/telegram/ui/ChatRightsEditActivity;Z)V

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$2(Lorg/telegram/ui/Cells/TextCheckCell2;)V
    .locals 1

    .line 1955
    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1956
    :cond_0
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/TextCheckCell2;->isChecked()Z

    move-result v0

    .line 1957
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Cells/TextCheckCell2;->setChecked(Z)V

    .line 1958
    iget-object p1, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {p1, v0}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$msetChannelMessagesEnabled(Lorg/telegram/ui/ChatRightsEditActivity;Z)V

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$3(Lorg/telegram/ui/Cells/TextCheckCell2;)V
    .locals 1

    .line 1964
    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1965
    :cond_0
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/TextCheckCell2;->isChecked()Z

    move-result v0

    .line 1966
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Cells/TextCheckCell2;->setChecked(Z)V

    .line 1967
    iget-object p1, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {p1, v0}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$msetChannelStoriesEnabled(Lorg/telegram/ui/ChatRightsEditActivity;Z)V

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$4(Ljava/lang/String;)V
    .locals 1

    .line 2128
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0, p1}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fputcurrentRank(Lorg/telegram/ui/ChatRightsEditActivity;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$onCreateViewHolder$0(Landroid/view/View;)V
    .locals 0

    .line 1764
    iget-object p1, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$monDonePressed(Lorg/telegram/ui/ChatRightsEditActivity;)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 1717
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetrowCount(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    .line 1608
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetcurrentType(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2d

    .line 1609
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetmanageRow(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v0

    if-ne p1, v0, :cond_0

    const-wide/16 v0, 0x1

    return-wide v0

    .line 1610
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetchangeInfoRow(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v0

    if-ne p1, v0, :cond_1

    const-wide/16 v0, 0x2

    return-wide v0

    .line 1611
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetpostMessagesRow(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v0

    if-ne p1, v0, :cond_2

    const-wide/16 v0, 0x3

    return-wide v0

    .line 1612
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgeteditMesagesRow(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v0

    if-ne p1, v0, :cond_3

    const-wide/16 v0, 0x4

    return-wide v0

    .line 1613
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetdeleteMessagesRow(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v0

    if-ne p1, v0, :cond_4

    const-wide/16 v0, 0x5

    return-wide v0

    .line 1614
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetaddAdminsRow(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v0

    if-ne p1, v0, :cond_5

    const-wide/16 v0, 0x6

    return-wide v0

    .line 1615
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetanonymousRow(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v0

    if-ne p1, v0, :cond_6

    const-wide/16 v0, 0x7

    return-wide v0

    .line 1616
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetbanUsersRow(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v0

    if-ne p1, v0, :cond_7

    const-wide/16 v0, 0x8

    return-wide v0

    .line 1617
    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetaddUsersRow(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v0

    if-ne p1, v0, :cond_8

    const-wide/16 v0, 0x9

    return-wide v0

    .line 1618
    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetpinMessagesRow(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v0

    if-ne p1, v0, :cond_9

    const-wide/16 v0, 0xa

    return-wide v0

    .line 1619
    :cond_9
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetrightsShadowRow(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v0

    if-ne p1, v0, :cond_a

    const-wide/16 v0, 0xb

    return-wide v0

    .line 1620
    :cond_a
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetremoveAdminRow(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v0

    if-ne p1, v0, :cond_b

    const-wide/16 v0, 0xc

    return-wide v0

    .line 1621
    :cond_b
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetremoveAdminShadowRow(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v0

    if-ne p1, v0, :cond_c

    const-wide/16 v0, 0xd

    return-wide v0

    .line 1622
    :cond_c
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetcantEditInfoRow(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v0

    if-ne p1, v0, :cond_d

    const-wide/16 v0, 0xe

    return-wide v0

    .line 1623
    :cond_d
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgettransferOwnerShadowRow(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v0

    if-ne p1, v0, :cond_e

    const-wide/16 v0, 0xf

    return-wide v0

    .line 1624
    :cond_e
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgettransferOwnerRow(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v0

    if-ne p1, v0, :cond_f

    const-wide/16 v0, 0x10

    return-wide v0

    .line 1625
    :cond_f
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetrankHeaderRow(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v0

    if-ne p1, v0, :cond_10

    const-wide/16 v0, 0x11

    return-wide v0

    .line 1626
    :cond_10
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetrankRow(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v0

    if-ne p1, v0, :cond_11

    const-wide/16 v0, 0x12

    return-wide v0

    .line 1627
    :cond_11
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetrankInfoRow(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v0

    if-ne p1, v0, :cond_12

    const-wide/16 v0, 0x13

    return-wide v0

    .line 1628
    :cond_12
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetsendMessagesRow(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v0

    if-ne p1, v0, :cond_13

    const-wide/16 v0, 0x14

    return-wide v0

    .line 1629
    :cond_13
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetsendPhotosRow(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v0

    if-ne p1, v0, :cond_14

    const-wide/16 v0, 0x15

    return-wide v0

    .line 1630
    :cond_14
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetsendStickersRow(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v0

    if-ne p1, v0, :cond_15

    const-wide/16 v0, 0x16

    return-wide v0

    .line 1631
    :cond_15
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetsendPollsRow(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v0

    if-ne p1, v0, :cond_16

    const-wide/16 v0, 0x17

    return-wide v0

    .line 1632
    :cond_16
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetembedLinksRow(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v0

    if-ne p1, v0, :cond_17

    const-wide/16 v0, 0x18

    return-wide v0

    .line 1633
    :cond_17
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetstartVoiceChatRow(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v0

    if-ne p1, v0, :cond_18

    const-wide/16 v0, 0x19

    return-wide v0

    .line 1634
    :cond_18
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetuntilSectionRow(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v0

    if-ne p1, v0, :cond_19

    const-wide/16 v0, 0x1a

    return-wide v0

    .line 1635
    :cond_19
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetuntilDateRow(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v0

    if-ne p1, v0, :cond_1a

    const-wide/16 v0, 0x1b

    return-wide v0

    .line 1636
    :cond_1a
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetaddBotButtonRow(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v0

    if-ne p1, v0, :cond_1b

    const-wide/16 v0, 0x1c

    return-wide v0

    .line 1637
    :cond_1b
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetmanageTopicsRow(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v0

    if-ne p1, v0, :cond_1c

    const-wide/16 v0, 0x1d

    return-wide v0

    .line 1638
    :cond_1c
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetsendVideosRow(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v0

    if-ne p1, v0, :cond_1d

    const-wide/16 v0, 0x1e

    return-wide v0

    .line 1639
    :cond_1d
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetsendFilesRow(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v0

    if-ne p1, v0, :cond_1e

    const-wide/16 v0, 0x1f

    return-wide v0

    .line 1640
    :cond_1e
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetsendMusicRow(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v0

    if-ne p1, v0, :cond_1f

    const-wide/16 v0, 0x20

    return-wide v0

    .line 1641
    :cond_1f
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetsendVoiceRow(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v0

    if-ne p1, v0, :cond_20

    const-wide/16 v0, 0x21

    return-wide v0

    .line 1642
    :cond_20
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetsendRoundRow(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v0

    if-ne p1, v0, :cond_21

    const-wide/16 v0, 0x22

    return-wide v0

    .line 1643
    :cond_21
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetsendMediaRow(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v0

    if-ne p1, v0, :cond_22

    const-wide/16 v0, 0x23

    return-wide v0

    .line 1644
    :cond_22
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetchannelMessagesRow(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v0

    if-ne p1, v0, :cond_23

    const-wide/16 v0, 0x24

    return-wide v0

    .line 1645
    :cond_23
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetchannelPostMessagesRow(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v0

    if-ne p1, v0, :cond_24

    const-wide/16 v0, 0x25

    return-wide v0

    .line 1646
    :cond_24
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetchannelEditMessagesRow(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v0

    if-ne p1, v0, :cond_25

    const-wide/16 v0, 0x26

    return-wide v0

    .line 1647
    :cond_25
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetchannelDeleteMessagesRow(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v0

    if-ne p1, v0, :cond_26

    const-wide/16 v0, 0x27

    return-wide v0

    .line 1648
    :cond_26
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetchannelStoriesRow(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v0

    if-ne p1, v0, :cond_27

    const-wide/16 v0, 0x28

    return-wide v0

    .line 1649
    :cond_27
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetchannelPostStoriesRow(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v0

    if-ne p1, v0, :cond_28

    const-wide/16 v0, 0x29

    return-wide v0

    .line 1650
    :cond_28
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetchannelEditStoriesRow(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v0

    if-ne p1, v0, :cond_29

    const-wide/16 v0, 0x2a

    return-wide v0

    .line 1651
    :cond_29
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetchannelDeleteStoriesRow(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v0

    if-ne p1, v0, :cond_2a

    const-wide/16 v0, 0x2b

    return-wide v0

    .line 1652
    :cond_2a
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetmanageDirectRow(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v0

    if-ne p1, v0, :cond_2b

    const-wide/16 v0, 0x2c

    return-wide v0

    .line 1653
    :cond_2b
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgeteditTagsRow(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v0

    if-ne p1, v0, :cond_2c

    const-wide/16 v0, 0x2d

    return-wide v0

    :cond_2c
    const-wide/16 v0, 0x0

    return-wide v0

    .line 1656
    :cond_2d
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 3

    .line 2150
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0, p1}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$misExpandableSendMediaRow(Lorg/telegram/ui/ChatRightsEditActivity;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p1, 0xa

    return p1

    .line 2152
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetsendMediaRow(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v0

    if-eq p1, v0, :cond_e

    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetchannelMessagesRow(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v0

    if-eq p1, v0, :cond_e

    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetchannelStoriesRow(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v0

    if-ne p1, v0, :cond_1

    goto/16 :goto_4

    :cond_1
    if-nez p1, :cond_2

    const/4 p1, 0x0

    return p1

    :cond_2
    const/4 v0, 0x1

    if-eq p1, v0, :cond_d

    .line 2156
    iget-object v1, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetrightsShadowRow(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v1

    if-eq p1, v1, :cond_d

    iget-object v1, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetremoveAdminShadowRow(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v1

    if-eq p1, v1, :cond_d

    iget-object v1, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetuntilSectionRow(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v1

    if-eq p1, v1, :cond_d

    iget-object v1, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgettransferOwnerShadowRow(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v1

    if-ne p1, v1, :cond_3

    goto/16 :goto_3

    :cond_3
    const/4 v1, 0x2

    if-eq p1, v1, :cond_c

    .line 2158
    iget-object v2, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetrankHeaderRow(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v2

    if-ne p1, v2, :cond_4

    goto/16 :goto_2

    .line 2160
    :cond_4
    iget-object v2, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetchangeInfoRow(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v2

    if-eq p1, v2, :cond_b

    iget-object v2, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetpostMessagesRow(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v2

    if-eq p1, v2, :cond_b

    iget-object v2, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetmanageDirectRow(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v2

    if-eq p1, v2, :cond_b

    iget-object v2, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgeteditMesagesRow(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v2

    if-eq p1, v2, :cond_b

    iget-object v2, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetdeleteMessagesRow(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v2

    if-eq p1, v2, :cond_b

    iget-object v2, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetaddAdminsRow(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v2

    if-eq p1, v2, :cond_b

    iget-object v2, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetbanUsersRow(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v2

    if-eq p1, v2, :cond_b

    iget-object v2, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetaddUsersRow(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v2

    if-eq p1, v2, :cond_b

    iget-object v2, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetpinMessagesRow(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v2

    if-eq p1, v2, :cond_b

    iget-object v2, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgeteditTagsRow(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v2

    if-eq p1, v2, :cond_b

    iget-object v2, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetsendMessagesRow(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v2

    if-eq p1, v2, :cond_b

    iget-object v2, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetanonymousRow(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v2

    if-eq p1, v2, :cond_b

    iget-object v2, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetstartVoiceChatRow(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v2

    if-eq p1, v2, :cond_b

    iget-object v2, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetmanageRow(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v2

    if-eq p1, v2, :cond_b

    iget-object v2, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetmanageTopicsRow(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v2

    if-ne p1, v2, :cond_5

    goto :goto_1

    .line 2165
    :cond_5
    iget-object v2, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetcantEditInfoRow(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v2

    if-eq p1, v2, :cond_a

    iget-object v2, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetrankInfoRow(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v2

    if-ne p1, v2, :cond_6

    goto :goto_0

    .line 2167
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetuntilDateRow(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v0

    if-ne p1, v0, :cond_7

    const/4 p1, 0x6

    return p1

    .line 2169
    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetrankRow(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v0

    if-ne p1, v0, :cond_8

    const/16 p1, 0xb

    return p1

    .line 2171
    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetaddBotButtonRow(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v0

    if-ne p1, v0, :cond_9

    const/16 p1, 0x8

    return p1

    :cond_9
    return v1

    :cond_a
    :goto_0
    return v0

    :cond_b
    :goto_1
    const/4 p1, 0x4

    return p1

    :cond_c
    :goto_2
    const/4 p1, 0x3

    return p1

    :cond_d
    :goto_3
    const/4 p1, 0x5

    return p1

    :cond_e
    :goto_4
    const/16 p1, 0x9

    return p1
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 6

    .line 1662
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1f

    .line 1663
    iget-object v2, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetcurrentChat(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v2

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    const/4 v3, 0x4

    const/4 v4, 0x2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetcurrentType(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetcurrentType(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v2

    if-ne v2, v4, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetasAdmin(Lorg/telegram/ui/ChatRightsEditActivity;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    if-ne v0, v3, :cond_1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v2

    iget-object v5, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetanonymousRow(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v5

    if-ne v2, v5, :cond_1

    goto/16 :goto_1

    .line 1666
    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetcanEdit(Lorg/telegram/ui/ChatRightsEditActivity;)Z

    move-result v2

    const/4 v5, 0x0

    if-nez v2, :cond_2

    return v5

    .line 1669
    :cond_2
    iget-object v2, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetcurrentType(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetcurrentType(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v2

    if-ne v2, v4, :cond_1d

    :cond_3
    if-ne v0, v3, :cond_1d

    .line 1670
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    .line 1671
    iget-object v2, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetmanageRow(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v2

    if-ne p1, v2, :cond_6

    .line 1672
    iget-object p1, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetmyAdminRights(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    move-result-object p1

    iget-boolean p1, p1, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->add_admins:Z

    if-nez p1, :cond_5

    iget-object p1, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetcurrentChat(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetcurrentChat(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p1

    iget-boolean p1, p1, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    if-eqz p1, :cond_4

    goto :goto_0

    :cond_4
    return v5

    :cond_5
    :goto_0
    return v1

    .line 1674
    :cond_6
    iget-object v2, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetcurrentType(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v2

    if-ne v2, v4, :cond_7

    iget-object v2, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetasAdmin(Lorg/telegram/ui/ChatRightsEditActivity;)Z

    move-result v2

    if-nez v2, :cond_7

    return v5

    .line 1677
    :cond_7
    iget-object v2, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetchangeInfoRow(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v2

    if-ne p1, v2, :cond_a

    .line 1678
    iget-object p1, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetmyAdminRights(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    move-result-object p1

    iget-boolean p1, p1, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->change_info:Z

    if-eqz p1, :cond_9

    iget-object p1, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetdefaultBannedRights(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    move-result-object p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetdefaultBannedRights(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    move-result-object p1

    iget-boolean p1, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->change_info:Z

    if-nez p1, :cond_8

    iget-object p1, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetisChannel(Lorg/telegram/ui/ChatRightsEditActivity;)Z

    move-result p1

    if-eqz p1, :cond_9

    :cond_8
    return v1

    :cond_9
    return v5

    .line 1679
    :cond_a
    iget-object v2, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetpostMessagesRow(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v2

    if-ne p1, v2, :cond_b

    .line 1680
    iget-object p1, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetmyAdminRights(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    move-result-object p1

    iget-boolean p1, p1, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->post_messages:Z

    return p1

    .line 1681
    :cond_b
    iget-object v2, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetmanageDirectRow(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v2

    if-ne p1, v2, :cond_c

    .line 1682
    iget-object p1, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetmyAdminRights(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    move-result-object p1

    iget-boolean p1, p1, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->manage_direct_messages:Z

    return p1

    .line 1683
    :cond_c
    iget-object v2, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgeteditMesagesRow(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v2

    if-ne p1, v2, :cond_d

    .line 1684
    iget-object p1, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetmyAdminRights(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    move-result-object p1

    iget-boolean p1, p1, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->edit_messages:Z

    return p1

    .line 1685
    :cond_d
    iget-object v2, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetdeleteMessagesRow(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v2

    if-ne p1, v2, :cond_e

    .line 1686
    iget-object p1, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetmyAdminRights(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    move-result-object p1

    iget-boolean p1, p1, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->delete_messages:Z

    return p1

    .line 1687
    :cond_e
    iget-object v2, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetstartVoiceChatRow(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v2

    if-ne p1, v2, :cond_f

    .line 1688
    iget-object p1, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetmyAdminRights(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    move-result-object p1

    iget-boolean p1, p1, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->manage_call:Z

    return p1

    .line 1689
    :cond_f
    iget-object v2, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetaddAdminsRow(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v2

    if-ne p1, v2, :cond_10

    .line 1690
    iget-object p1, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetmyAdminRights(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    move-result-object p1

    iget-boolean p1, p1, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->add_admins:Z

    return p1

    .line 1691
    :cond_10
    iget-object v2, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetanonymousRow(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v2

    if-ne p1, v2, :cond_11

    .line 1692
    iget-object p1, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetmyAdminRights(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    move-result-object p1

    iget-boolean p1, p1, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->anonymous:Z

    return p1

    .line 1693
    :cond_11
    iget-object v2, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetbanUsersRow(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v2

    if-ne p1, v2, :cond_12

    .line 1694
    iget-object p1, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetmyAdminRights(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    move-result-object p1

    iget-boolean p1, p1, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->ban_users:Z

    return p1

    .line 1695
    :cond_12
    iget-object v2, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetaddUsersRow(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v2

    if-ne p1, v2, :cond_13

    .line 1696
    iget-object p1, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetmyAdminRights(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    move-result-object p1

    iget-boolean p1, p1, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->invite_users:Z

    return p1

    .line 1697
    :cond_13
    iget-object v2, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetpinMessagesRow(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v2

    if-ne p1, v2, :cond_16

    .line 1698
    iget-object p1, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetmyAdminRights(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    move-result-object p1

    iget-boolean p1, p1, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->pin_messages:Z

    if-eqz p1, :cond_15

    iget-object p1, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetdefaultBannedRights(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    move-result-object p1

    if-eqz p1, :cond_14

    iget-object p1, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetdefaultBannedRights(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    move-result-object p1

    iget-boolean p1, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->pin_messages:Z

    if-eqz p1, :cond_15

    :cond_14
    return v1

    :cond_15
    return v5

    .line 1699
    :cond_16
    iget-object v2, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgeteditTagsRow(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v2

    if-ne p1, v2, :cond_19

    .line 1700
    iget-object p1, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetmyAdminRights(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    move-result-object p1

    iget-boolean p1, p1, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->manage_ranks:Z

    if-eqz p1, :cond_18

    iget-object p1, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetdefaultBannedRights(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    move-result-object p1

    if-eqz p1, :cond_17

    iget-object p1, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetdefaultBannedRights(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    move-result-object p1

    iget-boolean p1, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->edit_rank:Z

    if-eqz p1, :cond_18

    :cond_17
    return v1

    :cond_18
    return v5

    .line 1701
    :cond_19
    iget-object v2, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetmanageTopicsRow(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v2

    if-ne p1, v2, :cond_1a

    .line 1702
    iget-object p1, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetmyAdminRights(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    move-result-object p1

    iget-boolean p1, p1, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->manage_topics:Z

    return p1

    .line 1703
    :cond_1a
    iget-object v2, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetchannelPostStoriesRow(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v2

    if-ne p1, v2, :cond_1b

    .line 1704
    iget-object p1, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetmyAdminRights(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    move-result-object p1

    iget-boolean p1, p1, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->post_stories:Z

    return p1

    .line 1705
    :cond_1b
    iget-object v2, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetchannelEditStoriesRow(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v2

    if-ne p1, v2, :cond_1c

    .line 1706
    iget-object p1, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetmyAdminRights(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    move-result-object p1

    iget-boolean p1, p1, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->edit_stories:Z

    return p1

    .line 1707
    :cond_1c
    iget-object v2, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetchannelDeleteStoriesRow(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v2

    if-ne p1, v2, :cond_1d

    .line 1708
    iget-object p1, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetmyAdminRights(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    move-result-object p1

    iget-boolean p1, p1, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->delete_stories:Z

    return p1

    :cond_1d
    const/4 p1, 0x3

    if-eq v0, p1, :cond_1e

    if-eq v0, v1, :cond_1e

    const/4 p1, 0x5

    if-eq v0, p1, :cond_1e

    const/16 p1, 0x8

    if-eq v0, p1, :cond_1e

    const/16 p1, 0xb

    if-eq v0, p1, :cond_1e

    return v1

    :cond_1e
    return v5

    :cond_1f
    :goto_1
    return v1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 10

    .line 1821
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_5c

    .line 2126
    :pswitch_1
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object v4, p1

    check-cast v4, Lorg/telegram/ui/Components/TagEditCell;

    .line 2127
    iget-object p1, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetcurrentUser(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v5

    iget-object p1, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetcurrentRank(Lorg/telegram/ui/ChatRightsEditActivity;)Ljava/lang/String;

    move-result-object v6

    iget-object p1, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetcurrentType(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result p1

    if-nez p1, :cond_0

    move v7, v2

    goto :goto_0

    :cond_0
    move v7, v3

    :goto_0
    new-instance v9, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter$$ExternalSyntheticLambda4;

    invoke-direct {v9, p0}, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;)V

    const/4 v8, 0x0

    invoke-virtual/range {v4 .. v9}, Lorg/telegram/ui/Components/TagEditCell;->set(Lorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;ZZLorg/telegram/messenger/Utilities$Callback;)V

    return-void

    .line 1823
    :pswitch_2
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object v4, p1

    check-cast v4, Lorg/telegram/ui/Cells/CheckBoxCell;

    .line 1824
    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, p2, :cond_1

    move v9, v2

    goto :goto_1

    :cond_1
    move v9, v3

    .line 1825
    :goto_1
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v4, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1826
    iget-object p1, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetsendStickersRow(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result p1

    if-ne p2, p1, :cond_4

    .line 1827
    sget p1, Lorg/telegram/messenger/R$string;->SendMediaPermissionStickersGifs:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object p1, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetbannedRights(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    move-result-object p1

    iget-boolean p1, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_stickers:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetdefaultBannedRights(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    move-result-object p1

    iget-boolean p1, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_stickers:Z

    if-nez p1, :cond_2

    move v7, v2

    goto :goto_2

    :cond_2
    move v7, v3

    :goto_2
    const/4 v8, 0x1

    const-string v6, ""

    invoke-virtual/range {v4 .. v9}, Lorg/telegram/ui/Cells/CheckBoxCell;->setText(Ljava/lang/CharSequence;Ljava/lang/String;ZZZ)V

    .line 1828
    iget-object p1, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetdefaultBannedRights(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    move-result-object p1

    iget-boolean p1, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_stickers:Z

    if-eqz p1, :cond_3

    sget v3, Lorg/telegram/messenger/R$drawable;->permission_locked:I

    :cond_3
    invoke-virtual {v4, v3}, Lorg/telegram/ui/Cells/CheckBoxCell;->setIcon(I)V

    return-void

    .line 1829
    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetembedLinksRow(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result p1

    if-ne p2, p1, :cond_7

    .line 1830
    sget p1, Lorg/telegram/messenger/R$string;->UserRestrictionsEmbedLinks:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object p1, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetbannedRights(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    move-result-object p1

    iget-boolean p1, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->embed_links:Z

    if-nez p1, :cond_5

    iget-object p1, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetdefaultBannedRights(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    move-result-object p1

    iget-boolean p1, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->embed_links:Z

    if-nez p1, :cond_5

    iget-object p1, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetbannedRights(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    move-result-object p1

    iget-boolean p1, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_plain:Z

    if-nez p1, :cond_5

    iget-object p1, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetdefaultBannedRights(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    move-result-object p1

    iget-boolean p1, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_plain:Z

    if-nez p1, :cond_5

    move v7, v2

    goto :goto_3

    :cond_5
    move v7, v3

    :goto_3
    const/4 v8, 0x1

    const-string v6, ""

    invoke-virtual/range {v4 .. v9}, Lorg/telegram/ui/Cells/CheckBoxCell;->setText(Ljava/lang/CharSequence;Ljava/lang/String;ZZZ)V

    .line 1831
    iget-object p1, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetdefaultBannedRights(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    move-result-object p1

    iget-boolean p1, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->embed_links:Z

    if-eqz p1, :cond_6

    sget v3, Lorg/telegram/messenger/R$drawable;->permission_locked:I

    :cond_6
    invoke-virtual {v4, v3}, Lorg/telegram/ui/Cells/CheckBoxCell;->setIcon(I)V

    return-void

    .line 1832
    :cond_7
    iget-object p1, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetsendPollsRow(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result p1

    if-ne p2, p1, :cond_a

    .line 1833
    sget p1, Lorg/telegram/messenger/R$string;->SendMediaPolls:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object p1, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetbannedRights(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    move-result-object p1

    iget-boolean p1, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_polls:Z

    if-nez p1, :cond_8

    iget-object p1, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetdefaultBannedRights(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    move-result-object p1

    iget-boolean p1, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_polls:Z

    if-nez p1, :cond_8

    move v7, v2

    goto :goto_4

    :cond_8
    move v7, v3

    :goto_4
    const/4 v8, 0x1

    const-string v6, ""

    invoke-virtual/range {v4 .. v9}, Lorg/telegram/ui/Cells/CheckBoxCell;->setText(Ljava/lang/CharSequence;Ljava/lang/String;ZZZ)V

    .line 1834
    iget-object p1, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetdefaultBannedRights(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    move-result-object p1

    iget-boolean p1, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_polls:Z

    if-eqz p1, :cond_9

    sget v3, Lorg/telegram/messenger/R$drawable;->permission_locked:I

    :cond_9
    invoke-virtual {v4, v3}, Lorg/telegram/ui/Cells/CheckBoxCell;->setIcon(I)V

    return-void

    .line 1835
    :cond_a
    iget-object p1, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetsendPhotosRow(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result p1

    if-ne p2, p1, :cond_d

    .line 1836
    sget p1, Lorg/telegram/messenger/R$string;->SendMediaPermissionPhotos:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object p1, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetbannedRights(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    move-result-object p1

    iget-boolean p1, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_photos:Z

    if-nez p1, :cond_b

    iget-object p1, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetdefaultBannedRights(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    move-result-object p1

    iget-boolean p1, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_photos:Z

    if-nez p1, :cond_b

    move v7, v2

    goto :goto_5

    :cond_b
    move v7, v3

    :goto_5
    const/4 v8, 0x1

    const-string v6, ""

    invoke-virtual/range {v4 .. v9}, Lorg/telegram/ui/Cells/CheckBoxCell;->setText(Ljava/lang/CharSequence;Ljava/lang/String;ZZZ)V

    .line 1837
    iget-object p1, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetdefaultBannedRights(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    move-result-object p1

    iget-boolean p1, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_photos:Z

    if-eqz p1, :cond_c

    sget v3, Lorg/telegram/messenger/R$drawable;->permission_locked:I

    :cond_c
    invoke-virtual {v4, v3}, Lorg/telegram/ui/Cells/CheckBoxCell;->setIcon(I)V

    return-void

    .line 1838
    :cond_d
    iget-object p1, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetsendVideosRow(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result p1

    if-ne p2, p1, :cond_10

    .line 1839
    sget p1, Lorg/telegram/messenger/R$string;->SendMediaPermissionVideos:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object p1, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetbannedRights(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    move-result-object p1

    iget-boolean p1, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_videos:Z

    if-nez p1, :cond_e

    iget-object p1, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetdefaultBannedRights(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    move-result-object p1

    iget-boolean p1, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_videos:Z

    if-nez p1, :cond_e

    move v7, v2

    goto :goto_6

    :cond_e
    move v7, v3

    :goto_6
    const/4 v8, 0x1

    const-string v6, ""

    invoke-virtual/range {v4 .. v9}, Lorg/telegram/ui/Cells/CheckBoxCell;->setText(Ljava/lang/CharSequence;Ljava/lang/String;ZZZ)V

    .line 1840
    iget-object p1, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetdefaultBannedRights(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    move-result-object p1

    iget-boolean p1, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_videos:Z

    if-eqz p1, :cond_f

    sget v3, Lorg/telegram/messenger/R$drawable;->permission_locked:I

    :cond_f
    invoke-virtual {v4, v3}, Lorg/telegram/ui/Cells/CheckBoxCell;->setIcon(I)V

    return-void

    .line 1841
    :cond_10
    iget-object p1, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetsendMusicRow(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result p1

    if-ne p2, p1, :cond_13

    .line 1842
    sget p1, Lorg/telegram/messenger/R$string;->SendMediaPermissionMusic:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object p1, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetbannedRights(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    move-result-object p1

    iget-boolean p1, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_audios:Z

    if-nez p1, :cond_11

    iget-object p1, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetdefaultBannedRights(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    move-result-object p1

    iget-boolean p1, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_audios:Z

    if-nez p1, :cond_11

    move v7, v2

    goto :goto_7

    :cond_11
    move v7, v3

    :goto_7
    const/4 v8, 0x1

    const-string v6, ""

    invoke-virtual/range {v4 .. v9}, Lorg/telegram/ui/Cells/CheckBoxCell;->setText(Ljava/lang/CharSequence;Ljava/lang/String;ZZZ)V

    .line 1843
    iget-object p1, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetdefaultBannedRights(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    move-result-object p1

    iget-boolean p1, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_audios:Z

    if-eqz p1, :cond_12

    sget v3, Lorg/telegram/messenger/R$drawable;->permission_locked:I

    :cond_12
    invoke-virtual {v4, v3}, Lorg/telegram/ui/Cells/CheckBoxCell;->setIcon(I)V

    return-void

    .line 1844
    :cond_13
    iget-object p1, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetsendFilesRow(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result p1

    if-ne p2, p1, :cond_16

    .line 1845
    sget p1, Lorg/telegram/messenger/R$string;->SendMediaPermissionFiles:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object p1, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetbannedRights(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    move-result-object p1

    iget-boolean p1, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_docs:Z

    if-nez p1, :cond_14

    iget-object p1, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetdefaultBannedRights(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    move-result-object p1

    iget-boolean p1, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_docs:Z

    if-nez p1, :cond_14

    move v7, v2

    goto :goto_8

    :cond_14
    move v7, v3

    :goto_8
    const/4 v8, 0x1

    const-string v6, ""

    invoke-virtual/range {v4 .. v9}, Lorg/telegram/ui/Cells/CheckBoxCell;->setText(Ljava/lang/CharSequence;Ljava/lang/String;ZZZ)V

    .line 1846
    iget-object p1, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetdefaultBannedRights(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    move-result-object p1

    iget-boolean p1, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_docs:Z

    if-eqz p1, :cond_15

    sget v3, Lorg/telegram/messenger/R$drawable;->permission_locked:I

    :cond_15
    invoke-virtual {v4, v3}, Lorg/telegram/ui/Cells/CheckBoxCell;->setIcon(I)V

    return-void

    .line 1847
    :cond_16
    iget-object p1, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetsendVoiceRow(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result p1

    if-ne p2, p1, :cond_19

    .line 1848
    sget p1, Lorg/telegram/messenger/R$string;->SendMediaPermissionVoice:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object p1, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetbannedRights(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    move-result-object p1

    iget-boolean p1, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_voices:Z

    if-nez p1, :cond_17

    iget-object p1, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetdefaultBannedRights(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    move-result-object p1

    iget-boolean p1, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_voices:Z

    if-nez p1, :cond_17

    move v7, v2

    goto :goto_9

    :cond_17
    move v7, v3

    :goto_9
    const/4 v8, 0x1

    const-string v6, ""

    invoke-virtual/range {v4 .. v9}, Lorg/telegram/ui/Cells/CheckBoxCell;->setText(Ljava/lang/CharSequence;Ljava/lang/String;ZZZ)V

    .line 1849
    iget-object p1, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetdefaultBannedRights(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    move-result-object p1

    iget-boolean p1, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_voices:Z

    if-eqz p1, :cond_18

    sget v3, Lorg/telegram/messenger/R$drawable;->permission_locked:I

    :cond_18
    invoke-virtual {v4, v3}, Lorg/telegram/ui/Cells/CheckBoxCell;->setIcon(I)V

    return-void

    .line 1850
    :cond_19
    iget-object p1, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetsendRoundRow(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result p1

    if-ne p2, p1, :cond_1c

    .line 1851
    sget p1, Lorg/telegram/messenger/R$string;->SendMediaPermissionRound:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object p1, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetbannedRights(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    move-result-object p1

    iget-boolean p1, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_roundvideos:Z

    if-nez p1, :cond_1a

    iget-object p1, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetdefaultBannedRights(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    move-result-object p1

    iget-boolean p1, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_roundvideos:Z

    if-nez p1, :cond_1a

    move v7, v2

    goto :goto_a

    :cond_1a
    move v7, v3

    :goto_a
    const/4 v8, 0x1

    const-string v6, ""

    invoke-virtual/range {v4 .. v9}, Lorg/telegram/ui/Cells/CheckBoxCell;->setText(Ljava/lang/CharSequence;Ljava/lang/String;ZZZ)V

    .line 1852
    iget-object p1, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetdefaultBannedRights(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    move-result-object p1

    iget-boolean p1, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_roundvideos:Z

    if-eqz p1, :cond_1b

    sget v3, Lorg/telegram/messenger/R$drawable;->permission_locked:I

    :cond_1b
    invoke-virtual {v4, v3}, Lorg/telegram/ui/Cells/CheckBoxCell;->setIcon(I)V

    return-void

    .line 1853
    :cond_1c
    iget-object p1, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetchannelPostMessagesRow(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result p1

    if-ne p2, p1, :cond_1d

    .line 1854
    sget p1, Lorg/telegram/messenger/R$string;->EditAdminPostMessages:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object p1, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetadminRights(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    move-result-object p1

    iget-boolean v7, p1, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->post_messages:Z

    const/4 v8, 0x1

    const-string v6, ""

    invoke-virtual/range {v4 .. v9}, Lorg/telegram/ui/Cells/CheckBoxCell;->setText(Ljava/lang/CharSequence;Ljava/lang/String;ZZZ)V

    return-void

    .line 1855
    :cond_1d
    iget-object p1, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetchannelEditMessagesRow(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result p1

    if-ne p2, p1, :cond_1e

    .line 1856
    sget p1, Lorg/telegram/messenger/R$string;->EditAdminEditMessages:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object p1, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetadminRights(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    move-result-object p1

    iget-boolean v7, p1, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->edit_messages:Z

    const/4 v8, 0x1

    const-string v6, ""

    invoke-virtual/range {v4 .. v9}, Lorg/telegram/ui/Cells/CheckBoxCell;->setText(Ljava/lang/CharSequence;Ljava/lang/String;ZZZ)V

    return-void

    .line 1857
    :cond_1e
    iget-object p1, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetchannelDeleteMessagesRow(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result p1

    if-ne p2, p1, :cond_1f

    .line 1858
    sget p1, Lorg/telegram/messenger/R$string;->EditAdminDeleteMessages:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object p1, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetadminRights(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    move-result-object p1

    iget-boolean v7, p1, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->delete_messages:Z

    const/4 v8, 0x1

    const-string v6, ""

    invoke-virtual/range {v4 .. v9}, Lorg/telegram/ui/Cells/CheckBoxCell;->setText(Ljava/lang/CharSequence;Ljava/lang/String;ZZZ)V

    return-void

    .line 1859
    :cond_1f
    iget-object p1, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetchannelPostStoriesRow(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result p1

    if-ne p2, p1, :cond_20

    .line 1860
    sget p1, Lorg/telegram/messenger/R$string;->EditAdminPostStories:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object p1, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetadminRights(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    move-result-object p1

    iget-boolean v7, p1, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->post_stories:Z

    const/4 v8, 0x1

    const-string v6, ""

    invoke-virtual/range {v4 .. v9}, Lorg/telegram/ui/Cells/CheckBoxCell;->setText(Ljava/lang/CharSequence;Ljava/lang/String;ZZZ)V

    return-void

    .line 1861
    :cond_20
    iget-object p1, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetchannelEditStoriesRow(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result p1

    if-ne p2, p1, :cond_21

    .line 1862
    sget p1, Lorg/telegram/messenger/R$string;->EditAdminEditStories:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object p1, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetadminRights(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    move-result-object p1

    iget-boolean v7, p1, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->edit_stories:Z

    const/4 v8, 0x1

    const-string v6, ""

    invoke-virtual/range {v4 .. v9}, Lorg/telegram/ui/Cells/CheckBoxCell;->setText(Ljava/lang/CharSequence;Ljava/lang/String;ZZZ)V

    return-void

    .line 1863
    :cond_21
    iget-object p1, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetchannelDeleteStoriesRow(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result p1

    if-ne p2, p1, :cond_9e

    .line 1864
    sget p1, Lorg/telegram/messenger/R$string;->EditAdminDeleteStories:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object p1, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetadminRights(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    move-result-object p1

    iget-boolean v7, p1, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->delete_stories:Z

    const/4 v8, 0x1

    const-string v6, ""

    invoke-virtual/range {v4 .. v9}, Lorg/telegram/ui/Cells/CheckBoxCell;->setText(Ljava/lang/CharSequence;Ljava/lang/String;ZZZ)V

    return-void

    .line 2111
    :pswitch_3
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/PollEditTextCell;

    .line 2113
    iget-object p2, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetcurrentUser(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/messenger/UserObject;->isUserSelf(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result p2

    if-eqz p2, :cond_22

    iget-object p2, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetcurrentChat(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p2

    iget-boolean p2, p2, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    if-eqz p2, :cond_22

    .line 2114
    sget p2, Lorg/telegram/messenger/R$string;->ChannelCreator:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_b

    .line 2116
    :cond_22
    sget p2, Lorg/telegram/messenger/R$string;->ChannelAdmin:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 2118
    :goto_b
    iput-boolean v2, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->ignoreTextChange:Z

    .line 2119
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/PollEditTextCell;->getTextView()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetcanEdit(Lorg/telegram/ui/ChatRightsEditActivity;)Z

    move-result v1

    if-nez v1, :cond_24

    iget-object v1, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetcurrentChat(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v1

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    if-eqz v1, :cond_23

    goto :goto_c

    :cond_23
    move v1, v3

    goto :goto_d

    :cond_24
    :goto_c
    move v1, v2

    :goto_d
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 2120
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/PollEditTextCell;->getTextView()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 2121
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/PollEditTextCell;->getTextView()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 2122
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetcurrentRank(Lorg/telegram/ui/ChatRightsEditActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p2, v3}, Lorg/telegram/ui/Cells/PollEditTextCell;->setTextAndHint(Ljava/lang/CharSequence;Ljava/lang/String;Z)V

    .line 2123
    iput-boolean v3, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->ignoreTextChange:Z

    return-void

    .line 2099
    :pswitch_4
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/TextDetailCell;

    .line 2100
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetuntilDateRow(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v0

    if-ne p2, v0, :cond_9e

    .line 2102
    iget-object p2, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetbannedRights(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    move-result-object p2

    iget p2, p2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->until_date:I

    if-eqz p2, :cond_26

    iget-object p2, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetbannedRights(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    move-result-object p2

    iget p2, p2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->until_date:I

    int-to-long v0, p2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    sub-long/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/32 v4, 0x12cc0300

    cmp-long p2, v0, v4

    if-lez p2, :cond_25

    goto :goto_e

    .line 2105
    :cond_25
    iget-object p2, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetbannedRights(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    move-result-object p2

    iget p2, p2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->until_date:I

    int-to-long v0, p2

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->formatDateForBan(J)Ljava/lang/String;

    move-result-object p2

    goto :goto_f

    .line 2103
    :cond_26
    :goto_e
    sget p2, Lorg/telegram/messenger/R$string;->UserRestrictionsUntilForever:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 2107
    :goto_f
    sget v0, Lorg/telegram/messenger/R$string;->UserRestrictionsDuration:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p2, v3}, Lorg/telegram/ui/Cells/TextDetailCell;->setTextAndValue(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    return-void

    .line 2091
    :pswitch_5
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/ShadowSectionCell;

    .line 2092
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetcurrentType(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v0

    if-ne v0, v1, :cond_28

    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetrightsShadowRow(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v0

    if-eq p2, v0, :cond_27

    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetrankInfoRow(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v0

    if-ne p2, v0, :cond_28

    .line 2093
    :cond_27
    iget-object p2, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetasAdminT(Lorg/telegram/ui/ChatRightsEditActivity;)F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    return-void

    :cond_28
    const/high16 p2, 0x3f800000    # 1.0f

    .line 2095
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    return-void

    .line 1929
    :pswitch_6
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/TextCheckCell2;

    .line 1930
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetcurrentType(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v0

    if-ne v0, v1, :cond_2a

    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetasAdmin(Lorg/telegram/ui/ChatRightsEditActivity;)Z

    move-result v0

    if-eqz v0, :cond_29

    goto :goto_10

    :cond_29
    move v0, v3

    goto :goto_11

    :cond_2a
    :goto_10
    move v0, v2

    .line 1931
    :goto_11
    iget-object v4, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetcurrentChat(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v4

    if-eqz v4, :cond_2b

    iget-object v4, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetcurrentChat(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v4

    iget-boolean v4, v4, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    if-eqz v4, :cond_2b

    move v4, v2

    goto :goto_12

    :cond_2b
    move v4, v3

    .line 1932
    :goto_12
    iget-object v5, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetsendMediaRow(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v5

    if-ne p2, v5, :cond_2e

    .line 1933
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$mgetSendMediaSelectedCount(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v0

    .line 1934
    sget v4, Lorg/telegram/messenger/R$string;->UserRestrictionsSendMedia:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    if-lez v0, :cond_2c

    move v5, v2

    goto :goto_13

    :cond_2c
    move v5, v3

    :goto_13
    invoke-virtual {p1, v4, v5, v2, v2}, Lorg/telegram/ui/Cells/TextCheckCell2;->setTextAndCheck(Ljava/lang/CharSequence;ZZZ)V

    .line 1935
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-array v5, v2, [Ljava/lang/Object;

    aput-object v0, v5, v3

    const-string v0, "%d/9"

    invoke-static {v4, v0, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetsendMediaExpanded(Lorg/telegram/ui/ChatRightsEditActivity;)Z

    move-result v4

    xor-int/2addr v4, v2

    new-instance v5, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v5, p0, p1}, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;Lorg/telegram/ui/Cells/TextCheckCell2;)V

    invoke-virtual {p1, v0, v4, v5}, Lorg/telegram/ui/Cells/TextCheckCell2;->setCollapseArrow(Ljava/lang/String;ZLjava/lang/Runnable;)V

    .line 1950
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$mallDefaultMediaBanned(Lorg/telegram/ui/ChatRightsEditActivity;)Z

    move-result v0

    if-eqz v0, :cond_2d

    sget v0, Lorg/telegram/messenger/R$drawable;->permission_locked:I

    goto :goto_14

    :cond_2d
    move v0, v3

    :goto_14
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Cells/TextCheckCell2;->setIcon(I)V

    goto/16 :goto_57

    .line 1951
    :cond_2e
    iget-object v5, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetchannelMessagesRow(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v5

    const-string v6, "%d/3"

    if-ne p2, v5, :cond_30

    .line 1952
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$mgetChannelMessagesSelectedCount(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v0

    .line 1953
    sget v4, Lorg/telegram/messenger/R$string;->ChannelManageMessages:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    if-lez v0, :cond_2f

    move v5, v2

    goto :goto_15

    :cond_2f
    move v5, v3

    :goto_15
    invoke-virtual {p1, v4, v5, v2, v2}, Lorg/telegram/ui/Cells/TextCheckCell2;->setTextAndCheck(Ljava/lang/CharSequence;ZZZ)V

    .line 1954
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-array v5, v2, [Ljava/lang/Object;

    aput-object v0, v5, v3

    invoke-static {v4, v6, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetchannelMessagesExpanded(Lorg/telegram/ui/ChatRightsEditActivity;)Z

    move-result v4

    xor-int/2addr v4, v2

    new-instance v5, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter$$ExternalSyntheticLambda2;

    invoke-direct {v5, p0, p1}, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;Lorg/telegram/ui/Cells/TextCheckCell2;)V

    invoke-virtual {p1, v0, v4, v5}, Lorg/telegram/ui/Cells/TextCheckCell2;->setCollapseArrow(Ljava/lang/String;ZLjava/lang/Runnable;)V

    goto/16 :goto_57

    .line 1960
    :cond_30
    iget-object v5, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetchannelStoriesRow(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v5

    if-ne p2, v5, :cond_32

    .line 1961
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$mgetChannelStoriesSelectedCount(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v0

    .line 1962
    sget v4, Lorg/telegram/messenger/R$string;->ChannelManageStories:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    if-lez v0, :cond_31

    move v5, v2

    goto :goto_16

    :cond_31
    move v5, v3

    :goto_16
    invoke-virtual {p1, v4, v5, v2, v2}, Lorg/telegram/ui/Cells/TextCheckCell2;->setTextAndCheck(Ljava/lang/CharSequence;ZZZ)V

    .line 1963
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-array v5, v2, [Ljava/lang/Object;

    aput-object v0, v5, v3

    invoke-static {v4, v6, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetchannelStoriesExpanded(Lorg/telegram/ui/ChatRightsEditActivity;)Z

    move-result v4

    xor-int/2addr v4, v2

    new-instance v5, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter$$ExternalSyntheticLambda3;

    invoke-direct {v5, p0, p1}, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;Lorg/telegram/ui/Cells/TextCheckCell2;)V

    invoke-virtual {p1, v0, v4, v5}, Lorg/telegram/ui/Cells/TextCheckCell2;->setCollapseArrow(Ljava/lang/String;ZLjava/lang/Runnable;)V

    goto/16 :goto_57

    .line 1969
    :cond_32
    iget-object v5, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetmanageRow(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v5

    if-ne p2, v5, :cond_35

    .line 1970
    sget v0, Lorg/telegram/messenger/R$string;->ManageGroup:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v5, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetasAdmin(Lorg/telegram/ui/ChatRightsEditActivity;)Z

    move-result v5

    invoke-virtual {p1, v0, v5, v2}, Lorg/telegram/ui/Cells/TextCheckCell2;->setTextAndCheck(Ljava/lang/CharSequence;ZZ)V

    .line 1971
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetmyAdminRights(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->add_admins:Z

    if-nez v0, :cond_34

    if-eqz v4, :cond_33

    goto :goto_17

    :cond_33
    sget v0, Lorg/telegram/messenger/R$drawable;->permission_locked:I

    goto :goto_18

    :cond_34
    :goto_17
    move v0, v3

    :goto_18
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Cells/TextCheckCell2;->setIcon(I)V

    goto/16 :goto_57

    .line 1972
    :cond_35
    iget-object v5, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetchangeInfoRow(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v5

    const/4 v6, -0x1

    if-ne p2, v5, :cond_42

    .line 1973
    iget-object v5, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetcurrentType(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v5

    if-eqz v5, :cond_3a

    iget-object v5, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetcurrentType(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v5

    if-ne v5, v1, :cond_36

    goto :goto_1c

    .line 1982
    :cond_36
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetcurrentType(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v0

    if-ne v0, v2, :cond_91

    .line 1983
    sget v0, Lorg/telegram/messenger/R$string;->UserRestrictionsChangeInfo:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetbannedRights(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    move-result-object v4

    iget-boolean v4, v4, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->change_info:Z

    if-nez v4, :cond_37

    iget-object v4, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetdefaultBannedRights(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    move-result-object v4

    iget-boolean v4, v4, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->change_info:Z

    if-nez v4, :cond_37

    move v4, v2

    goto :goto_19

    :cond_37
    move v4, v3

    :goto_19
    iget-object v5, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetmanageTopicsRow(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v5

    if-eq v5, v6, :cond_38

    move v5, v2

    goto :goto_1a

    :cond_38
    move v5, v3

    :goto_1a
    invoke-virtual {p1, v0, v4, v5}, Lorg/telegram/ui/Cells/TextCheckCell2;->setTextAndCheck(Ljava/lang/CharSequence;ZZ)V

    .line 1984
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetdefaultBannedRights(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->change_info:Z

    if-eqz v0, :cond_39

    sget v0, Lorg/telegram/messenger/R$drawable;->permission_locked:I

    goto :goto_1b

    :cond_39
    move v0, v3

    :goto_1b
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Cells/TextCheckCell2;->setIcon(I)V

    goto/16 :goto_57

    .line 1974
    :cond_3a
    :goto_1c
    iget-object v5, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetisChannel(Lorg/telegram/ui/ChatRightsEditActivity;)Z

    move-result v5

    if-eqz v5, :cond_3c

    .line 1975
    sget v5, Lorg/telegram/messenger/R$string;->EditAdminChangeChannelInfo:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v0, :cond_3b

    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetadminRights(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->change_info:Z

    if-eqz v0, :cond_3b

    move v0, v2

    goto :goto_1d

    :cond_3b
    move v0, v3

    :goto_1d
    invoke-virtual {p1, v5, v0, v2}, Lorg/telegram/ui/Cells/TextCheckCell2;->setTextAndCheck(Ljava/lang/CharSequence;ZZ)V

    goto :goto_1f

    .line 1977
    :cond_3c
    sget v5, Lorg/telegram/messenger/R$string;->EditAdminChangeGroupInfo:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v0, :cond_3d

    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetadminRights(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->change_info:Z

    if-nez v0, :cond_3e

    :cond_3d
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetdefaultBannedRights(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->change_info:Z

    if-nez v0, :cond_3f

    :cond_3e
    move v0, v2

    goto :goto_1e

    :cond_3f
    move v0, v3

    :goto_1e
    invoke-virtual {p1, v5, v0, v2}, Lorg/telegram/ui/Cells/TextCheckCell2;->setTextAndCheck(Ljava/lang/CharSequence;ZZ)V

    .line 1979
    :goto_1f
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetcurrentType(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v0

    if-ne v0, v1, :cond_91

    .line 1980
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetmyAdminRights(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->change_info:Z

    if-nez v0, :cond_41

    if-eqz v4, :cond_40

    goto :goto_20

    :cond_40
    sget v0, Lorg/telegram/messenger/R$drawable;->permission_locked:I

    goto :goto_21

    :cond_41
    :goto_20
    move v0, v3

    :goto_21
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Cells/TextCheckCell2;->setIcon(I)V

    goto/16 :goto_57

    .line 1986
    :cond_42
    iget-object v5, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetpostMessagesRow(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v5

    if-ne p2, v5, :cond_46

    .line 1987
    sget v5, Lorg/telegram/messenger/R$string;->EditAdminPostMessages:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v0, :cond_43

    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetadminRights(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->post_messages:Z

    if-eqz v0, :cond_43

    move v0, v2

    goto :goto_22

    :cond_43
    move v0, v3

    :goto_22
    invoke-virtual {p1, v5, v0, v2}, Lorg/telegram/ui/Cells/TextCheckCell2;->setTextAndCheck(Ljava/lang/CharSequence;ZZ)V

    .line 1988
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetcurrentType(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v0

    if-ne v0, v1, :cond_91

    .line 1989
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetmyAdminRights(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->post_messages:Z

    if-nez v0, :cond_45

    if-eqz v4, :cond_44

    goto :goto_23

    :cond_44
    sget v0, Lorg/telegram/messenger/R$drawable;->permission_locked:I

    goto :goto_24

    :cond_45
    :goto_23
    move v0, v3

    :goto_24
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Cells/TextCheckCell2;->setIcon(I)V

    goto/16 :goto_57

    .line 1991
    :cond_46
    iget-object v5, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetmanageDirectRow(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v5

    if-ne p2, v5, :cond_4a

    .line 1992
    sget v5, Lorg/telegram/messenger/R$string;->EditAdminManageDirect:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v0, :cond_47

    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetadminRights(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->manage_direct_messages:Z

    if-eqz v0, :cond_47

    move v0, v2

    goto :goto_25

    :cond_47
    move v0, v3

    :goto_25
    invoke-virtual {p1, v5, v0, v2}, Lorg/telegram/ui/Cells/TextCheckCell2;->setTextAndCheck(Ljava/lang/CharSequence;ZZ)V

    .line 1993
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetcurrentType(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v0

    if-ne v0, v1, :cond_91

    .line 1994
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetmyAdminRights(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->manage_direct_messages:Z

    if-nez v0, :cond_49

    if-eqz v4, :cond_48

    goto :goto_26

    :cond_48
    sget v0, Lorg/telegram/messenger/R$drawable;->permission_locked:I

    goto :goto_27

    :cond_49
    :goto_26
    move v0, v3

    :goto_27
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Cells/TextCheckCell2;->setIcon(I)V

    goto/16 :goto_57

    .line 1996
    :cond_4a
    iget-object v5, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgeteditMesagesRow(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v5

    if-ne p2, v5, :cond_4e

    .line 1997
    sget v5, Lorg/telegram/messenger/R$string;->EditAdminEditMessages:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v0, :cond_4b

    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetadminRights(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->edit_messages:Z

    if-eqz v0, :cond_4b

    move v0, v2

    goto :goto_28

    :cond_4b
    move v0, v3

    :goto_28
    invoke-virtual {p1, v5, v0, v2}, Lorg/telegram/ui/Cells/TextCheckCell2;->setTextAndCheck(Ljava/lang/CharSequence;ZZ)V

    .line 1998
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetcurrentType(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v0

    if-ne v0, v1, :cond_91

    .line 1999
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetmyAdminRights(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->edit_messages:Z

    if-nez v0, :cond_4d

    if-eqz v4, :cond_4c

    goto :goto_29

    :cond_4c
    sget v0, Lorg/telegram/messenger/R$drawable;->permission_locked:I

    goto :goto_2a

    :cond_4d
    :goto_29
    move v0, v3

    :goto_2a
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Cells/TextCheckCell2;->setIcon(I)V

    goto/16 :goto_57

    .line 2001
    :cond_4e
    iget-object v5, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetdeleteMessagesRow(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v5

    if-ne p2, v5, :cond_54

    .line 2002
    iget-object v5, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetisChannel(Lorg/telegram/ui/ChatRightsEditActivity;)Z

    move-result v5

    if-eqz v5, :cond_50

    .line 2003
    sget v5, Lorg/telegram/messenger/R$string;->EditAdminDeleteMessages:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v0, :cond_4f

    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetadminRights(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->delete_messages:Z

    if-eqz v0, :cond_4f

    move v0, v2

    goto :goto_2b

    :cond_4f
    move v0, v3

    :goto_2b
    invoke-virtual {p1, v5, v0, v2}, Lorg/telegram/ui/Cells/TextCheckCell2;->setTextAndCheck(Ljava/lang/CharSequence;ZZ)V

    goto :goto_2d

    .line 2005
    :cond_50
    sget v5, Lorg/telegram/messenger/R$string;->EditAdminGroupDeleteMessages:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v0, :cond_51

    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetadminRights(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->delete_messages:Z

    if-eqz v0, :cond_51

    move v0, v2

    goto :goto_2c

    :cond_51
    move v0, v3

    :goto_2c
    invoke-virtual {p1, v5, v0, v2}, Lorg/telegram/ui/Cells/TextCheckCell2;->setTextAndCheck(Ljava/lang/CharSequence;ZZ)V

    .line 2007
    :goto_2d
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetcurrentType(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v0

    if-ne v0, v1, :cond_91

    .line 2008
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetmyAdminRights(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->delete_messages:Z

    if-nez v0, :cond_53

    if-eqz v4, :cond_52

    goto :goto_2e

    :cond_52
    sget v0, Lorg/telegram/messenger/R$drawable;->permission_locked:I

    goto :goto_2f

    :cond_53
    :goto_2e
    move v0, v3

    :goto_2f
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Cells/TextCheckCell2;->setIcon(I)V

    goto/16 :goto_57

    .line 2010
    :cond_54
    iget-object v5, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetaddAdminsRow(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v5

    if-ne p2, v5, :cond_5b

    .line 2011
    sget v5, Lorg/telegram/messenger/R$string;->EditAdminAddAdmins:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v0, :cond_55

    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetadminRights(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->add_admins:Z

    if-eqz v0, :cond_55

    move v0, v2

    goto :goto_30

    :cond_55
    move v0, v3

    :goto_30
    iget-object v7, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v7}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetbanUsersRow(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v7

    if-eq v7, v6, :cond_56

    iget-object v7, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v7}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetisChannel(Lorg/telegram/ui/ChatRightsEditActivity;)Z

    move-result v7

    if-nez v7, :cond_57

    :cond_56
    iget-object v7, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v7}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetanonymousRow(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v7

    if-eq v7, v6, :cond_58

    :cond_57
    move v6, v2

    goto :goto_31

    :cond_58
    move v6, v3

    :goto_31
    invoke-virtual {p1, v5, v0, v6}, Lorg/telegram/ui/Cells/TextCheckCell2;->setTextAndCheck(Ljava/lang/CharSequence;ZZ)V

    .line 2012
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetcurrentType(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v0

    if-ne v0, v1, :cond_91

    .line 2013
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetmyAdminRights(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->add_admins:Z

    if-nez v0, :cond_5a

    if-eqz v4, :cond_59

    goto :goto_32

    :cond_59
    sget v0, Lorg/telegram/messenger/R$drawable;->permission_locked:I

    goto :goto_33

    :cond_5a
    :goto_32
    move v0, v3

    :goto_33
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Cells/TextCheckCell2;->setIcon(I)V

    goto/16 :goto_57

    .line 2015
    :cond_5b
    iget-object v5, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetanonymousRow(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v5

    if-ne p2, v5, :cond_60

    .line 2016
    sget v5, Lorg/telegram/messenger/R$string;->EditAdminSendAnonymously:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v0, :cond_5c

    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetadminRights(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->anonymous:Z

    if-eqz v0, :cond_5c

    move v0, v2

    goto :goto_34

    :cond_5c
    move v0, v3

    :goto_34
    iget-object v7, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v7}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetmanageTopicsRow(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v7

    if-eq v7, v6, :cond_5d

    move v6, v2

    goto :goto_35

    :cond_5d
    move v6, v3

    :goto_35
    invoke-virtual {p1, v5, v0, v6}, Lorg/telegram/ui/Cells/TextCheckCell2;->setTextAndCheck(Ljava/lang/CharSequence;ZZ)V

    .line 2017
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetcurrentType(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v0

    if-ne v0, v1, :cond_91

    .line 2018
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetmyAdminRights(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->anonymous:Z

    if-nez v0, :cond_5f

    if-eqz v4, :cond_5e

    goto :goto_36

    :cond_5e
    sget v0, Lorg/telegram/messenger/R$drawable;->permission_locked:I

    goto :goto_37

    :cond_5f
    :goto_36
    move v0, v3

    :goto_37
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Cells/TextCheckCell2;->setIcon(I)V

    goto/16 :goto_57

    .line 2020
    :cond_60
    iget-object v5, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetbanUsersRow(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v5

    if-ne p2, v5, :cond_64

    .line 2021
    sget v5, Lorg/telegram/messenger/R$string;->EditAdminBanUsers:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v0, :cond_61

    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetadminRights(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->ban_users:Z

    if-eqz v0, :cond_61

    move v0, v2

    goto :goto_38

    :cond_61
    move v0, v3

    :goto_38
    invoke-virtual {p1, v5, v0, v2}, Lorg/telegram/ui/Cells/TextCheckCell2;->setTextAndCheck(Ljava/lang/CharSequence;ZZ)V

    .line 2022
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetcurrentType(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v0

    if-ne v0, v1, :cond_91

    .line 2023
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetmyAdminRights(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->ban_users:Z

    if-nez v0, :cond_63

    if-eqz v4, :cond_62

    goto :goto_39

    :cond_62
    sget v0, Lorg/telegram/messenger/R$drawable;->permission_locked:I

    goto :goto_3a

    :cond_63
    :goto_39
    move v0, v3

    :goto_3a
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Cells/TextCheckCell2;->setIcon(I)V

    goto/16 :goto_57

    .line 2025
    :cond_64
    iget-object v5, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetstartVoiceChatRow(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v5

    if-ne p2, v5, :cond_68

    .line 2026
    sget v5, Lorg/telegram/messenger/R$string;->StartVoipChatPermission:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v0, :cond_65

    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetadminRights(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->manage_call:Z

    if-eqz v0, :cond_65

    move v0, v2

    goto :goto_3b

    :cond_65
    move v0, v3

    :goto_3b
    invoke-virtual {p1, v5, v0, v2}, Lorg/telegram/ui/Cells/TextCheckCell2;->setTextAndCheck(Ljava/lang/CharSequence;ZZ)V

    .line 2027
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetcurrentType(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v0

    if-ne v0, v1, :cond_91

    .line 2028
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetmyAdminRights(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->manage_call:Z

    if-nez v0, :cond_67

    if-eqz v4, :cond_66

    goto :goto_3c

    :cond_66
    sget v0, Lorg/telegram/messenger/R$drawable;->permission_locked:I

    goto :goto_3d

    :cond_67
    :goto_3c
    move v0, v3

    :goto_3d
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Cells/TextCheckCell2;->setIcon(I)V

    goto/16 :goto_57

    .line 2030
    :cond_68
    iget-object v5, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetmanageTopicsRow(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v5

    if-ne p2, v5, :cond_71

    .line 2031
    iget-object v5, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetcurrentType(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v5

    if-nez v5, :cond_6a

    .line 2032
    sget v4, Lorg/telegram/messenger/R$string;->ManageTopicsPermission:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v0, :cond_69

    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetadminRights(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->manage_topics:Z

    if-eqz v0, :cond_69

    move v0, v2

    goto :goto_3e

    :cond_69
    move v0, v3

    :goto_3e
    invoke-virtual {p1, v4, v0, v3}, Lorg/telegram/ui/Cells/TextCheckCell2;->setTextAndCheck(Ljava/lang/CharSequence;ZZ)V

    goto/16 :goto_57

    .line 2033
    :cond_6a
    iget-object v5, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetcurrentType(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v5

    if-ne v5, v2, :cond_6d

    .line 2034
    sget v0, Lorg/telegram/messenger/R$string;->CreateTopicsPermission:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetbannedRights(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    move-result-object v4

    iget-boolean v4, v4, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->manage_topics:Z

    if-nez v4, :cond_6b

    iget-object v4, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetdefaultBannedRights(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    move-result-object v4

    iget-boolean v4, v4, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->manage_topics:Z

    if-nez v4, :cond_6b

    move v4, v2

    goto :goto_3f

    :cond_6b
    move v4, v3

    :goto_3f
    invoke-virtual {p1, v0, v4, v3}, Lorg/telegram/ui/Cells/TextCheckCell2;->setTextAndCheck(Ljava/lang/CharSequence;ZZ)V

    .line 2035
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetdefaultBannedRights(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->manage_topics:Z

    if-eqz v0, :cond_6c

    sget v0, Lorg/telegram/messenger/R$drawable;->permission_locked:I

    goto :goto_40

    :cond_6c
    move v0, v3

    :goto_40
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Cells/TextCheckCell2;->setIcon(I)V

    goto/16 :goto_57

    .line 2036
    :cond_6d
    iget-object v5, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetcurrentType(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v5

    if-ne v5, v1, :cond_91

    .line 2037
    sget v5, Lorg/telegram/messenger/R$string;->ManageTopicsPermission:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v0, :cond_6e

    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetadminRights(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->manage_topics:Z

    if-eqz v0, :cond_6e

    move v0, v2

    goto :goto_41

    :cond_6e
    move v0, v3

    :goto_41
    invoke-virtual {p1, v5, v0, v3}, Lorg/telegram/ui/Cells/TextCheckCell2;->setTextAndCheck(Ljava/lang/CharSequence;ZZ)V

    .line 2038
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetmyAdminRights(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->manage_topics:Z

    if-nez v0, :cond_70

    if-eqz v4, :cond_6f

    goto :goto_42

    :cond_6f
    sget v0, Lorg/telegram/messenger/R$drawable;->permission_locked:I

    goto :goto_43

    :cond_70
    :goto_42
    move v0, v3

    :goto_43
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Cells/TextCheckCell2;->setIcon(I)V

    goto/16 :goto_57

    .line 2040
    :cond_71
    iget-object v5, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetaddUsersRow(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v5

    if-ne p2, v5, :cond_7a

    .line 2041
    iget-object v5, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetcurrentType(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v5

    if-nez v5, :cond_73

    .line 2042
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetcurrentChat(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    const/4 v4, 0x3

    invoke-static {v0, v4}, Lorg/telegram/messenger/ChatObject;->isActionBannedByDefault(Lorg/telegram/tgnet/TLRPC$Chat;I)Z

    move-result v0

    if-eqz v0, :cond_72

    .line 2043
    sget v0, Lorg/telegram/messenger/R$string;->EditAdminAddUsers:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetadminRights(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    move-result-object v4

    iget-boolean v4, v4, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->invite_users:Z

    invoke-virtual {p1, v0, v4, v2}, Lorg/telegram/ui/Cells/TextCheckCell2;->setTextAndCheck(Ljava/lang/CharSequence;ZZ)V

    goto/16 :goto_57

    .line 2045
    :cond_72
    sget v0, Lorg/telegram/messenger/R$string;->EditAdminAddUsersViaLink:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetadminRights(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    move-result-object v4

    iget-boolean v4, v4, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->invite_users:Z

    invoke-virtual {p1, v0, v4, v2}, Lorg/telegram/ui/Cells/TextCheckCell2;->setTextAndCheck(Ljava/lang/CharSequence;ZZ)V

    goto/16 :goto_57

    .line 2047
    :cond_73
    iget-object v5, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetcurrentType(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v5

    if-ne v5, v2, :cond_76

    .line 2048
    sget v0, Lorg/telegram/messenger/R$string;->UserRestrictionsInviteUsers:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetbannedRights(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    move-result-object v4

    iget-boolean v4, v4, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->invite_users:Z

    if-nez v4, :cond_74

    iget-object v4, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetdefaultBannedRights(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    move-result-object v4

    iget-boolean v4, v4, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->invite_users:Z

    if-nez v4, :cond_74

    move v4, v2

    goto :goto_44

    :cond_74
    move v4, v3

    :goto_44
    invoke-virtual {p1, v0, v4, v2}, Lorg/telegram/ui/Cells/TextCheckCell2;->setTextAndCheck(Ljava/lang/CharSequence;ZZ)V

    .line 2049
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetdefaultBannedRights(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->invite_users:Z

    if-eqz v0, :cond_75

    sget v0, Lorg/telegram/messenger/R$drawable;->permission_locked:I

    goto :goto_45

    :cond_75
    move v0, v3

    :goto_45
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Cells/TextCheckCell2;->setIcon(I)V

    goto/16 :goto_57

    .line 2050
    :cond_76
    iget-object v5, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetcurrentType(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v5

    if-ne v5, v1, :cond_91

    .line 2051
    sget v5, Lorg/telegram/messenger/R$string;->EditAdminAddUsersViaLink:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v0, :cond_77

    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetadminRights(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->invite_users:Z

    if-eqz v0, :cond_77

    move v0, v2

    goto :goto_46

    :cond_77
    move v0, v3

    :goto_46
    invoke-virtual {p1, v5, v0, v2}, Lorg/telegram/ui/Cells/TextCheckCell2;->setTextAndCheck(Ljava/lang/CharSequence;ZZ)V

    .line 2052
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetmyAdminRights(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->invite_users:Z

    if-nez v0, :cond_79

    if-eqz v4, :cond_78

    goto :goto_47

    :cond_78
    sget v0, Lorg/telegram/messenger/R$drawable;->permission_locked:I

    goto :goto_48

    :cond_79
    :goto_47
    move v0, v3

    :goto_48
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Cells/TextCheckCell2;->setIcon(I)V

    goto/16 :goto_57

    .line 2054
    :cond_7a
    iget-object v5, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetpinMessagesRow(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v5

    if-ne p2, v5, :cond_84

    .line 2055
    iget-object v5, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetcurrentType(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v5

    if-eqz v5, :cond_7e

    iget-object v5, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetcurrentType(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v5

    if-ne v5, v1, :cond_7b

    goto :goto_4b

    .line 2060
    :cond_7b
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetcurrentType(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v0

    if-ne v0, v2, :cond_91

    .line 2061
    sget v0, Lorg/telegram/messenger/R$string;->UserRestrictionsPinMessages:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetbannedRights(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    move-result-object v4

    iget-boolean v4, v4, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->pin_messages:Z

    if-nez v4, :cond_7c

    iget-object v4, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetdefaultBannedRights(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    move-result-object v4

    iget-boolean v4, v4, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->pin_messages:Z

    if-nez v4, :cond_7c

    move v4, v2

    goto :goto_49

    :cond_7c
    move v4, v3

    :goto_49
    invoke-virtual {p1, v0, v4, v2}, Lorg/telegram/ui/Cells/TextCheckCell2;->setTextAndCheck(Ljava/lang/CharSequence;ZZ)V

    .line 2062
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetdefaultBannedRights(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->pin_messages:Z

    if-eqz v0, :cond_7d

    sget v0, Lorg/telegram/messenger/R$drawable;->permission_locked:I

    goto :goto_4a

    :cond_7d
    move v0, v3

    :goto_4a
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Cells/TextCheckCell2;->setIcon(I)V

    goto/16 :goto_57

    .line 2056
    :cond_7e
    :goto_4b
    sget v5, Lorg/telegram/messenger/R$string;->EditAdminPinMessages:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v0, :cond_7f

    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetadminRights(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->pin_messages:Z

    if-nez v0, :cond_80

    :cond_7f
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetdefaultBannedRights(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->pin_messages:Z

    if-nez v0, :cond_81

    :cond_80
    move v0, v2

    goto :goto_4c

    :cond_81
    move v0, v3

    :goto_4c
    invoke-virtual {p1, v5, v0, v2}, Lorg/telegram/ui/Cells/TextCheckCell2;->setTextAndCheck(Ljava/lang/CharSequence;ZZ)V

    .line 2057
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetcurrentType(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v0

    if-ne v0, v1, :cond_91

    .line 2058
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetmyAdminRights(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->pin_messages:Z

    if-nez v0, :cond_83

    if-eqz v4, :cond_82

    goto :goto_4d

    :cond_82
    sget v0, Lorg/telegram/messenger/R$drawable;->permission_locked:I

    goto :goto_4e

    :cond_83
    :goto_4d
    move v0, v3

    :goto_4e
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Cells/TextCheckCell2;->setIcon(I)V

    goto/16 :goto_57

    .line 2064
    :cond_84
    iget-object v5, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgeteditTagsRow(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v5

    if-ne p2, v5, :cond_8e

    .line 2065
    iget-object v5, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetcurrentType(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v5

    if-eqz v5, :cond_88

    iget-object v5, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetcurrentType(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v5

    if-ne v5, v1, :cond_85

    goto :goto_51

    .line 2070
    :cond_85
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetcurrentType(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v0

    if-ne v0, v2, :cond_91

    .line 2071
    sget v0, Lorg/telegram/messenger/R$string;->UserRestrictionsEditTags:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetbannedRights(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    move-result-object v4

    iget-boolean v4, v4, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->edit_rank:Z

    if-nez v4, :cond_86

    iget-object v4, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetdefaultBannedRights(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    move-result-object v4

    iget-boolean v4, v4, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->edit_rank:Z

    if-nez v4, :cond_86

    move v4, v2

    goto :goto_4f

    :cond_86
    move v4, v3

    :goto_4f
    invoke-virtual {p1, v0, v4, v2}, Lorg/telegram/ui/Cells/TextCheckCell2;->setTextAndCheck(Ljava/lang/CharSequence;ZZ)V

    .line 2072
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetdefaultBannedRights(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->edit_rank:Z

    if-eqz v0, :cond_87

    sget v0, Lorg/telegram/messenger/R$drawable;->permission_locked:I

    goto :goto_50

    :cond_87
    move v0, v3

    :goto_50
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Cells/TextCheckCell2;->setIcon(I)V

    goto/16 :goto_57

    .line 2066
    :cond_88
    :goto_51
    sget v5, Lorg/telegram/messenger/R$string;->EditAdminEditTags:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v0, :cond_89

    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetadminRights(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->manage_ranks:Z

    if-nez v0, :cond_8a

    :cond_89
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetdefaultBannedRights(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->edit_rank:Z

    if-nez v0, :cond_8b

    :cond_8a
    move v0, v2

    goto :goto_52

    :cond_8b
    move v0, v3

    :goto_52
    invoke-virtual {p1, v5, v0, v2}, Lorg/telegram/ui/Cells/TextCheckCell2;->setTextAndCheck(Ljava/lang/CharSequence;ZZ)V

    .line 2067
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetcurrentType(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v0

    if-ne v0, v1, :cond_91

    .line 2068
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetmyAdminRights(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->manage_ranks:Z

    if-nez v0, :cond_8d

    if-eqz v4, :cond_8c

    goto :goto_53

    :cond_8c
    sget v0, Lorg/telegram/messenger/R$drawable;->permission_locked:I

    goto :goto_54

    :cond_8d
    :goto_53
    move v0, v3

    :goto_54
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Cells/TextCheckCell2;->setIcon(I)V

    goto :goto_57

    .line 2074
    :cond_8e
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetsendMessagesRow(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v0

    if-ne p2, v0, :cond_91

    .line 2075
    sget v0, Lorg/telegram/messenger/R$string;->UserRestrictionsSend:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetbannedRights(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    move-result-object v4

    iget-boolean v4, v4, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_plain:Z

    if-nez v4, :cond_8f

    iget-object v4, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetdefaultBannedRights(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    move-result-object v4

    iget-boolean v4, v4, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_plain:Z

    if-nez v4, :cond_8f

    move v4, v2

    goto :goto_55

    :cond_8f
    move v4, v3

    :goto_55
    invoke-virtual {p1, v0, v4, v2}, Lorg/telegram/ui/Cells/TextCheckCell2;->setTextAndCheck(Ljava/lang/CharSequence;ZZ)V

    .line 2076
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetdefaultBannedRights(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_plain:Z

    if-eqz v0, :cond_90

    sget v0, Lorg/telegram/messenger/R$drawable;->permission_locked:I

    goto :goto_56

    :cond_90
    move v0, v3

    :goto_56
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Cells/TextCheckCell2;->setIcon(I)V

    .line 2079
    :cond_91
    :goto_57
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetcurrentType(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v0

    if-ne v0, v1, :cond_92

    goto/16 :goto_5c

    .line 2085
    :cond_92
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetsendMessagesRow(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v0

    if-ne p2, v0, :cond_9e

    .line 2086
    iget-object p2, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetbannedRights(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    move-result-object p2

    iget-boolean p2, p2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->view_messages:Z

    if-nez p2, :cond_93

    iget-object p2, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetdefaultBannedRights(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    move-result-object p2

    iget-boolean p2, p2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->view_messages:Z

    if-nez p2, :cond_93

    goto :goto_58

    :cond_93
    move v2, v3

    :goto_58
    invoke-virtual {p1, v2}, Lorg/telegram/ui/Cells/TextCheckCell2;->setEnabled(Z)V

    return-void

    .line 1914
    :pswitch_7
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/HeaderCell;

    if-ne p2, v1, :cond_97

    .line 1916
    iget-object p2, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetcurrentType(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result p2

    if-eq p2, v1, :cond_96

    iget-object p2, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetcurrentUser(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p2

    if-eqz p2, :cond_94

    iget-object p2, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetcurrentUser(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p2

    iget-boolean p2, p2, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-eqz p2, :cond_94

    goto :goto_59

    .line 1918
    :cond_94
    iget-object p2, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetcurrentType(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result p2

    if-nez p2, :cond_95

    .line 1919
    sget p2, Lorg/telegram/messenger/R$string;->EditAdminWhatCanDo:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 1920
    :cond_95
    iget-object p2, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetcurrentType(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result p2

    if-ne p2, v2, :cond_9e

    .line 1921
    sget p2, Lorg/telegram/messenger/R$string;->UserRestrictionsCanDo:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 1917
    :cond_96
    :goto_59
    sget p2, Lorg/telegram/messenger/R$string;->BotRestrictionsCanDo:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 1923
    :cond_97
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetrankHeaderRow(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v0

    if-ne p2, v0, :cond_9e

    .line 1924
    sget p2, Lorg/telegram/messenger/R$string;->EditAdminRank:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 1894
    :pswitch_8
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/TextSettingsCell;

    .line 1895
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetremoveAdminRow(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v0

    if-ne p2, v0, :cond_99

    .line 1896
    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedRegular:I

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextColor(I)V

    .line 1897
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1898
    iget-object p2, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetcurrentType(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result p2

    if-nez p2, :cond_98

    .line 1899
    sget p2, Lorg/telegram/messenger/R$string;->EditAdminRemoveAdmin:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v3}, Lorg/telegram/ui/Cells/TextSettingsCell;->setText(Ljava/lang/CharSequence;Z)V

    return-void

    .line 1900
    :cond_98
    iget-object p2, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetcurrentType(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result p2

    if-ne p2, v2, :cond_9e

    .line 1901
    sget p2, Lorg/telegram/messenger/R$string;->UserRestrictionsBlock:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v3}, Lorg/telegram/ui/Cells/TextSettingsCell;->setText(Ljava/lang/CharSequence;Z)V

    return-void

    .line 1903
    :cond_99
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgettransferOwnerRow(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v0

    if-ne p2, v0, :cond_9e

    .line 1904
    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextColor(I)V

    .line 1905
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1906
    iget-object p2, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetisChannel(Lorg/telegram/ui/ChatRightsEditActivity;)Z

    move-result p2

    if-eqz p2, :cond_9a

    .line 1907
    sget p2, Lorg/telegram/messenger/R$string;->EditAdminChannelTransfer:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v3}, Lorg/telegram/ui/Cells/TextSettingsCell;->setText(Ljava/lang/CharSequence;Z)V

    return-void

    .line 1909
    :cond_9a
    sget p2, Lorg/telegram/messenger/R$string;->EditAdminGroupTransfer:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v3}, Lorg/telegram/ui/Cells/TextSettingsCell;->setText(Ljava/lang/CharSequence;Z)V

    return-void

    .line 1876
    :pswitch_9
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    .line 1877
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetcantEditInfoRow(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v0

    if-ne p2, v0, :cond_9b

    .line 1878
    sget p2, Lorg/telegram/messenger/R$string;->EditAdminCantEdit:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 1879
    :cond_9b
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetrankInfoRow(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v0

    if-ne p2, v0, :cond_9e

    .line 1881
    iget-object p2, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetcurrentUser(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/messenger/UserObject;->isUserSelf(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result p2

    if-eqz p2, :cond_9c

    iget-object p2, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetcurrentChat(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p2

    iget-boolean p2, p2, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    if-eqz p2, :cond_9c

    .line 1882
    sget p2, Lorg/telegram/messenger/R$string;->ChannelCreator:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_5a

    .line 1884
    :cond_9c
    sget p2, Lorg/telegram/messenger/R$string;->ChannelAdmin:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 1887
    :goto_5a
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetcurrentType(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v0

    if-nez v0, :cond_9d

    .line 1888
    sget v0, Lorg/telegram/messenger/R$string;->EditAdminRankInfo:I

    new-array v1, v2, [Ljava/lang/Object;

    aput-object p2, v1, v3

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_5b

    .line 1889
    :cond_9d
    sget p2, Lorg/telegram/messenger/R$string;->EditMemberRankInfo:I

    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetcurrentUser(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    aput-object v0, v1, v3

    invoke-static {p2, v1}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 1886
    :goto_5b
    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    :cond_9e
    :goto_5c
    return-void

    .line 1868
    :pswitch_a
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/UserCell2;

    .line 1870
    iget-object p2, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetcurrentType(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result p2

    const/4 v0, 0x0

    if-ne p2, v1, :cond_9f

    .line 1871
    sget p2, Lorg/telegram/messenger/R$string;->Bot:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_5d

    :cond_9f
    move-object p2, v0

    .line 1873
    :goto_5d
    iget-object v1, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetcurrentUser(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v1

    invoke-virtual {p1, v1, v0, p2, v3}, Lorg/telegram/ui/Cells/UserCell2;->setData(Lorg/telegram/tgnet/TLObject;Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_6
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 13

    const/4 p1, 0x4

    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p2, :pswitch_data_0

    .line 1733
    :pswitch_0
    new-instance p1, Lorg/telegram/ui/Cells/TextSettingsCell;

    iget-object p2, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/TextSettingsCell;-><init>(Landroid/content/Context;)V

    .line 1734
    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    goto/16 :goto_4

    .line 1803
    :pswitch_1
    new-instance v0, Lorg/telegram/ui/Components/TagEditCell;

    iget-object v1, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->mContext:Landroid/content/Context;

    iget-object p1, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatRightsEditActivity;->access$000(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v2

    iget-object p1, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetchatId(Lorg/telegram/ui/ChatRightsEditActivity;)J

    move-result-wide p1

    neg-long v3, p1

    iget-object p1, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatRightsEditActivity;->access$100(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/TagEditCell;-><init>(Landroid/content/Context;IJLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    :goto_0
    move-object p1, v0

    goto/16 :goto_4

    .line 1807
    :pswitch_2
    new-instance p2, Lorg/telegram/ui/Cells/CheckBoxCell;

    iget-object v1, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v2

    const/16 v3, 0x15

    invoke-direct {p2, v1, p1, v3, v2}, Lorg/telegram/ui/Cells/CheckBoxCell;-><init>(Landroid/content/Context;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 1808
    invoke-virtual {p2, v0}, Lorg/telegram/ui/Cells/CheckBoxCell;->setPad(I)V

    .line 1809
    invoke-virtual {p2}, Lorg/telegram/ui/Cells/CheckBoxCell;->getCheckBoxRound()Lorg/telegram/ui/Components/CheckBox2;

    move-result-object p1

    const/16 v1, 0xe

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/CheckBox2;->setDrawBackgroundAsArc(I)V

    .line 1810
    invoke-virtual {p2}, Lorg/telegram/ui/Cells/CheckBoxCell;->getCheckBoxRound()Lorg/telegram/ui/Components/CheckBox2;

    move-result-object p1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_switch2TrackChecked:I

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_radioBackground:I

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_checkboxCheck:I

    invoke-virtual {p1, v1, v2, v3}, Lorg/telegram/ui/Components/CheckBox2;->setColor(III)V

    .line 1811
    invoke-virtual {p2, v0}, Lorg/telegram/ui/Cells/CheckBoxCell;->setEnabled(Z)V

    .line 1813
    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setBackgroundColor(I)V

    :goto_1
    move-object p1, p2

    goto/16 :goto_4

    .line 1753
    :pswitch_3
    iget-object p1, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    new-instance p2, Landroid/widget/FrameLayout;

    iget-object v2, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-static {p1, p2}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fputaddBotButtonContainer(Lorg/telegram/ui/ChatRightsEditActivity;Landroid/widget/FrameLayout;)V

    .line 1754
    iget-object p1, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetaddBotButtonContainer(Lorg/telegram/ui/ChatRightsEditActivity;)Landroid/widget/FrameLayout;

    move-result-object p1

    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1755
    iget-object p1, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    new-instance v2, Landroid/widget/FrameLayout;

    iget-object v3, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-static {p1, v2}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fputaddBotButton(Lorg/telegram/ui/ChatRightsEditActivity;Landroid/widget/FrameLayout;)V

    .line 1756
    iget-object p1, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    new-instance v2, Lorg/telegram/ui/Components/AnimatedTextView;

    iget-object v3, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v0, v1, v1}, Lorg/telegram/ui/Components/AnimatedTextView;-><init>(Landroid/content/Context;ZZZ)V

    invoke-static {p1, v2}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fputaddBotButtonText(Lorg/telegram/ui/ChatRightsEditActivity;Lorg/telegram/ui/Components/AnimatedTextView;)V

    .line 1757
    iget-object p1, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetaddBotButtonText(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/ui/Components/AnimatedTextView;

    move-result-object p1

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/telegram/ui/Components/AnimatedTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1758
    iget-object p1, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetaddBotButtonText(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/ui/Components/AnimatedTextView;

    move-result-object p1

    const/4 v2, -0x1

    invoke-virtual {p1, v2}, Lorg/telegram/ui/Components/AnimatedTextView;->setTextColor(I)V

    .line 1759
    iget-object p1, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetaddBotButtonText(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/ui/Components/AnimatedTextView;

    move-result-object p1

    const/high16 v3, 0x41600000    # 14.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1, v3}, Lorg/telegram/ui/Components/AnimatedTextView;->setTextSize(F)V

    .line 1760
    iget-object p1, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetaddBotButtonText(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/ui/Components/AnimatedTextView;

    move-result-object p1

    const/16 v3, 0x11

    invoke-virtual {p1, v3}, Lorg/telegram/ui/Components/AnimatedTextView;->setGravity(I)V

    .line 1761
    iget-object p1, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetaddBotButtonText(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/ui/Components/AnimatedTextView;

    move-result-object p1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget v5, Lorg/telegram/messenger/R$string;->AddBotButton:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetasAdmin(Lorg/telegram/ui/ChatRightsEditActivity;)Z

    move-result v5

    if-eqz v5, :cond_0

    sget v5, Lorg/telegram/messenger/R$string;->AddBotButtonAsAdmin:I

    :goto_2
    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    :cond_0
    sget v5, Lorg/telegram/messenger/R$string;->AddBotButtonAsMember:I

    goto :goto_2

    :goto_3
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1762
    iget-object p1, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetaddBotButton(Lorg/telegram/ui/ChatRightsEditActivity;)Landroid/widget/FrameLayout;

    move-result-object p1

    iget-object v4, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetaddBotButtonText(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/ui/Components/AnimatedTextView;

    move-result-object v4

    const/4 v5, -0x2

    invoke-static {v5, v5, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {p1, v4, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1763
    iget-object p1, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetaddBotButton(Lorg/telegram/ui/ChatRightsEditActivity;)Landroid/widget/FrameLayout;

    move-result-object p1

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButton:I

    new-array v0, v0, [F

    const/high16 v4, 0x40800000    # 4.0f

    aput v4, v0, v1

    invoke-static {v3, v0}, Lorg/telegram/ui/ActionBar/Theme$AdaptiveRipple;->filledRectByKey(I[F)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1764
    iget-object p1, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetaddBotButton(Lorg/telegram/ui/ChatRightsEditActivity;)Landroid/widget/FrameLayout;

    move-result-object p1

    new-instance v0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1765
    iget-object p1, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetaddBotButtonContainer(Lorg/telegram/ui/ChatRightsEditActivity;)Landroid/widget/FrameLayout;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetaddBotButton(Lorg/telegram/ui/ChatRightsEditActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/high16 v11, 0x41600000    # 14.0f

    const/high16 v12, 0x41600000    # 14.0f

    const/4 v6, -0x1

    const/high16 v7, 0x42400000    # 48.0f

    const/16 v8, 0x77

    const/high16 v9, 0x41600000    # 14.0f

    const/high16 v10, 0x41e00000    # 28.0f

    invoke-static/range {v6 .. v12}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {p1, v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1766
    iget-object p1, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetaddBotButtonContainer(Lorg/telegram/ui/ChatRightsEditActivity;)Landroid/widget/FrameLayout;

    move-result-object p1

    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    invoke-direct {v0, v2, v5}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1767
    new-instance p1, Landroid/view/View;

    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 1768
    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1769
    iget-object p2, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetaddBotButtonContainer(Lorg/telegram/ui/ChatRightsEditActivity;)Landroid/widget/FrameLayout;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 1770
    iget-object p2, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetaddBotButtonContainer(Lorg/telegram/ui/ChatRightsEditActivity;)Landroid/widget/FrameLayout;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 1771
    iget-object p2, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetaddBotButtonContainer(Lorg/telegram/ui/ChatRightsEditActivity;)Landroid/widget/FrameLayout;

    move-result-object p2

    const/4 v5, 0x0

    const/high16 v6, -0x3bb80000    # -800.0f

    const/4 v0, -0x1

    const/high16 v1, 0x44480000    # 800.0f

    const/16 v2, 0x57

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1772
    iget-object p1, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetaddBotButtonContainer(Lorg/telegram/ui/ChatRightsEditActivity;)Landroid/widget/FrameLayout;

    move-result-object p1

    goto/16 :goto_4

    .line 1775
    :pswitch_4
    iget-object p1, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    new-instance p2, Lorg/telegram/ui/Cells/PollEditTextCell;

    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-direct {p2, v0, v1}, Lorg/telegram/ui/Cells/PollEditTextCell;-><init>(Landroid/content/Context;Landroid/view/View$OnClickListener;)V

    invoke-static {p1, p2}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fputrankEditTextCell(Lorg/telegram/ui/ChatRightsEditActivity;Lorg/telegram/ui/Cells/PollEditTextCell;)V

    .line 1776
    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1777
    new-instance p1, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter$1;

    invoke-direct {p1, p0}, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter$1;-><init>(Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;)V

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Cells/PollEditTextCell;->addTextWatcher(Landroid/text/TextWatcher;)V

    goto/16 :goto_1

    .line 1749
    :pswitch_5
    new-instance p1, Lorg/telegram/ui/Cells/TextDetailCell;

    iget-object p2, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/TextDetailCell;-><init>(Landroid/content/Context;)V

    .line 1750
    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_4

    .line 1746
    :pswitch_6
    new-instance p1, Lorg/telegram/ui/Cells/ShadowSectionCell;

    iget-object p2, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/ShadowSectionCell;-><init>(Landroid/content/Context;)V

    goto :goto_4

    .line 1742
    :pswitch_7
    new-instance p1, Lorg/telegram/ui/Cells/TextCheckCell2;

    iget-object p2, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/TextCheckCell2;-><init>(Landroid/content/Context;)V

    .line 1743
    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_4

    .line 1737
    :pswitch_8
    new-instance v0, Lorg/telegram/ui/Cells/HeaderCell;

    iget-object v1, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->mContext:Landroid/content/Context;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueHeader:I

    const/16 v4, 0xf

    const/4 v5, 0x1

    const/16 v3, 0x15

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Cells/HeaderCell;-><init>(Landroid/content/Context;IIIZ)V

    .line 1738
    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    goto/16 :goto_0

    .line 1729
    :pswitch_9
    new-instance p1, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    iget-object p2, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;)V

    goto :goto_4

    .line 1725
    :pswitch_a
    new-instance p2, Lorg/telegram/ui/Cells/UserCell2;

    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, v0, p1, v1}, Lorg/telegram/ui/Cells/UserCell2;-><init>(Landroid/content/Context;II)V

    .line 1726
    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setBackgroundColor(I)V

    goto/16 :goto_1

    .line 1816
    :goto_4
    new-instance p2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_7
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 2

    .line 2136
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetrankHeaderRow(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 2137
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v0, p1}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$msetTextLeft(Lorg/telegram/ui/ChatRightsEditActivity;Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public onViewDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 1

    .line 2143
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetrankRow(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v0

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2144
    iget-object p1, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    :cond_0
    return-void
.end method
