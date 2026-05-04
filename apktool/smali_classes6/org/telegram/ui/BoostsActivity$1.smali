.class Lorg/telegram/ui/BoostsActivity$1;
.super Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/BoostsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/BoostsActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/BoostsActivity;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lorg/telegram/ui/BoostsActivity$1;->this$0:Lorg/telegram/ui/BoostsActivity;

    invoke-direct {p0}, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 334
    iget-object v0, p0, Lorg/telegram/ui/BoostsActivity$1;->this$0:Lorg/telegram/ui/BoostsActivity;

    invoke-static {v0}, Lorg/telegram/ui/BoostsActivity;->-$$Nest$fgetitems(Lorg/telegram/ui/BoostsActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 339
    iget-object v0, p0, Lorg/telegram/ui/BoostsActivity$1;->this$0:Lorg/telegram/ui/BoostsActivity;

    invoke-static {v0}, Lorg/telegram/ui/BoostsActivity;->-$$Nest$fgetitems(Lorg/telegram/ui/BoostsActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/BoostsActivity$ItemInternal;

    iget p1, p1, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;->viewType:I

    return p1
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 1

    .line 126
    iget-object v0, p0, Lorg/telegram/ui/BoostsActivity$1;->this$0:Lorg/telegram/ui/BoostsActivity;

    invoke-static {v0}, Lorg/telegram/ui/BoostsActivity;->-$$Nest$fgetitems(Lorg/telegram/ui/BoostsActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/BoostsActivity$ItemInternal;

    iget-boolean p1, p1, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;->selectable:Z

    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 13

    .line 257
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_12

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/16 v1, 0xe

    if-eq v0, v1, :cond_12

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/16 v1, 0xf

    if-ne v0, v1, :cond_0

    goto/16 :goto_7

    .line 259
    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/16 v1, 0xc

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v2, :cond_11

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    if-eq v0, v1, :cond_11

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/16 v4, 0x10

    if-ne v0, v4, :cond_1

    goto/16 :goto_6

    .line 266
    :cond_1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/4 v1, 0x2

    const/4 v4, 0x3

    const/4 v5, 0x0

    if-nez v0, :cond_5

    .line 267
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/StatisticActivity$OverviewCell;

    .line 268
    iget-object p2, p0, Lorg/telegram/ui/BoostsActivity$1;->this$0:Lorg/telegram/ui/BoostsActivity;

    invoke-static {p2}, Lorg/telegram/ui/BoostsActivity;->-$$Nest$fgetboostsStatus(Lorg/telegram/ui/BoostsActivity;)Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;

    move-result-object p2

    iget p2, p2, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;->level:I

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    sget v0, Lorg/telegram/messenger/R$string;->BoostsLevel2:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v3, p2, v5, v0}, Lorg/telegram/ui/StatisticActivity$OverviewCell;->setData(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    iget-object p2, p0, Lorg/telegram/ui/BoostsActivity$1;->this$0:Lorg/telegram/ui/BoostsActivity;

    invoke-static {p2}, Lorg/telegram/ui/BoostsActivity;->-$$Nest$fgetboostsStatus(Lorg/telegram/ui/BoostsActivity;)Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;

    move-result-object p2

    iget-object p2, p2, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;->premium_audience:Lorg/telegram/tgnet/tl/TL_stats$TL_statsPercentValue;

    if-eqz p2, :cond_3

    iget-object p2, p0, Lorg/telegram/ui/BoostsActivity$1;->this$0:Lorg/telegram/ui/BoostsActivity;

    invoke-static {p2}, Lorg/telegram/ui/BoostsActivity;->-$$Nest$fgetboostsStatus(Lorg/telegram/ui/BoostsActivity;)Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;

    move-result-object p2

    iget-object p2, p2, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;->premium_audience:Lorg/telegram/tgnet/tl/TL_stats$TL_statsPercentValue;

    iget-wide v6, p2, Lorg/telegram/tgnet/tl/TL_stats$TL_statsPercentValue;->total:D

    const-wide/16 v8, 0x0

    cmpl-double p2, v6, v8

    if-eqz p2, :cond_3

    .line 270
    iget-object p2, p0, Lorg/telegram/ui/BoostsActivity$1;->this$0:Lorg/telegram/ui/BoostsActivity;

    invoke-static {p2}, Lorg/telegram/ui/BoostsActivity;->-$$Nest$fgetboostsStatus(Lorg/telegram/ui/BoostsActivity;)Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;

    move-result-object p2

    iget-object p2, p2, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;->premium_audience:Lorg/telegram/tgnet/tl/TL_stats$TL_statsPercentValue;

    iget-wide v6, p2, Lorg/telegram/tgnet/tl/TL_stats$TL_statsPercentValue;->part:D

    double-to-float p2, v6

    iget-object v0, p0, Lorg/telegram/ui/BoostsActivity$1;->this$0:Lorg/telegram/ui/BoostsActivity;

    invoke-static {v0}, Lorg/telegram/ui/BoostsActivity;->-$$Nest$fgetboostsStatus(Lorg/telegram/ui/BoostsActivity;)Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;->premium_audience:Lorg/telegram/tgnet/tl/TL_stats$TL_statsPercentValue;

    iget-wide v6, v0, Lorg/telegram/tgnet/tl/TL_stats$TL_statsPercentValue;->total:D

    double-to-float v0, v6

    div-float/2addr p2, v0

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float/2addr p2, v0

    .line 271
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u2248"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lorg/telegram/ui/BoostsActivity$1;->this$0:Lorg/telegram/ui/BoostsActivity;

    invoke-static {v6}, Lorg/telegram/ui/BoostsActivity;->-$$Nest$fgetboostsStatus(Lorg/telegram/ui/BoostsActivity;)Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;

    move-result-object v6

    iget-object v6, v6, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;->premium_audience:Lorg/telegram/tgnet/tl/TL_stats$TL_statsPercentValue;

    iget-wide v6, v6, Lorg/telegram/tgnet/tl/TL_stats$TL_statsPercentValue;->part:D

    double-to-int v6, v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    new-array v8, v2, [Ljava/lang/Object;

    aput-object p2, v8, v3

    const-string p2, "%.1f"

    invoke-static {v7, p2, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "%"

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object v6, p0, Lorg/telegram/ui/BoostsActivity$1;->this$0:Lorg/telegram/ui/BoostsActivity;

    invoke-static {v6}, Lorg/telegram/ui/BoostsActivity;->-$$Nest$misChannel(Lorg/telegram/ui/BoostsActivity;)Z

    move-result v6

    if-eqz v6, :cond_2

    sget v6, Lorg/telegram/messenger/R$string;->PremiumSubscribers:I

    goto :goto_0

    :cond_2
    sget v6, Lorg/telegram/messenger/R$string;->PremiumMembers:I

    :goto_0
    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v2, v0, p2, v6}, Lorg/telegram/ui/StatisticActivity$OverviewCell;->setData(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 273
    :cond_3
    iget-object p2, p0, Lorg/telegram/ui/BoostsActivity$1;->this$0:Lorg/telegram/ui/BoostsActivity;

    invoke-static {p2}, Lorg/telegram/ui/BoostsActivity;->-$$Nest$misChannel(Lorg/telegram/ui/BoostsActivity;)Z

    move-result p2

    if-eqz p2, :cond_4

    sget p2, Lorg/telegram/messenger/R$string;->PremiumSubscribers:I

    goto :goto_1

    :cond_4
    sget p2, Lorg/telegram/messenger/R$string;->PremiumMembers:I

    :goto_1
    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "~0"

    const-string v6, "0%"

    invoke-virtual {p1, v2, v0, v6, p2}, Lorg/telegram/ui/StatisticActivity$OverviewCell;->setData(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    :goto_2
    iget-object p2, p0, Lorg/telegram/ui/BoostsActivity$1;->this$0:Lorg/telegram/ui/BoostsActivity;

    invoke-static {p2}, Lorg/telegram/ui/BoostsActivity;->-$$Nest$fgetboostsStatus(Lorg/telegram/ui/BoostsActivity;)Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;

    move-result-object p2

    iget p2, p2, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;->boosts:I

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    sget v0, Lorg/telegram/messenger/R$string;->BoostsExisting:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, p2, v5, v0}, Lorg/telegram/ui/StatisticActivity$OverviewCell;->setData(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    iget-object p2, p0, Lorg/telegram/ui/BoostsActivity$1;->this$0:Lorg/telegram/ui/BoostsActivity;

    invoke-static {p2}, Lorg/telegram/ui/BoostsActivity;->-$$Nest$fgetboostsStatus(Lorg/telegram/ui/BoostsActivity;)Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;

    move-result-object p2

    iget p2, p2, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;->next_level_boosts:I

    iget-object v0, p0, Lorg/telegram/ui/BoostsActivity$1;->this$0:Lorg/telegram/ui/BoostsActivity;

    invoke-static {v0}, Lorg/telegram/ui/BoostsActivity;->-$$Nest$fgetboostsStatus(Lorg/telegram/ui/BoostsActivity;)Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;

    move-result-object v0

    iget v0, v0, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;->boosts:I

    sub-int/2addr p2, v0

    invoke-static {v3, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    sget v0, Lorg/telegram/messenger/R$string;->BoostsToLevel:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v4, p2, v5, v0}, Lorg/telegram/ui/StatisticActivity$OverviewCell;->setData(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/high16 p2, 0x41b80000    # 23.0f

    .line 277
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    invoke-virtual {p1, v0, v1, p2, v2}, Landroid/view/View;->setPadding(IIII)V

    return-void

    .line 278
    :cond_5
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/4 v6, 0x5

    if-ne v0, v6, :cond_7

    .line 279
    iget-object v0, p0, Lorg/telegram/ui/BoostsActivity$1;->this$0:Lorg/telegram/ui/BoostsActivity;

    invoke-static {v0}, Lorg/telegram/ui/BoostsActivity;->-$$Nest$fgetitems(Lorg/telegram/ui/BoostsActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/BoostsActivity$ItemInternal;

    iget-object v0, v0, Lorg/telegram/ui/BoostsActivity$ItemInternal;->booster:Lorg/telegram/tgnet/tl/TL_stories$Boost;

    .line 280
    iget-object v1, p0, Lorg/telegram/ui/BoostsActivity$1;->this$0:Lorg/telegram/ui/BoostsActivity;

    iget v1, v1, Lorg/telegram/ui/BoostsActivity;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-wide v4, v0, Lorg/telegram/tgnet/tl/TL_stories$Boost;->user_id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v8

    .line 281
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object v7, p1

    check-cast v7, Lorg/telegram/ui/Components/Premium/boosts/cells/statistics/GiftedUserCell;

    .line 282
    iget p1, v0, Lorg/telegram/tgnet/tl/TL_stories$Boost;->multiplier:I

    if-le p1, v2, :cond_6

    .line 283
    sget p1, Lorg/telegram/messenger/R$string;->BoostsExpireOn:I

    iget v1, v0, Lorg/telegram/tgnet/tl/TL_stories$Boost;->expires:I

    int-to-long v4, v1

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->formatDate(J)Ljava/lang/String;

    move-result-object v1

    new-array v4, v2, [Ljava/lang/Object;

    aput-object v1, v4, v3

    const-string v1, "BoostsExpireOn"

    invoke-static {v1, p1, v4}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_3
    move-object v10, p1

    goto :goto_4

    .line 284
    :cond_6
    sget p1, Lorg/telegram/messenger/R$string;->BoostExpireOn:I

    iget v1, v0, Lorg/telegram/tgnet/tl/TL_stories$Boost;->expires:I

    int-to-long v4, v1

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->formatDate(J)Ljava/lang/String;

    move-result-object v1

    new-array v4, v2, [Ljava/lang/Object;

    aput-object v1, v4, v3

    const-string v1, "BoostExpireOn"

    invoke-static {v1, p1, v4}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    .line 285
    :goto_4
    invoke-static {v8}, Lorg/telegram/messenger/ContactsController;->formatName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v9

    iget-object p1, p0, Lorg/telegram/ui/BoostsActivity$1;->this$0:Lorg/telegram/ui/BoostsActivity;

    invoke-static {p1}, Lorg/telegram/ui/BoostsActivity;->-$$Nest$fgetitems(Lorg/telegram/ui/BoostsActivity;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/BoostsActivity$ItemInternal;

    iget-boolean p1, p1, Lorg/telegram/ui/BoostsActivity$ItemInternal;->isLast:Z

    xor-int/lit8 v12, p1, 0x1

    const/4 v11, 0x0

    invoke-virtual/range {v7 .. v12}, Lorg/telegram/ui/Cells/UserCell;->setData(Ljava/lang/Object;Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZ)V

    .line 286
    invoke-virtual {v7, v0}, Lorg/telegram/ui/Components/Premium/boosts/cells/statistics/GiftedUserCell;->setStatus(Lorg/telegram/tgnet/tl/TL_stories$Boost;)V

    .line 287
    invoke-virtual {v7, v6}, Lorg/telegram/ui/Cells/UserCell;->setAvatarPadding(I)V

    return-void

    .line 288
    :cond_7
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/4 v7, 0x6

    if-ne v0, v7, :cond_8

    .line 289
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    .line 290
    iget-object v0, p0, Lorg/telegram/ui/BoostsActivity$1;->this$0:Lorg/telegram/ui/BoostsActivity;

    invoke-static {v0}, Lorg/telegram/ui/BoostsActivity;->-$$Nest$fgetitems(Lorg/telegram/ui/BoostsActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/ui/BoostsActivity$ItemInternal;

    iget-object p2, p2, Lorg/telegram/ui/BoostsActivity$ItemInternal;->title:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    const/4 p2, -0x1

    const/high16 v0, 0x3f600000    # 0.875f

    .line 291
    invoke-static {p2, v0}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setTextColor(I)V

    return-void

    .line 292
    :cond_8
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/16 v7, 0x9

    if-ne v0, v7, :cond_a

    .line 293
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/ManageChatTextCell;

    .line 294
    iget-object p2, p0, Lorg/telegram/ui/BoostsActivity$1;->this$0:Lorg/telegram/ui/BoostsActivity;

    invoke-static {p2}, Lorg/telegram/ui/BoostsActivity;->-$$Nest$fgetselectedTab(Lorg/telegram/ui/BoostsActivity;)I

    move-result p2

    if-nez p2, :cond_9

    .line 295
    iget-object p2, p0, Lorg/telegram/ui/BoostsActivity$1;->this$0:Lorg/telegram/ui/BoostsActivity;

    invoke-static {p2}, Lorg/telegram/ui/BoostsActivity;->-$$Nest$fgetnextBoostRemaining(Lorg/telegram/ui/BoostsActivity;)I

    move-result p2

    new-array v0, v3, [Ljava/lang/Object;

    const-string v1, "BoostingShowMoreBoosts"

    invoke-static {v1, p2, v0}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    sget v0, Lorg/telegram/messenger/R$drawable;->arrow_more:I

    invoke-virtual {p1, p2, v5, v0, v3}, Lorg/telegram/ui/Cells/ManageChatTextCell;->setText(Ljava/lang/String;Ljava/lang/String;IZ)V

    return-void

    .line 297
    :cond_9
    iget-object p2, p0, Lorg/telegram/ui/BoostsActivity$1;->this$0:Lorg/telegram/ui/BoostsActivity;

    invoke-static {p2}, Lorg/telegram/ui/BoostsActivity;->-$$Nest$fgetnextGiftsRemaining(Lorg/telegram/ui/BoostsActivity;)I

    move-result p2

    new-array v0, v3, [Ljava/lang/Object;

    const-string v1, "BoostingShowMoreGifts"

    invoke-static {v1, p2, v0}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    sget v0, Lorg/telegram/messenger/R$drawable;->arrow_more:I

    invoke-virtual {p1, p2, v5, v0, v3}, Lorg/telegram/ui/Cells/ManageChatTextCell;->setText(Ljava/lang/String;Ljava/lang/String;IZ)V

    return-void

    .line 299
    :cond_a
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    if-ne v0, v4, :cond_b

    .line 300
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Components/LinkActionView;

    .line 301
    iget-object v0, p0, Lorg/telegram/ui/BoostsActivity$1;->this$0:Lorg/telegram/ui/BoostsActivity;

    invoke-static {v0}, Lorg/telegram/ui/BoostsActivity;->-$$Nest$fgetitems(Lorg/telegram/ui/BoostsActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/ui/BoostsActivity$ItemInternal;

    iget-object p2, p2, Lorg/telegram/ui/BoostsActivity$ItemInternal;->title:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/LinkActionView;->setLink(Ljava/lang/String;)V

    return-void

    .line 302
    :cond_b
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/16 v4, 0xb

    if-ne v0, v4, :cond_e

    .line 303
    iget-object v0, p0, Lorg/telegram/ui/BoostsActivity$1;->this$0:Lorg/telegram/ui/BoostsActivity;

    invoke-static {v0}, Lorg/telegram/ui/BoostsActivity;->-$$Nest$fgetitems(Lorg/telegram/ui/BoostsActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/ui/BoostsActivity$ItemInternal;

    .line 304
    iget-object v8, p2, Lorg/telegram/ui/BoostsActivity$ItemInternal;->prepaidGiveaway:Lorg/telegram/tgnet/tl/TL_stories$PrepaidGiveaway;

    .line 305
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object v7, p1

    check-cast v7, Lorg/telegram/ui/Components/Premium/boosts/cells/statistics/GiveawayCell;

    .line 306
    instance-of p1, v8, Lorg/telegram/tgnet/tl/TL_stories$TL_prepaidGiveaway;

    if-eqz p1, :cond_c

    .line 307
    iget p1, v8, Lorg/telegram/tgnet/tl/TL_stories$PrepaidGiveaway;->quantity:I

    new-array v0, v3, [Ljava/lang/Object;

    const-string v1, "BoostingTelegramPremiumCountPlural"

    invoke-static {v1, p1, v0}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 308
    iget p1, v8, Lorg/telegram/tgnet/tl/TL_stories$PrepaidGiveaway;->quantity:I

    move-object v0, v8

    check-cast v0, Lorg/telegram/tgnet/tl/TL_stories$TL_prepaidGiveaway;

    iget v0, v0, Lorg/telegram/tgnet/tl/TL_stories$TL_prepaidGiveaway;->months:I

    new-array v1, v3, [Ljava/lang/Object;

    const-string v4, "PrepaidGiveawayMonths"

    invoke-static {v4, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    aput-object v0, v1, v3

    const-string v0, "BoostingSubscriptionsCountPlural"

    invoke-static {v0, p1, v1}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 309
    iget-boolean p1, p2, Lorg/telegram/ui/BoostsActivity$ItemInternal;->isLast:Z

    xor-int/lit8 v12, p1, 0x1

    const/4 v11, 0x0

    invoke-virtual/range {v7 .. v12}, Lorg/telegram/ui/Cells/UserCell;->setData(Ljava/lang/Object;Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZ)V

    goto :goto_5

    .line 310
    :cond_c
    instance-of p1, v8, Lorg/telegram/tgnet/tl/TL_stories$TL_prepaidStarsGiveaway;

    if-eqz p1, :cond_d

    .line 311
    move-object p1, v8

    check-cast p1, Lorg/telegram/tgnet/tl/TL_stories$TL_prepaidStarsGiveaway;

    .line 312
    iget-wide v0, p1, Lorg/telegram/tgnet/tl/TL_stories$TL_prepaidStarsGiveaway;->stars:J

    long-to-int v0, v0

    const-string v1, "BoostingStarsCountPlural"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->formatPluralStringComma(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    .line 313
    iget p1, p1, Lorg/telegram/tgnet/tl/TL_stories$PrepaidGiveaway;->quantity:I

    new-array v0, v3, [Ljava/lang/Object;

    const-string v1, "AmongWinners"

    invoke-static {v1, p1, v0}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 314
    iget-boolean p1, p2, Lorg/telegram/ui/BoostsActivity$ItemInternal;->isLast:Z

    xor-int/lit8 v12, p1, 0x1

    const/4 v11, 0x0

    invoke-virtual/range {v7 .. v12}, Lorg/telegram/ui/Cells/UserCell;->setData(Ljava/lang/Object;Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZ)V

    .line 316
    :cond_d
    :goto_5
    invoke-virtual {v7, v8}, Lorg/telegram/ui/Components/Premium/boosts/cells/statistics/GiveawayCell;->setImage(Lorg/telegram/tgnet/tl/TL_stories$PrepaidGiveaway;)V

    .line 317
    invoke-virtual {v7, v6}, Lorg/telegram/ui/Cells/UserCell;->setAvatarPadding(I)V

    return-void

    .line 318
    :cond_e
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result p1

    const/16 p2, 0xd

    if-ne p1, p2, :cond_12

    .line 319
    iget-object p1, p0, Lorg/telegram/ui/BoostsActivity$1;->this$0:Lorg/telegram/ui/BoostsActivity;

    invoke-static {p1}, Lorg/telegram/ui/BoostsActivity;->-$$Nest$fgetboostsTabs(Lorg/telegram/ui/BoostsActivity;)Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_f

    iget-object p1, p0, Lorg/telegram/ui/BoostsActivity$1;->this$0:Lorg/telegram/ui/BoostsActivity;

    invoke-static {p1}, Lorg/telegram/ui/BoostsActivity;->-$$Nest$fgetboostsTabs(Lorg/telegram/ui/BoostsActivity;)Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object p2, p0, Lorg/telegram/ui/BoostsActivity$1;->this$0:Lorg/telegram/ui/BoostsActivity;

    invoke-static {p2}, Lorg/telegram/ui/BoostsActivity;->-$$Nest$fgettotalBoosts(Lorg/telegram/ui/BoostsActivity;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iget-object v0, p0, Lorg/telegram/ui/BoostsActivity$1;->this$0:Lorg/telegram/ui/BoostsActivity;

    invoke-static {v0}, Lorg/telegram/ui/BoostsActivity;->-$$Nest$fgettotalGifts(Lorg/telegram/ui/BoostsActivity;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-array v4, v1, [Ljava/lang/Object;

    aput-object p2, v4, v3

    aput-object v0, v4, v2

    invoke-static {v4}, Lj$/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p2

    if-eq p1, p2, :cond_12

    .line 320
    :cond_f
    iget-object p1, p0, Lorg/telegram/ui/BoostsActivity$1;->this$0:Lorg/telegram/ui/BoostsActivity;

    invoke-static {p1}, Lorg/telegram/ui/BoostsActivity;->-$$Nest$fgetboostsTabs(Lorg/telegram/ui/BoostsActivity;)Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/BoostsActivity$1;->this$0:Lorg/telegram/ui/BoostsActivity;

    invoke-static {p2}, Lorg/telegram/ui/BoostsActivity;->-$$Nest$fgettotalBoosts(Lorg/telegram/ui/BoostsActivity;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iget-object v0, p0, Lorg/telegram/ui/BoostsActivity$1;->this$0:Lorg/telegram/ui/BoostsActivity;

    invoke-static {v0}, Lorg/telegram/ui/BoostsActivity;->-$$Nest$fgettotalGifts(Lorg/telegram/ui/BoostsActivity;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v3

    aput-object v0, v1, v2

    invoke-static {v1}, Lj$/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 321
    iget-object p1, p0, Lorg/telegram/ui/BoostsActivity$1;->this$0:Lorg/telegram/ui/BoostsActivity;

    invoke-static {p1}, Lorg/telegram/ui/BoostsActivity;->-$$Nest$fgetboostsTabs(Lorg/telegram/ui/BoostsActivity;)Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->removeTabs()Landroid/util/SparseArray;

    .line 322
    iget-object p1, p0, Lorg/telegram/ui/BoostsActivity$1;->this$0:Lorg/telegram/ui/BoostsActivity;

    invoke-static {p1}, Lorg/telegram/ui/BoostsActivity;->-$$Nest$fgetboostsTabs(Lorg/telegram/ui/BoostsActivity;)Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/BoostsActivity$1;->this$0:Lorg/telegram/ui/BoostsActivity;

    invoke-static {p2}, Lorg/telegram/ui/BoostsActivity;->-$$Nest$fgettotalBoosts(Lorg/telegram/ui/BoostsActivity;)I

    move-result p2

    new-array v0, v3, [Ljava/lang/Object;

    const-string v1, "BoostingBoostsCount"

    invoke-static {v1, p2, v0}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v3, p2}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->addTextTab(ILjava/lang/CharSequence;)V

    .line 323
    iget-object p1, p0, Lorg/telegram/ui/BoostsActivity$1;->this$0:Lorg/telegram/ui/BoostsActivity;

    iget p1, p1, Lorg/telegram/ui/BoostsActivity;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-boolean p1, p1, Lorg/telegram/messenger/MessagesController;->giveawayGiftsPurchaseAvailable:Z

    if-eqz p1, :cond_10

    iget-object p1, p0, Lorg/telegram/ui/BoostsActivity$1;->this$0:Lorg/telegram/ui/BoostsActivity;

    invoke-static {p1}, Lorg/telegram/ui/BoostsActivity;->-$$Nest$fgettotalGifts(Lorg/telegram/ui/BoostsActivity;)I

    move-result p1

    if-lez p1, :cond_10

    iget-object p1, p0, Lorg/telegram/ui/BoostsActivity$1;->this$0:Lorg/telegram/ui/BoostsActivity;

    invoke-static {p1}, Lorg/telegram/ui/BoostsActivity;->-$$Nest$fgettotalGifts(Lorg/telegram/ui/BoostsActivity;)I

    move-result p1

    iget-object p2, p0, Lorg/telegram/ui/BoostsActivity$1;->this$0:Lorg/telegram/ui/BoostsActivity;

    invoke-static {p2}, Lorg/telegram/ui/BoostsActivity;->-$$Nest$fgettotalBoosts(Lorg/telegram/ui/BoostsActivity;)I

    move-result p2

    if-eq p1, p2, :cond_10

    .line 324
    iget-object p1, p0, Lorg/telegram/ui/BoostsActivity$1;->this$0:Lorg/telegram/ui/BoostsActivity;

    invoke-static {p1}, Lorg/telegram/ui/BoostsActivity;->-$$Nest$fgetboostsTabs(Lorg/telegram/ui/BoostsActivity;)Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/BoostsActivity$1;->this$0:Lorg/telegram/ui/BoostsActivity;

    invoke-static {p2}, Lorg/telegram/ui/BoostsActivity;->-$$Nest$fgettotalGifts(Lorg/telegram/ui/BoostsActivity;)I

    move-result p2

    new-array v0, v3, [Ljava/lang/Object;

    const-string v1, "BoostingGiftsCount"

    invoke-static {v1, p2, v0}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v2, p2}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->addTextTab(ILjava/lang/CharSequence;)V

    .line 326
    :cond_10
    iget-object p1, p0, Lorg/telegram/ui/BoostsActivity$1;->this$0:Lorg/telegram/ui/BoostsActivity;

    invoke-static {p1}, Lorg/telegram/ui/BoostsActivity;->-$$Nest$fgetboostsTabs(Lorg/telegram/ui/BoostsActivity;)Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/BoostsActivity$1;->this$0:Lorg/telegram/ui/BoostsActivity;

    invoke-static {p2}, Lorg/telegram/ui/BoostsActivity;->-$$Nest$fgetselectedTab(Lorg/telegram/ui/BoostsActivity;)I

    move-result p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->setInitialTabId(I)V

    .line 327
    iget-object p1, p0, Lorg/telegram/ui/BoostsActivity$1;->this$0:Lorg/telegram/ui/BoostsActivity;

    invoke-static {p1}, Lorg/telegram/ui/BoostsActivity;->-$$Nest$fgetboostsTabs(Lorg/telegram/ui/BoostsActivity;)Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->finishAddingTabs()V

    return-void

    .line 260
    :cond_11
    :goto_6
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Charts/view_data/ChartHeaderView;

    .line 261
    iget-object v2, p0, Lorg/telegram/ui/BoostsActivity$1;->this$0:Lorg/telegram/ui/BoostsActivity;

    invoke-static {v2}, Lorg/telegram/ui/BoostsActivity;->-$$Nest$fgetitems(Lorg/telegram/ui/BoostsActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/ui/BoostsActivity$ItemInternal;

    iget-object p2, p2, Lorg/telegram/ui/BoostsActivity$ItemInternal;->title:Ljava/lang/String;

    invoke-virtual {v0, p2}, Lorg/telegram/ui/Charts/view_data/ChartHeaderView;->setTitle(Ljava/lang/String;)V

    .line 262
    invoke-virtual {v0, v3}, Lorg/telegram/ui/Charts/view_data/ChartHeaderView;->showDate(Z)V

    .line 263
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result p1

    if-ne p1, v1, :cond_12

    const/high16 p1, 0x40400000    # 3.0f

    .line 264
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result p2

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/view/View;->setPadding(IIII)V

    :cond_12
    :goto_7
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 11

    const/4 v0, -0x2

    const/high16 v1, 0x41800000    # 16.0f

    const/4 v2, 0x0

    packed-switch p2, :pswitch_data_0

    .line 249
    :pswitch_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 135
    :pswitch_1
    new-instance p1, Lorg/telegram/ui/BoostsActivity$1$1;

    iget-object p2, p0, Lorg/telegram/ui/BoostsActivity$1;->this$0:Lorg/telegram/ui/BoostsActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lorg/telegram/ui/BoostsActivity$1$1;-><init>(Lorg/telegram/ui/BoostsActivity$1;Landroid/content/Context;)V

    const p2, -0x8100

    .line 145
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 148
    :pswitch_2
    iget-object p1, p0, Lorg/telegram/ui/BoostsActivity$1;->this$0:Lorg/telegram/ui/BoostsActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/GradientHeaderActivity;->getHeader(Landroid/content/Context;)Landroid/view/View;

    move-result-object p1

    goto/16 :goto_2

    .line 169
    :pswitch_3
    iget-object p1, p0, Lorg/telegram/ui/BoostsActivity$1;->this$0:Lorg/telegram/ui/BoostsActivity;

    new-instance p2, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;

    iget-object v1, p0, Lorg/telegram/ui/BoostsActivity$1;->this$0:Lorg/telegram/ui/BoostsActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/BoostsActivity$1;->this$0:Lorg/telegram/ui/BoostsActivity;

    invoke-static {v2}, Lorg/telegram/ui/BoostsActivity;->access$100(Lorg/telegram/ui/BoostsActivity;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v2

    invoke-direct {p2, v1, v2}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-static {p1, p2}, Lorg/telegram/ui/BoostsActivity;->-$$Nest$fputboostsTabs(Lorg/telegram/ui/BoostsActivity;Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;)V

    .line 170
    iget-object p1, p0, Lorg/telegram/ui/BoostsActivity$1;->this$0:Lorg/telegram/ui/BoostsActivity;

    invoke-static {p1}, Lorg/telegram/ui/BoostsActivity;->-$$Nest$fgetboostsTabs(Lorg/telegram/ui/BoostsActivity;)Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;

    move-result-object p1

    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_profile_tabSelectedLine:I

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_profile_tabSelectedText:I

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_profile_tabText:I

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_profile_tabSelector:I

    invoke-virtual {p1, p2, v1, v2, v3}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->setColors(IIII)V

    .line 171
    new-instance p1, Lorg/telegram/ui/BoostsActivity$1$2;

    iget-object p2, p0, Lorg/telegram/ui/BoostsActivity$1;->this$0:Lorg/telegram/ui/BoostsActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lorg/telegram/ui/BoostsActivity$1$2;-><init>(Lorg/telegram/ui/BoostsActivity$1;Landroid/content/Context;)V

    .line 181
    iget-object p2, p0, Lorg/telegram/ui/BoostsActivity$1;->this$0:Lorg/telegram/ui/BoostsActivity;

    invoke-static {p2}, Lorg/telegram/ui/BoostsActivity;->-$$Nest$fgetboostsTabs(Lorg/telegram/ui/BoostsActivity;)Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;

    move-result-object p2

    new-instance v1, Lorg/telegram/ui/BoostsActivity$1$3;

    invoke-direct {v1, p0}, Lorg/telegram/ui/BoostsActivity$1$3;-><init>(Lorg/telegram/ui/BoostsActivity$1;)V

    invoke-virtual {p2, v1}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->setDelegate(Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip$ScrollSlidingTabStripDelegate;)V

    .line 198
    iget-object p2, p0, Lorg/telegram/ui/BoostsActivity$1;->this$0:Lorg/telegram/ui/BoostsActivity;

    invoke-static {p2}, Lorg/telegram/ui/BoostsActivity;->-$$Nest$fgetboostsTabs(Lorg/telegram/ui/BoostsActivity;)Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;

    move-result-object p2

    const/high16 v1, 0x42400000    # 48.0f

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_2

    .line 165
    :pswitch_4
    new-instance p1, Lorg/telegram/ui/Charts/view_data/ChartHeaderView;

    iget-object p2, p0, Lorg/telegram/ui/BoostsActivity$1;->this$0:Lorg/telegram/ui/BoostsActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/telegram/ui/Charts/view_data/ChartHeaderView;-><init>(Landroid/content/Context;)V

    .line 166
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result p2

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v2

    const/high16 v3, 0x41000000    # 8.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {p1, p2, v1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    goto/16 :goto_2

    .line 215
    :pswitch_5
    new-instance p1, Lorg/telegram/ui/Components/Premium/boosts/cells/statistics/GiveawayCell;

    iget-object p2, p0, Lorg/telegram/ui/BoostsActivity$1;->this$0:Lorg/telegram/ui/BoostsActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2, v2, v2, v2}, Lorg/telegram/ui/Components/Premium/boosts/cells/statistics/GiveawayCell;-><init>(Landroid/content/Context;IIZ)V

    goto/16 :goto_2

    .line 202
    :pswitch_6
    new-instance p1, Lorg/telegram/ui/Cells/TextCell;

    iget-object p2, p0, Lorg/telegram/ui/BoostsActivity$1;->this$0:Lorg/telegram/ui/BoostsActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/TextCell;-><init>(Landroid/content/Context;)V

    .line 203
    sget p2, Lorg/telegram/messenger/R$string;->BoostingGetBoostsViaGifts:I

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p2, v1}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    sget v1, Lorg/telegram/messenger/R$drawable;->msg_gift_premium:I

    invoke-virtual {p1, p2, v1, v2}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/CharSequence;IZ)V

    const/16 p2, 0x40

    .line 204
    iput p2, p1, Lorg/telegram/ui/Cells/TextCell;->offsetFromImage:I

    .line 205
    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueText4:I

    invoke-virtual {p1, p2, p2}, Lorg/telegram/ui/Cells/TextCell;->setColors(II)V

    goto/16 :goto_2

    .line 239
    :pswitch_7
    new-instance p1, Lorg/telegram/ui/BoostsActivity$1$5;

    iget-object p2, p0, Lorg/telegram/ui/BoostsActivity$1;->this$0:Lorg/telegram/ui/BoostsActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lorg/telegram/ui/BoostsActivity$1$5;-><init>(Lorg/telegram/ui/BoostsActivity$1;Landroid/content/Context;)V

    .line 245
    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueIcon:I

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueButton:I

    invoke-virtual {p1, p2, v1}, Lorg/telegram/ui/Cells/ManageChatTextCell;->setColors(II)V

    goto/16 :goto_2

    .line 224
    :pswitch_8
    new-instance p1, Lorg/telegram/ui/BoostsActivity$1$4;

    iget-object p2, p0, Lorg/telegram/ui/BoostsActivity$1;->this$0:Lorg/telegram/ui/BoostsActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lorg/telegram/ui/BoostsActivity$1$4;-><init>(Lorg/telegram/ui/BoostsActivity$1;Landroid/content/Context;)V

    .line 230
    new-instance p2, Landroid/widget/TextView;

    iget-object v1, p0, Lorg/telegram/ui/BoostsActivity$1;->this$0:Lorg/telegram/ui/BoostsActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p2, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 231
    iget-object v1, p0, Lorg/telegram/ui/BoostsActivity$1;->this$0:Lorg/telegram/ui/BoostsActivity;

    invoke-static {v1}, Lorg/telegram/ui/BoostsActivity;->-$$Nest$misChannel(Lorg/telegram/ui/BoostsActivity;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget v1, Lorg/telegram/messenger/R$string;->NoBoostersHint:I

    goto :goto_0

    :cond_0
    sget v1, Lorg/telegram/messenger/R$string;->NoBoostersGroupHint:I

    :goto_0
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x1

    const/high16 v2, 0x41600000    # 14.0f

    .line 232
    invoke-virtual {p2, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 233
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v1, 0x11

    .line 234
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setGravity(I)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v2, -0x1

    const/high16 v3, -0x40000000    # -2.0f

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x41800000    # 16.0f

    .line 235
    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_2

    .line 221
    :pswitch_9
    new-instance p1, Lorg/telegram/ui/Cells/FixedHeightEmptyCell;

    iget-object p2, p0, Lorg/telegram/ui/BoostsActivity$1;->this$0:Lorg/telegram/ui/BoostsActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    const/16 v1, 0x8

    invoke-direct {p1, p2, v1}, Lorg/telegram/ui/Cells/FixedHeightEmptyCell;-><init>(Landroid/content/Context;I)V

    goto/16 :goto_2

    .line 151
    :pswitch_a
    new-instance p2, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lorg/telegram/ui/BoostsActivity$1;->this$0:Lorg/telegram/ui/BoostsActivity;

    invoke-static {v1}, Lorg/telegram/ui/BoostsActivity;->access$000(Lorg/telegram/ui/BoostsActivity;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v1

    const/16 v2, 0x14

    invoke-direct {p2, p1, v2, v1}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    :goto_1
    move-object p1, p2

    goto :goto_2

    .line 218
    :pswitch_b
    new-instance p1, Lorg/telegram/ui/Components/Premium/boosts/cells/statistics/GiftedUserCell;

    iget-object p2, p0, Lorg/telegram/ui/BoostsActivity$1;->this$0:Lorg/telegram/ui/BoostsActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2, v2, v2, v2}, Lorg/telegram/ui/Components/Premium/boosts/cells/statistics/GiftedUserCell;-><init>(Landroid/content/Context;IIZ)V

    goto :goto_2

    .line 209
    :pswitch_c
    new-instance v3, Lorg/telegram/ui/Components/LinkActionView;

    iget-object p1, p0, Lorg/telegram/ui/BoostsActivity$1;->this$0:Lorg/telegram/ui/BoostsActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/ui/BoostsActivity$1;->this$0:Lorg/telegram/ui/BoostsActivity;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/Components/LinkActionView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/BottomSheet;JZZ)V

    .line 211
    invoke-virtual {v3}, Lorg/telegram/ui/Components/LinkActionView;->hideOptions()V

    const/high16 p1, 0x41300000    # 11.0f

    .line 212
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    const/high16 v1, 0x41c00000    # 24.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {v3, p2, v2, p1, v1}, Landroid/view/View;->setPadding(IIII)V

    move-object p1, v3

    goto :goto_2

    .line 154
    :pswitch_d
    new-instance p2, Lorg/telegram/ui/Cells/ShadowSectionCell;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const/16 v1, 0xc

    invoke-direct {p2, p1, v1, v2}, Lorg/telegram/ui/Cells/ShadowSectionCell;-><init>(Landroid/content/Context;II)V

    goto :goto_1

    .line 161
    :pswitch_e
    new-instance p1, Lorg/telegram/ui/Charts/view_data/ChartHeaderView;

    iget-object p2, p0, Lorg/telegram/ui/BoostsActivity$1;->this$0:Lorg/telegram/ui/BoostsActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/telegram/ui/Charts/view_data/ChartHeaderView;-><init>(Landroid/content/Context;)V

    .line 162
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result p2

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v3

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {p1, p2, v2, v3, v1}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_2

    .line 157
    :pswitch_f
    new-instance p1, Lorg/telegram/ui/StatisticActivity$OverviewCell;

    iget-object p2, p0, Lorg/telegram/ui/BoostsActivity$1;->this$0:Lorg/telegram/ui/BoostsActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/telegram/ui/StatisticActivity$OverviewCell;-><init>(Landroid/content/Context;)V

    .line 251
    :goto_2
    new-instance p2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {p2, v1, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 252
    new-instance p2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_e
    .end packed-switch
.end method
