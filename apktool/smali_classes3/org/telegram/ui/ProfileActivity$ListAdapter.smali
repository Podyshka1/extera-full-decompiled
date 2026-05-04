.class Lorg/telegram/ui/ProfileActivity$ListAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ProfileActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lorg/telegram/ui/ProfileActivity;

.field private final usernameSpans:Ljava/util/HashMap;


# direct methods
.method public static synthetic $r8$lambda$36KGOsC1jD41bvI5bdNAYSOo88U(Lorg/telegram/ui/ProfileActivity$ListAdapter;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ProfileActivity$ListAdapter;->lambda$onBindViewHolder$1(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$EQ1NXhHlArJcHfmnVrj_qA3xfrQ(Lorg/telegram/ui/ProfileActivity$ListAdapter;Lorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;ZZZLandroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Lorg/telegram/ui/ProfileActivity$ListAdapter;->lambda$onBindViewHolder$3(Lorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;ZZZLandroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$YJlqganSTl_9vJkL9j_KhRo2nVU(Lorg/telegram/ui/ProfileActivity$ListAdapter;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ProfileActivity$ListAdapter;->lambda$onBindViewHolder$4(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$i_grD5uf1EIMEYinVO6r1zIMEK4(Lorg/telegram/ui/ProfileActivity$ListAdapter;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ProfileActivity$ListAdapter;->lambda$onBindViewHolder$2(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$vdZpjjWxcDA2SljfTzXB9ADtejQ(Lorg/telegram/ui/ProfileActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$monTextDetailCellImageClicked(Lorg/telegram/ui/ProfileActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ygcwiKhFnWo25ZySCwtLrskN7S8(Lorg/telegram/ui/ProfileActivity$ListAdapter;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ProfileActivity$ListAdapter;->lambda$onCreateViewHolder$0(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/ProfileActivity;Landroid/content/Context;)V
    .locals 0

    .line 13544
    iput-object p1, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    .line 14659
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->usernameSpans:Ljava/util/HashMap;

    .line 13545
    iput-object p2, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->mContext:Landroid/content/Context;

    return-void
.end method

.method private alsoUsernamesString(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 6

    if-nez p2, :cond_0

    goto/16 :goto_2

    .line 14624
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 p2, 0x0

    move v1, p2

    .line 14625
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 14627
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_username;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$TL_username;->active:Z

    if-eqz v2, :cond_1

    if-eqz p1, :cond_2

    .line 14628
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_username;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_username;->username:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    add-int/lit8 v2, v1, -0x1

    .line 14630
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move v1, v2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 14633
    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_6

    .line 14634
    new-instance p1, Landroid/text/SpannableStringBuilder;

    invoke-direct {p1}, Landroid/text/SpannableStringBuilder;-><init>()V

    move p3, p2

    .line 14635
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p3, v1, :cond_5

    .line 14636
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_username;

    .line 14637
    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_username;->username:Ljava/lang/String;

    .line 14638
    new-instance v3, Landroid/text/SpannableString;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "@"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 14639
    invoke-virtual {p0, v1}, Lorg/telegram/ui/ProfileActivity$ListAdapter;->makeUsernameLinkSpan(Lorg/telegram/tgnet/TLRPC$TL_username;)Landroid/text/style/ClickableSpan;

    move-result-object v1

    invoke-virtual {v3}, Landroid/text/SpannableString;->length()I

    move-result v2

    const/16 v4, 0x21

    invoke-virtual {v3, v1, p2, v2, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 14640
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    iget-object v2, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messageLinkIn:I

    invoke-virtual {v2, v5}, Lorg/telegram/ui/ProfileActivity;->getThemedColor(I)I

    move-result v5

    invoke-static {v2, v5, p2}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$mdontApplyPeerColor(Lorg/telegram/ui/ProfileActivity;IZ)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v3}, Landroid/text/SpannableString;->length()I

    move-result v2

    invoke-virtual {v3, v1, p2, v2, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 14641
    invoke-virtual {p1, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 14642
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge p3, v1, :cond_4

    .line 14643
    const-string v1, ", "

    invoke-virtual {p1, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_4
    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    .line 14646
    :cond_5
    sget p2, Lorg/telegram/messenger/R$string;->UsernameAlso:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 14647
    new-instance p3, Landroid/text/SpannableStringBuilder;

    invoke-direct {p3, p2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 14649
    const-string v0, "%1$s"

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p2

    if-ltz p2, :cond_6

    add-int/lit8 v0, p2, 0x4

    .line 14651
    invoke-virtual {p3, p2, v0, p1}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_6
    :goto_2
    return-object p3
.end method

.method private synthetic lambda$onBindViewHolder$1(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 2

    .line 13915
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    if-ne v0, p2, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    iget v0, v0, Lorg/telegram/ui/ProfileActivity;->birthdayRow:I

    if-ne v0, p2, :cond_0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 13916
    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/ProfileActivity$ListAdapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onBindViewHolder$2(Z)V
    .locals 1

    .line 14443
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz p1, :cond_0

    sget p1, Lorg/telegram/messenger/R$string;->ProfileBotOpenAppInfoOwnerLink:I

    goto :goto_0

    :cond_0
    sget p1, Lorg/telegram/messenger/R$string;->ProfileBotOpenAppInfoLink:I

    :goto_0
    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$3(Lorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;ZZZLandroid/view/View;)V
    .locals 11

    .line 14562
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$8500(Lorg/telegram/ui/ProfileActivity;)I

    move-result v2

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ProfileActivity;->getDialogId()J

    move-result-wide v3

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$8600(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v10

    move-object v5, p1

    move-object v6, p2

    move v7, p3

    move v8, p4

    move/from16 v9, p5

    invoke-static/range {v1 .. v10}, Lorg/telegram/ui/Components/TagEditCell;->showInfoSheet(Landroid/content/Context;IJLorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;ZZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$4(Landroid/view/View;)V
    .locals 3

    .line 14594
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgethoursShownMine(Lorg/telegram/ui/ProfileActivity;)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    invoke-static {v0, v1}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fputhoursShownMine(Lorg/telegram/ui/ProfileActivity;Z)V

    .line 14595
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgethoursExpanded(Lorg/telegram/ui/ProfileActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 14596
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0, v2}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fputhoursExpanded(Lorg/telegram/ui/ProfileActivity;Z)V

    .line 14598
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$msaveScrollPosition(Lorg/telegram/ui/ProfileActivity;)V

    .line 14599
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 14600
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetlistAdapter(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ProfileActivity$ListAdapter;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetbizHoursRow(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 14601
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    iget v0, p1, Lorg/telegram/ui/ProfileActivity;->savedScrollPosition:I

    if-ltz v0, :cond_1

    .line 14602
    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetlayoutManager(Lorg/telegram/ui/ProfileActivity;)Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    iget v1, v0, Lorg/telegram/ui/ProfileActivity;->savedScrollPosition:I

    iget v2, v0, Lorg/telegram/ui/ProfileActivity;->savedScrollOffset:I

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetlistView(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    sub-int/2addr v2, v0

    invoke-virtual {p1, v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$onCreateViewHolder$0(Landroid/view/View;)V
    .locals 7

    .line 13791
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetuserId(Lorg/telegram/ui/ProfileActivity;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v3

    .line 13792
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getClassGuid()I

    move-result v5

    const/4 v6, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v1 .. v6}, Lorg/telegram/messenger/MessagesController;->openApp(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;ILorg/telegram/messenger/browser/Browser$Progress;)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 14752
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetrowCount(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 2

    .line 14757
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetinfoHeaderRow(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_23

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetmembersHeaderRow(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_23

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetsettingsSectionRow2(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_23

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetnumberSectionRow(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_23

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgethelpHeaderRow(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_23

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetdebugHeaderRow(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_23

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetbotPermissionsHeader(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-ne p1, v0, :cond_0

    goto/16 :goto_8

    .line 14760
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetidDcRow(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_22

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetphoneRow(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_22

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetlocationRow(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_22

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetnumberRow(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_22

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    iget v1, v0, Lorg/telegram/ui/ProfileActivity;->birthdayRow:I

    if-ne p1, v1, :cond_1

    goto/16 :goto_7

    .line 14762
    :cond_1
    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetusernameRow(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_21

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetsetUsernameRow(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-ne p1, v0, :cond_2

    goto/16 :goto_6

    .line 14764
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetnoteRow(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-ne p1, v0, :cond_3

    const/16 p1, 0x1e

    return p1

    .line 14766
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetuserInfoRow(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_20

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetchannelInfoRow(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_20

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetbioRow(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-ne p1, v0, :cond_4

    goto/16 :goto_5

    .line 14768
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetsettingsTimerRow(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1f

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetsettingsKeyRow(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1f

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetreportRow(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1f

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetreportReactionRow(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1f

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetsubscribersRow(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1f

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetsubscribersRequestsRow(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1f

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetadministratorsRow(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1f

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetsettingsRow(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1f

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetblockedUsersRow(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1f

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetaddMemberRow(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1f

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetjoinRow(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1f

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetunblockRow(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1f

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetsendMessageRow(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1f

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetnotificationRow(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1f

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetexteraRow(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1f

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetprivacyRow(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1f

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetlanguageRow(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1f

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetdataRow(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1f

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetchatRow(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1f

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetquestionRow(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1f

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetdevicesRow(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1f

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetfiltersRow(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1f

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetstickersRow(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1f

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetpolicyRow(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1f

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetsendLogsRow(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1f

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetsendLastLogsRow(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1f

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetclearLogsRow(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1f

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetupdateRemoteConfigRow(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1f

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetswitchBackendRow(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1f

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetsetAvatarRow(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1f

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetaddToGroupButtonRow(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1f

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetaddToContactsRow(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1f

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetliteModeRow(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1f

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetpremiumGiftingRow(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1f

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetbusinessRow(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1f

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetbotStarsBalanceRow(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1f

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetbotTonBalanceRow(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1f

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetchannelBalanceRow(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1f

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetbotPermissionLocation(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1f

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetbotPermissionBiometry(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1f

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetbotPermissionEmojiStatus(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1f

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgettonRow(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-ne p1, v0, :cond_5

    goto/16 :goto_4

    .line 14783
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetnotificationsRow(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-ne p1, v0, :cond_6

    const/4 p1, 0x6

    return p1

    .line 14785
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetnowPlayingRow(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-ne p1, v0, :cond_7

    const/16 p1, 0x64

    return p1

    .line 14787
    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetnotificationsSimpleRow(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-ne p1, v0, :cond_8

    const/16 p1, 0x14

    return p1

    .line 14789
    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetlastSectionRow(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1e

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetmembersSectionRow(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1e

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetsecretSettingsSectionRow(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1e

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetsettingsSectionRow(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1e

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetdevicesSectionRow(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1e

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgethelpSectionCell(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1e

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetsetAvatarSectionRow(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1e

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetpasswordSuggestionSectionRow(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1e

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetphoneSuggestionSectionRow(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1e

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetpremiumSectionsRow(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1e

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetreportDividerRow(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1e

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetchannelDividerRow(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1e

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetgraceSuggestionSectionRow(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1e

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetbalanceDividerRow(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1e

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetbotPermissionsDivider(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1e

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetchannelBalanceSectionRow(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1e

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetnowPlayingSectionRow(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-ne p1, v0, :cond_9

    goto/16 :goto_3

    .line 14797
    :cond_9
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetmembersStartRow(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-lt p1, v0, :cond_a

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetmembersEndRow(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-ge p1, v0, :cond_a

    const/16 p1, 0x8

    return p1

    .line 14799
    :cond_a
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetemptyRow(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-ne p1, v0, :cond_b

    const/16 p1, 0xb

    return p1

    .line 14801
    :cond_b
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetemptyRow2(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-ne p1, v0, :cond_c

    const/16 p1, 0x1f

    return p1

    .line 14803
    :cond_c
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetbottomPaddingRow(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-ne p1, v0, :cond_d

    const/16 p1, 0xc

    return p1

    .line 14805
    :cond_d
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetsharedMediaRow(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-ne p1, v0, :cond_e

    const/16 p1, 0xd

    return p1

    .line 14807
    :cond_e
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetversionRow(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-ne p1, v0, :cond_f

    const/16 p1, 0xe

    return p1

    .line 14809
    :cond_f
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetpasswordSuggestionRow(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1d

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetphoneSuggestionRow(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1d

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetgraceSuggestionRow(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-ne p1, v0, :cond_10

    goto/16 :goto_2

    .line 14811
    :cond_10
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetaddToGroupInfoRow(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-ne p1, v0, :cond_11

    const/16 p1, 0x11

    return p1

    .line 14813
    :cond_11
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetpremiumRow(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-ne p1, v0, :cond_12

    const/16 p1, 0x12

    return p1

    .line 14815
    :cond_12
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetstarsRow(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-ne p1, v0, :cond_13

    const/16 p1, 0x18

    return p1

    .line 14817
    :cond_13
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetbizLocationRow(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-ne p1, v0, :cond_14

    const/16 p1, 0x15

    return p1

    .line 14819
    :cond_14
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetbizHoursRow(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-ne p1, v0, :cond_15

    const/16 p1, 0x16

    return p1

    .line 14821
    :cond_15
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetchannelRow(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-ne p1, v0, :cond_16

    const/16 p1, 0x17

    return p1

    .line 14823
    :cond_16
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetbotAppRow(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-ne p1, v0, :cond_17

    const/16 p1, 0x19

    return p1

    .line 14825
    :cond_17
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetinfoSectionRow(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1c

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetinfoAffiliateRow(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-ne p1, v0, :cond_18

    goto :goto_1

    .line 14827
    :cond_18
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetaffiliateRow(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-ne p1, v0, :cond_19

    const/16 p1, 0x1b

    return p1

    .line 14829
    :cond_19
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetinfoHeaderRowEmpty(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1b

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetinfoEndRowEmpty(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-ne p1, v0, :cond_1a

    goto :goto_0

    :cond_1a
    const/4 p1, 0x0

    return p1

    :cond_1b
    :goto_0
    const/16 p1, 0x1c

    return p1

    :cond_1c
    :goto_1
    const/16 p1, 0x1a

    return p1

    :cond_1d
    :goto_2
    const/16 p1, 0xf

    return p1

    :cond_1e
    :goto_3
    const/4 p1, 0x7

    return p1

    :cond_1f
    :goto_4
    const/4 p1, 0x4

    return p1

    :cond_20
    :goto_5
    const/4 p1, 0x3

    return p1

    :cond_21
    :goto_6
    const/16 p1, 0x13

    return p1

    :cond_22
    :goto_7
    const/4 p1, 0x2

    return p1

    :cond_23
    :goto_8
    const/4 p1, 0x1

    return p1
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 4

    .line 14722
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetnotificationRow(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_2

    .line 14723
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    .line 14724
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetnotificationRow(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetnumberRow(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetprivacyRow(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetlanguageRow(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetsetUsernameRow(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetidDcRow(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetbioRow(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetversionRow(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetdataRow(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetchatRow(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetquestionRow(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetdevicesRow(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetfiltersRow(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetstickersRow(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetpolicyRow(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetsendLogsRow(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetsendLastLogsRow(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetexteraRow(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetclearLogsRow(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetupdateRemoteConfigRow(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetswitchBackendRow(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetsetAvatarRow(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetaddToGroupButtonRow(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetpremiumRow(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetpremiumGiftingRow(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetbusinessRow(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetliteModeRow(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    iget v1, v0, Lorg/telegram/ui/ProfileActivity;->birthdayRow:I

    if-eq p1, v1, :cond_1

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetchannelRow(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetstarsRow(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgettonRow(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    return v3

    :cond_1
    :goto_0
    return v2

    .line 14734
    :cond_2
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v1, v0, Lorg/telegram/ui/Cells/UserCell;

    if-eqz v1, :cond_3

    .line 14735
    check-cast v0, Lorg/telegram/ui/Cells/UserCell;

    .line 14736
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/UserCell;->getCurrentObject()Ljava/lang/Object;

    move-result-object v0

    .line 14737
    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v1, :cond_3

    .line 14738
    check-cast v0, Lorg/telegram/tgnet/TLRPC$User;

    .line 14739
    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->isUserSelf(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v0

    if-eqz v0, :cond_3

    return v3

    .line 14744
    :cond_3
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result p1

    if-eq p1, v2, :cond_4

    const/4 v0, 0x5

    if-eq p1, v0, :cond_4

    const/4 v0, 0x7

    if-eq p1, v0, :cond_4

    const/16 v0, 0x1a

    if-eq p1, v0, :cond_4

    const/16 v0, 0x64

    if-eq p1, v0, :cond_4

    const/16 v0, 0xb

    if-eq p1, v0, :cond_4

    const/16 v0, 0x1f

    if-eq p1, v0, :cond_4

    const/16 v0, 0x1c

    if-eq p1, v0, :cond_4

    const/16 v0, 0xc

    if-eq p1, v0, :cond_4

    const/16 v0, 0xd

    if-eq p1, v0, :cond_4

    const/16 v0, 0x9

    if-eq p1, v0, :cond_4

    const/16 v0, 0xa

    if-eq p1, v0, :cond_4

    const/16 v0, 0x19

    if-eq p1, v0, :cond_4

    return v2

    :cond_4
    return v3
.end method

.method public makeUsernameLinkSpan(Lorg/telegram/tgnet/TLRPC$TL_username;)Landroid/text/style/ClickableSpan;
    .locals 2

    .line 14661
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->usernameSpans:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/style/ClickableSpan;

    if-eqz v0, :cond_0

    return-object v0

    .line 14664
    :cond_0
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_username;->username:Ljava/lang/String;

    .line 14665
    new-instance v1, Lorg/telegram/ui/ProfileActivity$ListAdapter$13;

    invoke-direct {v1, p0, p1, v0}, Lorg/telegram/ui/ProfileActivity$ListAdapter$13;-><init>(Lorg/telegram/ui/ProfileActivity$ListAdapter;Lorg/telegram/tgnet/TLRPC$TL_username;Ljava/lang/String;)V

    .line 14709
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->usernameSpans:Ljava/util/HashMap;

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 27

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move/from16 v7, p2

    add-int/lit8 v2, v7, 0x1

    .line 13855
    invoke-virtual {v1}, Lorg/telegram/ui/ProfileActivity$ListAdapter;->getItemCount()I

    move-result v3

    const/16 v4, 0x1a

    const/4 v5, 0x7

    const/16 v6, 0xc

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-ge v2, v3, :cond_0

    .line 13856
    invoke-virtual {v1, v2}, Lorg/telegram/ui/ProfileActivity$ListAdapter;->getItemViewType(I)I

    move-result v3

    if-eq v3, v5, :cond_0

    if-eq v3, v4, :cond_0

    const/16 v10, 0xb

    if-eq v3, v10, :cond_0

    const/16 v10, 0x1c

    if-eq v3, v10, :cond_0

    if-eq v3, v6, :cond_0

    move v3, v9

    goto :goto_0

    :cond_0
    move v3, v8

    .line 13867
    :goto_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v10

    if-eq v10, v9, :cond_c7

    const/16 v12, 0x21

    const/4 v13, 0x2

    const-string v14, ""

    const-wide/16 v16, 0x0

    const/4 v15, 0x0

    if-eq v10, v13, :cond_5

    const-string v11, "\n\n\n"

    const/4 v13, 0x3

    if-eq v10, v13, :cond_85

    const/4 v13, 0x4

    move/from16 v18, v9

    const-string v9, " "

    const/high16 v19, 0x41c00000    # 24.0f

    if-eq v10, v13, :cond_6

    const/4 v13, 0x6

    if-eq v10, v13, :cond_2c

    if-eq v10, v5, :cond_2b

    const/16 v5, 0x8

    if-eq v10, v5, :cond_1c

    if-eq v10, v6, :cond_1b

    const/16 v5, 0xf

    if-eq v10, v5, :cond_18

    const/16 v5, 0x1e

    if-eq v10, v5, :cond_5

    const/16 v5, 0x64

    if-eq v10, v5, :cond_17

    if-eq v10, v4, :cond_9

    const/16 v4, 0x1b

    if-eq v10, v4, :cond_7

    packed-switch v10, :pswitch_data_0

    :cond_1
    :goto_1
    move-object v10, v1

    goto/16 :goto_42

    .line 14608
    :pswitch_0
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Cells/ProfileChannelCell;

    iget-object v2, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    .line 14609
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v3, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetuserInfo(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$UserFull;

    move-result-object v3

    iget-wide v3, v3, Lorg/telegram/tgnet/TLRPC$UserFull;->personal_channel_id:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v2

    .line 14610
    iget-object v3, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    iget-object v3, v3, Lorg/telegram/ui/ProfileActivity;->profileChannelMessageFetcher:Lorg/telegram/ui/Cells/ProfileChannelCell$ChannelMessageFetcher;

    if-eqz v3, :cond_2

    iget-object v15, v3, Lorg/telegram/ui/Cells/ProfileChannelCell$ChannelMessageFetcher;->messageObjects:Ljava/util/ArrayList;

    .line 14608
    :cond_2
    invoke-virtual {v0, v2, v15}, Lorg/telegram/ui/Cells/ProfileChannelCell;->set(Lorg/telegram/tgnet/TLRPC$Chat;Ljava/util/ArrayList;)V

    return-void

    .line 14592
    :pswitch_1
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Business/ProfileHoursCell;

    .line 14593
    new-instance v2, Lorg/telegram/ui/ProfileActivity$ListAdapter$$ExternalSyntheticLambda5;

    invoke-direct {v2, v1}, Lorg/telegram/ui/ProfileActivity$ListAdapter$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/ProfileActivity$ListAdapter;)V

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Business/ProfileHoursCell;->setOnTimezoneSwitchClick(Landroid/view/View$OnClickListener;)V

    .line 14605
    iget-object v2, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetuserInfo(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$UserFull;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetuserInfo(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$UserFull;

    move-result-object v2

    iget-object v15, v2, Lorg/telegram/tgnet/TLRPC$UserFull;->business_work_hours:Lorg/telegram/tgnet/tl/TL_account$TL_businessWorkHours;

    :cond_3
    iget-object v2, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgethoursExpanded(Lorg/telegram/ui/ProfileActivity;)Z

    move-result v2

    iget-object v4, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v4}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgethoursShownMine(Lorg/telegram/ui/ProfileActivity;)Z

    move-result v4

    invoke-virtual {v0, v15, v2, v4, v3}, Lorg/telegram/ui/Business/ProfileHoursCell;->set(Lorg/telegram/tgnet/tl/TL_account$TL_businessWorkHours;ZZZ)V

    return-void

    .line 14589
    :pswitch_2
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Business/ProfileLocationCell;

    iget-object v2, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetuserInfo(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$UserFull;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v2, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetuserInfo(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$UserFull;

    move-result-object v2

    iget-object v15, v2, Lorg/telegram/tgnet/TLRPC$UserFull;->business_location:Lorg/telegram/tgnet/TLRPC$TL_businessLocation;

    :cond_4
    invoke-virtual {v0, v15, v3}, Lorg/telegram/ui/Business/ProfileLocationCell;->set(Lorg/telegram/tgnet/TLRPC$TL_businessLocation;Z)V

    return-void

    .line 14585
    :pswitch_3
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Cells/TextCheckCell;

    .line 14586
    sget v2, Lorg/telegram/messenger/R$string;->Notifications:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget-object v4, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {v4}, Lorg/telegram/ui/ProfileActivity;->getDialogId()J

    move-result-wide v4

    iget-object v6, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v6}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgettopicId(Lorg/telegram/ui/ProfileActivity;)J

    move-result-wide v6

    invoke-virtual {v3, v4, v5, v6, v7}, Lorg/telegram/messenger/MessagesController;->isDialogMuted(JJ)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    invoke-virtual {v0, v2, v3, v8}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/CharSequence;ZZ)V

    return-void

    :cond_5
    :pswitch_4
    move-object v10, v1

    goto/16 :goto_32

    :cond_6
    :pswitch_5
    move-object v10, v1

    goto/16 :goto_1b

    .line 14581
    :pswitch_6
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    .line 14582
    sget v2, Lorg/telegram/messenger/R$string;->BotAddToGroupOrChannelInfo:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 14501
    :cond_7
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/bots/AffiliateProgramFragment$ColorfulTextCell;

    .line 14502
    iget-object v2, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_color_green:I

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ProfileActivity;->getThemedColor(I)I

    move-result v2

    sget v3, Lorg/telegram/messenger/R$drawable;->filled_affiliate:I

    sget v4, Lorg/telegram/messenger/R$string;->ProfileBotAffiliateProgram:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v4, v15}, Lorg/telegram/ui/bots/AffiliateProgramFragment$ColorfulTextCell;->set(IILjava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 14503
    iget-object v2, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetuserInfo(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$UserFull;

    move-result-object v2

    if-eqz v2, :cond_8

    iget-object v2, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetuserInfo(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$UserFull;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$UserFull;->starref_program:Lorg/telegram/tgnet/tl/TL_payments$starRefProgram;

    if-eqz v2, :cond_8

    iget-object v2, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetuserInfo(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$UserFull;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$UserFull;->starref_program:Lorg/telegram/tgnet/tl/TL_payments$starRefProgram;

    iget v2, v2, Lorg/telegram/tgnet/tl/TL_payments$starRefProgram;->commission_permille:I

    invoke-static {v2}, Lorg/telegram/ui/bots/AffiliateProgramFragment;->percents(I)Ljava/lang/CharSequence;

    move-result-object v15

    :cond_8
    invoke-virtual {v0, v15}, Lorg/telegram/ui/bots/AffiliateProgramFragment$ColorfulTextCell;->setPercent(Ljava/lang/CharSequence;)V

    return-void

    .line 14429
    :cond_9
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object v2, v0

    check-cast v2, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    .line 14430
    invoke-virtual {v2, v15}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setLinkTextRippleColor(Ljava/lang/Integer;)V

    .line 14431
    iget-object v0, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetinfoSectionRow(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-ne v7, v0, :cond_13

    .line 14432
    iget-object v0, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ProfileActivity;->getDialogId()J

    move-result-wide v3

    .line 14433
    iget-object v0, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Lorg/telegram/messenger/MessagesController;->getUserOrChat(J)Lorg/telegram/tgnet/TLObject;

    .line 14434
    iget-object v0, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetuserInfo(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$UserFull;

    move-result-object v0

    if-eqz v0, :cond_a

    iget-object v0, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetuserInfo(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$UserFull;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$UserFull;->bot_verification:Lorg/telegram/tgnet/tl/TL_bots$botVerification;

    goto :goto_2

    :cond_a
    iget-object v0, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetchatInfo(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v0

    if-eqz v0, :cond_b

    iget-object v0, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetchatInfo(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->bot_verification:Lorg/telegram/tgnet/tl/TL_bots$botVerification;

    goto :goto_2

    :cond_b
    move-object v0, v15

    .line 14435
    :goto_2
    iget-object v3, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetbotAppRow(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    if-gez v3, :cond_d

    if-eqz v0, :cond_c

    goto :goto_3

    .line 14485
    :cond_c
    invoke-virtual {v2, v6}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setFixedSize(I)V

    .line 14486
    invoke-virtual {v2, v15}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 14436
    :cond_d
    :goto_3
    invoke-virtual {v2, v8}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setFixedSize(I)V

    .line 14437
    iget-object v3, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget-object v4, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v4}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetuserId(Lorg/telegram/ui/ProfileActivity;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v3

    if-eqz v3, :cond_e

    .line 14438
    iget-boolean v4, v3, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-eqz v4, :cond_e

    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$User;->bot_can_edit:Z

    if-eqz v3, :cond_e

    move/from16 v3, v18

    goto :goto_4

    :cond_e
    move v3, v8

    .line 14439
    :goto_4
    new-instance v4, Landroid/text/SpannableStringBuilder;

    invoke-direct {v4}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 14441
    iget-object v5, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v5}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetbotAppRow(Lorg/telegram/ui/ProfileActivity;)I

    move-result v5

    if-ltz v5, :cond_10

    if-eqz v3, :cond_f

    .line 14442
    sget v5, Lorg/telegram/messenger/R$string;->ProfileBotOpenAppInfoOwner:I

    goto :goto_5

    :cond_f
    sget v5, Lorg/telegram/messenger/R$string;->ProfileBotOpenAppInfo:I

    :goto_5
    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lorg/telegram/ui/ProfileActivity$ListAdapter$$ExternalSyntheticLambda3;

    invoke-direct {v6, v1, v3}, Lorg/telegram/ui/ProfileActivity$ListAdapter$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/ProfileActivity$ListAdapter;Z)V

    invoke-static {v5, v6}, Lorg/telegram/messenger/AndroidUtilities;->replaceSingleTag(Ljava/lang/String;Ljava/lang/Runnable;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    if-eqz v0, :cond_10

    .line 14446
    invoke-virtual {v4, v11}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_10
    if-eqz v0, :cond_12

    .line 14450
    const-string/jumbo v3, "x"

    invoke-virtual {v4, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 14451
    new-instance v3, Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    iget-wide v5, v0, Lorg/telegram/tgnet/tl/TL_bots$botVerification;->icon:J

    invoke-virtual {v2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->getTextView()Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v7

    invoke-direct {v3, v5, v6, v7}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;-><init>(JLandroid/graphics/Paint$FontMetricsInt;)V

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    invoke-virtual {v4, v3, v5, v6, v12}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 14452
    invoke-virtual {v4, v9}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 14453
    new-instance v3, Landroid/text/SpannableString;

    iget-object v0, v0, Lorg/telegram/tgnet/tl/TL_bots$botVerification;->description:Ljava/lang/String;

    invoke-direct {v3, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    move/from16 v5, v18

    .line 14455
    :try_start_0
    invoke-static {v3, v5, v8, v8}, Lorg/telegram/messenger/AndroidUtilities;->addLinksSafe(Landroid/text/Spannable;IZZ)Z

    .line 14456
    invoke-virtual {v3}, Landroid/text/SpannableString;->length()I

    move-result v0

    const-class v5, Landroid/text/style/URLSpan;

    invoke-virtual {v3, v8, v0, v5}, Landroid/text/SpannableString;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/URLSpan;

    .line 14457
    :goto_6
    array-length v5, v0

    if-ge v8, v5, :cond_11

    .line 14458
    aget-object v5, v0, v8

    .line 14459
    invoke-virtual {v3, v5}, Landroid/text/SpannableString;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    .line 14460
    invoke-virtual {v3, v5}, Landroid/text/SpannableString;->getSpanEnd(Ljava/lang/Object;)I

    move-result v7

    .line 14461
    invoke-virtual {v5}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v9

    .line 14463
    invoke-virtual {v3, v5}, Landroid/text/SpannableString;->removeSpan(Ljava/lang/Object;)V

    .line 14464
    new-instance v5, Lorg/telegram/ui/ProfileActivity$ListAdapter$12;

    invoke-direct {v5, v1, v9, v9}, Lorg/telegram/ui/ProfileActivity$ListAdapter$12;-><init>(Lorg/telegram/ui/ProfileActivity$ListAdapter;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v5, v6, v7, v12}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    :catch_0
    move-exception v0

    .line 14477
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 14479
    :cond_11
    invoke-virtual {v4, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 14482
    :cond_12
    iget-object v0, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText4:I

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ProfileActivity;->getThemedColor(I)I

    move-result v0

    const v3, 0x3e4ccccd    # 0.2f

    invoke-static {v0, v3}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setLinkTextRippleColor(Ljava/lang/Integer;)V

    .line 14483
    invoke-virtual {v2, v4}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 14488
    :cond_13
    iget-object v0, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetinfoAffiliateRow(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-ne v7, v0, :cond_1

    .line 14489
    iget-object v0, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v3, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetuserId(Lorg/telegram/ui/ProfileActivity;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 14490
    iget-boolean v3, v0, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-eqz v3, :cond_15

    iget-boolean v3, v0, Lorg/telegram/tgnet/TLRPC$User;->bot_can_edit:Z

    if-eqz v3, :cond_15

    .line 14491
    invoke-virtual {v2, v8}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setFixedSize(I)V

    .line 14492
    sget v3, Lorg/telegram/messenger/R$string;->ProfileBotAffiliateProgramInfoOwner:I

    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v0

    iget-object v4, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v4}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetuserInfo(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$UserFull;

    move-result-object v4

    if-eqz v4, :cond_14

    iget-object v4, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v4}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetuserInfo(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$UserFull;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$UserFull;->starref_program:Lorg/telegram/tgnet/tl/TL_payments$starRefProgram;

    if-eqz v4, :cond_14

    iget-object v4, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v4}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetuserInfo(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$UserFull;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$UserFull;->starref_program:Lorg/telegram/tgnet/tl/TL_payments$starRefProgram;

    iget v4, v4, Lorg/telegram/tgnet/tl/TL_payments$starRefProgram;->commission_permille:I

    goto :goto_7

    :cond_14
    move v4, v8

    :goto_7
    invoke-static {v4}, Lorg/telegram/ui/bots/AffiliateProgramFragment;->percents(I)Ljava/lang/CharSequence;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v8

    const/16 v18, 0x1

    aput-object v4, v5, v18

    invoke-static {v3, v5}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 14494
    :cond_15
    invoke-virtual {v2, v8}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setFixedSize(I)V

    .line 14495
    sget v3, Lorg/telegram/messenger/R$string;->ProfileBotAffiliateProgramInfo:I

    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v0

    iget-object v4, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v4}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetuserInfo(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$UserFull;

    move-result-object v4

    if-eqz v4, :cond_16

    iget-object v4, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v4}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetuserInfo(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$UserFull;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$UserFull;->starref_program:Lorg/telegram/tgnet/tl/TL_payments$starRefProgram;

    if-eqz v4, :cond_16

    iget-object v4, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v4}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetuserInfo(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$UserFull;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$UserFull;->starref_program:Lorg/telegram/tgnet/tl/TL_payments$starRefProgram;

    iget v4, v4, Lorg/telegram/tgnet/tl/TL_payments$starRefProgram;->commission_permille:I

    goto :goto_8

    :cond_16
    move v4, v8

    :goto_8
    invoke-static {v4}, Lorg/telegram/ui/bots/AffiliateProgramFragment;->percents(I)Ljava/lang/CharSequence;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v8

    const/16 v18, 0x1

    aput-object v4, v5, v18

    invoke-static {v3, v5}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 14356
    :cond_17
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCard;

    .line 14357
    iget-object v2, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetnowPlayingCardData(Lorg/telegram/ui/ProfileActivity;)Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCardData;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 14358
    iget-object v2, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetnowPlayingCardData(Lorg/telegram/ui/ProfileActivity;)Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCardData;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCard;->set(Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCardData;)V

    return-void

    .line 14571
    :cond_18
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Cells/SettingsSuggestionCell;

    .line 14572
    iget-object v2, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetpasswordSuggestionRow(Lorg/telegram/ui/ProfileActivity;)I

    move-result v2

    if-ne v7, v2, :cond_19

    const/4 v5, 0x1

    .line 14573
    invoke-virtual {v0, v5}, Lorg/telegram/ui/Cells/SettingsSuggestionCell;->setType(I)V

    return-void

    .line 14574
    :cond_19
    iget-object v2, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetphoneSuggestionRow(Lorg/telegram/ui/ProfileActivity;)I

    move-result v2

    if-ne v7, v2, :cond_1a

    .line 14575
    invoke-virtual {v0, v8}, Lorg/telegram/ui/Cells/SettingsSuggestionCell;->setType(I)V

    return-void

    .line 14576
    :cond_1a
    iget-object v2, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetgraceSuggestionRow(Lorg/telegram/ui/ProfileActivity;)I

    move-result v2

    if-ne v7, v2, :cond_1

    const/4 v5, 0x2

    .line 14577
    invoke-virtual {v0, v5}, Lorg/telegram/ui/Cells/SettingsSuggestionCell;->setType(I)V

    return-void

    .line 14568
    :cond_1b
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    return-void

    .line 14507
    :cond_1c
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object v9, v0

    check-cast v9, Lorg/telegram/ui/Cells/UserCell;

    .line 14510
    :try_start_1
    iget-object v0, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetvisibleSortedUsers(Lorg/telegram/ui/ProfileActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 14511
    iget-object v0, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetvisibleChatParticipants(Lorg/telegram/ui/ProfileActivity;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v2, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetvisibleSortedUsers(Lorg/telegram/ui/ProfileActivity;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetmembersStartRow(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    sub-int v3, v7, v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    :goto_9
    move-object v15, v0

    goto :goto_b

    :catch_1
    move-exception v0

    goto :goto_a

    .line 14513
    :cond_1d
    iget-object v0, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetvisibleChatParticipants(Lorg/telegram/ui/ProfileActivity;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v2, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetmembersStartRow(Lorg/telegram/ui/ProfileActivity;)I

    move-result v2

    sub-int v2, v7, v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$ChatParticipant;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_9

    .line 14517
    :goto_a
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_b
    if-eqz v15, :cond_1

    .line 14522
    instance-of v0, v15, Lorg/telegram/tgnet/TLRPC$TL_chatChannelParticipant;

    if-eqz v0, :cond_23

    .line 14523
    move-object v0, v15

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_chatChannelParticipant;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_chatChannelParticipant;->channelParticipant:Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    .line 14524
    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->rank:Ljava/lang/String;

    .line 14525
    instance-of v3, v0, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantCreator;

    if-eqz v3, :cond_1f

    .line 14526
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1e

    sget v0, Lorg/telegram/messenger/R$string;->ChannelCreator:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    :cond_1e
    move v0, v8

    const/4 v3, 0x1

    const/4 v4, 0x1

    goto :goto_d

    .line 14530
    :cond_1f
    instance-of v3, v0, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantAdmin;

    if-eqz v3, :cond_22

    .line 14531
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_20

    sget v2, Lorg/telegram/messenger/R$string;->ChannelAdmin:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 14534
    :cond_20
    iget-wide v3, v0, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->promoted_by:J

    iget-object v0, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v5

    cmp-long v0, v3, v5

    if-nez v0, :cond_21

    const/4 v0, 0x1

    goto :goto_c

    :cond_21
    move v0, v8

    :goto_c
    move v4, v8

    const/4 v3, 0x1

    goto :goto_d

    :cond_22
    move v0, v8

    move v3, v0

    move v4, v3

    :goto_d
    move v6, v0

    goto :goto_f

    .line 14541
    :cond_23
    iget-object v2, v15, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->rank:Ljava/lang/String;

    .line 14542
    instance-of v0, v15, Lorg/telegram/tgnet/TLRPC$TL_chatParticipantCreator;

    if-eqz v0, :cond_25

    .line 14543
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_24

    sget v0, Lorg/telegram/messenger/R$string;->ChannelCreator:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    :cond_24
    move v6, v8

    const/4 v3, 0x1

    const/4 v4, 0x1

    goto :goto_f

    .line 14547
    :cond_25
    instance-of v0, v15, Lorg/telegram/tgnet/TLRPC$TL_chatParticipantAdmin;

    if-eqz v0, :cond_28

    .line 14548
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_26

    sget v0, Lorg/telegram/messenger/R$string;->ChannelAdmin:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    .line 14551
    :cond_26
    iget-wide v3, v15, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->inviter_id:J

    iget-object v0, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v5

    cmp-long v0, v3, v5

    if-nez v0, :cond_27

    const/4 v0, 0x1

    goto :goto_e

    :cond_27
    move v0, v8

    :goto_e
    move v6, v0

    move v4, v8

    const/4 v3, 0x1

    goto :goto_f

    :cond_28
    move v3, v8

    move v4, v3

    move v6, v4

    .line 14559
    :goto_f
    iget-object v0, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v10, v15, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    .line 14560
    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->isUserSelf(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v5

    if-eqz v5, :cond_29

    iget-object v5, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    iget-object v10, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v10}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetchatId(Lorg/telegram/ui/ProfileActivity;)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v5, v10}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v5

    invoke-static {v5}, Lorg/telegram/messenger/ChatObject;->canManageMyTag(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v5

    if-eqz v5, :cond_29

    const/4 v10, 0x1

    :goto_10
    move v5, v4

    move v4, v3

    move-object v3, v2

    move-object v2, v0

    goto :goto_11

    :cond_29
    move v10, v8

    goto :goto_10

    .line 14561
    :goto_11
    new-instance v0, Lorg/telegram/ui/ProfileActivity$ListAdapter$$ExternalSyntheticLambda4;

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/ProfileActivity$ListAdapter$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/ProfileActivity$ListAdapter;Lorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;ZZZ)V

    move-object v6, v0

    move-object v0, v2

    move-object v2, v3

    move v3, v4

    move v4, v5

    move v5, v10

    move-object v10, v1

    move-object v1, v9

    invoke-virtual/range {v1 .. v6}, Lorg/telegram/ui/Cells/UserCell;->setAdminRole(Ljava/lang/String;ZZZLandroid/view/View$OnClickListener;)V

    .line 14564
    iget-object v2, v10, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetmembersEndRow(Lorg/telegram/ui/ProfileActivity;)I

    move-result v2

    const/16 v18, 0x1

    add-int/lit8 v2, v2, -0x1

    if-eq v7, v2, :cond_2a

    const/4 v6, 0x1

    goto :goto_12

    :cond_2a
    move v6, v8

    :goto_12
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, v0

    invoke-virtual/range {v1 .. v6}, Lorg/telegram/ui/Cells/UserCell;->setData(Ljava/lang/Object;Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZ)V

    goto/16 :goto_42

    :cond_2b
    move-object v10, v1

    .line 14425
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 14426
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-void

    :cond_2c
    move-object v10, v1

    .line 14362
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Cells/NotificationsCheckCell;

    .line 14363
    iget-object v1, v10, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetnotificationsRow(Lorg/telegram/ui/ProfileActivity;)I

    move-result v1

    if-ne v7, v1, :cond_a4

    .line 14364
    iget-object v1, v10, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$8300(Lorg/telegram/ui/ProfileActivity;)I

    move-result v1

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getNotificationsSettings(I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 14366
    iget-object v2, v10, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetdialogId(Lorg/telegram/ui/ProfileActivity;)J

    move-result-wide v2

    cmp-long v2, v2, v16

    if-eqz v2, :cond_2d

    .line 14367
    iget-object v2, v10, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetdialogId(Lorg/telegram/ui/ProfileActivity;)J

    move-result-wide v2

    goto :goto_13

    .line 14368
    :cond_2d
    iget-object v2, v10, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetuserId(Lorg/telegram/ui/ProfileActivity;)J

    move-result-wide v2

    cmp-long v2, v2, v16

    if-eqz v2, :cond_2e

    .line 14369
    iget-object v2, v10, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetuserId(Lorg/telegram/ui/ProfileActivity;)J

    move-result-wide v2

    goto :goto_13

    .line 14371
    :cond_2e
    iget-object v2, v10, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetchatId(Lorg/telegram/ui/ProfileActivity;)J

    move-result-wide v2

    neg-long v2, v2

    .line 14373
    :goto_13
    iget-object v4, v10, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v4}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgettopicId(Lorg/telegram/ui/ProfileActivity;)J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lorg/telegram/messenger/NotificationsController;->getSharedPrefKey(JJ)Ljava/lang/String;

    move-result-object v4

    .line 14375
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "custom_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 14376
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "notify2_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v6

    .line 14377
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v7, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 14378
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "notifyuntil_"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v4, 0x3

    if-ne v7, v4, :cond_34

    const v4, 0x7fffffff

    if-eq v1, v4, :cond_34

    .line 14381
    iget-object v2, v10, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v2

    sub-int/2addr v1, v2

    if-gtz v1, :cond_30

    if-eqz v5, :cond_2f

    .line 14384
    sget v1, Lorg/telegram/messenger/R$string;->NotificationsCustom:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_14
    move-object v15, v1

    goto :goto_15

    .line 14386
    :cond_2f
    sget v1, Lorg/telegram/messenger/R$string;->NotificationsOn:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_14

    :goto_15
    const/4 v1, 0x1

    goto/16 :goto_1a

    :cond_30
    const/16 v2, 0xe10

    .line 14389
    const-string v3, "WillUnmuteIn"

    if-ge v1, v2, :cond_32

    .line 14390
    sget v2, Lorg/telegram/messenger/R$string;->WillUnmuteIn:I

    div-int/lit8 v1, v1, 0x3c

    new-array v4, v8, [Ljava/lang/Object;

    const-string v5, "Minutes"

    invoke-static {v5, v1, v4}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x1

    new-array v4, v5, [Ljava/lang/Object;

    aput-object v1, v4, v8

    invoke-static {v3, v2, v4}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    :cond_31
    :goto_16
    move v1, v8

    goto/16 :goto_1a

    :cond_32
    const v2, 0x15180

    const/high16 v4, 0x42700000    # 60.0f

    if-ge v1, v2, :cond_33

    .line 14392
    sget v2, Lorg/telegram/messenger/R$string;->WillUnmuteIn:I

    int-to-float v1, v1

    div-float/2addr v1, v4

    div-float/2addr v1, v4

    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v1, v4

    new-array v4, v8, [Ljava/lang/Object;

    const-string v5, "Hours"

    invoke-static {v5, v1, v4}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x1

    new-array v4, v5, [Ljava/lang/Object;

    aput-object v1, v4, v8

    invoke-static {v3, v2, v4}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    goto :goto_16

    :cond_33
    const v2, 0x1e13380

    if-ge v1, v2, :cond_31

    .line 14394
    sget v2, Lorg/telegram/messenger/R$string;->WillUnmuteIn:I

    int-to-float v1, v1

    div-float/2addr v1, v4

    div-float/2addr v1, v4

    div-float v1, v1, v19

    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v1, v4

    new-array v4, v8, [Ljava/lang/Object;

    const-string v5, "Days"

    invoke-static {v5, v1, v4}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x1

    new-array v4, v5, [Ljava/lang/Object;

    aput-object v1, v4, v8

    invoke-static {v3, v2, v4}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    goto :goto_16

    :cond_34
    if-nez v7, :cond_36

    if-eqz v6, :cond_35

    :goto_17
    const/4 v1, 0x1

    goto :goto_18

    .line 14403
    :cond_35
    iget-object v1, v10, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$8400(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/messenger/NotificationsController;

    move-result-object v1

    invoke-virtual {v1, v2, v3, v8, v8}, Lorg/telegram/messenger/NotificationsController;->isGlobalNotificationsEnabled(JZZ)Z

    move-result v1

    goto :goto_18

    :cond_36
    const/4 v1, 0x1

    if-ne v7, v1, :cond_37

    goto :goto_17

    :cond_37
    move v1, v8

    :goto_18
    if-eqz v1, :cond_38

    if-eqz v5, :cond_38

    .line 14409
    sget v2, Lorg/telegram/messenger/R$string;->NotificationsCustom:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v15

    goto :goto_1a

    :cond_38
    if-eqz v1, :cond_39

    .line 14411
    sget v2, Lorg/telegram/messenger/R$string;->NotificationsOn:I

    :goto_19
    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object v15, v2

    goto :goto_1a

    :cond_39
    sget v2, Lorg/telegram/messenger/R$string;->NotificationsOff:I

    goto :goto_19

    :goto_1a
    if-nez v15, :cond_3a

    .line 14415
    sget v2, Lorg/telegram/messenger/R$string;->NotificationsOff:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 14417
    :cond_3a
    iget-object v2, v10, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    iget-object v2, v2, Lorg/telegram/ui/ProfileActivity;->notificationsExceptionTopics:Ljava/util/HashSet;

    if-eqz v2, :cond_3b

    invoke-virtual {v2}, Ljava/util/HashSet;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3b

    .line 14418
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object v3, v10, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    iget-object v3, v3, Lorg/telegram/ui/ProfileActivity;->notificationsExceptionTopics:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v3

    const-string v4, "NotificationTopicExceptionsDesctription"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v10, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    iget-object v4, v4, Lorg/telegram/ui/ProfileActivity;->notificationsExceptionTopics:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v15, v5, v8

    const/16 v18, 0x1

    aput-object v4, v5, v18

    invoke-static {v2, v3, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    .line 14420
    :cond_3b
    iget-object v2, v10, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetfragmentOpened(Lorg/telegram/ui/ProfileActivity;)Z

    move-result v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Cells/NotificationsCheckCell;->setAnimationsEnabled(Z)V

    .line 14421
    sget v2, Lorg/telegram/messenger/R$string;->Notifications:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v10, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetbotAppRow(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    if-ltz v3, :cond_3c

    const/4 v8, 0x1

    :cond_3c
    invoke-virtual {v0, v2, v15, v1, v8}, Lorg/telegram/ui/Cells/NotificationsCheckCell;->setTextAndValueAndCheck(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)V

    return-void

    .line 14150
    :goto_1b
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/Cells/TextCell;

    .line 14151
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayIcon:I

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-virtual {v1, v4, v5}, Lorg/telegram/ui/Cells/TextCell;->setColors(II)V

    .line 14152
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v1, v11}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 14154
    iget-object v11, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v11

    if-eqz v11, :cond_3d

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v7, :cond_3d

    const/4 v0, 0x1

    goto :goto_1c

    :cond_3d
    move v0, v8

    .line 14155
    :goto_1c
    iget-object v11, v10, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v11}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetsettingsTimerRow(Lorg/telegram/ui/ProfileActivity;)I

    move-result v11

    if-ne v7, v11, :cond_3f

    .line 14156
    iget-object v2, v10, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v3, v10, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetdialogId(Lorg/telegram/ui/ProfileActivity;)J

    move-result-wide v3

    invoke-static {v3, v4}, Lorg/telegram/messenger/DialogObject;->getEncryptedChatId(J)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/MessagesController;->getEncryptedChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    move-result-object v2

    .line 14158
    iget v2, v2, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->ttl:I

    if-nez v2, :cond_3e

    .line 14159
    sget v2, Lorg/telegram/messenger/R$string;->ShortMessageLifetimeForever:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1d

    .line 14161
    :cond_3e
    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->formatTTLString(I)Ljava/lang/String;

    move-result-object v2

    .line 14163
    :goto_1d
    sget v3, Lorg/telegram/messenger/R$string;->MessageLifetime:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v2, v8, v8}, Lorg/telegram/ui/Cells/TextCell;->setTextAndValue(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)V

    goto/16 :goto_2c

    .line 14164
    :cond_3f
    iget-object v11, v10, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v11}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetunblockRow(Lorg/telegram/ui/ProfileActivity;)I

    move-result v11

    if-ne v7, v11, :cond_40

    .line 14165
    sget v2, Lorg/telegram/messenger/R$string;->Unblock:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v8}, Lorg/telegram/ui/Cells/TextCell;->setText(Ljava/lang/CharSequence;Z)V

    .line 14166
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedRegular:I

    const/4 v3, -0x1

    invoke-virtual {v1, v3, v2}, Lorg/telegram/ui/Cells/TextCell;->setColors(II)V

    goto/16 :goto_2c

    .line 14167
    :cond_40
    iget-object v11, v10, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v11}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetsettingsKeyRow(Lorg/telegram/ui/ProfileActivity;)I

    move-result v11

    if-ne v7, v11, :cond_41

    .line 14168
    new-instance v2, Lorg/telegram/ui/Components/IdenticonDrawable;

    invoke-direct {v2}, Lorg/telegram/ui/Components/IdenticonDrawable;-><init>()V

    .line 14169
    iget-object v3, v10, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget-object v4, v10, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v4}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetdialogId(Lorg/telegram/ui/ProfileActivity;)J

    move-result-wide v4

    invoke-static {v4, v5}, Lorg/telegram/messenger/DialogObject;->getEncryptedChatId(J)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/MessagesController;->getEncryptedChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    move-result-object v3

    .line 14170
    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/IdenticonDrawable;->setEncryptedChat(Lorg/telegram/tgnet/TLRPC$EncryptedChat;)V

    .line 14171
    sget v3, Lorg/telegram/messenger/R$string;->EncryptionKey:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v2, v8}, Lorg/telegram/ui/Cells/TextCell;->setTextAndValueDrawable(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Z)V

    goto/16 :goto_2c

    .line 14172
    :cond_41
    iget-object v11, v10, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v11}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetjoinRow(Lorg/telegram/ui/ProfileActivity;)I

    move-result v11

    if-ne v7, v11, :cond_43

    .line 14173
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueText2:I

    const/4 v3, -0x1

    invoke-virtual {v1, v3, v2}, Lorg/telegram/ui/Cells/TextCell;->setColors(II)V

    .line 14174
    iget-object v2, v10, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetcurrentChat(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v2

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v2, :cond_42

    .line 14175
    sget v2, Lorg/telegram/messenger/R$string;->ProfileJoinGroup:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v8}, Lorg/telegram/ui/Cells/TextCell;->setText(Ljava/lang/CharSequence;Z)V

    goto/16 :goto_2c

    .line 14177
    :cond_42
    sget v2, Lorg/telegram/messenger/R$string;->ProfileJoinChannel:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v8}, Lorg/telegram/ui/Cells/TextCell;->setText(Ljava/lang/CharSequence;Z)V

    goto/16 :goto_2c

    .line 14179
    :cond_43
    iget-object v11, v10, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v11}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetsubscribersRow(Lorg/telegram/ui/ProfileActivity;)I

    move-result v11

    if-ne v7, v11, :cond_47

    .line 14180
    iget-object v2, v10, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetchatInfo(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v2

    if-eqz v2, :cond_45

    .line 14181
    iget-object v2, v10, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetcurrentChat(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v2

    const/16 v4, 0x2c

    if-eqz v2, :cond_44

    iget-object v2, v10, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetcurrentChat(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v2

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez v2, :cond_44

    .line 14182
    sget v2, Lorg/telegram/messenger/R$string;->ChannelSubscribers:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v5, v10, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v5}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetchatInfo(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v5

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants_count:I

    int-to-long v5, v5

    invoke-static {v5, v6, v4}, Lorg/telegram/messenger/LocaleController;->formatNumber(JC)Ljava/lang/String;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/R$drawable;->msg_groups:I

    invoke-virtual {v1, v2, v4, v5, v3}, Lorg/telegram/ui/Cells/TextCell;->setTextAndValueAndIcon(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZ)V

    goto/16 :goto_2c

    .line 14184
    :cond_44
    sget v2, Lorg/telegram/messenger/R$string;->ChannelMembers:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v5, v10, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v5}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetchatInfo(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v5

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants_count:I

    int-to-long v5, v5

    invoke-static {v5, v6, v4}, Lorg/telegram/messenger/LocaleController;->formatNumber(JC)Ljava/lang/String;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/R$drawable;->msg_groups:I

    invoke-virtual {v1, v2, v4, v5, v3}, Lorg/telegram/ui/Cells/TextCell;->setTextAndValueAndIcon(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZ)V

    goto/16 :goto_2c

    .line 14187
    :cond_45
    iget-object v2, v10, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetcurrentChat(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v2

    if-eqz v2, :cond_46

    iget-object v2, v10, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetcurrentChat(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v2

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez v2, :cond_46

    .line 14188
    sget v2, Lorg/telegram/messenger/R$string;->ChannelSubscribers:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v4, Lorg/telegram/messenger/R$drawable;->msg_groups:I

    invoke-virtual {v1, v2, v4, v3}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/CharSequence;IZ)V

    goto/16 :goto_2c

    .line 14190
    :cond_46
    sget v2, Lorg/telegram/messenger/R$string;->ChannelMembers:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v4, Lorg/telegram/messenger/R$drawable;->msg_groups:I

    invoke-virtual {v1, v2, v4, v3}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/CharSequence;IZ)V

    goto/16 :goto_2c

    .line 14193
    :cond_47
    iget-object v11, v10, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v11}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetsubscribersRequestsRow(Lorg/telegram/ui/ProfileActivity;)I

    move-result v11

    const-string v12, "%d"

    if-ne v7, v11, :cond_48

    .line 14194
    iget-object v2, v10, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetchatInfo(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v2

    if-eqz v2, :cond_84

    .line 14195
    sget v2, Lorg/telegram/messenger/R$string;->SubscribeRequests:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v4, v10, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v4}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetchatInfo(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v4

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$ChatFull;->requests_pending:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v4, v5, v8

    invoke-static {v12, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/R$drawable;->msg_requests:I

    invoke-virtual {v1, v2, v4, v5, v3}, Lorg/telegram/ui/Cells/TextCell;->setTextAndValueAndIcon(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZ)V

    goto/16 :goto_2c

    .line 14197
    :cond_48
    iget-object v11, v10, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v11}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetadministratorsRow(Lorg/telegram/ui/ProfileActivity;)I

    move-result v11

    if-ne v7, v11, :cond_4a

    .line 14198
    iget-object v2, v10, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetchatInfo(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v2

    if-eqz v2, :cond_49

    .line 14199
    sget v2, Lorg/telegram/messenger/R$string;->ChannelAdministrators:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v4, v10, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v4}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetchatInfo(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v4

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$ChatFull;->admins_count:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v4, v5, v8

    invoke-static {v12, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/R$drawable;->msg_admins:I

    invoke-virtual {v1, v2, v4, v5, v3}, Lorg/telegram/ui/Cells/TextCell;->setTextAndValueAndIcon(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZ)V

    goto/16 :goto_2c

    .line 14201
    :cond_49
    sget v2, Lorg/telegram/messenger/R$string;->ChannelAdministrators:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v4, Lorg/telegram/messenger/R$drawable;->msg_admins:I

    invoke-virtual {v1, v2, v4, v3}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/CharSequence;IZ)V

    goto/16 :goto_2c

    .line 14203
    :cond_4a
    iget-object v11, v10, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v11}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetsettingsRow(Lorg/telegram/ui/ProfileActivity;)I

    move-result v11

    if-ne v7, v11, :cond_4b

    .line 14204
    sget v2, Lorg/telegram/messenger/R$string;->ChannelAdminSettings:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v4, Lorg/telegram/messenger/R$drawable;->msg_customize:I

    invoke-virtual {v1, v2, v4, v3}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/CharSequence;IZ)V

    goto/16 :goto_2c

    .line 14205
    :cond_4b
    iget-object v11, v10, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v11}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetchannelBalanceRow(Lorg/telegram/ui/ProfileActivity;)I

    move-result v11

    const-string v13, "XTR "

    const-string v15, "#.##"

    const-wide v21, 0x408f400000000000L    # 1000.0

    const-wide v23, 0x41cdcd6500000000L    # 1.0E9

    const-string v6, "TON "

    if-ne v7, v11, :cond_50

    .line 14206
    iget-object v2, v10, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->access$7700(Lorg/telegram/ui/ProfileActivity;)I

    move-result v2

    invoke-static {v2}, Lorg/telegram/ui/Stars/BotStarsController;->getInstance(I)Lorg/telegram/ui/Stars/BotStarsController;

    move-result-object v2

    iget-object v4, v10, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v4}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetchatId(Lorg/telegram/ui/ProfileActivity;)J

    move-result-wide v4

    neg-long v4, v4

    invoke-virtual {v2, v4, v5}, Lorg/telegram/ui/Stars/BotStarsController;->getBotStarsBalance(J)Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;

    move-result-object v2

    .line 14207
    iget-object v4, v10, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v4}, Lorg/telegram/ui/ProfileActivity;->access$7800(Lorg/telegram/ui/ProfileActivity;)I

    move-result v4

    invoke-static {v4}, Lorg/telegram/ui/Stars/BotStarsController;->getInstance(I)Lorg/telegram/ui/Stars/BotStarsController;

    move-result-object v4

    iget-object v5, v10, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v5}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetchatId(Lorg/telegram/ui/ProfileActivity;)J

    move-result-wide v11

    neg-long v11, v11

    invoke-virtual {v4, v11, v12}, Lorg/telegram/ui/Stars/BotStarsController;->getTONBalance(J)J

    move-result-wide v4

    .line 14208
    new-instance v7, Landroid/text/SpannableStringBuilder;

    invoke-direct {v7}, Landroid/text/SpannableStringBuilder;-><init>()V

    cmp-long v11, v4, v16

    if-lez v11, :cond_4d

    long-to-double v4, v4

    div-double v4, v4, v23

    cmpl-double v11, v4, v21

    if-lez v11, :cond_4c

    .line 14211
    invoke-virtual {v7, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v6

    double-to-int v4, v4

    invoke-static {v4, v8}, Lorg/telegram/messenger/AndroidUtilities;->formatWholeNumber(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_1e

    .line 14213
    :cond_4c
    new-instance v11, Ljava/text/DecimalFormatSymbols;

    sget-object v12, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v11, v12}, Ljava/text/DecimalFormatSymbols;-><init>(Ljava/util/Locale;)V

    const/16 v12, 0x2e

    .line 14214
    invoke-virtual {v11, v12}, Ljava/text/DecimalFormatSymbols;->setDecimalSeparator(C)V

    .line 14215
    new-instance v12, Ljava/text/DecimalFormat;

    invoke-direct {v12, v15, v11}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V

    const/4 v11, 0x2

    .line 14216
    invoke-virtual {v12, v11}, Ljava/text/DecimalFormat;->setMinimumFractionDigits(I)V

    const/4 v11, 0x3

    .line 14217
    invoke-virtual {v12, v11}, Ljava/text/DecimalFormat;->setMaximumFractionDigits(I)V

    .line 14218
    invoke-virtual {v12, v8}, Ljava/text/DecimalFormat;->setGroupingUsed(Z)V

    .line 14219
    invoke-virtual {v7, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v6

    invoke-virtual {v12, v4, v5}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 14222
    :cond_4d
    :goto_1e
    iget-wide v4, v2, Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;->amount:J

    cmp-long v4, v4, v16

    if-lez v4, :cond_4f

    .line 14223
    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_4e

    invoke-virtual {v7, v9}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 14224
    :cond_4e
    invoke-virtual {v7, v13}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    invoke-static {v2}, Lorg/telegram/ui/Stars/StarsIntroActivity;->formatStarsAmountShort(Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 14226
    :cond_4f
    sget v2, Lorg/telegram/messenger/R$string;->ChannelStars:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v4, 0x3f333333    # 0.7f

    invoke-static {v7, v4}, Lorg/telegram/ui/Stars/StarsIntroActivity;->replaceStarsWithPlain(Ljava/lang/CharSequence;F)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/TextCell;->getTextView()Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/telegram/ui/ChannelMonetizationLayout;->replaceTON(Ljava/lang/CharSequence;Landroid/text/TextPaint;)Ljava/lang/CharSequence;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/R$drawable;->menu_feature_paid:I

    invoke-virtual {v1, v2, v4, v5, v3}, Lorg/telegram/ui/Cells/TextCell;->setTextAndValueAndIcon(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZ)V

    goto/16 :goto_2c

    .line 14227
    :cond_50
    iget-object v9, v10, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v9}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetbotStarsBalanceRow(Lorg/telegram/ui/ProfileActivity;)I

    move-result v9

    if-ne v7, v9, :cond_52

    .line 14228
    iget-object v2, v10, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->access$7900(Lorg/telegram/ui/ProfileActivity;)I

    move-result v2

    invoke-static {v2}, Lorg/telegram/ui/Stars/BotStarsController;->getInstance(I)Lorg/telegram/ui/Stars/BotStarsController;

    move-result-object v2

    iget-object v4, v10, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v4}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetuserId(Lorg/telegram/ui/ProfileActivity;)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lorg/telegram/ui/Stars/BotStarsController;->getBotStarsBalance(J)Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;

    move-result-object v2

    .line 14229
    new-instance v4, Landroid/text/SpannableStringBuilder;

    invoke-direct {v4}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 14230
    iget-wide v5, v2, Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;->amount:J

    cmp-long v5, v5, v16

    if-lez v5, :cond_51

    .line 14231
    invoke-virtual {v4, v13}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v5

    invoke-static {v2}, Lorg/telegram/ui/Stars/StarsIntroActivity;->formatStarsAmountShort(Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 14233
    :cond_51
    sget v2, Lorg/telegram/messenger/R$string;->BotBalanceStars:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v5, 0x3f333333    # 0.7f

    invoke-static {v4, v5}, Lorg/telegram/ui/Stars/StarsIntroActivity;->replaceStarsWithPlain(Ljava/lang/CharSequence;F)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/TextCell;->getTextView()Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/telegram/ui/ChannelMonetizationLayout;->replaceTON(Ljava/lang/CharSequence;Landroid/text/TextPaint;)Ljava/lang/CharSequence;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/R$drawable;->menu_premium_main:I

    invoke-virtual {v1, v2, v4, v5, v3}, Lorg/telegram/ui/Cells/TextCell;->setTextAndValueAndIcon(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZ)V

    goto/16 :goto_2c

    .line 14234
    :cond_52
    iget-object v9, v10, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v9}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetbotTonBalanceRow(Lorg/telegram/ui/ProfileActivity;)I

    move-result v9

    if-ne v7, v9, :cond_55

    .line 14235
    iget-object v2, v10, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->access$8000(Lorg/telegram/ui/ProfileActivity;)I

    move-result v2

    invoke-static {v2}, Lorg/telegram/ui/Stars/BotStarsController;->getInstance(I)Lorg/telegram/ui/Stars/BotStarsController;

    move-result-object v2

    iget-object v4, v10, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v4}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetuserId(Lorg/telegram/ui/ProfileActivity;)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lorg/telegram/ui/Stars/BotStarsController;->getTONBalance(J)J

    move-result-wide v4

    .line 14236
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2}, Landroid/text/SpannableStringBuilder;-><init>()V

    cmp-long v7, v4, v16

    if-lez v7, :cond_54

    long-to-double v4, v4

    div-double v4, v4, v23

    cmpl-double v7, v4, v21

    if-lez v7, :cond_53

    .line 14239
    invoke-virtual {v2, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v6

    double-to-int v4, v4

    invoke-static {v4, v8}, Lorg/telegram/messenger/AndroidUtilities;->formatWholeNumber(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_1f

    .line 14241
    :cond_53
    new-instance v7, Ljava/text/DecimalFormatSymbols;

    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v7, v9}, Ljava/text/DecimalFormatSymbols;-><init>(Ljava/util/Locale;)V

    const/16 v12, 0x2e

    .line 14242
    invoke-virtual {v7, v12}, Ljava/text/DecimalFormatSymbols;->setDecimalSeparator(C)V

    .line 14243
    new-instance v9, Ljava/text/DecimalFormat;

    invoke-direct {v9, v15, v7}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V

    const/4 v11, 0x2

    .line 14244
    invoke-virtual {v9, v11}, Ljava/text/DecimalFormat;->setMinimumFractionDigits(I)V

    const/4 v11, 0x3

    .line 14245
    invoke-virtual {v9, v11}, Ljava/text/DecimalFormat;->setMaximumFractionDigits(I)V

    .line 14246
    invoke-virtual {v9, v8}, Ljava/text/DecimalFormat;->setGroupingUsed(Z)V

    .line 14247
    invoke-virtual {v2, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v6

    invoke-virtual {v9, v4, v5}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 14250
    :cond_54
    :goto_1f
    sget v4, Lorg/telegram/messenger/R$string;->BotBalanceTON:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x3f333333    # 0.7f

    invoke-static {v2, v5}, Lorg/telegram/ui/Stars/StarsIntroActivity;->replaceStarsWithPlain(Ljava/lang/CharSequence;F)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/TextCell;->getTextView()Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v5

    invoke-static {v2, v5}, Lorg/telegram/ui/ChannelMonetizationLayout;->replaceTON(Ljava/lang/CharSequence;Landroid/text/TextPaint;)Ljava/lang/CharSequence;

    move-result-object v2

    sget v5, Lorg/telegram/messenger/R$drawable;->msg_ton:I

    invoke-virtual {v1, v4, v2, v5, v3}, Lorg/telegram/ui/Cells/TextCell;->setTextAndValueAndIcon(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZ)V

    goto/16 :goto_2c

    .line 14251
    :cond_55
    iget-object v6, v10, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v6}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetblockedUsersRow(Lorg/telegram/ui/ProfileActivity;)I

    move-result v6

    if-ne v7, v6, :cond_57

    .line 14252
    iget-object v2, v10, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetchatInfo(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v2

    if-eqz v2, :cond_56

    .line 14253
    sget v2, Lorg/telegram/messenger/R$string;->ChannelBlacklist:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v4, v10, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v4}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetchatInfo(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v4

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$ChatFull;->banned_count:I

    iget-object v5, v10, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v5}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetchatInfo(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v5

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$ChatFull;->kicked_count:I

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v4, v5, v8

    invoke-static {v12, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/R$drawable;->msg_user_remove:I

    invoke-virtual {v1, v2, v4, v5, v3}, Lorg/telegram/ui/Cells/TextCell;->setTextAndValueAndIcon(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZ)V

    goto/16 :goto_2c

    .line 14255
    :cond_56
    sget v2, Lorg/telegram/messenger/R$string;->ChannelBlacklist:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v4, Lorg/telegram/messenger/R$drawable;->msg_user_remove:I

    invoke-virtual {v1, v2, v4, v3}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/CharSequence;IZ)V

    goto/16 :goto_2c

    .line 14257
    :cond_57
    iget-object v6, v10, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v6}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetaddMemberRow(Lorg/telegram/ui/ProfileActivity;)I

    move-result v6

    if-ne v7, v6, :cond_5b

    .line 14258
    invoke-virtual {v1, v4, v5}, Lorg/telegram/ui/Cells/TextCell;->setColors(II)V

    .line 14259
    iget-object v4, v10, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v4}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetmembersStartRow(Lorg/telegram/ui/ProfileActivity;)I

    move-result v4

    if-lt v2, v4, :cond_58

    iget-object v4, v10, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v4}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetmembersEndRow(Lorg/telegram/ui/ProfileActivity;)I

    move-result v4

    if-ge v2, v4, :cond_58

    const/4 v2, 0x1

    goto :goto_20

    :cond_58
    move v2, v8

    .line 14260
    :goto_20
    sget v4, Lorg/telegram/messenger/R$string;->AddMember:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/R$drawable;->msg_contact_add:I

    if-nez v3, :cond_5a

    if-eqz v2, :cond_59

    goto :goto_21

    :cond_59
    move v9, v8

    goto :goto_22

    :cond_5a
    :goto_21
    const/4 v9, 0x1

    :goto_22
    invoke-virtual {v1, v4, v5, v9}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/CharSequence;IZ)V

    goto/16 :goto_2c

    .line 14261
    :cond_5b
    iget-object v2, v10, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetsendMessageRow(Lorg/telegram/ui/ProfileActivity;)I

    move-result v2

    if-ne v7, v2, :cond_5c

    .line 14262
    sget v2, Lorg/telegram/messenger/R$string;->SendMessageLocation:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x1

    invoke-virtual {v1, v2, v5}, Lorg/telegram/ui/Cells/TextCell;->setText(Ljava/lang/CharSequence;Z)V

    goto/16 :goto_2c

    .line 14263
    :cond_5c
    iget-object v2, v10, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetaddToContactsRow(Lorg/telegram/ui/ProfileActivity;)I

    move-result v2

    if-ne v7, v2, :cond_5d

    .line 14264
    sget v2, Lorg/telegram/messenger/R$string;->AddToContacts:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v6, Lorg/telegram/messenger/R$drawable;->msg_contact_add:I

    invoke-virtual {v1, v2, v6, v3}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/CharSequence;IZ)V

    .line 14265
    invoke-virtual {v1, v4, v5}, Lorg/telegram/ui/Cells/TextCell;->setColors(II)V

    goto/16 :goto_2c

    .line 14266
    :cond_5d
    iget-object v2, v10, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetreportReactionRow(Lorg/telegram/ui/ProfileActivity;)I

    move-result v2

    if-ne v7, v2, :cond_5f

    .line 14267
    iget-object v2, v10, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v4, v10, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v4}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetreportReactionFromDialogId(Lorg/telegram/ui/ProfileActivity;)J

    move-result-wide v4

    neg-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v2

    if-eqz v2, :cond_5e

    .line 14268
    invoke-static {v2}, Lorg/telegram/messenger/ChatObject;->canBlockUsers(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v2

    if-eqz v2, :cond_5e

    .line 14269
    sget v2, Lorg/telegram/messenger/R$string;->ReportReactionAndBan:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v4, Lorg/telegram/messenger/R$drawable;->msg_block2:I

    invoke-virtual {v1, v2, v4, v3}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/CharSequence;IZ)V

    goto :goto_23

    .line 14271
    :cond_5e
    sget v2, Lorg/telegram/messenger/R$string;->ReportReaction:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v4, Lorg/telegram/messenger/R$drawable;->msg_report:I

    invoke-virtual {v1, v2, v4, v3}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/CharSequence;IZ)V

    .line 14274
    :goto_23
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedBold:I

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedRegular:I

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/Cells/TextCell;->setColors(II)V

    .line 14275
    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/Cells/TextCell;->setColors(II)V

    goto/16 :goto_2c

    .line 14276
    :cond_5f
    iget-object v2, v10, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetreportRow(Lorg/telegram/ui/ProfileActivity;)I

    move-result v2

    if-ne v7, v2, :cond_60

    .line 14277
    sget v2, Lorg/telegram/messenger/R$string;->ReportUserLocation:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v8}, Lorg/telegram/ui/Cells/TextCell;->setText(Ljava/lang/CharSequence;Z)V

    .line 14278
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedRegular:I

    const/4 v3, -0x1

    invoke-virtual {v1, v3, v2}, Lorg/telegram/ui/Cells/TextCell;->setColors(II)V

    .line 14279
    invoke-virtual {v1, v3, v2}, Lorg/telegram/ui/Cells/TextCell;->setColors(II)V

    goto/16 :goto_2c

    .line 14280
    :cond_60
    iget-object v2, v10, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetlanguageRow(Lorg/telegram/ui/ProfileActivity;)I

    move-result v2

    const/16 v3, 0x17

    if-ne v7, v2, :cond_61

    .line 14281
    sget v2, Lorg/telegram/messenger/R$string;->Language:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getCurrentLanguageName()Ljava/lang/String;

    move-result-object v22

    sget v24, Lorg/telegram/messenger/R$drawable;->msg2_language:I

    const/16 v25, 0x0

    const/16 v23, 0x0

    move-object/from16 v20, v1

    invoke-virtual/range {v20 .. v25}, Lorg/telegram/ui/Cells/TextCell;->setTextAndValueAndIcon(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZIZ)V

    .line 14282
    sget-object v2, Lcom/exteragram/messenger/icons/IconManager;->INSTANCE:Lcom/exteragram/messenger/icons/IconManager;

    invoke-virtual {v2, v8}, Lcom/exteragram/messenger/icons/IconManager;->isBasePackOnly(I)Z

    move-result v2

    if-eqz v2, :cond_84

    .line 14283
    invoke-virtual {v1, v3}, Lorg/telegram/ui/Cells/TextCell;->setImageLeft(I)V

    goto/16 :goto_2c

    .line 14284
    :cond_61
    iget-object v2, v10, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetexteraRow(Lorg/telegram/ui/ProfileActivity;)I

    move-result v2

    if-ne v7, v2, :cond_62

    .line 14285
    sget v2, Lorg/telegram/messenger/R$string;->Preferences:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$drawable;->extera_outline:I

    const/4 v5, 0x1

    invoke-virtual {v1, v2, v3, v5}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/CharSequence;IZ)V

    goto/16 :goto_2c

    :cond_62
    const/4 v5, 0x1

    .line 14286
    iget-object v2, v10, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetnotificationRow(Lorg/telegram/ui/ProfileActivity;)I

    move-result v2

    if-ne v7, v2, :cond_63

    .line 14287
    sget v2, Lorg/telegram/messenger/R$string;->NotificationsAndSounds:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$drawable;->msg2_notifications:I

    invoke-virtual {v1, v2, v3, v5}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/CharSequence;IZ)V

    goto/16 :goto_2c

    .line 14288
    :cond_63
    iget-object v2, v10, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetprivacyRow(Lorg/telegram/ui/ProfileActivity;)I

    move-result v2

    if-ne v7, v2, :cond_64

    .line 14289
    sget v2, Lorg/telegram/messenger/R$string;->PrivacySettings:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$drawable;->msg2_secret:I

    invoke-virtual {v1, v2, v3, v5}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/CharSequence;IZ)V

    goto/16 :goto_2c

    .line 14290
    :cond_64
    iget-object v2, v10, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetdataRow(Lorg/telegram/ui/ProfileActivity;)I

    move-result v2

    if-ne v7, v2, :cond_65

    .line 14291
    sget v2, Lorg/telegram/messenger/R$string;->DataSettings:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$drawable;->msg2_data:I

    invoke-virtual {v1, v2, v3, v5}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/CharSequence;IZ)V

    goto/16 :goto_2c

    .line 14292
    :cond_65
    iget-object v2, v10, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetchatRow(Lorg/telegram/ui/ProfileActivity;)I

    move-result v2

    if-ne v7, v2, :cond_66

    .line 14293
    sget v2, Lorg/telegram/messenger/R$string;->ChatSettings:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$drawable;->msg2_discussion:I

    invoke-virtual {v1, v2, v3, v5}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/CharSequence;IZ)V

    goto/16 :goto_2c

    .line 14294
    :cond_66
    iget-object v2, v10, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetfiltersRow(Lorg/telegram/ui/ProfileActivity;)I

    move-result v2

    if-ne v7, v2, :cond_67

    .line 14295
    sget v2, Lorg/telegram/messenger/R$string;->Filters:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$drawable;->msg2_folder:I

    invoke-virtual {v1, v2, v3, v5}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/CharSequence;IZ)V

    goto/16 :goto_2c

    .line 14296
    :cond_67
    iget-object v2, v10, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetstickersRow(Lorg/telegram/ui/ProfileActivity;)I

    move-result v2

    if-ne v7, v2, :cond_68

    .line 14297
    sget v2, Lorg/telegram/messenger/R$string;->StickersName:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$drawable;->msg2_sticker:I

    invoke-virtual {v1, v2, v3, v5}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/CharSequence;IZ)V

    goto/16 :goto_2c

    .line 14298
    :cond_68
    iget-object v2, v10, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetliteModeRow(Lorg/telegram/ui/ProfileActivity;)I

    move-result v2

    if-ne v7, v2, :cond_69

    .line 14299
    sget v2, Lorg/telegram/messenger/R$string;->PowerUsage:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$drawable;->msg2_battery:I

    invoke-virtual {v1, v2, v3, v5}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/CharSequence;IZ)V

    goto/16 :goto_2c

    .line 14300
    :cond_69
    iget-object v2, v10, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetquestionRow(Lorg/telegram/ui/ProfileActivity;)I

    move-result v2

    if-ne v7, v2, :cond_6a

    .line 14301
    sget v2, Lorg/telegram/messenger/R$string;->AskAQuestion:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$drawable;->msg2_ask_question:I

    invoke-virtual {v1, v2, v3, v5}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/CharSequence;IZ)V

    goto/16 :goto_2c

    .line 14302
    :cond_6a
    iget-object v2, v10, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetpolicyRow(Lorg/telegram/ui/ProfileActivity;)I

    move-result v2

    if-ne v7, v2, :cond_6b

    .line 14303
    sget v2, Lorg/telegram/messenger/R$string;->PrivacyPolicy:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$drawable;->msg2_policy:I

    invoke-virtual {v1, v2, v3, v8}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/CharSequence;IZ)V

    goto/16 :goto_2c

    .line 14304
    :cond_6b
    iget-object v2, v10, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetsendLogsRow(Lorg/telegram/ui/ProfileActivity;)I

    move-result v2

    if-ne v7, v2, :cond_6c

    .line 14305
    sget v2, Lorg/telegram/messenger/R$string;->DebugSendLogs:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x1

    invoke-virtual {v1, v2, v5}, Lorg/telegram/ui/Cells/TextCell;->setText(Ljava/lang/CharSequence;Z)V

    goto/16 :goto_2c

    :cond_6c
    const/4 v5, 0x1

    .line 14306
    iget-object v2, v10, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetsendLastLogsRow(Lorg/telegram/ui/ProfileActivity;)I

    move-result v2

    if-ne v7, v2, :cond_6d

    .line 14307
    sget v2, Lorg/telegram/messenger/R$string;->DebugSendLastLogs:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v5}, Lorg/telegram/ui/Cells/TextCell;->setText(Ljava/lang/CharSequence;Z)V

    goto/16 :goto_2c

    .line 14308
    :cond_6d
    iget-object v2, v10, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetclearLogsRow(Lorg/telegram/ui/ProfileActivity;)I

    move-result v2

    if-ne v7, v2, :cond_6e

    .line 14309
    sget v2, Lorg/telegram/messenger/R$string;->DebugClearLogs:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lorg/telegram/messenger/FileLog;->getLogDirSize()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v8}, Lorg/telegram/ui/Cells/TextCell;->setTextAndValue(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    goto/16 :goto_2c

    .line 14310
    :cond_6e
    iget-object v2, v10, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetupdateRemoteConfigRow(Lorg/telegram/ui/ProfileActivity;)I

    move-result v2

    if-ne v7, v2, :cond_6f

    .line 14311
    const-string v2, "Update Remote Config"

    const/4 v5, 0x1

    invoke-virtual {v1, v2, v5}, Lorg/telegram/ui/Cells/TextCell;->setText(Ljava/lang/CharSequence;Z)V

    goto/16 :goto_2c

    :cond_6f
    const/4 v5, 0x1

    .line 14312
    iget-object v2, v10, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetswitchBackendRow(Lorg/telegram/ui/ProfileActivity;)I

    move-result v2

    if-ne v7, v2, :cond_70

    .line 14313
    const-string v2, "Switch Backend"

    invoke-virtual {v1, v2, v5}, Lorg/telegram/ui/Cells/TextCell;->setText(Ljava/lang/CharSequence;Z)V

    goto/16 :goto_2c

    .line 14314
    :cond_70
    iget-object v2, v10, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetdevicesRow(Lorg/telegram/ui/ProfileActivity;)I

    move-result v2

    if-ne v7, v2, :cond_71

    .line 14315
    sget v2, Lorg/telegram/messenger/R$string;->Devices:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$drawable;->msg2_devices:I

    invoke-virtual {v1, v2, v3, v5}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/CharSequence;IZ)V

    goto/16 :goto_2c

    .line 14316
    :cond_71
    iget-object v2, v10, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetsetAvatarRow(Lorg/telegram/ui/ProfileActivity;)I

    move-result v2

    if-ne v7, v2, :cond_72

    .line 14317
    iget-object v2, v10, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetcellCameraDrawable(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v2

    const/16 v3, 0x56

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RLottieDrawable;->setCustomEndFrame(I)Z

    .line 14318
    iget-object v2, v10, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetcellCameraDrawable(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v2

    const/16 v3, 0x55

    invoke-virtual {v2, v3, v8}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(IZ)V

    .line 14319
    sget v2, Lorg/telegram/messenger/R$string;->SetProfilePhoto:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v10, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetcellCameraDrawable(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v8}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Z)V

    .line 14320
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueIcon:I

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueButton:I

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/Cells/TextCell;->setColors(II)V

    .line 14321
    invoke-virtual {v1}, Lorg/telegram/ui/Cells/TextCell;->getImageView()Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v2

    const/high16 v3, 0x41000000    # 8.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {v2, v8, v8, v8, v3}, Landroid/view/View;->setPadding(IIII)V

    const/16 v2, 0xc

    .line 14322
    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/TextCell;->setImageLeft(I)V

    .line 14323
    iget-object v2, v10, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2, v1}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fputsetAvatarCell(Lorg/telegram/ui/ProfileActivity;Lorg/telegram/ui/Cells/TextCell;)V

    goto/16 :goto_2c

    .line 14324
    :cond_72
    iget-object v2, v10, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetaddToGroupButtonRow(Lorg/telegram/ui/ProfileActivity;)I

    move-result v2

    if-ne v7, v2, :cond_73

    .line 14325
    sget v2, Lorg/telegram/messenger/R$string;->AddToGroupOrChannel:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$drawable;->msg_groups_create:I

    invoke-virtual {v1, v2, v3, v8}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/CharSequence;IZ)V

    goto/16 :goto_2c

    .line 14326
    :cond_73
    iget-object v2, v10, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetpremiumRow(Lorg/telegram/ui/ProfileActivity;)I

    move-result v2

    if-ne v7, v2, :cond_74

    .line 14327
    sget v2, Lorg/telegram/messenger/R$string;->TelegramPremium:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$WrapSizeDrawable;

    invoke-static {}, Lorg/telegram/ui/Components/Premium/PremiumGradient;->getInstance()Lorg/telegram/ui/Components/Premium/PremiumGradient;

    move-result-object v5

    iget-object v5, v5, Lorg/telegram/ui/Components/Premium/PremiumGradient;->premiumStarMenuDrawable:Lorg/telegram/ui/Components/Premium/PremiumGradient$InternalDrawable;

    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    invoke-direct {v4, v5, v6, v7}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$WrapSizeDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    const/4 v5, 0x1

    invoke-virtual {v1, v2, v4, v5}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Z)V

    .line 14328
    invoke-virtual {v1, v3}, Lorg/telegram/ui/Cells/TextCell;->setImageLeft(I)V

    goto/16 :goto_2c

    .line 14329
    :cond_74
    iget-object v2, v10, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetstarsRow(Lorg/telegram/ui/ProfileActivity;)I

    move-result v2

    const/16 v4, 0x20

    const v5, 0x3f59999a    # 0.85f

    if-ne v7, v2, :cond_76

    .line 14330
    iget-object v2, v10, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->access$8100(Lorg/telegram/ui/ProfileActivity;)I

    move-result v2

    invoke-static {v2}, Lorg/telegram/ui/Stars/StarsController;->getInstance(I)Lorg/telegram/ui/Stars/StarsController;

    move-result-object v2

    .line 14331
    invoke-virtual {v2}, Lorg/telegram/ui/Stars/StarsController;->getBalance()Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;

    move-result-object v6

    iget-wide v6, v6, Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;->amount:J

    .line 14332
    sget v9, Lorg/telegram/messenger/R$string;->MenuTelegramStars:I

    invoke-static {v9}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2}, Lorg/telegram/ui/Stars/StarsController;->balanceAvailable()Z

    move-result v11

    if-eqz v11, :cond_75

    cmp-long v6, v6, v16

    if-lez v6, :cond_75

    invoke-virtual {v2}, Lorg/telegram/ui/Stars/StarsController;->getBalance()Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;

    move-result-object v2

    invoke-static {v2, v5, v4}, Lorg/telegram/ui/Stars/StarsIntroActivity;->formatStarsAmount(Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;FC)Ljava/lang/CharSequence;

    move-result-object v14

    :cond_75
    new-instance v2, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$WrapSizeDrawable;

    invoke-static {}, Lorg/telegram/ui/Components/Premium/PremiumGradient;->getInstance()Lorg/telegram/ui/Components/Premium/PremiumGradient;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/ui/Components/Premium/PremiumGradient;->goldenStarMenuDrawable:Lorg/telegram/ui/Components/Premium/PremiumGradient$InternalDrawable;

    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-direct {v2, v4, v5, v6}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$WrapSizeDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    const/4 v5, 0x1

    invoke-virtual {v1, v9, v14, v2, v5}, Lorg/telegram/ui/Cells/TextCell;->setTextAndValueAndIcon(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Z)V

    .line 14333
    invoke-virtual {v1, v3}, Lorg/telegram/ui/Cells/TextCell;->setImageLeft(I)V

    goto/16 :goto_2c

    .line 14334
    :cond_76
    iget-object v2, v10, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgettonRow(Lorg/telegram/ui/ProfileActivity;)I

    move-result v2

    if-ne v7, v2, :cond_78

    .line 14335
    iget-object v2, v10, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->access$8200(Lorg/telegram/ui/ProfileActivity;)I

    move-result v2

    invoke-static {v2}, Lorg/telegram/ui/Stars/StarsController;->getTonInstance(I)Lorg/telegram/ui/Stars/StarsController;

    move-result-object v2

    .line 14336
    invoke-virtual {v2}, Lorg/telegram/ui/Stars/StarsController;->getBalance()Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;

    move-result-object v6

    iget-wide v6, v6, Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;->amount:J

    .line 14337
    sget v9, Lorg/telegram/messenger/R$string;->MyTON:I

    invoke-static {v9}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2}, Lorg/telegram/ui/Stars/StarsController;->balanceAvailable()Z

    move-result v11

    if-eqz v11, :cond_77

    cmp-long v6, v6, v16

    if-lez v6, :cond_77

    invoke-virtual {v2}, Lorg/telegram/ui/Stars/StarsController;->getBalance()Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;

    move-result-object v2

    invoke-static {v2, v5, v4}, Lorg/telegram/ui/Stars/StarsIntroActivity;->formatStarsAmount(Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;FC)Ljava/lang/CharSequence;

    move-result-object v14

    :cond_77
    sget v2, Lorg/telegram/messenger/R$drawable;->menu_my_ton:I

    const/4 v5, 0x1

    invoke-virtual {v1, v9, v14, v2, v5}, Lorg/telegram/ui/Cells/TextCell;->setTextAndValueAndIcon(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZ)V

    .line 14338
    invoke-virtual {v1, v3}, Lorg/telegram/ui/Cells/TextCell;->setImageLeft(I)V

    goto/16 :goto_2c

    :cond_78
    const/4 v5, 0x1

    .line 14339
    iget-object v2, v10, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetbusinessRow(Lorg/telegram/ui/ProfileActivity;)I

    move-result v2

    if-ne v7, v2, :cond_79

    .line 14340
    sget v2, Lorg/telegram/messenger/R$string;->TelegramBusiness:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v4, Lorg/telegram/messenger/R$drawable;->menu_shop:I

    invoke-virtual {v1, v2, v4, v5}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/CharSequence;IZ)V

    .line 14341
    invoke-virtual {v1, v3}, Lorg/telegram/ui/Cells/TextCell;->setImageLeft(I)V

    goto/16 :goto_2c

    .line 14342
    :cond_79
    iget-object v2, v10, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetpremiumGiftingRow(Lorg/telegram/ui/ProfileActivity;)I

    move-result v2

    if-ne v7, v2, :cond_7a

    .line 14343
    sget v2, Lorg/telegram/messenger/R$string;->SendAGift:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v4, Lorg/telegram/messenger/R$drawable;->menu_gift:I

    invoke-virtual {v1, v2, v4, v8}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/CharSequence;IZ)V

    .line 14344
    invoke-virtual {v1, v3}, Lorg/telegram/ui/Cells/TextCell;->setImageLeft(I)V

    goto/16 :goto_2c

    .line 14345
    :cond_7a
    iget-object v2, v10, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetbotPermissionLocation(Lorg/telegram/ui/ProfileActivity;)I

    move-result v2

    if-ne v7, v2, :cond_7e

    .line 14346
    sget v2, Lorg/telegram/messenger/R$string;->BotProfilePermissionLocation:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v21

    iget-object v2, v10, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetbotLocation(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/bots/BotLocation;

    move-result-object v2

    if-eqz v2, :cond_7b

    iget-object v2, v10, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetbotLocation(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/bots/BotLocation;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/bots/BotLocation;->granted()Z

    move-result v2

    if-eqz v2, :cond_7b

    const/16 v22, 0x1

    goto :goto_24

    :cond_7b
    move/from16 v22, v8

    :goto_24
    sget v23, Lorg/telegram/messenger/R$drawable;->filled_access_location:I

    iget-object v2, v10, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_color_green:I

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ProfileActivity;->getThemedColor(I)I

    move-result v24

    iget-object v2, v10, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetbotPermissionBiometry(Lorg/telegram/ui/ProfileActivity;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_7c

    const/16 v25, 0x1

    :goto_25
    move-object/from16 v20, v1

    goto :goto_26

    :cond_7c
    move/from16 v25, v8

    goto :goto_25

    :goto_26
    invoke-virtual/range {v20 .. v25}, Lorg/telegram/ui/Cells/TextCell;->setTextAndCheckAndColorfulIcon(Ljava/lang/CharSequence;ZIIZ)V

    :cond_7d
    :goto_27
    move-object/from16 v1, v20

    goto/16 :goto_2c

    :cond_7e
    move-object/from16 v20, v1

    .line 14347
    iget-object v1, v10, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetbotPermissionBiometry(Lorg/telegram/ui/ProfileActivity;)I

    move-result v1

    if-ne v7, v1, :cond_80

    .line 14348
    sget v1, Lorg/telegram/messenger/R$string;->BotProfilePermissionBiometry:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v21

    iget-object v1, v10, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetbotBiometry(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/bots/BotBiometry;

    move-result-object v1

    if-eqz v1, :cond_7f

    iget-object v1, v10, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetbotBiometry(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/bots/BotBiometry;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/bots/BotBiometry;->granted()Z

    move-result v1

    if-eqz v1, :cond_7f

    const/16 v22, 0x1

    goto :goto_28

    :cond_7f
    move/from16 v22, v8

    :goto_28
    sget v23, Lorg/telegram/messenger/R$drawable;->filled_access_fingerprint:I

    iget-object v1, v10, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_color_orange:I

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ProfileActivity;->getThemedColor(I)I

    move-result v24

    const/16 v25, 0x0

    invoke-virtual/range {v20 .. v25}, Lorg/telegram/ui/Cells/TextCell;->setTextAndCheckAndColorfulIcon(Ljava/lang/CharSequence;ZIIZ)V

    goto :goto_27

    .line 14349
    :cond_80
    iget-object v1, v10, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetbotPermissionEmojiStatus(Lorg/telegram/ui/ProfileActivity;)I

    move-result v1

    if-ne v7, v1, :cond_7d

    .line 14350
    sget v1, Lorg/telegram/messenger/R$string;->BotProfilePermissionEmojiStatus:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v21

    iget-object v1, v10, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetuserInfo(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$UserFull;

    move-result-object v1

    if-eqz v1, :cond_81

    iget-object v1, v10, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetuserInfo(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$UserFull;

    move-result-object v1

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$UserFull;->bot_can_manage_emoji_status:Z

    if-eqz v1, :cond_81

    const/16 v22, 0x1

    goto :goto_29

    :cond_81
    move/from16 v22, v8

    :goto_29
    sget v23, Lorg/telegram/messenger/R$drawable;->filled_access_sleeping:I

    iget-object v1, v10, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_color_lightblue:I

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ProfileActivity;->getThemedColor(I)I

    move-result v24

    iget-object v1, v10, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetbotPermissionLocation(Lorg/telegram/ui/ProfileActivity;)I

    move-result v1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_83

    iget-object v1, v10, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetbotPermissionBiometry(Lorg/telegram/ui/ProfileActivity;)I

    move-result v1

    if-eq v1, v3, :cond_82

    goto :goto_2a

    :cond_82
    move/from16 v25, v8

    goto :goto_2b

    :cond_83
    :goto_2a
    const/16 v25, 0x1

    :goto_2b
    invoke-virtual/range {v20 .. v25}, Lorg/telegram/ui/Cells/TextCell;->setTextAndCheckAndColorfulIcon(Ljava/lang/CharSequence;ZIIZ)V

    goto/16 :goto_27

    :cond_84
    :goto_2c
    const/16 v2, 0x10

    .line 14352
    invoke-virtual {v1, v8, v2, v0}, Lorg/telegram/ui/Cells/TextCell;->setDrawLoading(ZIZ)V

    .line 14353
    iget-object v0, v1, Lorg/telegram/ui/Cells/TextCell;->valueTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    iget-object v1, v10, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteValueText:I

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ProfileActivity;->getThemedColor(I)I

    move-result v2

    invoke-static {v1, v2, v8}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$mdontApplyPeerColor(Lorg/telegram/ui/ProfileActivity;IZ)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedTextView;->setTextColor(I)V

    return-void

    :cond_85
    move-object v10, v1

    .line 14122
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Cells/AboutLinkCell;

    .line 14123
    iget-object v1, v10, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetuserInfoRow(Lorg/telegram/ui/ProfileActivity;)I

    move-result v1

    if-ne v7, v1, :cond_87

    .line 14124
    iget-object v1, v10, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetuserInfo(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$UserFull;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$UserFull;->user:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v1, :cond_86

    iget-object v1, v10, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetuserInfo(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$UserFull;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$UserFull;->user:Lorg/telegram/tgnet/TLRPC$User;

    goto :goto_2d

    :cond_86
    iget-object v1, v10, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v2, v10, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetuserInfo(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$UserFull;

    move-result-object v2

    iget-wide v4, v2, Lorg/telegram/tgnet/TLRPC$UserFull;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v1

    .line 14125
    :goto_2d
    iget-object v2, v10, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetuserInfo(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$UserFull;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$UserFull;->about:Ljava/lang/String;

    sget v4, Lorg/telegram/messenger/R$string;->UserBio:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v0, v2, v4, v5, v3}, Lorg/telegram/ui/Cells/AboutLinkCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 14126
    invoke-static {v1}, Lorg/telegram/messenger/UserObject;->isUserSelf(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/AboutLinkCell;->setMoreButtonDisabled(Z)V

    return-void

    .line 14127
    :cond_87
    iget-object v1, v10, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetchannelInfoRow(Lorg/telegram/ui/ProfileActivity;)I

    move-result v1

    if-ne v7, v1, :cond_89

    .line 14128
    iget-object v1, v10, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetchatInfo(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$ChatFull;->about:Ljava/lang/String;

    .line 14129
    :goto_2e
    invoke-virtual {v1, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_88

    .line 14130
    const-string v2, "\n\n"

    invoke-virtual {v1, v11, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2e

    .line 14132
    :cond_88
    sget v2, Lorg/telegram/messenger/R$string;->DescriptionPlaceholder:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x1

    invoke-virtual {v0, v1, v2, v5, v3}, Lorg/telegram/ui/Cells/AboutLinkCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 14133
    invoke-virtual {v0, v8}, Lorg/telegram/ui/Cells/AboutLinkCell;->setMoreButtonDisabled(Z)V

    return-void

    .line 14134
    :cond_89
    iget-object v1, v10, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetbioRow(Lorg/telegram/ui/ProfileActivity;)I

    move-result v1

    if-ne v7, v1, :cond_a4

    .line 14136
    iget-object v1, v10, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetuserInfo(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$UserFull;

    move-result-object v1

    if-eqz v1, :cond_8b

    iget-object v1, v10, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetuserInfo(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$UserFull;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$UserFull;->about:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8a

    goto :goto_2f

    .line 14141
    :cond_8a
    sget v1, Lorg/telegram/messenger/R$string;->UserBio:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$string;->UserBioDetail:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x1

    invoke-virtual {v0, v1, v2, v5, v3}, Lorg/telegram/ui/Cells/AboutLinkCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 14142
    iget-object v1, v10, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1, v15}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fputcurrentBio(Lorg/telegram/ui/ProfileActivity;Ljava/lang/CharSequence;)V

    const/4 v5, 0x1

    goto :goto_31

    .line 14137
    :cond_8b
    :goto_2f
    iget-object v1, v10, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetuserInfo(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$UserFull;

    move-result-object v1

    if-nez v1, :cond_8c

    sget v1, Lorg/telegram/messenger/R$string;->Loading:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_30

    :cond_8c
    iget-object v1, v10, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetuserInfo(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$UserFull;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$UserFull;->about:Ljava/lang/String;

    .line 14138
    :goto_30
    sget v2, Lorg/telegram/messenger/R$string;->UserBio:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x1

    invoke-virtual {v0, v1, v2, v5, v3}, Lorg/telegram/ui/Cells/AboutLinkCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 14139
    iget-object v1, v10, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetuserInfo(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$UserFull;

    move-result-object v2

    if-eqz v2, :cond_8d

    iget-object v2, v10, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetuserInfo(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$UserFull;

    move-result-object v2

    iget-object v15, v2, Lorg/telegram/tgnet/TLRPC$UserFull;->about:Ljava/lang/String;

    :cond_8d
    invoke-static {v1, v15}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fputcurrentBio(Lorg/telegram/ui/ProfileActivity;Ljava/lang/CharSequence;)V

    .line 14144
    :goto_31
    invoke-virtual {v0, v5}, Lorg/telegram/ui/Cells/AboutLinkCell;->setMoreButtonDisabled(Z)V

    return-void

    .line 13894
    :goto_32
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/Cells/TextDetailCell;

    .line 13898
    iget-object v2, v10, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    iget v4, v2, Lorg/telegram/ui/ProfileActivity;->birthdayRow:I

    if-ne v7, v4, :cond_95

    .line 13899
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v4, v10, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v4}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetuserId(Lorg/telegram/ui/ProfileActivity;)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lorg/telegram/messenger/MessagesController;->getUserFull(J)Lorg/telegram/tgnet/TLRPC$UserFull;

    move-result-object v2

    if-eqz v2, :cond_94

    .line 13900
    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$UserFull;->birthday:Lorg/telegram/tgnet/tl/TL_account$TL_birthday;

    if-eqz v4, :cond_94

    .line 13901
    invoke-static {v2}, Lorg/telegram/messenger/BirthdayController;->isToday(Lorg/telegram/tgnet/TLRPC$UserFull;)Z

    move-result v4

    .line 13902
    iget-object v5, v2, Lorg/telegram/tgnet/TLRPC$UserFull;->birthday:Lorg/telegram/tgnet/tl/TL_account$TL_birthday;

    iget v6, v5, Lorg/telegram/tgnet/tl/TL_account$TL_birthday;->flags:I

    const/16 v18, 0x1

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_8e

    const/4 v6, 0x1

    goto :goto_33

    :cond_8e
    move v6, v8

    :goto_33
    if-eqz v6, :cond_8f

    .line 13903
    iget v9, v5, Lorg/telegram/tgnet/tl/TL_account$TL_birthday;->year:I

    iget v11, v5, Lorg/telegram/tgnet/tl/TL_account$TL_birthday;->month:I

    iget v5, v5, Lorg/telegram/tgnet/tl/TL_account$TL_birthday;->day:I

    invoke-static {v9, v11, v5}, Lj$/time/LocalDate;->of(III)Lj$/time/LocalDate;

    move-result-object v5

    invoke-static {}, Lj$/time/LocalDate;->now()Lj$/time/LocalDate;

    move-result-object v9

    invoke-static {v5, v9}, Lj$/time/Period;->between(Lj$/time/LocalDate;Lj$/time/LocalDate;)Lj$/time/Period;

    move-result-object v5

    invoke-virtual {v5}, Lj$/time/Period;->getYears()I

    move-result v11

    goto :goto_34

    :cond_8f
    const/4 v11, -0x1

    .line 13905
    :goto_34
    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$UserFull;->birthday:Lorg/telegram/tgnet/tl/TL_account$TL_birthday;

    invoke-static {v2}, Lorg/telegram/ui/UserInfoActivity;->birthdayString(Lorg/telegram/tgnet/tl/TL_account$TL_birthday;)Ljava/lang/String;

    move-result-object v2

    if-eqz v6, :cond_91

    if-eqz v4, :cond_90

    .line 13908
    const-string v5, "ProfileBirthdayTodayValueYear"

    :goto_35
    const/4 v6, 0x1

    goto :goto_36

    :cond_90
    const-string v5, "ProfileBirthdayValueYear"

    goto :goto_35

    :goto_36
    new-array v9, v6, [Ljava/lang/Object;

    aput-object v2, v9, v8

    invoke-static {v5, v11, v9}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_38

    :cond_91
    const/4 v6, 0x1

    if-eqz v4, :cond_92

    .line 13910
    sget v5, Lorg/telegram/messenger/R$string;->ProfileBirthdayTodayValue:I

    goto :goto_37

    :cond_92
    sget v5, Lorg/telegram/messenger/R$string;->ProfileBirthdayValue:I

    :goto_37
    new-array v9, v6, [Ljava/lang/Object;

    aput-object v2, v9, v8

    invoke-static {v5, v9}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 13913
    :goto_38
    iget-object v5, v1, Lorg/telegram/ui/Cells/TextDetailCell;->textView:Lorg/telegram/ui/Components/spoilers/SpoilersTextView;

    new-instance v6, Lorg/telegram/ui/ProfileActivity$ListAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v6, v10, v0, v7}, Lorg/telegram/ui/ProfileActivity$ListAdapter$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/ProfileActivity$ListAdapter;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    .line 13914
    invoke-static {v2, v5, v6}, Lorg/telegram/messenger/Emoji;->replaceWithRestrictedEmoji(Ljava/lang/CharSequence;Landroid/widget/TextView;Ljava/lang/Runnable;)Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v4, :cond_93

    .line 13919
    sget v2, Lorg/telegram/messenger/R$string;->ProfileBirthdayToday:I

    goto :goto_39

    :cond_93
    sget v2, Lorg/telegram/messenger/R$string;->ProfileBirthday:I

    :goto_39
    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 13913
    invoke-virtual {v1, v0, v2, v3}, Lorg/telegram/ui/Cells/TextDetailCell;->setTextAndValue(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    .line 13923
    iget-object v0, v10, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    iget-boolean v2, v0, Lorg/telegram/ui/ProfileActivity;->myProfile:Z

    if-nez v2, :cond_94

    if-eqz v4, :cond_94

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->premiumPurchaseBlocked()Z

    move-result v0

    if-nez v0, :cond_94

    const/4 v9, 0x1

    goto :goto_3a

    :cond_94
    move v9, v8

    :goto_3a
    move v0, v8

    move v4, v0

    goto/16 :goto_51

    .line 13925
    :cond_95
    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetphoneRow(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    const-string v2, "+"

    if-ne v7, v0, :cond_9b

    .line 13927
    iget-object v0, v10, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v4, v10, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v4}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetuserId(Lorg/telegram/ui/ProfileActivity;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    if-eqz v0, :cond_96

    .line 13929
    iget-object v4, v10, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v4}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetvcardPhone(Lorg/telegram/ui/ProfileActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_96

    .line 13930
    invoke-static {}, Lorg/telegram/PhoneFormat/PhoneFormat;->getInstance()Lorg/telegram/PhoneFormat/PhoneFormat;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v10, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetvcardPhone(Lorg/telegram/ui/ProfileActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/PhoneFormat/PhoneFormat;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 13931
    iget-object v2, v10, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetvcardPhone(Lorg/telegram/ui/ProfileActivity;)Ljava/lang/String;

    move-result-object v2

    goto :goto_3b

    :cond_96
    if-eqz v0, :cond_98

    .line 13932
    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_98

    sget-boolean v4, Lcom/exteragram/messenger/ExteraConfig;->hidePhoneNumber:Z

    if-eqz v4, :cond_97

    iget-wide v4, v0, Lorg/telegram/tgnet/TLRPC$User;->id:J

    iget-object v6, v10, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v6}, Lorg/telegram/ui/ProfileActivity;->access$7300(Lorg/telegram/ui/ProfileActivity;)I

    move-result v6

    invoke-static {v6}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v11

    cmp-long v4, v4, v11

    if-eqz v4, :cond_98

    .line 13933
    :cond_97
    invoke-static {}, Lorg/telegram/PhoneFormat/PhoneFormat;->getInstance()Lorg/telegram/PhoneFormat/PhoneFormat;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lorg/telegram/PhoneFormat/PhoneFormat;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 13934
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    move-object/from16 v26, v2

    move-object v2, v0

    move-object/from16 v0, v26

    goto :goto_3b

    .line 13936
    :cond_98
    sget v0, Lorg/telegram/messenger/R$string;->PhoneHidden:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v2, v15

    .line 13939
    :goto_3b
    iget-object v4, v10, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    if-eqz v2, :cond_99

    const-string v5, "888\\d{8}"

    invoke-virtual {v2, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_99

    const/4 v9, 0x1

    goto :goto_3c

    :cond_99
    move v9, v8

    :goto_3c
    invoke-static {v4, v9}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fputisFragmentPhoneNumber(Lorg/telegram/ui/ProfileActivity;Z)V

    .line 13940
    iget-object v2, v10, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetisFragmentPhoneNumber(Lorg/telegram/ui/ProfileActivity;)Z

    move-result v2

    if-eqz v2, :cond_9a

    sget v2, Lorg/telegram/messenger/R$string;->AnonymousNumber:I

    goto :goto_3d

    :cond_9a
    sget v2, Lorg/telegram/messenger/R$string;->PhoneMobile:I

    :goto_3d
    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2, v3}, Lorg/telegram/ui/Cells/TextDetailCell;->setTextAndValue(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    goto/16 :goto_50

    .line 13941
    :cond_9b
    iget-object v0, v10, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetidDcRow(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-ne v7, v0, :cond_a3

    .line 13944
    iget-object v0, v10, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetuserId(Lorg/telegram/ui/ProfileActivity;)J

    move-result-wide v4

    cmp-long v0, v4, v16

    if-eqz v0, :cond_9c

    .line 13945
    iget-object v0, v10, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v2, v10, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetuserId(Lorg/telegram/ui/ProfileActivity;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    .line 13946
    iget-object v2, v10, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetuserId(Lorg/telegram/ui/ProfileActivity;)J

    move-result-wide v4

    .line 13947
    invoke-static {}, Lcom/exteragram/messenger/utils/chats/ChatUtils;->getInstance()Lcom/exteragram/messenger/utils/chats/ChatUtils;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/exteragram/messenger/utils/chats/ChatUtils;->getDC(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3f

    .line 13948
    :cond_9c
    iget-object v0, v10, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetchatId(Lorg/telegram/ui/ProfileActivity;)J

    move-result-wide v4

    cmp-long v0, v4, v16

    if-eqz v0, :cond_9f

    .line 13949
    iget-object v0, v10, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v2, v10, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetchatId(Lorg/telegram/ui/ProfileActivity;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    .line 13950
    sget v2, Lcom/exteragram/messenger/ExteraConfig;->showIdAndDc:I

    const/4 v5, 0x2

    if-ne v2, v5, :cond_9e

    .line 13951
    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v2

    if-eqz v2, :cond_9d

    const-wide v4, -0xe8d4a51000L

    .line 13952
    iget-wide v11, v0, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    sub-long/2addr v4, v11

    goto :goto_3e

    .line 13954
    :cond_9d
    iget-wide v4, v0, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    neg-long v4, v4

    goto :goto_3e

    .line 13957
    :cond_9e
    iget-object v2, v10, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetchatId(Lorg/telegram/ui/ProfileActivity;)J

    move-result-wide v4

    .line 13959
    :goto_3e
    invoke-static {}, Lcom/exteragram/messenger/utils/chats/ChatUtils;->getInstance()Lcom/exteragram/messenger/utils/chats/ChatUtils;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/exteragram/messenger/utils/chats/ChatUtils;->getDC(Lorg/telegram/tgnet/TLRPC$Chat;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3f

    :cond_9f
    move-object v0, v14

    move-wide/from16 v4, v16

    .line 13961
    :goto_3f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    if-nez v0, :cond_a0

    const-string v0, "ID"

    :cond_a0
    invoke-virtual {v1, v2, v0, v3}, Lorg/telegram/ui/Cells/TextDetailCell;->setTextAndValue(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    .line 13962
    iget-object v0, v10, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetuserId(Lorg/telegram/ui/ProfileActivity;)J

    move-result-wide v2

    iget-object v0, v10, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-nez v0, :cond_a1

    iget-object v0, v10, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    iget-boolean v0, v0, Lorg/telegram/ui/ProfileActivity;->myProfile:Z

    if-eqz v0, :cond_a2

    :cond_a1
    iget-object v0, v10, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetisBot(Lorg/telegram/ui/ProfileActivity;)Z

    move-result v0

    if-nez v0, :cond_a2

    iget-object v0, v10, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetuserId(Lorg/telegram/ui/ProfileActivity;)J

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/telegram/messenger/UserObject;->isService(J)Z

    move-result v0

    if-nez v0, :cond_a2

    const/4 v9, 0x1

    goto :goto_40

    :cond_a2
    move v9, v8

    :goto_40
    move v4, v8

    move v0, v9

    :goto_41
    move v9, v4

    goto/16 :goto_51

    .line 13963
    :cond_a3
    iget-object v0, v10, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetnoteRow(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-ne v7, v0, :cond_a8

    .line 13964
    iget-object v0, v10, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v2, v10, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetuserId(Lorg/telegram/ui/ProfileActivity;)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lorg/telegram/messenger/MessagesController;->getUserFull(J)Lorg/telegram/tgnet/TLRPC$UserFull;

    move-result-object v0

    if-nez v0, :cond_a5

    :cond_a4
    :goto_42
    return-void

    .line 13966
    :cond_a5
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$UserFull;->note:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    .line 13968
    iget-object v2, v10, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->access$7400(Lorg/telegram/ui/ProfileActivity;)I

    move-result v2

    invoke-static {v2}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result v2

    if-nez v2, :cond_a6

    .line 13969
    invoke-static {v0}, Lorg/telegram/messenger/MessageObject;->removeLinks(Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;)Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/MessageObject;->formatTextWithEntities(Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_43

    .line 13971
    :cond_a6
    invoke-static {v0}, Lorg/telegram/messenger/MessageObject;->formatTextWithEntities(Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 13972
    instance-of v2, v0, Landroid/text/SpannableStringBuilder;

    if-nez v2, :cond_a7

    .line 13973
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    move-object v0, v2

    .line 13975
    :cond_a7
    move-object v2, v0

    check-cast v2, Landroid/text/SpannableStringBuilder;

    const/4 v5, 0x1

    invoke-static {v2, v5, v8, v8}, Lorg/telegram/messenger/AndroidUtilities;->addLinksSafe(Landroid/text/Spannable;IZZ)Z

    .line 13977
    :goto_43
    sget v2, Lorg/telegram/messenger/R$string;->ProfileNotes:I

    .line 13979
    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v4, Lorg/telegram/messenger/R$string;->ProfileNotesInfo:I

    .line 13980
    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 13977
    invoke-virtual {v1, v0, v2, v4, v3}, Lorg/telegram/ui/Cells/TextDetailCell;->setTextAndValue(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    goto/16 :goto_50

    .line 13983
    :cond_a8
    iget-object v0, v10, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetusernameRow(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    const-string v4, "@"

    if-ne v7, v0, :cond_b6

    .line 13987
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 13988
    iget-object v2, v10, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetuserId(Lorg/telegram/ui/ProfileActivity;)J

    move-result-wide v5

    cmp-long v2, v5, v16

    if-eqz v2, :cond_b0

    .line 13989
    iget-object v2, v10, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v5, v10, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v5}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetuserId(Lorg/telegram/ui/ProfileActivity;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v2

    if-eqz v2, :cond_a9

    .line 13991
    iget-object v5, v2, Lorg/telegram/tgnet/TLRPC$User;->usernames:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_a9
    if-eqz v2, :cond_aa

    .line 13994
    iget-object v5, v2, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_aa

    .line 13995
    iget-object v5, v2, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    invoke-static {v5, v0}, Lorg/telegram/messenger/DialogObject;->findUsername(Ljava/lang/String;Ljava/util/ArrayList;)Lorg/telegram/tgnet/TLRPC$TL_username;

    move-result-object v0

    .line 13996
    iget-object v5, v2, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    goto :goto_44

    :cond_aa
    move-object v0, v15

    move-object v5, v0

    :goto_44
    if-nez v2, :cond_ab

    .line 13998
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    goto :goto_45

    :cond_ab
    new-instance v6, Ljava/util/ArrayList;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$User;->usernames:Ljava/util/ArrayList;

    invoke-direct {v6, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v2, v6

    .line 13999
    :goto_45
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_ad

    move v6, v8

    .line 14000
    :goto_46
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v6, v9, :cond_ad

    .line 14001
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/tgnet/TLRPC$TL_username;

    if-eqz v9, :cond_ac

    .line 14002
    iget-boolean v11, v9, Lorg/telegram/tgnet/TLRPC$TL_username;->active:Z

    if-eqz v11, :cond_ac

    iget-object v11, v9, Lorg/telegram/tgnet/TLRPC$TL_username;->username:Ljava/lang/String;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_ac

    .line 14004
    iget-object v5, v9, Lorg/telegram/tgnet/TLRPC$TL_username;->username:Ljava/lang/String;

    move-object v0, v9

    goto :goto_47

    :cond_ac
    add-int/lit8 v6, v6, 0x1

    goto :goto_46

    .line 14009
    :cond_ad
    :goto_47
    sget v6, Lorg/telegram/messenger/R$string;->Username:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v14

    if-eqz v5, :cond_af

    .line 14011
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    if-eqz v0, :cond_ae

    .line 14012
    iget-boolean v6, v0, Lorg/telegram/tgnet/TLRPC$TL_username;->editable:Z

    if-nez v6, :cond_ae

    .line 14013
    new-instance v6, Landroid/text/SpannableString;

    invoke-direct {v6, v4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 14014
    invoke-virtual {v10, v0}, Lorg/telegram/ui/ProfileActivity$ListAdapter;->makeUsernameLinkSpan(Lorg/telegram/tgnet/TLRPC$TL_username;)Landroid/text/style/ClickableSpan;

    move-result-object v0

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v4

    invoke-virtual {v6, v0, v8, v4, v12}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    move-object v0, v6

    goto :goto_48

    :cond_ae
    move-object v0, v4

    goto :goto_48

    .line 14017
    :cond_af
    const-string/jumbo v0, "\u2014"

    .line 14019
    :goto_48
    iget-object v4, v10, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    iget-boolean v4, v4, Lorg/telegram/ui/ProfileActivity;->myProfile:Z

    const/16 v18, 0x1

    xor-int/lit8 v4, v4, 0x1

    move-object v6, v14

    move-object v14, v0

    move-object v0, v2

    goto/16 :goto_49

    .line 14020
    :cond_b0
    iget-object v2, v10, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetcurrentChat(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v2

    if-eqz v2, :cond_b5

    .line 14021
    iget-object v2, v10, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v4, v10, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v4}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetchatId(Lorg/telegram/ui/ProfileActivity;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v2

    .line 14022
    invoke-static {v2}, Lorg/telegram/messenger/ChatObject;->getPublicUsername(Lorg/telegram/tgnet/TLRPC$Chat;)Ljava/lang/String;

    move-result-object v5

    if-eqz v2, :cond_b1

    .line 14024
    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$Chat;->usernames:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 14026
    :cond_b1
    invoke-static {v2}, Lorg/telegram/messenger/ChatObject;->isPublic(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v2

    const-string v4, "/"

    if-eqz v2, :cond_b3

    .line 14027
    iget-object v2, v10, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    iget-boolean v2, v2, Lorg/telegram/ui/ProfileActivity;->myProfile:Z

    const/16 v18, 0x1

    xor-int/lit8 v2, v2, 0x1

    .line 14028
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v10, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {v9}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v9

    iget-object v9, v9, Lorg/telegram/messenger/MessagesController;->linkPrefix:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v10, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v9}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgettopicId(Lorg/telegram/ui/ProfileActivity;)J

    move-result-wide v11

    cmp-long v9, v11, v16

    if-eqz v9, :cond_b2

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v10, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v4}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgettopicId(Lorg/telegram/ui/ProfileActivity;)J

    move-result-wide v11

    invoke-virtual {v9, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    :cond_b2
    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 14029
    sget v6, Lorg/telegram/messenger/R$string;->InviteLink:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object v14, v4

    move v4, v2

    goto :goto_49

    .line 14031
    :cond_b3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v10, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {v6}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    iget-object v6, v6, Lorg/telegram/messenger/MessagesController;->linkPrefix:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/c/"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v10, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v6}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetchatId(Lorg/telegram/ui/ProfileActivity;)J

    move-result-wide v11

    invoke-virtual {v2, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    iget-object v6, v10, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v6}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgettopicId(Lorg/telegram/ui/ProfileActivity;)J

    move-result-wide v11

    cmp-long v6, v11, v16

    if-eqz v6, :cond_b4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v10, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v4}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgettopicId(Lorg/telegram/ui/ProfileActivity;)J

    move-result-wide v11

    invoke-virtual {v6, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    :cond_b4
    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 14032
    sget v4, Lorg/telegram/messenger/R$string;->InviteLinkPrivate:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v14, v2

    move-object v6, v4

    move v4, v8

    goto :goto_49

    .line 14037
    :cond_b5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move v4, v8

    move-object v6, v14

    move-object v5, v15

    .line 14039
    :goto_49
    invoke-direct {v10, v5, v0, v6}, Lorg/telegram/ui/ProfileActivity$ListAdapter;->alsoUsernamesString(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v14, v0, v3}, Lorg/telegram/ui/Cells/TextDetailCell;->setTextAndValue(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    move v0, v8

    move v9, v0

    goto/16 :goto_51

    .line 14040
    :cond_b6
    iget-object v0, v10, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetlocationRow(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-ne v7, v0, :cond_b7

    .line 14041
    iget-object v0, v10, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetchatInfo(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v0

    if-eqz v0, :cond_c2

    iget-object v0, v10, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetchatInfo(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->location:Lorg/telegram/tgnet/TLRPC$ChannelLocation;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_channelLocation;

    if-eqz v0, :cond_c2

    .line 14042
    iget-object v0, v10, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetchatInfo(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->location:Lorg/telegram/tgnet/TLRPC$ChannelLocation;

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_channelLocation;

    .line 14043
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_channelLocation;->address:Ljava/lang/String;

    sget v2, Lorg/telegram/messenger/R$string;->AttachLocation:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2, v3}, Lorg/telegram/ui/Cells/TextDetailCell;->setTextAndValue(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    goto/16 :goto_50

    .line 14045
    :cond_b7
    iget-object v0, v10, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetnumberRow(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-ne v7, v0, :cond_ba

    .line 14046
    iget-object v0, v10, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$7500(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    .line 14048
    sget-boolean v4, Lcom/exteragram/messenger/ExteraConfig;->hidePhoneNumber:Z

    if-eqz v4, :cond_b8

    .line 14049
    sget v0, Lorg/telegram/messenger/R$string;->MobileHidden:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_4a

    :cond_b8
    if-eqz v0, :cond_b9

    .line 14050
    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    if-eqz v4, :cond_b9

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_b9

    .line 14051
    invoke-static {}, Lorg/telegram/PhoneFormat/PhoneFormat;->getInstance()Lorg/telegram/PhoneFormat/PhoneFormat;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lorg/telegram/PhoneFormat/PhoneFormat;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4a

    .line 14053
    :cond_b9
    sget v0, Lorg/telegram/messenger/R$string;->NumberUnknown:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 14055
    :goto_4a
    sget v2, Lorg/telegram/messenger/R$string;->TapToChangePhone:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2, v3}, Lorg/telegram/ui/Cells/TextDetailCell;->setTextAndValue(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    .line 14056
    invoke-virtual {v1, v8}, Lorg/telegram/ui/Cells/TextDetailCell;->setContentDescriptionValueFirst(Z)V

    goto/16 :goto_50

    .line 14057
    :cond_ba
    iget-object v0, v10, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetsetUsernameRow(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-ne v7, v0, :cond_c2

    .line 14058
    iget-object v0, v10, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$7600(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    .line 14060
    sget v2, Lorg/telegram/messenger/R$string;->Username:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_c0

    .line 14062
    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$User;->usernames:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_c0

    move v5, v8

    .line 14063
    :goto_4b
    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$User;->usernames:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_bc

    .line 14064
    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$User;->usernames:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/TLRPC$TL_username;

    if-eqz v6, :cond_bb

    .line 14065
    iget-boolean v9, v6, Lorg/telegram/tgnet/TLRPC$TL_username;->active:Z

    if-eqz v9, :cond_bb

    iget-object v9, v6, Lorg/telegram/tgnet/TLRPC$TL_username;->username:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_bb

    .line 14066
    iget-object v5, v6, Lorg/telegram/tgnet/TLRPC$TL_username;->username:Ljava/lang/String;

    goto :goto_4c

    :cond_bb
    add-int/lit8 v5, v5, 0x1

    goto :goto_4b

    :cond_bc
    move-object v5, v15

    :goto_4c
    if-nez v5, :cond_bd

    .line 14071
    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    :cond_bd
    if-eqz v5, :cond_bf

    .line 14073
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_be

    goto :goto_4d

    .line 14076
    :cond_be
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_4e

    .line 14074
    :cond_bf
    :goto_4d
    sget v4, Lorg/telegram/messenger/R$string;->UsernameEmpty:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 14078
    :goto_4e
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->usernames:Ljava/util/ArrayList;

    invoke-direct {v10, v5, v0, v2}, Lorg/telegram/ui/ProfileActivity$ListAdapter;->alsoUsernamesString(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_4f

    .line 14080
    :cond_c0
    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->getPublicUsername(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v5

    if-eqz v0, :cond_c1

    .line 14081
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c1

    .line 14082
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_4f

    .line 14084
    :cond_c1
    sget v0, Lorg/telegram/messenger/R$string;->UsernameEmpty:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 14087
    :goto_4f
    invoke-virtual {v1, v4, v2, v3}, Lorg/telegram/ui/Cells/TextDetailCell;->setTextAndValue(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    const/4 v5, 0x1

    .line 14088
    invoke-virtual {v1, v5}, Lorg/telegram/ui/Cells/TextDetailCell;->setContentDescriptionValueFirst(Z)V

    :cond_c2
    :goto_50
    move v0, v8

    move v4, v0

    goto/16 :goto_41

    :goto_51
    if-eqz v9, :cond_c4

    .line 14091
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/R$drawable;->msg_input_gift:I

    invoke-static {v0, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 14092
    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    iget-object v3, v10, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_switch2TrackChecked:I

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ProfileActivity;->getThemedColor(I)I

    move-result v4

    invoke-static {v3, v4, v8}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$mdontApplyPeerColor(Lorg/telegram/ui/ProfileActivity;IZ)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 14093
    iget-object v2, v10, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetuserInfo(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$UserFull;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/UserObject;->areGiftsDisabled(Lorg/telegram/tgnet/TLRPC$UserFull;)Z

    move-result v2

    if-eqz v2, :cond_c3

    .line 14094
    invoke-virtual {v1, v15}, Lorg/telegram/ui/Cells/TextDetailCell;->setImage(Landroid/graphics/drawable/Drawable;)V

    .line 14095
    invoke-virtual {v1, v15}, Lorg/telegram/ui/Cells/TextDetailCell;->setImageClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_52

    .line 14097
    :cond_c3
    sget v2, Lorg/telegram/messenger/R$string;->GiftPremium:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/telegram/ui/Cells/TextDetailCell;->setImage(Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V

    .line 14098
    iget-object v0, v10, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    new-instance v2, Lorg/telegram/ui/ProfileActivity$ListAdapter$$ExternalSyntheticLambda2;

    invoke-direct {v2, v0}, Lorg/telegram/ui/ProfileActivity$ListAdapter$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/ProfileActivity;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/TextDetailCell;->setImageClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_52

    :cond_c4
    if-eqz v4, :cond_c5

    .line 14101
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/R$drawable;->header_qr_24:I

    invoke-static {v0, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 14102
    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    iget-object v3, v10, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_switch2TrackChecked:I

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ProfileActivity;->getThemedColor(I)I

    move-result v4

    invoke-static {v3, v4, v8}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$mdontApplyPeerColor(Lorg/telegram/ui/ProfileActivity;IZ)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 14103
    sget v2, Lorg/telegram/messenger/R$string;->GetQRCode:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/telegram/ui/Cells/TextDetailCell;->setImage(Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V

    .line 14104
    iget-object v0, v10, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    new-instance v2, Lorg/telegram/ui/ProfileActivity$ListAdapter$$ExternalSyntheticLambda2;

    invoke-direct {v2, v0}, Lorg/telegram/ui/ProfileActivity$ListAdapter$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/ProfileActivity;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/TextDetailCell;->setImageClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_52

    :cond_c5
    if-eqz v0, :cond_c6

    .line 14106
    iget-object v0, v10, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_switch2TrackChecked:I

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ProfileActivity;->getThemedColor(I)I

    move-result v2

    invoke-static {v0, v2, v8, v15}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$mdontApplyPeerColor(Lorg/telegram/ui/ProfileActivity;IZLjava/lang/Boolean;)I

    move-result v0

    .line 14107
    iget-object v2, v10, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    new-instance v3, Lorg/telegram/ui/Components/ReplaceableIconDrawable;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/telegram/ui/Components/ReplaceableIconDrawable;-><init>(Landroid/content/Context;)V

    invoke-static {v2, v3}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fputcreationDateIcon(Lorg/telegram/ui/ProfileActivity;Lorg/telegram/ui/Components/ReplaceableIconDrawable;)V

    const-string v2, "Registration Date"

    invoke-virtual {v1, v3, v2}, Lorg/telegram/ui/Cells/TextDetailCell;->setImage(Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V

    .line 14108
    iget-object v2, v10, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetcreationDateIcon(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/ReplaceableIconDrawable;

    move-result-object v2

    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v0, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/ReplaceableIconDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 14109
    iget-object v2, v10, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetcreationDateIcon(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/ReplaceableIconDrawable;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$drawable;->msg_calendar2:I

    invoke-virtual {v2, v3, v8}, Lorg/telegram/ui/Components/ReplaceableIconDrawable;->setIcon(IZ)V

    .line 14110
    iget-object v2, v10, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    new-instance v3, Lorg/telegram/ui/ProfileActivity$ListAdapter$$ExternalSyntheticLambda2;

    invoke-direct {v3, v2}, Lorg/telegram/ui/ProfileActivity$ListAdapter$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/ProfileActivity;)V

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Cells/TextDetailCell;->setImageClickListener(Landroid/view/View$OnClickListener;)V

    .line 14112
    iget-object v2, v10, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    new-instance v3, Lorg/telegram/ui/Components/CircularProgressDrawable;

    invoke-direct {v3, v0}, Lorg/telegram/ui/Components/CircularProgressDrawable;-><init>(I)V

    invoke-static {v2, v3}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fputloadingDrawable(Lorg/telegram/ui/ProfileActivity;Lorg/telegram/ui/Components/CircularProgressDrawable;)V

    goto :goto_52

    .line 14114
    :cond_c6
    invoke-virtual {v1, v15}, Lorg/telegram/ui/Cells/TextDetailCell;->setImage(Landroid/graphics/drawable/Drawable;)V

    .line 14115
    invoke-virtual {v1, v15}, Lorg/telegram/ui/Cells/TextDetailCell;->setImageClickListener(Landroid/view/View$OnClickListener;)V

    .line 14117
    :goto_52
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 14118
    iget-object v0, v1, Lorg/telegram/ui/Cells/TextDetailCell;->textView:Lorg/telegram/ui/Components/spoilers/SpoilersTextView;

    iget-object v2, v10, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetloadingSpan(Lorg/telegram/ui/ProfileActivity;)Landroid/text/style/CharacterStyle;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/spoilers/SpoilersTextView;->setLoading(Landroid/text/style/CharacterStyle;)V

    .line 14119
    iget-object v0, v1, Lorg/telegram/ui/Cells/TextDetailCell;->valueTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    iget-object v1, v10, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetloadingSpan(Lorg/telegram/ui/ProfileActivity;)Landroid/text/style/CharacterStyle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;->setLoading(Landroid/text/style/CharacterStyle;)V

    return-void

    :cond_c7
    move-object v10, v1

    .line 13869
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Cells/HeaderCell;

    .line 13870
    iget-object v1, v10, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetinfoHeaderRow(Lorg/telegram/ui/ProfileActivity;)I

    move-result v1

    if-ne v7, v1, :cond_c9

    .line 13871
    iget-object v1, v10, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetcurrentChat(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v1

    if-eqz v1, :cond_c8

    iget-object v1, v10, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetcurrentChat(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v1

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez v1, :cond_c8

    iget-object v1, v10, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetchannelInfoRow(Lorg/telegram/ui/ProfileActivity;)I

    move-result v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_c8

    .line 13872
    sget v1, Lorg/telegram/messenger/R$string;->ReportChatDescription:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_53

    .line 13874
    :cond_c8
    sget v1, Lorg/telegram/messenger/R$string;->Info:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    goto :goto_53

    .line 13876
    :cond_c9
    iget-object v1, v10, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetmembersHeaderRow(Lorg/telegram/ui/ProfileActivity;)I

    move-result v1

    if-ne v7, v1, :cond_ca

    .line 13877
    sget v1, Lorg/telegram/messenger/R$string;->ChannelMembers:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    goto :goto_53

    .line 13878
    :cond_ca
    iget-object v1, v10, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetsettingsSectionRow2(Lorg/telegram/ui/ProfileActivity;)I

    move-result v1

    if-ne v7, v1, :cond_cb

    .line 13879
    sget v1, Lorg/telegram/messenger/R$string;->SETTINGS:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    goto :goto_53

    .line 13880
    :cond_cb
    iget-object v1, v10, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetnumberSectionRow(Lorg/telegram/ui/ProfileActivity;)I

    move-result v1

    if-ne v7, v1, :cond_cc

    .line 13881
    sget v1, Lorg/telegram/messenger/R$string;->Account:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    goto :goto_53

    .line 13882
    :cond_cc
    iget-object v1, v10, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgethelpHeaderRow(Lorg/telegram/ui/ProfileActivity;)I

    move-result v1

    if-ne v7, v1, :cond_cd

    .line 13883
    sget v1, Lorg/telegram/messenger/R$string;->SettingsHelp:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    goto :goto_53

    .line 13884
    :cond_cd
    iget-object v1, v10, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetdebugHeaderRow(Lorg/telegram/ui/ProfileActivity;)I

    move-result v1

    if-ne v7, v1, :cond_ce

    .line 13885
    sget v1, Lorg/telegram/messenger/R$string;->SettingsDebug:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    goto :goto_53

    .line 13886
    :cond_ce
    iget-object v1, v10, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetbotPermissionsHeader(Lorg/telegram/ui/ProfileActivity;)I

    move-result v1

    if-ne v7, v1, :cond_cf

    .line 13887
    sget v1, Lorg/telegram/messenger/R$string;->BotProfilePermissions:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    .line 13889
    :cond_cf
    :goto_53
    iget-object v1, v10, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueHeader:I

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ProfileActivity;->getThemedColor(I)I

    move-result v2

    invoke-static {v1, v2, v8}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$mdontApplyPeerColor(Lorg/telegram/ui/ProfileActivity;IZ)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/HeaderCell;->setTextColor(I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 11

    const p1, -0x8100

    .line 13638
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 v0, 0xf

    const/4 v1, -0x1

    if-eq p2, v0, :cond_8

    const/16 v0, 0x64

    if-eq p2, v0, :cond_7

    const/16 v0, 0x1e

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq p2, v0, :cond_0

    const/16 v4, 0x1f

    if-eq p2, v4, :cond_3

    const/16 v4, 0x12

    packed-switch p2, :pswitch_data_0

    packed-switch p2, :pswitch_data_1

    packed-switch p2, :pswitch_data_2

    .line 13735
    new-instance p1, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v4}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetresourcesProvider(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v4

    const/16 v5, 0xa

    invoke-direct {p1, v0, v5, v4}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 13736
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->getTextView()Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 13737
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->getTextView()Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText3:I

    invoke-virtual {v2, v4}, Lorg/telegram/ui/ProfileActivity;->getThemedColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 13738
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->getTextView()Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 13739
    invoke-static {}, Lcom/exteragram/messenger/utils/AppUtils;->getVersionText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    .line 13740
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->getTextView()Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    move-result-object v0

    const/high16 v2, 0x41600000    # 14.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-virtual {v0, v3, v4, v3, v2}, Landroid/view/View;->setPadding(IIII)V

    :goto_0
    move-object v5, p0

    goto/16 :goto_a

    .line 13660
    :pswitch_0
    new-instance v0, Lorg/telegram/ui/ProfileActivity$ListAdapter$7;

    iget-object v2, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v2}, Lorg/telegram/ui/ProfileActivity$ListAdapter$7;-><init>(Lorg/telegram/ui/ProfileActivity$ListAdapter;Landroid/content/Context;)V

    .line 13666
    invoke-virtual {v0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_1
    move-object v5, p0

    :goto_2
    move-object p1, v0

    goto/16 :goto_a

    .line 13628
    :pswitch_1
    new-instance p1, Lorg/telegram/ui/bots/AffiliateProgramFragment$ColorfulTextCell;

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetresourcesProvider(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v2

    invoke-direct {p1, v0, v2}, Lorg/telegram/ui/bots/AffiliateProgramFragment$ColorfulTextCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    goto :goto_0

    .line 13624
    :pswitch_2
    new-instance p1, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetresourcesProvider(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v2

    invoke-direct {p1, v0, v2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    goto :goto_0

    .line 13786
    :pswitch_3
    new-instance p1, Landroid/widget/FrameLayout;

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 13787
    new-instance v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    iget-object v2, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v4}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetresourcesProvider(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v4

    invoke-direct {v0, v2, v4}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 13788
    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setRound()Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    .line 13789
    sget v2, Lorg/telegram/messenger/R$string;->ProfileBotOpenApp:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setText(Ljava/lang/CharSequence;Z)V

    .line 13790
    new-instance v2, Lorg/telegram/ui/ProfileActivity$ListAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lorg/telegram/ui/ProfileActivity$ListAdapter$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/ProfileActivity$ListAdapter;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/high16 v8, 0x41900000    # 18.0f

    const/high16 v9, 0x41600000    # 14.0f

    const/4 v3, -0x1

    const/high16 v4, 0x42400000    # 48.0f

    const/16 v5, 0x77

    const/high16 v6, 0x41900000    # 18.0f

    const/high16 v7, 0x41600000    # 14.0f

    .line 13794
    invoke-static/range {v3 .. v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 13796
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ProfileActivity;->getThemedColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 13778
    :pswitch_4
    new-instance p1, Lorg/telegram/ui/ProfileActivity$ListAdapter$11;

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-direct {p1, p0, v0}, Lorg/telegram/ui/ProfileActivity$ListAdapter$11;-><init>(Lorg/telegram/ui/ProfileActivity$ListAdapter;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    goto :goto_0

    .line 13725
    :pswitch_5
    new-instance p1, Lorg/telegram/ui/ProfileActivity$ListAdapter$9;

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetresourcesProvider(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v2

    invoke-direct {p1, p0, v0, v2}, Lorg/telegram/ui/ProfileActivity$ListAdapter$9;-><init>(Lorg/telegram/ui/ProfileActivity$ListAdapter;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 13731
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ProfileActivity;->getThemedColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    goto/16 :goto_0

    .line 13721
    :pswitch_6
    new-instance p1, Lorg/telegram/ui/Business/ProfileLocationCell;

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetresourcesProvider(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v2

    invoke-direct {p1, v0, v2}, Lorg/telegram/ui/Business/ProfileLocationCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 13722
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ProfileActivity;->getThemedColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    goto/16 :goto_0

    .line 13616
    :pswitch_7
    new-instance p1, Lorg/telegram/ui/Cells/TextCheckCell;

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetresourcesProvider(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v2

    invoke-direct {p1, v0, v4, v3, v2}, Lorg/telegram/ui/Cells/TextCheckCell;-><init>(Landroid/content/Context;IZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    goto/16 :goto_0

    :cond_0
    :pswitch_8
    move-object v5, p0

    goto/16 :goto_7

    .line 13774
    :pswitch_9
    new-instance p1, Lorg/telegram/ui/Components/Premium/ProfilePremiumCell;

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->mContext:Landroid/content/Context;

    if-ne p2, v4, :cond_1

    move v2, v3

    :cond_1
    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetresourcesProvider(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v3

    invoke-direct {p1, v0, v2, v3}, Lorg/telegram/ui/Components/Premium/ProfilePremiumCell;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 13775
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ProfileActivity;->getThemedColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    goto/16 :goto_0

    .line 13717
    :pswitch_a
    new-instance p1, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetresourcesProvider(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v2

    invoke-direct {p1, v0, v2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    goto/16 :goto_0

    .line 13709
    :pswitch_b
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->sharedMediaLayout:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 13710
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->sharedMediaLayout:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v2, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    iget-object v2, v2, Lorg/telegram/ui/ProfileActivity;->sharedMediaLayout:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 13712
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->sharedMediaLayout:Lorg/telegram/ui/Components/SharedMediaLayout;

    .line 13713
    invoke-virtual {v0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 13670
    :pswitch_c
    new-instance v0, Lorg/telegram/ui/ProfileActivity$ListAdapter$8;

    iget-object v2, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v2}, Lorg/telegram/ui/ProfileActivity$ListAdapter$8;-><init>(Lorg/telegram/ui/ProfileActivity$ListAdapter;Landroid/content/Context;)V

    .line 13704
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 13705
    invoke-virtual {v0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_3
    :pswitch_d
    move-object v5, p0

    goto/16 :goto_6

    .line 13642
    :pswitch_e
    new-instance v4, Lorg/telegram/ui/Cells/UserCell;

    iget-object v5, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->mContext:Landroid/content/Context;

    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetaddMemberRow(Lorg/telegram/ui/ProfileActivity;)I

    move-result p1

    if-ne p1, v1, :cond_4

    const/16 p1, 0x9

    :goto_3
    move v6, p1

    goto :goto_4

    :cond_4
    const/4 p1, 0x6

    goto :goto_3

    :goto_4
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetresourcesProvider(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v9

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-direct/range {v4 .. v9}, Lorg/telegram/ui/Cells/UserCell;-><init>(Landroid/content/Context;IIZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    move-object v5, p0

    :goto_5
    move-object p1, v4

    goto/16 :goto_a

    .line 13620
    :pswitch_f
    new-instance p1, Lorg/telegram/ui/Cells/ShadowSectionCell;

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetresourcesProvider(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v2

    invoke-direct {p1, v0, v2}, Lorg/telegram/ui/Cells/ShadowSectionCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    goto/16 :goto_0

    .line 13607
    :pswitch_10
    new-instance v3, Lorg/telegram/ui/ProfileActivity$ListAdapter$4;

    iget-object v5, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->mContext:Landroid/content/Context;

    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetresourcesProvider(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v9

    const/16 v6, 0x12

    const/16 v7, 0x46

    const/4 v8, 0x0

    move-object v4, p0

    invoke-direct/range {v3 .. v9}, Lorg/telegram/ui/ProfileActivity$ListAdapter$4;-><init>(Lorg/telegram/ui/ProfileActivity$ListAdapter;Landroid/content/Context;IIZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    move-object p1, v3

    move-object v5, v4

    goto/16 :goto_a

    :pswitch_11
    move-object v5, p0

    .line 13602
    new-instance p1, Lorg/telegram/ui/Cells/DividerCell;

    iget-object v0, v5, Lorg/telegram/ui/ProfileActivity$ListAdapter;->mContext:Landroid/content/Context;

    iget-object v2, v5, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetresourcesProvider(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v2

    invoke-direct {p1, v0, v2}, Lorg/telegram/ui/Cells/DividerCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/high16 v0, 0x41a00000    # 20.0f

    .line 13603
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    const/high16 v2, 0x40800000    # 4.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-virtual {p1, v0, v2, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    goto/16 :goto_a

    :pswitch_12
    move-object v5, p0

    .line 13593
    new-instance v4, Lorg/telegram/ui/ProfileActivity$ListAdapter$3;

    iget-object v6, v5, Lorg/telegram/ui/ProfileActivity$ListAdapter;->mContext:Landroid/content/Context;

    iget-object p1, v5, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetresourcesProvider(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v10

    const/16 v7, 0x12

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v4 .. v10}, Lorg/telegram/ui/ProfileActivity$ListAdapter$3;-><init>(Lorg/telegram/ui/ProfileActivity$ListAdapter;Landroid/content/Context;IZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    goto :goto_5

    :pswitch_13
    move-object v5, p0

    .line 13569
    iget-object p1, v5, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    new-instance v0, Lorg/telegram/ui/ProfileActivity$ListAdapter$2;

    iget-object v2, v5, Lorg/telegram/ui/ProfileActivity$ListAdapter;->mContext:Landroid/content/Context;

    iget-object v3, v5, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetresourcesProvider(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v4

    invoke-direct {v0, p0, v2, v3, v4}, Lorg/telegram/ui/ProfileActivity$ListAdapter$2;-><init>(Lorg/telegram/ui/ProfileActivity$ListAdapter;Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-static {p1, v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fputaboutLinkCell(Lorg/telegram/ui/ProfileActivity;Lorg/telegram/ui/Cells/AboutLinkCell;)V

    goto/16 :goto_2

    :pswitch_14
    move-object v5, p0

    .line 13553
    new-instance p1, Lorg/telegram/ui/Cells/HeaderCell;

    iget-object v0, v5, Lorg/telegram/ui/ProfileActivity$ListAdapter;->mContext:Landroid/content/Context;

    iget-object v2, v5, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetresourcesProvider(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v2

    invoke-direct {p1, v0, v4, v2}, Lorg/telegram/ui/Cells/HeaderCell;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    goto :goto_a

    .line 13647
    :goto_6
    new-instance v0, Lorg/telegram/ui/ProfileActivity$ListAdapter$6;

    iget-object v2, v5, Lorg/telegram/ui/ProfileActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v2}, Lorg/telegram/ui/ProfileActivity$ListAdapter$6;-><init>(Lorg/telegram/ui/ProfileActivity$ListAdapter;Landroid/content/Context;)V

    .line 13656
    invoke-virtual {v0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 13559
    :goto_7
    new-instance v4, Lorg/telegram/ui/ProfileActivity$ListAdapter$1;

    iget-object v6, v5, Lorg/telegram/ui/ProfileActivity$ListAdapter;->mContext:Landroid/content/Context;

    iget-object p1, v5, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetresourcesProvider(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v8

    if-ne p2, v0, :cond_5

    move v9, v2

    goto :goto_8

    :cond_5
    move v9, v3

    :goto_8
    const/16 p1, 0x13

    if-ne p2, p1, :cond_6

    move v10, v2

    goto :goto_9

    :cond_6
    move v10, v3

    :goto_9
    const/16 v7, 0x12

    invoke-direct/range {v4 .. v10}, Lorg/telegram/ui/ProfileActivity$ListAdapter$1;-><init>(Lorg/telegram/ui/ProfileActivity$ListAdapter;Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;ZZ)V

    .line 13565
    invoke-virtual {v4, v2}, Lorg/telegram/ui/Cells/TextDetailCell;->setContentDescriptionValueFirst(Z)V

    goto/16 :goto_5

    :cond_7
    move-object v5, p0

    .line 13632
    new-instance v0, Lorg/telegram/ui/ProfileActivity$ListAdapter$5;

    iget-object v2, v5, Lorg/telegram/ui/ProfileActivity$ListAdapter;->mContext:Landroid/content/Context;

    iget-object v3, v5, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetresourcesProvider(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v3

    invoke-direct {v0, p0, v2, v3}, Lorg/telegram/ui/ProfileActivity$ListAdapter$5;-><init>(Lorg/telegram/ui/ProfileActivity$ListAdapter;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 13638
    invoke-virtual {v0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_8
    move-object v5, p0

    .line 13745
    new-instance p1, Lorg/telegram/ui/ProfileActivity$ListAdapter$10;

    iget-object v0, v5, Lorg/telegram/ui/ProfileActivity$ListAdapter;->mContext:Landroid/content/Context;

    iget-object v2, v5, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetresourcesProvider(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v2

    invoke-direct {p1, p0, v0, v2}, Lorg/telegram/ui/ProfileActivity$ListAdapter$10;-><init>(Lorg/telegram/ui/ProfileActivity$ListAdapter;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    :goto_a
    const/16 v0, 0xd

    if-eq p2, v0, :cond_9

    .line 13800
    new-instance p2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {p2, v1, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 13802
    :cond_9
    new-instance p2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_14
        :pswitch_8
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xb
        :pswitch_d
        :pswitch_c
        :pswitch_b
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x11
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_9
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 3

    .line 13836
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    iget-object v2, v1, Lorg/telegram/ui/ProfileActivity;->sharedMediaLayout:Lorg/telegram/ui/Components/SharedMediaLayout;

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    .line 13837
    invoke-static {v1, v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fputsharedMediaLayoutAttached(Lorg/telegram/ui/ProfileActivity;Z)V

    .line 13839
    :cond_0
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v1, v0, Lorg/telegram/ui/Cells/TextDetailCell;

    if-eqz v1, :cond_1

    .line 13840
    check-cast v0, Lorg/telegram/ui/Cells/TextDetailCell;

    iget-object v0, v0, Lorg/telegram/ui/Cells/TextDetailCell;->textView:Lorg/telegram/ui/Components/spoilers/SpoilersTextView;

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetloadingSpan(Lorg/telegram/ui/ProfileActivity;)Landroid/text/style/CharacterStyle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/spoilers/SpoilersTextView;->setLoading(Landroid/text/style/CharacterStyle;)V

    .line 13841
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/TextDetailCell;

    iget-object p1, p1, Lorg/telegram/ui/Cells/TextDetailCell;->valueTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetloadingSpan(Lorg/telegram/ui/ProfileActivity;)Landroid/text/style/CharacterStyle;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;->setLoading(Landroid/text/style/CharacterStyle;)V

    :cond_1
    return-void
.end method

.method public onViewDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 2

    .line 13847
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    iget-object v1, v0, Lorg/telegram/ui/ProfileActivity;->sharedMediaLayout:Lorg/telegram/ui/Components/SharedMediaLayout;

    if-ne p1, v1, :cond_0

    const/4 p1, 0x0

    .line 13848
    invoke-static {v0, p1}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fputsharedMediaLayoutAttached(Lorg/telegram/ui/ProfileActivity;Z)V

    :cond_0
    return-void
.end method

.method public onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 1

    .line 14715
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetsetAvatarRow(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 14716
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fputsetAvatarCell(Lorg/telegram/ui/ProfileActivity;Lorg/telegram/ui/Cells/TextCell;)V

    :cond_0
    return-void
.end method

.method public setBackground(Landroid/view/View;I)V
    .locals 0

    return-void
.end method
