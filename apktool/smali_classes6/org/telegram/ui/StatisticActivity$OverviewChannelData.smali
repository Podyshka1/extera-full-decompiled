.class public Lorg/telegram/ui/StatisticActivity$OverviewChannelData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/StatisticActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OverviewChannelData"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/StatisticActivity$OverviewChannelData$Quadruple;
    }
.end annotation


# instance fields
.field followersPrimary:Ljava/lang/String;

.field followersSecondary:Ljava/lang/String;

.field followersTitle:Ljava/lang/String;

.field followersUp:Z

.field notificationsPrimary:Ljava/lang/String;

.field notificationsTitle:Ljava/lang/String;

.field reactionsPerPostPrimary:Ljava/lang/String;

.field reactionsPerPostSecondary:Ljava/lang/String;

.field reactionsPerPostTitle:Ljava/lang/String;

.field reactionsPerPostUp:Z

.field reactionsPerPostVisible:Z

.field reactionsPerStoryPrimary:Ljava/lang/String;

.field reactionsPerStorySecondary:Ljava/lang/String;

.field reactionsPerStoryTitle:Ljava/lang/String;

.field reactionsPerStoryUp:Z

.field reactionsPerStoryVisible:Z

.field sharesPerStoryPrimary:Ljava/lang/String;

.field sharesPerStorySecondary:Ljava/lang/String;

.field sharesPerStoryTitle:Ljava/lang/String;

.field sharesPerStoryUp:Z

.field sharesPerStoryVisible:Z

.field sharesPrimary:Ljava/lang/String;

.field sharesSecondary:Ljava/lang/String;

.field sharesTitle:Ljava/lang/String;

.field sharesUp:Z

.field viewsPerStoryPrimary:Ljava/lang/String;

.field viewsPerStorySecondary:Ljava/lang/String;

.field viewsPerStoryTitle:Ljava/lang/String;

.field viewsPerStoryUp:Z

.field viewsPerStoryVisible:Z

.field viewsPrimary:Ljava/lang/String;

.field viewsSecondary:Ljava/lang/String;

.field viewsTitle:Ljava/lang/String;

.field viewsUp:Z


