.class public Lorg/telegram/ui/StatisticActivity$OverviewChatData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/StatisticActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OverviewChatData"
.end annotation


# instance fields
.field membersPrimary:Ljava/lang/String;

.field membersSecondary:Ljava/lang/String;

.field membersTitle:Ljava/lang/String;

.field membersUp:Z

.field messagesPrimary:Ljava/lang/String;

.field messagesSecondary:Ljava/lang/String;

.field messagesTitle:Ljava/lang/String;

.field messagesUp:Z

.field postingMembersPrimary:Ljava/lang/String;

.field postingMembersSecondary:Ljava/lang/String;

.field postingMembersTitle:Ljava/lang/String;

.field postingMembersUp:Z

.field viewingMembersPrimary:Ljava/lang/String;

.field viewingMembersSecondary:Ljava/lang/String;

.field viewingMembersTitle:Ljava/lang/String;

.field viewingMembersUp:Z


# direct methods
.method public constructor <init>(Lorg/telegram/tgnet/tl/TL_stats$TL_megagroupStats;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 3061
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 3062
    iget-object v2, v1, Lorg/telegram/tgnet/tl/TL_stats$TL_megagroupStats;->members:Lorg/telegram/tgnet/tl/TL_stats$TL_statsAbsValueAndPrev;

    iget-wide v3, v2, Lorg/telegram/tgnet/tl/TL_stats$TL_statsAbsValueAndPrev;->current:D

    iget-wide v5, v2, Lorg/telegram/tgnet/tl/TL_stats$TL_statsAbsValueAndPrev;->previous:D

    sub-double/2addr v3, v5

    double-to-int v2, v3

    const-wide/16 v3, 0x0

    cmpl-double v7, v5, v3

    const/high16 v8, 0x42c80000    # 100.0f

    const/4 v9, 0x0

    if-nez v7, :cond_0

    move v5, v9

    goto :goto_0

    :cond_0
    int-to-float v7, v2

    double-to-float v5, v5

    div-float/2addr v7, v5

    mul-float/2addr v7, v8

    .line 3063
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 3064
    :goto_0
    const-string v6, "MembersOverviewTitle"

    sget v7, Lorg/telegram/messenger/R$string;->MembersOverviewTitle:I

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lorg/telegram/ui/StatisticActivity$OverviewChatData;->membersTitle:Ljava/lang/String;

    .line 3065
    iget-object v6, v1, Lorg/telegram/tgnet/tl/TL_stats$TL_megagroupStats;->members:Lorg/telegram/tgnet/tl/TL_stats$TL_statsAbsValueAndPrev;

    iget-wide v6, v6, Lorg/telegram/tgnet/tl/TL_stats$TL_statsAbsValueAndPrev;->current:D

    double-to-int v6, v6

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lorg/telegram/messenger/AndroidUtilities;->formatWholeNumber(II)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lorg/telegram/ui/StatisticActivity$OverviewChatData;->membersPrimary:Ljava/lang/String;

    const/4 v6, 0x1

    .line 3067
    const-string v10, "+"

    const-string v11, ""

    if-eqz v2, :cond_1

    cmpl-float v12, v5, v9

    if-nez v12, :cond_2

    :cond_1
    move-wide/from16 v17, v3

    goto/16 :goto_3

    :cond_2
    float-to-int v12, v5

    int-to-float v13, v12

    cmpl-float v13, v5, v13

    const/4 v14, 0x2

    const/4 v15, 0x3

    .line 3069
    const-string v16, "%"

    if-nez v13, :cond_4

    .line 3070
    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v17, v3

    if-lez v2, :cond_3

    move-object v3, v10

    goto :goto_1

    :cond_3
    move-object v3, v11

    :goto_1
    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2, v7}, Lorg/telegram/messenger/AndroidUtilities;->formatWholeNumber(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-array v12, v15, [Ljava/lang/Object;

    aput-object v3, v12, v7

    aput-object v4, v12, v6

    aput-object v16, v12, v14

    const-string v3, "%s (%d%s)"

    invoke-static {v5, v3, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lorg/telegram/ui/StatisticActivity$OverviewChatData;->membersSecondary:Ljava/lang/String;

    goto :goto_4

    :cond_4
    move-wide/from16 v17, v3

    .line 3072
    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    if-lez v2, :cond_5

    move-object v12, v10

    goto :goto_2

    :cond_5
    move-object v12, v11

    :goto_2
    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2, v7}, Lorg/telegram/messenger/AndroidUtilities;->formatWholeNumber(II)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    new-array v12, v15, [Ljava/lang/Object;

    aput-object v4, v12, v7

    aput-object v5, v12, v6

    aput-object v16, v12, v14

    const-string v4, "%s (%.1f%s)"

    invoke-static {v3, v4, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lorg/telegram/ui/StatisticActivity$OverviewChatData;->membersSecondary:Ljava/lang/String;

    goto :goto_4

    .line 3068
    :goto_3
    iput-object v11, v0, Lorg/telegram/ui/StatisticActivity$OverviewChatData;->membersSecondary:Ljava/lang/String;

    :goto_4
    if-ltz v2, :cond_6

    move v2, v6

    goto :goto_5

    :cond_6
    move v2, v7

    .line 3074
    :goto_5
    iput-boolean v2, v0, Lorg/telegram/ui/StatisticActivity$OverviewChatData;->membersUp:Z

    .line 3076
    iget-object v2, v1, Lorg/telegram/tgnet/tl/TL_stats$TL_megagroupStats;->viewers:Lorg/telegram/tgnet/tl/TL_stats$TL_statsAbsValueAndPrev;

    iget-wide v3, v2, Lorg/telegram/tgnet/tl/TL_stats$TL_statsAbsValueAndPrev;->current:D

    iget-wide v12, v2, Lorg/telegram/tgnet/tl/TL_stats$TL_statsAbsValueAndPrev;->previous:D

    sub-double/2addr v3, v12

    double-to-int v2, v3

    cmpl-double v3, v12, v17

    if-nez v3, :cond_7

    move v3, v9

    goto :goto_6

    :cond_7
    int-to-float v3, v2

    double-to-float v4, v12

    div-float/2addr v3, v4

    mul-float/2addr v3, v8

    .line 3077
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 3078
    :goto_6
    const-string v4, "ViewingMembers"

    sget v5, Lorg/telegram/messenger/R$string;->ViewingMembers:I

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lorg/telegram/ui/StatisticActivity$OverviewChatData;->viewingMembersTitle:Ljava/lang/String;

    .line 3079
    iget-object v4, v1, Lorg/telegram/tgnet/tl/TL_stats$TL_megagroupStats;->viewers:Lorg/telegram/tgnet/tl/TL_stats$TL_statsAbsValueAndPrev;

    iget-wide v4, v4, Lorg/telegram/tgnet/tl/TL_stats$TL_statsAbsValueAndPrev;->current:D

    double-to-int v4, v4

    invoke-static {v4, v7}, Lorg/telegram/messenger/AndroidUtilities;->formatWholeNumber(II)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lorg/telegram/ui/StatisticActivity$OverviewChatData;->viewingMembersPrimary:Ljava/lang/String;

    .line 3081
    const-string v4, "%s"

    if-eqz v2, :cond_a

    cmpl-float v3, v3, v9

    if-nez v3, :cond_8

    goto :goto_8

    .line 3084
    :cond_8
    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    if-lez v2, :cond_9

    move-object v12, v10

    goto :goto_7

    :cond_9
    move-object v12, v11

    :goto_7
    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2, v7}, Lorg/telegram/messenger/AndroidUtilities;->formatWholeNumber(II)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v12, v6, [Ljava/lang/Object;

    aput-object v5, v12, v7

    invoke-static {v3, v4, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lorg/telegram/ui/StatisticActivity$OverviewChatData;->viewingMembersSecondary:Ljava/lang/String;

    goto :goto_9

    .line 3082
    :cond_a
    :goto_8
    iput-object v11, v0, Lorg/telegram/ui/StatisticActivity$OverviewChatData;->viewingMembersSecondary:Ljava/lang/String;

    :goto_9
    if-ltz v2, :cond_b

    move v2, v6

    goto :goto_a

    :cond_b
    move v2, v7

    .line 3086
    :goto_a
    iput-boolean v2, v0, Lorg/telegram/ui/StatisticActivity$OverviewChatData;->viewingMembersUp:Z

    .line 3089
    iget-object v2, v1, Lorg/telegram/tgnet/tl/TL_stats$TL_megagroupStats;->posters:Lorg/telegram/tgnet/tl/TL_stats$TL_statsAbsValueAndPrev;

    iget-wide v12, v2, Lorg/telegram/tgnet/tl/TL_stats$TL_statsAbsValueAndPrev;->current:D

    iget-wide v2, v2, Lorg/telegram/tgnet/tl/TL_stats$TL_statsAbsValueAndPrev;->previous:D

    sub-double/2addr v12, v2

    double-to-int v5, v12

    cmpl-double v12, v2, v17

    if-nez v12, :cond_c

    move v2, v9

    goto :goto_b

    :cond_c
    int-to-float v12, v5

    double-to-float v2, v2

    div-float/2addr v12, v2

    mul-float/2addr v12, v8

    .line 3090
    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 3091
    :goto_b
    const-string v3, "PostingMembers"

    sget v12, Lorg/telegram/messenger/R$string;->PostingMembers:I

    invoke-static {v3, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lorg/telegram/ui/StatisticActivity$OverviewChatData;->postingMembersTitle:Ljava/lang/String;

    .line 3092
    iget-object v3, v1, Lorg/telegram/tgnet/tl/TL_stats$TL_megagroupStats;->posters:Lorg/telegram/tgnet/tl/TL_stats$TL_statsAbsValueAndPrev;

    iget-wide v12, v3, Lorg/telegram/tgnet/tl/TL_stats$TL_statsAbsValueAndPrev;->current:D

    double-to-int v3, v12

    invoke-static {v3, v7}, Lorg/telegram/messenger/AndroidUtilities;->formatWholeNumber(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lorg/telegram/ui/StatisticActivity$OverviewChatData;->postingMembersPrimary:Ljava/lang/String;

    if-eqz v5, :cond_f

    cmpl-float v2, v2, v9

    if-nez v2, :cond_d

    goto :goto_d

    .line 3096
    :cond_d
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    if-lez v5, :cond_e

    move-object v12, v10

    goto :goto_c

    :cond_e
    move-object v12, v11

    :goto_c
    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5, v7}, Lorg/telegram/messenger/AndroidUtilities;->formatWholeNumber(II)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v12, v6, [Ljava/lang/Object;

    aput-object v3, v12, v7

    invoke-static {v2, v4, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lorg/telegram/ui/StatisticActivity$OverviewChatData;->postingMembersSecondary:Ljava/lang/String;

    goto :goto_e

    .line 3094
    :cond_f
    :goto_d
    iput-object v11, v0, Lorg/telegram/ui/StatisticActivity$OverviewChatData;->postingMembersSecondary:Ljava/lang/String;

    :goto_e
    if-ltz v5, :cond_10

    move v2, v6

    goto :goto_f

    :cond_10
    move v2, v7

    .line 3098
    :goto_f
    iput-boolean v2, v0, Lorg/telegram/ui/StatisticActivity$OverviewChatData;->postingMembersUp:Z

    .line 3100
    iget-object v2, v1, Lorg/telegram/tgnet/tl/TL_stats$TL_megagroupStats;->messages:Lorg/telegram/tgnet/tl/TL_stats$TL_statsAbsValueAndPrev;

    iget-wide v12, v2, Lorg/telegram/tgnet/tl/TL_stats$TL_statsAbsValueAndPrev;->current:D

    iget-wide v2, v2, Lorg/telegram/tgnet/tl/TL_stats$TL_statsAbsValueAndPrev;->previous:D

    sub-double/2addr v12, v2

    double-to-int v5, v12

    cmpl-double v12, v2, v17

    if-nez v12, :cond_11

    move v2, v9

    goto :goto_10

    :cond_11
    int-to-float v12, v5

    double-to-float v2, v2

    div-float/2addr v12, v2

    mul-float/2addr v12, v8

    .line 3101
    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 3102
    :goto_10
    const-string v3, "MessagesOverview"

    sget v8, Lorg/telegram/messenger/R$string;->MessagesOverview:I

    invoke-static {v3, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lorg/telegram/ui/StatisticActivity$OverviewChatData;->messagesTitle:Ljava/lang/String;

    .line 3103
    iget-object v1, v1, Lorg/telegram/tgnet/tl/TL_stats$TL_megagroupStats;->messages:Lorg/telegram/tgnet/tl/TL_stats$TL_statsAbsValueAndPrev;

    iget-wide v12, v1, Lorg/telegram/tgnet/tl/TL_stats$TL_statsAbsValueAndPrev;->current:D

    double-to-int v1, v12

    invoke-static {v1, v7}, Lorg/telegram/messenger/AndroidUtilities;->formatWholeNumber(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/StatisticActivity$OverviewChatData;->messagesPrimary:Ljava/lang/String;

    if-eqz v5, :cond_14

    cmpl-float v1, v2, v9

    if-nez v1, :cond_12

    goto :goto_12

    .line 3107
    :cond_12
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    if-lez v5, :cond_13

    goto :goto_11

    :cond_13
    move-object v10, v11

    :goto_11
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5, v7}, Lorg/telegram/messenger/AndroidUtilities;->formatWholeNumber(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v2, v3, v7

    invoke-static {v1, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/StatisticActivity$OverviewChatData;->messagesSecondary:Ljava/lang/String;

    goto :goto_13

    .line 3105
    :cond_14
    :goto_12
    iput-object v11, v0, Lorg/telegram/ui/StatisticActivity$OverviewChatData;->messagesSecondary:Ljava/lang/String;

    :goto_13
    if-ltz v5, :cond_15

    move v7, v6

    .line 3109
    :cond_15
    iput-boolean v7, v0, Lorg/telegram/ui/StatisticActivity$OverviewChatData;->messagesUp:Z

    return-void
.end method
