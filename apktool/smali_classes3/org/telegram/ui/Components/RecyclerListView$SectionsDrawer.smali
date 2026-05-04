.class public abstract Lorg/telegram/ui/Components/RecyclerListView$SectionsDrawer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/RecyclerListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SectionsDrawer"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/RecyclerListView$SectionsDrawer$Section;
    }
.end annotation


# static fields
.field private static final groups:Ljava/util/ArrayList;


# direct methods
.method public static synthetic $r8$lambda$rD3avRJ01jkStRx6Sr_T5YYoVF4(Lorg/telegram/ui/Components/RecyclerListView$SectionsDrawer$Section;Lorg/telegram/ui/Components/RecyclerListView$SectionsDrawer$Section;)I
    .locals 0

    .line 3854
    iget p0, p0, Lorg/telegram/ui/Components/RecyclerListView$SectionsDrawer$Section;->from:F

    iget p1, p1, Lorg/telegram/ui/Components/RecyclerListView$SectionsDrawer$Section;->from:F

    invoke-static {p0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 3843
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lorg/telegram/ui/Components/RecyclerListView$SectionsDrawer;->groups:Ljava/util/ArrayList;

    return-void
.end method

.method private static calculateGroup(Ljava/util/List;IIF)[F
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    const v3, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v4, 0x1

    move/from16 v5, p1

    move v6, v3

    move v7, v4

    :goto_0
    const v8, 0x3f7d70a4    # 0.99f

    if-ge v5, v1, :cond_1

    .line 3910
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/ui/Components/RecyclerListView$SectionsDrawer$Section;

    .line 3911
    iget v10, v9, Lorg/telegram/ui/Components/RecyclerListView$SectionsDrawer$Section;->alpha:F

    cmpl-float v8, v10, v8

    if-ltz v8, :cond_0

    .line 3912
    iget v8, v9, Lorg/telegram/ui/Components/RecyclerListView$SectionsDrawer$Section;->from:F

    invoke-static {v6, v8}, Ljava/lang/Math;->min(FF)F

    move-result v6

    .line 3913
    iget v8, v9, Lorg/telegram/ui/Components/RecyclerListView$SectionsDrawer$Section;->to:F

    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F

    move-result v7

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    cmpl-float v5, v6, v3

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-eqz v5, :cond_2

    move v5, v10

    goto :goto_1

    :cond_2
    move v5, v9

    :goto_1
    const/4 v11, 0x0

    move/from16 v12, p1

    move v13, v11

    :goto_2
    if-ge v12, v1, :cond_3

    .line 3922
    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/telegram/ui/Components/RecyclerListView$SectionsDrawer$Section;

    .line 3923
    iget v15, v14, Lorg/telegram/ui/Components/RecyclerListView$SectionsDrawer$Section;->from:F

    invoke-static {v3, v15}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 3924
    iget v15, v14, Lorg/telegram/ui/Components/RecyclerListView$SectionsDrawer$Section;->to:F

    invoke-static {v4, v15}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 3925
    iget v14, v14, Lorg/telegram/ui/Components/RecyclerListView$SectionsDrawer$Section;->alpha:F

    invoke-static {v13, v14}, Ljava/lang/Math;->max(FF)F

    move-result v13

    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    :cond_3
    const v12, 0x3a83126f    # 0.001f

    cmpg-float v14, v13, v12

    const/4 v15, 0x0

    if-gez v14, :cond_4

    return-object v15

    :cond_4
    if-nez v5, :cond_5

    move v1, v2

    move v7, v4

    goto/16 :goto_8

    :cond_5
    move/from16 v3, p1

    move v4, v11

    move-object v5, v15

    :goto_3
    if-ge v3, v1, :cond_8

    .line 3951
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/telegram/ui/Components/RecyclerListView$SectionsDrawer$Section;

    .line 3952
    iget v14, v13, Lorg/telegram/ui/Components/RecyclerListView$SectionsDrawer$Section;->alpha:F

    cmpl-float v16, v14, v8

    if-ltz v16, :cond_6

    move/from16 v16, v8

    goto :goto_4

    :cond_6
    move/from16 v16, v8

    .line 3953
    iget v8, v13, Lorg/telegram/ui/Components/RecyclerListView$SectionsDrawer$Section;->from:F

    cmpg-float v17, v8, v6

    if-gez v17, :cond_7

    sub-float v8, v6, v8

    mul-float/2addr v8, v14

    cmpl-float v14, v8, v4

    if-lez v14, :cond_7

    move v4, v8

    move-object v5, v13

    :cond_7
    :goto_4
    add-int/lit8 v3, v3, 0x1

    move/from16 v8, v16

    goto :goto_3

    :cond_8
    move/from16 v16, v8

    move/from16 v3, p1

    move-object v4, v15

    :goto_5
    if-ge v3, v1, :cond_b

    .line 3965
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/ui/Components/RecyclerListView$SectionsDrawer$Section;

    .line 3966
    iget v13, v8, Lorg/telegram/ui/Components/RecyclerListView$SectionsDrawer$Section;->alpha:F

    cmpl-float v14, v13, v16

    if-ltz v14, :cond_9

    goto :goto_6

    .line 3967
    :cond_9
    iget v14, v8, Lorg/telegram/ui/Components/RecyclerListView$SectionsDrawer$Section;->to:F

    cmpl-float v17, v14, v7

    if-lez v17, :cond_a

    sub-float/2addr v14, v7

    mul-float/2addr v14, v13

    cmpl-float v13, v14, v11

    if-lez v13, :cond_a

    move-object v4, v8

    move v11, v14

    :cond_a
    :goto_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_b
    if-eqz v5, :cond_c

    .line 3976
    iget v0, v5, Lorg/telegram/ui/Components/RecyclerListView$SectionsDrawer$Section;->alpha:F

    cmpl-float v1, v0, v12

    if-lez v1, :cond_c

    .line 3977
    iget v1, v5, Lorg/telegram/ui/Components/RecyclerListView$SectionsDrawer$Section;->from:F

    invoke-static {v6, v1, v0}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v0

    sub-float v1, v6, v0

    .line 3980
    iget v3, v5, Lorg/telegram/ui/Components/RecyclerListView$SectionsDrawer$Section;->from:F

    sub-float/2addr v6, v3

    add-float/2addr v6, v12

    div-float/2addr v1, v6

    .line 3981
    iget v3, v5, Lorg/telegram/ui/Components/RecyclerListView$SectionsDrawer$Section;->alpha:F

    mul-float/2addr v3, v2

    invoke-static {v2, v3, v1}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v1

    move v6, v0

    goto :goto_7

    :cond_c
    move v1, v2

    :goto_7
    const/high16 v13, 0x3f800000    # 1.0f

    if-eqz v4, :cond_d

    .line 3983
    iget v0, v4, Lorg/telegram/ui/Components/RecyclerListView$SectionsDrawer$Section;->alpha:F

    cmpl-float v3, v0, v12

    if-lez v3, :cond_d

    .line 3984
    iget v3, v4, Lorg/telegram/ui/Components/RecyclerListView$SectionsDrawer$Section;->to:F

    invoke-static {v7, v3, v0}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v0

    sub-float v3, v0, v7

    .line 3987
    iget v5, v4, Lorg/telegram/ui/Components/RecyclerListView$SectionsDrawer$Section;->to:F

    sub-float/2addr v5, v7

    add-float/2addr v5, v12

    div-float/2addr v3, v5

    .line 3988
    iget v4, v4, Lorg/telegram/ui/Components/RecyclerListView$SectionsDrawer$Section;->alpha:F

    mul-float/2addr v4, v2

    invoke-static {v2, v4, v3}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v2

    move v7, v0

    :cond_d
    move v3, v6

    :goto_8
    cmpg-float v0, v7, v3

    if-gtz v0, :cond_e

    return-object v15

    :cond_e
    const/4 v0, 0x5

    .line 3994
    new-array v0, v0, [F

    aput v3, v0, v9

    aput v7, v0, v10

    const/4 v3, 0x2

    aput v1, v0, v3

    const/4 v1, 0x3

    aput v2, v0, v1

    const/4 v1, 0x4

    aput v13, v0, v1

    return-object v0
.end method

.method public static draw(Ljava/util/List;FLorg/telegram/messenger/Utilities$Callback5;)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    if-eqz v0, :cond_6

    .line 3852
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_3

    .line 3854
    :cond_0
    new-instance v2, Lorg/telegram/ui/Components/RecyclerListView$SectionsDrawer$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lorg/telegram/ui/Components/RecyclerListView$SectionsDrawer$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 3856
    sget-object v2, Lorg/telegram/ui/Components/RecyclerListView$SectionsDrawer;->groups:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    const/4 v2, 0x0

    move v3, v2

    .line 3859
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 3860
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/Components/RecyclerListView$SectionsDrawer$Section;

    iget v4, v4, Lorg/telegram/ui/Components/RecyclerListView$SectionsDrawer$Section;->to:F

    add-int/lit8 v5, v3, 0x1

    .line 3863
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_1

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/ui/Components/RecyclerListView$SectionsDrawer$Section;

    iget v6, v6, Lorg/telegram/ui/Components/RecyclerListView$SectionsDrawer$Section;->from:F

    const/high16 v7, 0x3fc00000    # 1.5f

    add-float/2addr v7, v4

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_1

    .line 3864
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/ui/Components/RecyclerListView$SectionsDrawer$Section;

    iget v6, v6, Lorg/telegram/ui/Components/RecyclerListView$SectionsDrawer$Section;->to:F

    invoke-static {v4, v6}, Ljava/lang/Math;->max(FF)F

    move-result v4

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 3868
    :cond_1
    invoke-static {v0, v3, v5, v1}, Lorg/telegram/ui/Components/RecyclerListView$SectionsDrawer;->calculateGroup(Ljava/util/List;IIF)[F

    move-result-object v3

    if-eqz v3, :cond_2

    .line 3870
    sget-object v4, Lorg/telegram/ui/Components/RecyclerListView$SectionsDrawer;->groups:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    move v3, v5

    goto :goto_0

    :cond_3
    move v0, v2

    .line 3876
    :goto_2
    sget-object v3, Lorg/telegram/ui/Components/RecyclerListView$SectionsDrawer;->groups:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_6

    .line 3877
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [F

    .line 3878
    aget v5, v4, v2

    const/4 v6, 0x1

    .line 3879
    aget v7, v4, v6

    const/4 v8, 0x2

    .line 3880
    aget v8, v4, v8

    const/4 v9, 0x3

    .line 3881
    aget v9, v4, v9

    const/4 v10, 0x4

    .line 3882
    aget v4, v4, v10

    const v10, 0x3e4ccccd    # 0.2f

    if-lez v0, :cond_4

    add-int/lit8 v11, v0, -0x1

    .line 3885
    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [F

    .line 3886
    aget v11, v11, v6

    sub-float v11, v5, v11

    mul-float v12, v1, v10

    cmpg-float v13, v11, v12

    if-gez v13, :cond_4

    div-float/2addr v11, v12

    mul-float/2addr v11, v1

    .line 3889
    invoke-static {v8, v11}, Ljava/lang/Math;->min(FF)F

    move-result v8

    .line 3893
    :cond_4
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v11

    sub-int/2addr v11, v6

    if-ge v0, v11, :cond_5

    add-int/lit8 v6, v0, 0x1

    .line 3894
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [F

    .line 3895
    aget v3, v3, v2

    sub-float/2addr v3, v7

    mul-float v6, v1, v10

    cmpg-float v10, v3, v6

    if-gez v10, :cond_5

    div-float/2addr v3, v6

    mul-float/2addr v3, v1

    .line 3898
    invoke-static {v9, v3}, Ljava/lang/Math;->min(FF)F

    move-result v9

    .line 3902
    :cond_5
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    move-object/from16 v10, p2

    invoke-interface/range {v10 .. v15}, Lorg/telegram/messenger/Utilities$Callback5;->run(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_6
    :goto_3
    return-void
.end method
