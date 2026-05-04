.class Lorg/telegram/ui/Components/InviteLinkBottomSheet$Adapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/InviteLinkBottomSheet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Adapter"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/InviteLinkBottomSheet;


# direct methods
.method public static synthetic $r8$lambda$K1qjMsc4l2G4ay0Cez3HpHldky4(Lorg/telegram/ui/Components/InviteLinkBottomSheet$Adapter;Lorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;ZZZLandroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Lorg/telegram/ui/Components/InviteLinkBottomSheet$Adapter;->lambda$onBindViewHolder$0(Lorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;ZZZLandroid/view/View;)V

    return-void
.end method

.method private constructor <init>(Lorg/telegram/ui/Components/InviteLinkBottomSheet;)V
    .locals 0

    .line 596
    iput-object p1, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet$Adapter;->this$0:Lorg/telegram/ui/Components/InviteLinkBottomSheet;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/ui/Components/InviteLinkBottomSheet;Lorg/telegram/ui/Components/InviteLinkBottomSheet-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/InviteLinkBottomSheet$Adapter;-><init>(Lorg/telegram/ui/Components/InviteLinkBottomSheet;)V

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$0(Lorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;ZZZLandroid/view/View;)V
    .locals 11

    .line 899
    iget-object v0, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet$Adapter;->this$0:Lorg/telegram/ui/Components/InviteLinkBottomSheet;

    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v0, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet$Adapter;->this$0:Lorg/telegram/ui/Components/InviteLinkBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->access$3000(Lorg/telegram/ui/Components/InviteLinkBottomSheet;)I

    move-result v2

    iget-object v0, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet$Adapter;->this$0:Lorg/telegram/ui/Components/InviteLinkBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->-$$Nest$fgetchatId(Lorg/telegram/ui/Components/InviteLinkBottomSheet;)J

    move-result-wide v3

    neg-long v3, v3

    iget-object v0, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet$Adapter;->this$0:Lorg/telegram/ui/Components/InviteLinkBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->access$3100(Lorg/telegram/ui/Components/InviteLinkBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v10

    move-object v5, p1

    move-object v6, p2

    move v7, p3

    move v8, p4

    move/from16 v9, p5

    invoke-static/range {v1 .. v10}, Lorg/telegram/ui/Components/TagEditCell;->showInfoSheet(Landroid/content/Context;IJLorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;ZZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 973
    iget-object v0, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet$Adapter;->this$0:Lorg/telegram/ui/Components/InviteLinkBottomSheet;

    iget v0, v0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->rowCount:I

    return v0
.end method

.method public getItemViewType(I)I
    .locals 3

    .line 600
    iget-object v0, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet$Adapter;->this$0:Lorg/telegram/ui/Components/InviteLinkBottomSheet;

    iget v1, v0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->creatorHeaderRow:I

    const/4 v2, 0x0

    if-eq p1, v1, :cond_e

    iget v1, v0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->requestedHeaderRow:I

    if-eq p1, v1, :cond_e

    iget v1, v0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->joinedHeaderRow:I

    if-eq p1, v1, :cond_e

    iget v1, v0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->revenueHeaderRow:I

    if-ne p1, v1, :cond_0

    goto :goto_3

    .line 602
    :cond_0
    iget v1, v0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->creatorRow:I

    if-eq p1, v1, :cond_d

    iget v1, v0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->requestedStartRow:I

    if-lt p1, v1, :cond_1

    iget v1, v0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->requestedEndRow:I

    if-lt p1, v1, :cond_d

    :cond_1
    iget v1, v0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->joinedStartRow:I

    if-lt p1, v1, :cond_2

    iget v1, v0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->joinedEndRow:I

    if-ge p1, v1, :cond_2

    goto :goto_2

    .line 604
    :cond_2
    iget v1, v0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->dividerRow:I

    if-eq p1, v1, :cond_c

    iget v1, v0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->divider2Row:I

    if-ne p1, v1, :cond_3

    goto :goto_1

    .line 606
    :cond_3
    iget v1, v0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->linkActionRow:I

    if-ne p1, v1, :cond_4

    const/4 p1, 0x3

    return p1

    .line 608
    :cond_4
    iget v1, v0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->linkInfoRow:I

    if-ne p1, v1, :cond_5

    const/4 p1, 0x4

    return p1

    .line 610
    :cond_5
    iget v1, v0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->loadingRow:I

    if-ne p1, v1, :cond_6

    const/4 p1, 0x5

    return p1

    .line 612
    :cond_6
    iget v1, v0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->emptyView:I

    if-eq p1, v1, :cond_b

    iget v1, v0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->emptyView2:I

    if-eq p1, v1, :cond_b

    iget v1, v0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->emptyView3:I

    if-ne p1, v1, :cond_7

    goto :goto_0

    .line 614
    :cond_7
    iget v1, v0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->divider3Row:I

    if-ne p1, v1, :cond_8

    const/4 p1, 0x7

    return p1

    .line 616
    :cond_8
    iget v1, v0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->emptyHintRow:I

    if-ne p1, v1, :cond_9

    const/16 p1, 0x8

    return p1

    .line 618
    :cond_9
    iget v0, v0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->revenueRow:I

    if-ne p1, v0, :cond_a

    const/16 p1, 0x9

    return p1

    :cond_a
    return v2

    :cond_b
    :goto_0
    const/4 p1, 0x6

    return p1

    :cond_c
    :goto_1
    const/4 p1, 0x2

    return p1

    :cond_d
    :goto_2
    const/4 p1, 0x1

    return p1

    :cond_e
    :goto_3
    return v2
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 6

    .line 978
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    .line 979
    iget-object v0, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet$Adapter;->this$0:Lorg/telegram/ui/Components/InviteLinkBottomSheet;

    iget v1, v0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->creatorRow:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne p1, v1, :cond_1

    .line 980
    iget-object p1, v0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->invite:Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    iget-wide v4, p1, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->admin_id:J

    invoke-static {v0}, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->access$2900(Lorg/telegram/ui/Components/InviteLinkBottomSheet;)I

    move-result p1

    invoke-static {p1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object p1

    iget-wide v0, p1, Lorg/telegram/messenger/UserConfig;->clientUserId:J

    cmp-long p1, v4, v0

    if-nez p1, :cond_0

    return v3

    :cond_0
    return v2

    .line 984
    :cond_1
    iget v1, v0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->joinedStartRow:I

    if-lt p1, v1, :cond_2

    iget v1, v0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->joinedEndRow:I

    if-lt p1, v1, :cond_3

    :cond_2
    iget v1, v0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->requestedStartRow:I

    if-lt p1, v1, :cond_4

    iget v0, v0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->requestedEndRow:I

    if-ge p1, v0, :cond_4

    :cond_3
    return v2

    :cond_4
    return v3
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move/from16 v7, p2

    .line 788
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v2, :cond_20

    const/4 v5, -0x1

    const/4 v6, 0x1

    if-eq v2, v6, :cond_b

    const/4 v7, 0x3

    if-eq v2, v7, :cond_a

    const/4 v7, 0x4

    if-eq v2, v7, :cond_3

    const/16 v3, 0x8

    if-eq v2, v3, :cond_1

    const/16 v3, 0x9

    if-eq v2, v3, :cond_0

    goto/16 :goto_d

    .line 966
    :cond_0
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Components/InviteLinkBottomSheet$RevenueCell;

    iget-object v2, v1, Lorg/telegram/ui/Components/InviteLinkBottomSheet$Adapter;->this$0:Lorg/telegram/ui/Components/InviteLinkBottomSheet;

    iget-object v2, v2, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->invite:Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->subscription_pricing:Lorg/telegram/tgnet/tl/TL_stars$TL_starsSubscriptionPricing;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->usage:I

    invoke-virtual {v0, v3, v2}, Lorg/telegram/ui/Components/InviteLinkBottomSheet$RevenueCell;->set(Lorg/telegram/tgnet/tl/TL_stars$TL_starsSubscriptionPricing;I)V

    return-void

    .line 957
    :cond_1
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Components/InviteLinkBottomSheet$EmptyHintRow;

    .line 958
    iget-object v2, v1, Lorg/telegram/ui/Components/InviteLinkBottomSheet$Adapter;->this$0:Lorg/telegram/ui/Components/InviteLinkBottomSheet;

    iget-object v2, v2, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->invite:Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->usage_limit:I

    if-lez v2, :cond_2

    .line 959
    iget-object v3, v0, Lorg/telegram/ui/Components/InviteLinkBottomSheet$EmptyHintRow;->textView:Landroid/widget/TextView;

    const-string v5, "PeopleCanJoinViaLinkCount"

    new-array v6, v4, [Ljava/lang/Object;

    invoke-static {v5, v2, v6}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 960
    iget-object v0, v0, Lorg/telegram/ui/Components/InviteLinkBottomSheet$EmptyHintRow;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 962
    :cond_2
    iget-object v0, v0, Lorg/telegram/ui/Components/InviteLinkBottomSheet$EmptyHintRow;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 916
    :cond_3
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Components/InviteLinkBottomSheet$TimerPrivacyCell;

    .line 917
    invoke-virtual {v0}, Lorg/telegram/ui/Components/InviteLinkBottomSheet$TimerPrivacyCell;->cancelTimer()V

    .line 918
    iput-boolean v4, v0, Lorg/telegram/ui/Components/InviteLinkBottomSheet$TimerPrivacyCell;->timer:Z

    .line 919
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText4:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setTextColor(I)V

    .line 920
    invoke-virtual {v0, v4}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setFixedSize(I)V

    .line 921
    iget-object v2, v1, Lorg/telegram/ui/Components/InviteLinkBottomSheet$Adapter;->this$0:Lorg/telegram/ui/Components/InviteLinkBottomSheet;

    iget-object v2, v2, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->invite:Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    iget-boolean v7, v2, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->revoked:Z

    if-eqz v7, :cond_4

    .line 922
    sget v2, Lorg/telegram/messenger/R$string;->LinkIsNoActive:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 923
    :cond_4
    iget-boolean v7, v2, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->expired:Z

    if-eqz v7, :cond_6

    .line 924
    iget v3, v2, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->usage_limit:I

    if-lez v3, :cond_5

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->usage:I

    if-ne v3, v2, :cond_5

    .line 925
    sget v2, Lorg/telegram/messenger/R$string;->LinkIsExpiredLimitReached:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 927
    :cond_5
    sget v2, Lorg/telegram/messenger/R$string;->LinkIsExpired:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    .line 928
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedRegular:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setTextColor(I)V

    return-void

    .line 930
    :cond_6
    iget v2, v2, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->expire_date:I

    if-lez v2, :cond_9

    .line 931
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v5, v1, Lorg/telegram/ui/Components/InviteLinkBottomSheet$Adapter;->this$0:Lorg/telegram/ui/Components/InviteLinkBottomSheet;

    invoke-static {v5}, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->-$$Nest$fgettimeDif(Lorg/telegram/ui/Components/InviteLinkBottomSheet;)J

    move-result-wide v7

    const-wide/16 v9, 0x3e8

    mul-long/2addr v7, v9

    add-long/2addr v2, v7

    .line 932
    iget-object v5, v1, Lorg/telegram/ui/Components/InviteLinkBottomSheet$Adapter;->this$0:Lorg/telegram/ui/Components/InviteLinkBottomSheet;

    iget-object v5, v5, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->invite:Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->expire_date:I

    int-to-long v7, v5

    mul-long/2addr v7, v9

    sub-long/2addr v7, v2

    const-wide/16 v2, 0x0

    cmp-long v11, v7, v2

    if-gez v11, :cond_7

    move-wide v7, v2

    :cond_7
    const-wide/32 v2, 0x5265c00

    cmp-long v2, v7, v2

    if-lez v2, :cond_8

    int-to-long v2, v5

    .line 940
    invoke-static {v2, v3, v4}, Lorg/telegram/messenger/LocaleController;->formatDateAudio(JZ)Ljava/lang/String;

    move-result-object v2

    .line 941
    sget v3, Lorg/telegram/messenger/R$string;->LinkExpiresIn:I

    new-array v5, v6, [Ljava/lang/Object;

    aput-object v2, v5, v4

    const-string v2, "LinkExpiresIn"

    invoke-static {v2, v3, v5}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 943
    :cond_8
    div-long/2addr v7, v9

    const-wide/16 v2, 0x3c

    rem-long v9, v7, v2

    long-to-int v5, v9

    .line 944
    div-long/2addr v7, v2

    rem-long v9, v7, v2

    long-to-int v9, v9

    .line 945
    div-long/2addr v7, v2

    long-to-int v2, v7

    .line 946
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-array v8, v6, [Ljava/lang/Object;

    aput-object v2, v8, v4

    const-string v2, "%02d"

    invoke-static {v7, v2, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-array v8, v6, [Ljava/lang/Object;

    aput-object v2, v8, v4

    const-string v2, ":%02d"

    invoke-static {v7, v2, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-array v8, v6, [Ljava/lang/Object;

    aput-object v5, v8, v4

    invoke-static {v7, v2, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 947
    iput-boolean v6, v0, Lorg/telegram/ui/Components/InviteLinkBottomSheet$TimerPrivacyCell;->timer:Z

    .line 948
    invoke-virtual {v0}, Lorg/telegram/ui/Components/InviteLinkBottomSheet$TimerPrivacyCell;->runTimer()V

    .line 949
    sget v3, Lorg/telegram/messenger/R$string;->LinkExpiresInTime:I

    new-array v5, v6, [Ljava/lang/Object;

    aput-object v2, v5, v4

    const-string v2, "LinkExpiresInTime"

    invoke-static {v2, v3, v5}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 952
    :cond_9
    invoke-virtual {v0, v5}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setFixedSize(I)V

    .line 953
    invoke-virtual {v0, v3}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 907
    :cond_a
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Components/LinkActionView;

    .line 908
    invoke-virtual {v0, v4, v3}, Lorg/telegram/ui/Components/LinkActionView;->setUsers(ILjava/util/ArrayList;)V

    .line 909
    iget-object v2, v1, Lorg/telegram/ui/Components/InviteLinkBottomSheet$Adapter;->this$0:Lorg/telegram/ui/Components/InviteLinkBottomSheet;

    iget-object v2, v2, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->invite:Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->link:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/LinkActionView;->setLink(Ljava/lang/String;)V

    .line 910
    iget-object v2, v1, Lorg/telegram/ui/Components/InviteLinkBottomSheet$Adapter;->this$0:Lorg/telegram/ui/Components/InviteLinkBottomSheet;

    iget-object v2, v2, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->invite:Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->revoked:Z

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/LinkActionView;->setRevoke(Z)V

    .line 911
    iget-object v2, v1, Lorg/telegram/ui/Components/InviteLinkBottomSheet$Adapter;->this$0:Lorg/telegram/ui/Components/InviteLinkBottomSheet;

    iget-object v2, v2, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->invite:Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->permanent:Z

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/LinkActionView;->setPermanent(Z)V

    .line 912
    iget-object v2, v1, Lorg/telegram/ui/Components/InviteLinkBottomSheet$Adapter;->this$0:Lorg/telegram/ui/Components/InviteLinkBottomSheet;

    invoke-static {v2}, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->-$$Nest$fgetcanEdit(Lorg/telegram/ui/Components/InviteLinkBottomSheet;)Z

    move-result v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/LinkActionView;->setCanEdit(Z)V

    .line 913
    iget-object v2, v1, Lorg/telegram/ui/Components/InviteLinkBottomSheet$Adapter;->this$0:Lorg/telegram/ui/Components/InviteLinkBottomSheet;

    invoke-static {v2}, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->-$$Nest$fgetcanEdit(Lorg/telegram/ui/Components/InviteLinkBottomSheet;)Z

    move-result v2

    xor-int/2addr v2, v6

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/LinkActionView;->hideRevokeOption(Z)V

    return-void

    .line 817
    :cond_b
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object v8, v0

    check-cast v8, Lorg/telegram/ui/Components/InviteLinkBottomSheet$RevenueUserCell;

    .line 825
    iget-object v0, v1, Lorg/telegram/ui/Components/InviteLinkBottomSheet$Adapter;->this$0:Lorg/telegram/ui/Components/InviteLinkBottomSheet;

    iget v2, v0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->creatorRow:I

    if-ne v7, v2, :cond_c

    .line 826
    iget-object v0, v0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->invite:Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    iget-wide v9, v0, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->admin_id:J

    move-object v14, v3

    goto :goto_0

    .line 828
    :cond_c
    iget v2, v0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->joinedStartRow:I

    .line 829
    iget-object v9, v0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->joinedUsers:Ljava/util/ArrayList;

    .line 830
    iget v10, v0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->expiredStartRow:I

    if-eq v10, v5, :cond_d

    if-lt v7, v10, :cond_d

    .line 832
    iget-object v9, v0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->expiredUsers:Ljava/util/ArrayList;

    move v2, v10

    .line 834
    :cond_d
    iget v10, v0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->requestedStartRow:I

    if-eq v10, v5, :cond_e

    if-lt v7, v10, :cond_e

    .line 836
    iget-object v9, v0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->requestedUsers:Ljava/util/ArrayList;

    move v2, v10

    :cond_e
    sub-int v0, v7, v2

    .line 838
    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_chatInviteImporter;

    .line 839
    iget-wide v9, v0, Lorg/telegram/tgnet/TLRPC$TL_chatInviteImporter;->user_id:J

    move-object v14, v0

    .line 841
    :goto_0
    iget-object v0, v1, Lorg/telegram/ui/Components/InviteLinkBottomSheet$Adapter;->this$0:Lorg/telegram/ui/Components/InviteLinkBottomSheet;

    iget-object v0, v0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->users:Ljava/util/HashMap;

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$User;

    .line 842
    iget-object v2, v1, Lorg/telegram/ui/Components/InviteLinkBottomSheet$Adapter;->this$0:Lorg/telegram/ui/Components/InviteLinkBottomSheet;

    iget-object v2, v2, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz v2, :cond_10

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    if-eqz v2, :cond_10

    move v2, v4

    .line 843
    :goto_1
    iget-object v5, v1, Lorg/telegram/ui/Components/InviteLinkBottomSheet$Adapter;->this$0:Lorg/telegram/ui/Components/InviteLinkBottomSheet;

    iget-object v5, v5, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_10

    .line 844
    iget-object v5, v1, Lorg/telegram/ui/Components/InviteLinkBottomSheet$Adapter;->this$0:Lorg/telegram/ui/Components/InviteLinkBottomSheet;

    iget-object v5, v5, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    iget-wide v11, v5, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:J

    cmp-long v5, v11, v9

    if-nez v5, :cond_f

    .line 845
    iget-object v5, v1, Lorg/telegram/ui/Components/InviteLinkBottomSheet$Adapter;->this$0:Lorg/telegram/ui/Components/InviteLinkBottomSheet;

    iget-object v5, v5, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    goto :goto_2

    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_10
    move-object v2, v3

    .line 850
    :goto_2
    iget-object v5, v1, Lorg/telegram/ui/Components/InviteLinkBottomSheet$Adapter;->this$0:Lorg/telegram/ui/Components/InviteLinkBottomSheet;

    iget v11, v5, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->creatorRow:I

    if-ne v7, v11, :cond_12

    .line 851
    iget-object v0, v5, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->users:Ljava/util/HashMap;

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$User;

    if-nez v0, :cond_11

    .line 853
    iget-object v0, v1, Lorg/telegram/ui/Components/InviteLinkBottomSheet$Adapter;->this$0:Lorg/telegram/ui/Components/InviteLinkBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->access$2500(Lorg/telegram/ui/Components/InviteLinkBottomSheet;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v5, v1, Lorg/telegram/ui/Components/InviteLinkBottomSheet$Adapter;->this$0:Lorg/telegram/ui/Components/InviteLinkBottomSheet;

    iget-object v5, v5, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->invite:Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    iget-wide v9, v5, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->admin_id:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    :cond_11
    if-eqz v0, :cond_12

    .line 856
    iget-object v5, v1, Lorg/telegram/ui/Components/InviteLinkBottomSheet$Adapter;->this$0:Lorg/telegram/ui/Components/InviteLinkBottomSheet;

    iget-object v5, v5, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->invite:Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->date:I

    int-to-long v9, v5

    invoke-static {v9, v10, v4}, Lorg/telegram/messenger/LocaleController;->formatDateAudio(JZ)Ljava/lang/String;

    move-result-object v5

    move-object v9, v0

    move-object v15, v5

    goto :goto_3

    :cond_12
    move-object v9, v0

    move-object v15, v3

    .line 859
    :goto_3
    iget-object v0, v1, Lorg/telegram/ui/Components/InviteLinkBottomSheet$Adapter;->this$0:Lorg/telegram/ui/Components/InviteLinkBottomSheet;

    iget v0, v0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->creatorRow:I

    if-ne v7, v0, :cond_1e

    if-eqz v2, :cond_1e

    .line 860
    instance-of v0, v2, Lorg/telegram/tgnet/TLRPC$TL_chatChannelParticipant;

    const-string v3, "ChannelAdmin"

    const-string v5, "ChannelCreator"

    if-eqz v0, :cond_18

    .line 861
    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_chatChannelParticipant;

    iget-object v0, v2, Lorg/telegram/tgnet/TLRPC$TL_chatChannelParticipant;->channelParticipant:Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    .line 862
    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->rank:Ljava/lang/String;

    .line 863
    instance-of v10, v0, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantCreator;

    if-eqz v10, :cond_14

    .line 864
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13

    sget v0, Lorg/telegram/messenger/R$string;->ChannelCreator:I

    invoke-static {v5, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    :cond_13
    move-object v3, v2

    move v0, v4

    move v2, v6

    :goto_4
    move v5, v2

    goto :goto_6

    .line 868
    :cond_14
    instance-of v5, v0, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantAdmin;

    if-eqz v5, :cond_17

    .line 869
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_15

    sget v2, Lorg/telegram/messenger/R$string;->ChannelAdmin:I

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 872
    :cond_15
    iget-wide v10, v0, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->promoted_by:J

    iget-object v0, v1, Lorg/telegram/ui/Components/InviteLinkBottomSheet$Adapter;->this$0:Lorg/telegram/ui/Components/InviteLinkBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->access$2600(Lorg/telegram/ui/Components/InviteLinkBottomSheet;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v12

    cmp-long v0, v10, v12

    if-nez v0, :cond_16

    move v0, v6

    goto :goto_5

    :cond_16
    move v0, v4

    :goto_5
    move-object v3, v2

    move v5, v4

    move v2, v6

    goto :goto_6

    :cond_17
    move-object v3, v2

    move v0, v4

    move v2, v0

    goto :goto_4

    :goto_6
    move v10, v2

    goto :goto_9

    .line 877
    :cond_18
    iget-object v0, v2, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->rank:Ljava/lang/String;

    .line 878
    instance-of v10, v2, Lorg/telegram/tgnet/TLRPC$TL_chatParticipantCreator;

    if-eqz v10, :cond_1a

    .line 879
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_19

    sget v0, Lorg/telegram/messenger/R$string;->ChannelCreator:I

    invoke-static {v5, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    :cond_19
    move-object v3, v0

    move v0, v4

    move v5, v6

    :goto_7
    move v10, v5

    goto :goto_9

    .line 883
    :cond_1a
    instance-of v5, v2, Lorg/telegram/tgnet/TLRPC$TL_chatParticipantAdmin;

    if-eqz v5, :cond_1d

    .line 884
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1b

    sget v0, Lorg/telegram/messenger/R$string;->ChannelAdmin:I

    invoke-static {v3, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    :cond_1b
    move-object v3, v0

    .line 887
    iget-wide v10, v2, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->inviter_id:J

    iget-object v0, v1, Lorg/telegram/ui/Components/InviteLinkBottomSheet$Adapter;->this$0:Lorg/telegram/ui/Components/InviteLinkBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->access$2700(Lorg/telegram/ui/Components/InviteLinkBottomSheet;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v12

    cmp-long v0, v10, v12

    if-nez v0, :cond_1c

    move v0, v6

    goto :goto_8

    :cond_1c
    move v0, v4

    :goto_8
    move v5, v4

    move v10, v6

    goto :goto_9

    :cond_1d
    move-object v3, v0

    :cond_1e
    move v0, v4

    move v5, v0

    goto :goto_7

    .line 897
    :goto_9
    invoke-static {v9}, Lorg/telegram/messenger/UserObject;->isUserSelf(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v2

    if-eqz v2, :cond_1f

    iget-object v2, v1, Lorg/telegram/ui/Components/InviteLinkBottomSheet$Adapter;->this$0:Lorg/telegram/ui/Components/InviteLinkBottomSheet;

    invoke-static {v2}, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->access$2800(Lorg/telegram/ui/Components/InviteLinkBottomSheet;)I

    move-result v2

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v11, v1, Lorg/telegram/ui/Components/InviteLinkBottomSheet$Adapter;->this$0:Lorg/telegram/ui/Components/InviteLinkBottomSheet;

    invoke-static {v11}, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->-$$Nest$fgetchatId(Lorg/telegram/ui/Components/InviteLinkBottomSheet;)J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v2, v11}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/ChatObject;->canManageMyTag(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v2

    if-eqz v2, :cond_1f

    move v12, v6

    goto :goto_a

    :cond_1f
    move v12, v4

    .line 898
    :goto_a
    new-instance v13, Lorg/telegram/ui/Components/InviteLinkBottomSheet$Adapter$$ExternalSyntheticLambda0;

    move v6, v0

    move-object v2, v9

    move v4, v10

    move-object v0, v13

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/InviteLinkBottomSheet$Adapter$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/InviteLinkBottomSheet$Adapter;Lorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;ZZZ)V

    move-object v9, v3

    move v11, v5

    invoke-virtual/range {v8 .. v13}, Lorg/telegram/ui/Cells/UserCell;->setAdminRole(Ljava/lang/String;ZZZLandroid/view/View$OnClickListener;)V

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v10, 0x0

    move-object v9, v2

    move-object v11, v15

    .line 901
    invoke-virtual/range {v8 .. v13}, Lorg/telegram/ui/Cells/UserCell;->setData(Ljava/lang/Object;Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZ)V

    .line 902
    iget-object v0, v1, Lorg/telegram/ui/Components/InviteLinkBottomSheet$Adapter;->this$0:Lorg/telegram/ui/Components/InviteLinkBottomSheet;

    iget v2, v0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->creatorRow:I

    if-eq v7, v2, :cond_28

    iget-object v0, v0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->invite:Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->subscription_pricing:Lorg/telegram/tgnet/tl/TL_stars$TL_starsSubscriptionPricing;

    if-eqz v0, :cond_28

    if-eqz v14, :cond_28

    .line 903
    iget v2, v14, Lorg/telegram/tgnet/TLRPC$TL_chatInviteImporter;->date:I

    invoke-virtual {v8, v0, v2}, Lorg/telegram/ui/Components/InviteLinkBottomSheet$RevenueUserCell;->setRevenue(Lorg/telegram/tgnet/tl/TL_stars$TL_starsSubscriptionPricing;I)V

    return-void

    .line 790
    :cond_20
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Cells/GraySectionCell;

    .line 791
    iget-object v2, v1, Lorg/telegram/ui/Components/InviteLinkBottomSheet$Adapter;->this$0:Lorg/telegram/ui/Components/InviteLinkBottomSheet;

    iget v5, v2, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->creatorHeaderRow:I

    if-ne v7, v5, :cond_21

    .line 792
    sget v2, Lorg/telegram/messenger/R$string;->LinkCreatedeBy:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Cells/GraySectionCell;->setText(Ljava/lang/CharSequence;)V

    .line 793
    invoke-virtual {v0, v3}, Lorg/telegram/ui/Cells/GraySectionCell;->setRightText(Ljava/lang/CharSequence;)V

    return-void

    .line 794
    :cond_21
    iget v5, v2, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->revenueHeaderRow:I

    if-ne v7, v5, :cond_22

    .line 795
    sget v2, Lorg/telegram/messenger/R$string;->LinkRevenue:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Cells/GraySectionCell;->setText(Ljava/lang/CharSequence;)V

    .line 796
    invoke-virtual {v0, v3}, Lorg/telegram/ui/Cells/GraySectionCell;->setRightText(Ljava/lang/CharSequence;)V

    return-void

    .line 797
    :cond_22
    iget v5, v2, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->joinedHeaderRow:I

    if-ne v7, v5, :cond_26

    .line 798
    iget-object v2, v2, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->invite:Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    iget v5, v2, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->usage:I

    if-lez v5, :cond_23

    .line 799
    const-string v2, "PeopleJoined"

    new-array v6, v4, [Ljava/lang/Object;

    invoke-static {v2, v5, v6}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Cells/GraySectionCell;->setText(Ljava/lang/CharSequence;)V

    goto :goto_c

    .line 801
    :cond_23
    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->subscription_pricing:Lorg/telegram/tgnet/tl/TL_stars$TL_starsSubscriptionPricing;

    if-eqz v2, :cond_24

    sget v2, Lorg/telegram/messenger/R$string;->NoOneSubscribed:I

    goto :goto_b

    :cond_24
    sget v2, Lorg/telegram/messenger/R$string;->NoOneJoined:I

    :goto_b
    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Cells/GraySectionCell;->setText(Ljava/lang/CharSequence;)V

    .line 803
    :goto_c
    iget-object v2, v1, Lorg/telegram/ui/Components/InviteLinkBottomSheet$Adapter;->this$0:Lorg/telegram/ui/Components/InviteLinkBottomSheet;

    iget-object v2, v2, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->invite:Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    iget-boolean v5, v2, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->expired:Z

    if-nez v5, :cond_25

    iget-boolean v5, v2, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->revoked:Z

    if-nez v5, :cond_25

    iget v5, v2, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->usage_limit:I

    if-lez v5, :cond_25

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->usage:I

    if-lez v2, :cond_25

    sub-int/2addr v5, v2

    .line 804
    new-array v2, v4, [Ljava/lang/Object;

    const-string v3, "PeopleJoinedRemaining"

    invoke-static {v3, v5, v2}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Cells/GraySectionCell;->setRightText(Ljava/lang/CharSequence;)V

    return-void

    .line 806
    :cond_25
    invoke-virtual {v0, v3}, Lorg/telegram/ui/Cells/GraySectionCell;->setRightText(Ljava/lang/CharSequence;)V

    return-void

    .line 808
    :cond_26
    iget v5, v2, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->expiredHeaderRow:I

    if-ne v7, v5, :cond_27

    .line 809
    iget-object v2, v2, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->invite:Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->subscription_expired:I

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "PeopleSubscriptionExpired"

    invoke-static {v5, v2, v4}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Cells/GraySectionCell;->setText(Ljava/lang/CharSequence;)V

    .line 810
    invoke-virtual {v0, v3}, Lorg/telegram/ui/Cells/GraySectionCell;->setRightText(Ljava/lang/CharSequence;)V

    return-void

    .line 811
    :cond_27
    iget v5, v2, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->requestedHeaderRow:I

    if-ne v7, v5, :cond_28

    .line 812
    iget-object v2, v2, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->invite:Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->requested:I

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "JoinRequests"

    invoke-static {v5, v2, v4}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Cells/GraySectionCell;->setText(Ljava/lang/CharSequence;)V

    .line 813
    invoke-virtual {v0, v3}, Lorg/telegram/ui/Cells/GraySectionCell;->setRightText(Ljava/lang/CharSequence;)V

    :cond_28
    :goto_d
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 10

    .line 628
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 p1, -0x2

    const/4 v9, -0x1

    const/16 v0, 0xc

    const/4 v1, 0x1

    const/4 v3, 0x0

    packed-switch p2, :pswitch_data_0

    .line 632
    new-instance p2, Lorg/telegram/ui/Cells/GraySectionCell;

    iget-object v0, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet$Adapter;->this$0:Lorg/telegram/ui/Components/InviteLinkBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->access$1800(Lorg/telegram/ui/Components/InviteLinkBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v0

    invoke-direct {p2, v2, v0}, Lorg/telegram/ui/Cells/GraySectionCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    :goto_0
    move-object v1, p0

    goto/16 :goto_1

    .line 779
    :pswitch_0
    new-instance p2, Lorg/telegram/ui/Components/InviteLinkBottomSheet$RevenueCell;

    iget-object v0, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet$Adapter;->this$0:Lorg/telegram/ui/Components/InviteLinkBottomSheet;

    invoke-direct {p2, v0, v2}, Lorg/telegram/ui/Components/InviteLinkBottomSheet$RevenueCell;-><init>(Lorg/telegram/ui/Components/InviteLinkBottomSheet;Landroid/content/Context;)V

    goto :goto_0

    .line 776
    :pswitch_1
    new-instance p2, Lorg/telegram/ui/Components/InviteLinkBottomSheet$EmptyHintRow;

    iget-object v0, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet$Adapter;->this$0:Lorg/telegram/ui/Components/InviteLinkBottomSheet;

    invoke-direct {p2, v0, v2}, Lorg/telegram/ui/Components/InviteLinkBottomSheet$EmptyHintRow;-><init>(Lorg/telegram/ui/Components/InviteLinkBottomSheet;Landroid/content/Context;)V

    goto :goto_0

    .line 768
    :pswitch_2
    new-instance p2, Lorg/telegram/ui/Cells/ShadowSectionCell;

    invoke-direct {p2, v2, v0}, Lorg/telegram/ui/Cells/ShadowSectionCell;-><init>(Landroid/content/Context;I)V

    .line 769
    sget v0, Lorg/telegram/messenger/R$drawable;->greydivider_bottom:I

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    invoke-static {v2, v0, v4}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawableByKey(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 770
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v4

    invoke-direct {v2, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 771
    new-instance v4, Lorg/telegram/ui/Components/CombinedDrawable;

    invoke-direct {v4, v2, v0, v3, v3}, Lorg/telegram/ui/Components/CombinedDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;II)V

    .line 772
    invoke-virtual {v4, v1}, Lorg/telegram/ui/Components/CombinedDrawable;->setFullsize(Z)V

    .line 773
    invoke-virtual {p2, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 760
    :pswitch_3
    new-instance p2, Lorg/telegram/ui/Components/InviteLinkBottomSheet$Adapter$3;

    invoke-direct {p2, p0, v2}, Lorg/telegram/ui/Components/InviteLinkBottomSheet$Adapter$3;-><init>(Lorg/telegram/ui/Components/InviteLinkBottomSheet$Adapter;Landroid/content/Context;)V

    goto :goto_0

    .line 752
    :pswitch_4
    new-instance p2, Lorg/telegram/ui/Components/FlickerLoadingView;

    invoke-direct {p2, v2}, Lorg/telegram/ui/Components/FlickerLoadingView;-><init>(Landroid/content/Context;)V

    .line 753
    invoke-virtual {p2, v1}, Lorg/telegram/ui/Components/FlickerLoadingView;->setIsSingleCell(Z)V

    const/16 v0, 0xa

    .line 754
    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/FlickerLoadingView;->setViewType(I)V

    .line 755
    invoke-virtual {p2, v3}, Lorg/telegram/ui/Components/FlickerLoadingView;->showDate(Z)V

    const/high16 v0, 0x41200000    # 10.0f

    .line 756
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/FlickerLoadingView;->setPaddingLeft(I)V

    goto :goto_0

    .line 746
    :pswitch_5
    new-instance p2, Lorg/telegram/ui/Components/InviteLinkBottomSheet$TimerPrivacyCell;

    iget-object v0, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet$Adapter;->this$0:Lorg/telegram/ui/Components/InviteLinkBottomSheet;

    invoke-direct {p2, v0, v2}, Lorg/telegram/ui/Components/InviteLinkBottomSheet$TimerPrivacyCell;-><init>(Lorg/telegram/ui/Components/InviteLinkBottomSheet;Landroid/content/Context;)V

    .line 747
    new-instance v0, Lorg/telegram/ui/Components/CombinedDrawable;

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v4

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    sget v4, Lorg/telegram/messenger/R$drawable;->greydivider:I

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    invoke-static {v2, v4, v5}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawableByKey(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-direct {v0, v3, v2}, Lorg/telegram/ui/Components/CombinedDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 748
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/CombinedDrawable;->setFullsize(Z)V

    .line 749
    invoke-virtual {p2, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 642
    :pswitch_6
    new-instance v0, Lorg/telegram/ui/Components/InviteLinkBottomSheet$Adapter$1;

    iget-object v4, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet$Adapter;->this$0:Lorg/telegram/ui/Components/InviteLinkBottomSheet;

    iget-object v3, v4, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-static {v4}, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->-$$Nest$fgetchatId(Lorg/telegram/ui/Components/InviteLinkBottomSheet;)J

    move-result-wide v5

    iget-object p2, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet$Adapter;->this$0:Lorg/telegram/ui/Components/InviteLinkBottomSheet;

    invoke-static {p2}, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->-$$Nest$fgetisChannel(Lorg/telegram/ui/Components/InviteLinkBottomSheet;)Z

    move-result v8

    const/4 v7, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/Components/InviteLinkBottomSheet$Adapter$1;-><init>(Lorg/telegram/ui/Components/InviteLinkBottomSheet$Adapter;Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/BottomSheet;JZZ)V

    .line 651
    new-instance p2, Lorg/telegram/ui/Components/InviteLinkBottomSheet$Adapter$2;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Components/InviteLinkBottomSheet$Adapter$2;-><init>(Lorg/telegram/ui/Components/InviteLinkBottomSheet$Adapter;)V

    invoke-virtual {v0, p2}, Lorg/telegram/ui/Components/LinkActionView;->setDelegate(Lorg/telegram/ui/Components/LinkActionView$Delegate;)V

    .line 743
    new-instance p2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    invoke-direct {p2, v9, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object p2, v0

    goto :goto_1

    :pswitch_7
    move-object v1, p0

    .line 639
    new-instance p2, Lorg/telegram/ui/Cells/ShadowSectionCell;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    invoke-direct {p2, v2, v0, v3}, Lorg/telegram/ui/Cells/ShadowSectionCell;-><init>(Landroid/content/Context;II)V

    goto :goto_1

    :pswitch_8
    move-object v1, p0

    .line 636
    new-instance p2, Lorg/telegram/ui/Components/InviteLinkBottomSheet$RevenueUserCell;

    iget-object v0, v1, Lorg/telegram/ui/Components/InviteLinkBottomSheet$Adapter;->this$0:Lorg/telegram/ui/Components/InviteLinkBottomSheet;

    invoke-direct {p2, v0, v2}, Lorg/telegram/ui/Components/InviteLinkBottomSheet$RevenueUserCell;-><init>(Lorg/telegram/ui/Components/InviteLinkBottomSheet;Landroid/content/Context;)V

    .line 782
    :goto_1
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    invoke-direct {v0, v9, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 783
    new-instance p1, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