# direct methods
.method public constructor <init>(Lorg/telegram/tgnet/tl/TL_stats$TL_broadcastStats;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 2959
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 2960
    iget-object v2, v1, Lorg/telegram/tgnet/tl/TL_stats$TL_broadcastStats;->reactions_per_post:Lorg/telegram/tgnet/tl/TL_stats$TL_statsAbsValueAndPrev;

    invoke-direct {v0, v2}, Lorg/telegram/ui/StatisticActivity$OverviewChannelData;->prepare(Lorg/telegram/tgnet/tl/TL_stats$TL_statsAbsValueAndPrev;)Lorg/telegram/ui/StatisticActivity$OverviewChannelData$Quadruple;

    move-result-object v2

    .line 2961
    const-string v3, "ReactionsPerPost"

    sget v4, Lorg/telegram/messenger/R$string;->ReactionsPerPost:I

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lorg/telegram/ui/StatisticActivity$OverviewChannelData;->reactionsPerPostTitle:Ljava/lang/String;

    .line 2962
    iget-object v3, v2, Lorg/telegram/ui/StatisticActivity$OverviewChannelData$Quadruple;->fist:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iput-object v3, v0, Lorg/telegram/ui/StatisticActivity$OverviewChannelData;->reactionsPerPostPrimary:Ljava/lang/String;

    .line 2963
    iget-object v3, v2, Lorg/telegram/ui/StatisticActivity$OverviewChannelData$Quadruple;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iput-object v3, v0, Lorg/telegram/ui/StatisticActivity$OverviewChannelData;->reactionsPerPostSecondary:Ljava/lang/String;

    .line 2964
    iget-object v3, v2, Lorg/telegram/ui/StatisticActivity$OverviewChannelData$Quadruple;->third:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iput-boolean v3, v0, Lorg/telegram/ui/StatisticActivity$OverviewChannelData;->reactionsPerPostUp:Z

    .line 2965
    iget-object v2, v2, Lorg/telegram/ui/StatisticActivity$OverviewChannelData$Quadruple;->fourth:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, v0, Lorg/telegram/ui/StatisticActivity$OverviewChannelData;->reactionsPerPostVisible:Z

    .line 2967
    iget-object v2, v1, Lorg/telegram/tgnet/tl/TL_stats$TL_broadcastStats;->reactions_per_story:Lorg/telegram/tgnet/tl/TL_stats$TL_statsAbsValueAndPrev;

    invoke-direct {v0, v2}, Lorg/telegram/ui/StatisticActivity$OverviewChannelData;->prepare(Lorg/telegram/tgnet/tl/TL_stats$TL_statsAbsValueAndPrev;)Lorg/telegram/ui/StatisticActivity$OverviewChannelData$Quadruple;

    move-result-object v2

    .line 2968
    const-string v3, "ReactionsPerStory"

    sget v4, Lorg/telegram/messenger/R$string;->ReactionsPerStory:I

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lorg/telegram/ui/StatisticActivity$OverviewChannelData;->reactionsPerStoryTitle:Ljava/lang/String;

    .line 2969
    iget-object v3, v2, Lorg/telegram/ui/StatisticActivity$OverviewChannelData$Quadruple;->fist:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iput-object v3, v0, Lorg/telegram/ui/StatisticActivity$OverviewChannelData;->reactionsPerStoryPrimary:Ljava/lang/String;

    .line 2970
    iget-object v3, v2, Lorg/telegram/ui/StatisticActivity$OverviewChannelData$Quadruple;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iput-object v3, v0, Lorg/telegram/ui/StatisticActivity$OverviewChannelData;->reactionsPerStorySecondary:Ljava/lang/String;

    .line 2971
    iget-object v3, v2, Lorg/telegram/ui/StatisticActivity$OverviewChannelData$Quadruple;->third:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iput-boolean v3, v0, Lorg/telegram/ui/StatisticActivity$OverviewChannelData;->reactionsPerStoryUp:Z

    .line 2972
    iget-object v2, v2, Lorg/telegram/ui/StatisticActivity$OverviewChannelData$Quadruple;->fourth:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, v0, Lorg/telegram/ui/StatisticActivity$OverviewChannelData;->reactionsPerStoryVisible:Z

    .line 2974
    iget-object v2, v1, Lorg/telegram/tgnet/tl/TL_stats$TL_broadcastStats;->views_per_story:Lorg/telegram/tgnet/tl/TL_stats$TL_statsAbsValueAndPrev;

    invoke-direct {v0, v2}, Lorg/telegram/ui/StatisticActivity$OverviewChannelData;->prepare(Lorg/telegram/tgnet/tl/TL_stats$TL_statsAbsValueAndPrev;)Lorg/telegram/ui/StatisticActivity$OverviewChannelData$Quadruple;

    move-result-object v2

    .line 2975
    const-string v3, "ViewsPerStory"

    sget v4, Lorg/telegram/messenger/R$string;->ViewsPerStory:I

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lorg/telegram/ui/StatisticActivity$OverviewChannelData;->viewsPerStoryTitle:Ljava/lang/String;

    .line 2976
    iget-object v3, v2, Lorg/telegram/ui/StatisticActivity$OverviewChannelData$Quadruple;->fist:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iput-object v3, v0, Lorg/telegram/ui/StatisticActivity$OverviewChannelData;->viewsPerStoryPrimary:Ljava/lang/String;

    .line 2977
    iget-object v3, v2, Lorg/telegram/ui/StatisticActivity$OverviewChannelData$Quadruple;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iput-object v3, v0, Lorg/telegram/ui/StatisticActivity$OverviewChannelData;->viewsPerStorySecondary:Ljava/lang/String;

    .line 2978
    iget-object v3, v2, Lorg/telegram/ui/StatisticActivity$OverviewChannelData$Quadruple;->third:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iput-boolean v3, v0, Lorg/telegram/ui/StatisticActivity$OverviewChannelData;->viewsPerStoryUp:Z

    .line 2979
    iget-object v2, v2, Lorg/telegram/ui/StatisticActivity$OverviewChannelData$Quadruple;->fourth:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, v0, Lorg/telegram/ui/StatisticActivity$OverviewChannelData;->viewsPerStoryVisible:Z

    .line 2981
    iget-object v2, v1, Lorg/telegram/tgnet/tl/TL_stats$TL_broadcastStats;->shares_per_story:Lorg/telegram/tgnet/tl/TL_stats$TL_statsAbsValueAndPrev;

    invoke-direct {v0, v2}, Lorg/telegram/ui/StatisticActivity$OverviewChannelData;->prepare(Lorg/telegram/tgnet/tl/TL_stats$TL_statsAbsValueAndPrev;)Lorg/telegram/ui/StatisticActivity$OverviewChannelData$Quadruple;

    move-result-object v2

    .line 2982
    const-string v3, "SharesPerStory"

    sget v4, Lorg/telegram/messenger/R$string;->SharesPerStory:I

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lorg/telegram/ui/StatisticActivity$OverviewChannelData;->sharesPerStoryTitle:Ljava/lang/String;

    .line 2983
    iget-object v3, v2, Lorg/telegram/ui/StatisticActivity$OverviewChannelData$Quadruple;->fist:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iput-object v3, v0, Lorg/telegram/ui/StatisticActivity$OverviewChannelData;->sharesPerStoryPrimary:Ljava/lang/String;

    .line 2984
    iget-object v3, v2, Lorg/telegram/ui/StatisticActivity$OverviewChannelData$Quadruple;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iput-object v3, v0, Lorg/telegram/ui/StatisticActivity$OverviewChannelData;->sharesPerStorySecondary:Ljava/lang/String;

    .line 2985
    iget-object v3, v2, Lorg/telegram/ui/StatisticActivity$OverviewChannelData$Quadruple;->third:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iput-boolean v3, v0, Lorg/telegram/ui/StatisticActivity$OverviewChannelData;->sharesPerStoryUp:Z

    .line 2986
    iget-object v2, v2, Lorg/telegram/ui/StatisticActivity$OverviewChannelData$Quadruple;->fourth:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, v0, Lorg/telegram/ui/StatisticActivity$OverviewChannelData;->sharesPerStoryVisible:Z

    .line 2988
    iget-object v2, v1, Lorg/telegram/tgnet/tl/TL_stats$TL_broadcastStats;->followers:Lorg/telegram/tgnet/tl/TL_stats$TL_statsAbsValueAndPrev;

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

    .line 2989
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 2990
    :goto_0
    const-string v6, "FollowersChartTitle"

    sget v7, Lorg/telegram/messenger/R$string;->FollowersChartTitle:I

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lorg/telegram/ui/StatisticActivity$OverviewChannelData;->followersTitle:Ljava/lang/String;

    .line 2991
    iget-object v6, v1, Lorg/telegram/tgnet/tl/TL_stats$TL_broadcastStats;->followers:Lorg/telegram/tgnet/tl/TL_stats$TL_statsAbsValueAndPrev;

    iget-wide v6, v6, Lorg/telegram/tgnet/tl/TL_stats$TL_statsAbsValueAndPrev;->current:D

    double-to-int v6, v6

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lorg/telegram/messenger/AndroidUtilities;->formatWholeNumber(II)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lorg/telegram/ui/StatisticActivity$OverviewChannelData;->followersPrimary:Ljava/lang/String;

    const/4 v6, 0x3

    const/4 v10, 0x2

    const/4 v11, 0x1

    .line 2993
    const-string v12, "%s (%.1f%s)"

    const-string v13, "%s (%d%s)"

    const-string v14, "+"

    const-string v15, "%"

    move-wide/from16 v16, v3

    const-string v3, ""

    if-eqz v2, :cond_1

    cmpl-float v4, v5, v9

    if-nez v4, :cond_2

    :cond_1
    move/from16 v18, v8

    move/from16 v19, v9

    goto :goto_3

    :cond_2
    float-to-int v4, v5

    move/from16 v18, v8

    int-to-float v8, v4

    cmpl-float v8, v5, v8

    if-nez v8, :cond_4

    .line 2996
    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v19, v9

    if-lez v2, :cond_3

    move-object v9, v14

    goto :goto_1

    :cond_3
    move-object v9, v3

    :goto_1
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2, v7}, Lorg/telegram/messenger/AndroidUtilities;->formatWholeNumber(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-array v9, v6, [Ljava/lang/Object;

    aput-object v8, v9, v7

    aput-object v4, v9, v11

    aput-object v15, v9, v10

    invoke-static {v5, v13, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lorg/telegram/ui/StatisticActivity$OverviewChannelData;->followersSecondary:Ljava/lang/String;

    goto :goto_4

    :cond_4
    move/from16 v19, v9

    .line 2998
    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    if-lez v2, :cond_5

    move-object v9, v14

    goto :goto_2

    :cond_5
    move-object v9, v3

    :goto_2
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2, v7}, Lorg/telegram/messenger/AndroidUtilities;->formatWholeNumber(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    new-array v9, v6, [Ljava/lang/Object;

    aput-object v8, v9, v7

    aput-object v5, v9, v11

    aput-object v15, v9, v10

    invoke-static {v4, v12, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lorg/telegram/ui/StatisticActivity$OverviewChannelData;->followersSecondary:Ljava/lang/String;

    goto :goto_4

    .line 2994
    :goto_3
    iput-object v3, v0, Lorg/telegram/ui/StatisticActivity$OverviewChannelData;->followersSecondary:Ljava/lang/String;

    :goto_4
    if-ltz v2, :cond_6

    move v2, v11

    goto :goto_5

    :cond_6
    move v2, v7

    .line 3000
    :goto_5
    iput-boolean v2, v0, Lorg/telegram/ui/StatisticActivity$OverviewChannelData;->followersUp:Z

    .line 3002
    iget-object v2, v1, Lorg/telegram/tgnet/tl/TL_stats$TL_broadcastStats;->shares_per_post:Lorg/telegram/tgnet/tl/TL_stats$TL_statsAbsValueAndPrev;

    iget-wide v4, v2, Lorg/telegram/tgnet/tl/TL_stats$TL_statsAbsValueAndPrev;->current:D

    iget-wide v8, v2, Lorg/telegram/tgnet/tl/TL_stats$TL_statsAbsValueAndPrev;->previous:D

    sub-double/2addr v4, v8

    double-to-int v2, v4

    cmpl-double v4, v8, v16

    if-nez v4, :cond_7

    move/from16 v4, v19

    goto :goto_6

    :cond_7
    int-to-float v4, v2

    double-to-float v5, v8

    div-float/2addr v4, v5

    mul-float v4, v4, v18

    .line 3003
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 3004
    :goto_6
    const-string v5, "SharesPerPost"

    sget v8, Lorg/telegram/messenger/R$string;->SharesPerPost:I

    invoke-static {v5, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lorg/telegram/ui/StatisticActivity$OverviewChannelData;->sharesTitle:Ljava/lang/String;

    .line 3005
    iget-object v5, v1, Lorg/telegram/tgnet/tl/TL_stats$TL_broadcastStats;->shares_per_post:Lorg/telegram/tgnet/tl/TL_stats$TL_statsAbsValueAndPrev;

    iget-wide v8, v5, Lorg/telegram/tgnet/tl/TL_stats$TL_statsAbsValueAndPrev;->current:D

    double-to-int v5, v8

    invoke-static {v5, v7}, Lorg/telegram/messenger/AndroidUtilities;->formatWholeNumber(II)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lorg/telegram/ui/StatisticActivity$OverviewChannelData;->sharesPrimary:Ljava/lang/String;

    if-eqz v2, :cond_c

    cmpl-float v5, v4, v19

    if-nez v5, :cond_8

    goto :goto_9

    :cond_8
    float-to-int v5, v4

    int-to-float v8, v5

    cmpl-float v8, v4, v8

    if-nez v8, :cond_a

    .line 3010
    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    if-lez v2, :cond_9

    move-object v9, v14

    goto :goto_7

    :cond_9
    move-object v9, v3

    :goto_7
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2, v7}, Lorg/telegram/messenger/AndroidUtilities;->formatWholeNumber(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-array v9, v6, [Ljava/lang/Object;

    aput-object v8, v9, v7

    aput-object v5, v9, v11

    aput-object v15, v9, v10

    invoke-static {v4, v13, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lorg/telegram/ui/StatisticActivity$OverviewChannelData;->sharesSecondary:Ljava/lang/String;

    goto :goto_a

    .line 3012
    :cond_a
    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    if-lez v2, :cond_b

    move-object v9, v14

    goto :goto_8

    :cond_b
    move-object v9, v3

    :goto_8
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2, v7}, Lorg/telegram/messenger/AndroidUtilities;->formatWholeNumber(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    new-array v9, v6, [Ljava/lang/Object;

    aput-object v8, v9, v7

    aput-object v4, v9, v11

    aput-object v15, v9, v10

    invoke-static {v5, v12, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lorg/telegram/ui/StatisticActivity$OverviewChannelData;->sharesSecondary:Ljava/lang/String;

    goto :goto_a

    .line 3008
    :cond_c
    :goto_9
    iput-object v3, v0, Lorg/telegram/ui/StatisticActivity$OverviewChannelData;->sharesSecondary:Ljava/lang/String;

    :goto_a
    if-ltz v2, :cond_d

    move v2, v11

    goto :goto_b

    :cond_d
    move v2, v7

    .line 3014
    :goto_b
    iput-boolean v2, v0, Lorg/telegram/ui/StatisticActivity$OverviewChannelData;->sharesUp:Z

    .line 3016
    iget-object v2, v1, Lorg/telegram/tgnet/tl/TL_stats$TL_broadcastStats;->views_per_post:Lorg/telegram/tgnet/tl/TL_stats$TL_statsAbsValueAndPrev;

    iget-wide v4, v2, Lorg/telegram/tgnet/tl/TL_stats$TL_statsAbsValueAndPrev;->current:D

    iget-wide v8, v2, Lorg/telegram/tgnet/tl/TL_stats$TL_statsAbsValueAndPrev;->previous:D

    sub-double/2addr v4, v8

    double-to-int v2, v4

    cmpl-double v4, v8, v16

    if-nez v4, :cond_e

    move/from16 v4, v19

    goto :goto_c

    :cond_e
    int-to-float v4, v2

    double-to-float v5, v8

    div-float/2addr v4, v5

    mul-float v4, v4, v18

    .line 3017
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 3018
    :goto_c
    const-string v5, "ViewsPerPost"

    sget v8, Lorg/telegram/messenger/R$string;->ViewsPerPost:I

    invoke-static {v5, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lorg/telegram/ui/StatisticActivity$OverviewChannelData;->viewsTitle:Ljava/lang/String;

    .line 3019
    iget-object v5, v1, Lorg/telegram/tgnet/tl/TL_stats$TL_broadcastStats;->views_per_post:Lorg/telegram/tgnet/tl/TL_stats$TL_statsAbsValueAndPrev;

    iget-wide v8, v5, Lorg/telegram/tgnet/tl/TL_stats$TL_statsAbsValueAndPrev;->current:D

    double-to-int v5, v8

    invoke-static {v5, v7}, Lorg/telegram/messenger/AndroidUtilities;->formatWholeNumber(II)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lorg/telegram/ui/StatisticActivity$OverviewChannelData;->viewsPrimary:Ljava/lang/String;

    if-eqz v2, :cond_13

    cmpl-float v5, v4, v19

    if-nez v5, :cond_f

    goto :goto_f

    :cond_f
    float-to-int v5, v4

    int-to-float v8, v5

    cmpl-float v8, v4, v8

    if-nez v8, :cond_11

    .line 3023
    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    if-lez v2, :cond_10

    goto :goto_d

    :cond_10
    move-object v14, v3

    :goto_d
    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2, v7}, Lorg/telegram/messenger/AndroidUtilities;->formatWholeNumber(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v3, v6, v7

    aput-object v5, v6, v11

    aput-object v15, v6, v10

    invoke-static {v4, v13, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lorg/telegram/ui/StatisticActivity$OverviewChannelData;->viewsSecondary:Ljava/lang/String;

    goto :goto_10

    .line 3025
    :cond_11
    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    if-lez v2, :cond_12

    goto :goto_e

    :cond_12
    move-object v14, v3

    :goto_e
    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2, v7}, Lorg/telegram/messenger/AndroidUtilities;->formatWholeNumber(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v3, v6, v7

    aput-object v4, v6, v11

    aput-object v15, v6, v10

    invoke-static {v5, v12, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lorg/telegram/ui/StatisticActivity$OverviewChannelData;->viewsSecondary:Ljava/lang/String;

    goto :goto_10

    .line 3021
    :cond_13
    :goto_f
    iput-object v3, v0, Lorg/telegram/ui/StatisticActivity$OverviewChannelData;->viewsSecondary:Ljava/lang/String;

    :goto_10
    if-ltz v2, :cond_14

    move v2, v11

    goto :goto_11

    :cond_14
    move v2, v7

    .line 3027
    :goto_11
    iput-boolean v2, v0, Lorg/telegram/ui/StatisticActivity$OverviewChannelData;->viewsUp:Z

    .line 3029
    iget-object v1, v1, Lorg/telegram/tgnet/tl/TL_stats$TL_broadcastStats;->enabled_notifications:Lorg/telegram/tgnet/tl/TL_stats$TL_statsPercentValue;

    iget-wide v2, v1, Lorg/telegram/tgnet/tl/TL_stats$TL_statsPercentValue;->part:D

    iget-wide v4, v1, Lorg/telegram/tgnet/tl/TL_stats$TL_statsPercentValue;->total:D

    div-double/2addr v2, v4

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    mul-double/2addr v2, v4

    double-to-float v1, v2

    .line 3030
    const-string v2, "EnabledNotifications"

    sget v3, Lorg/telegram/messenger/R$string;->EnabledNotifications:I

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lorg/telegram/ui/StatisticActivity$OverviewChannelData;->notificationsTitle:Ljava/lang/String;

    float-to-int v2, v1

    int-to-float v3, v2

    cmpl-float v3, v1, v3

    if-nez v3, :cond_15

    .line 3032
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-array v3, v10, [Ljava/lang/Object;

    aput-object v2, v3, v7

    aput-object v15, v3, v11

    const-string v2, "%d%s"

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/StatisticActivity$OverviewChannelData;->notificationsPrimary:Ljava/lang/String;

    return-void

    .line 3034
    :cond_15
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    new-array v3, v10, [Ljava/lang/Object;

    aput-object v1, v3, v7

    aput-object v15, v3, v11

    const-string v1, "%.2f%s"

    invoke-static {v2, v1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/StatisticActivity$OverviewChannelData;->notificationsPrimary:Ljava/lang/String;

    return-void
.end method

.method private prepare(Lorg/telegram/tgnet/tl/TL_stats$TL_statsAbsValueAndPrev;)Lorg/telegram/ui/StatisticActivity$OverviewChannelData$Quadruple;
    .locals 14

    .line 2943
    iget-wide v0, p1, Lorg/telegram/tgnet/tl/TL_stats$TL_statsAbsValueAndPrev;->current:D

    iget-wide v2, p1, Lorg/telegram/tgnet/tl/TL_stats$TL_statsAbsValueAndPrev;->previous:D

    sub-double/2addr v0, v2

    double-to-int v0, v0

    const-wide/16 v4, 0x0

    cmpl-double v1, v2, v4

    const/4 v6, 0x0

    if-nez v1, :cond_0

    move v1, v6

    goto :goto_0

    :cond_0
    int-to-float v1, v0

    double-to-float v2, v2

    div-float/2addr v1, v2

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v1, v2

    .line 2944
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 2945
    :goto_0
    iget-wide v2, p1, Lorg/telegram/tgnet/tl/TL_stats$TL_statsAbsValueAndPrev;->current:D

    double-to-int v2, v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->formatWholeNumber(II)Ljava/lang/String;

    move-result-object v2

    const/4 v7, 0x1

    .line 2947
    const-string v8, ""

    if-eqz v0, :cond_5

    cmpl-float v6, v1, v6

    if-nez v6, :cond_1

    goto :goto_1

    :cond_1
    float-to-int v6, v1

    int-to-float v9, v6

    cmpl-float v9, v1, v9

    const/4 v10, 0x2

    const/4 v11, 0x3

    .line 2949
    const-string v12, "%"

    const-string v13, "+"

    if-nez v9, :cond_3

    .line 2950
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    if-lez v0, :cond_2

    move-object v8, v13

    :cond_2
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, v3}, Lorg/telegram/messenger/AndroidUtilities;->formatWholeNumber(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-array v9, v11, [Ljava/lang/Object;

    aput-object v8, v9, v3

    aput-object v6, v9, v7

    aput-object v12, v9, v10

    const-string v6, "%s (%d%s)"

    invoke-static {v1, v6, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    .line 2952
    :cond_3
    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    if-lez v0, :cond_4

    move-object v8, v13

    :cond_4
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, v3}, Lorg/telegram/messenger/AndroidUtilities;->formatWholeNumber(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    new-array v9, v11, [Ljava/lang/Object;

    aput-object v8, v9, v3

    aput-object v1, v9, v7

    aput-object v12, v9, v10

    const-string v1, "%s (%.1f%s)"

    invoke-static {v6, v1, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    :cond_5
    :goto_1
    if-ltz v0, :cond_6

    move v1, v7

    goto :goto_2

    :cond_6
    move v1, v3

    :goto_2
    if-nez v0, :cond_7

    .line 2955
    iget-wide v9, p1, Lorg/telegram/tgnet/tl/TL_stats$TL_statsAbsValueAndPrev;->current:D

    cmpl-double p1, v9, v4

    if-eqz p1, :cond_8

    :cond_7
    move v3, v7

    .line 2956
    :cond_8
    new-instance p1, Lorg/telegram/ui/StatisticActivity$OverviewChannelData$Quadruple;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p1, v2, v8, v0, v1}, Lorg/telegram/ui/StatisticActivity$OverviewChannelData$Quadruple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method
