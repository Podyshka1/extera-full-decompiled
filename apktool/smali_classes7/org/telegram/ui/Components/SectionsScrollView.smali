.class public Lorg/telegram/ui/Components/SectionsScrollView;
.super Landroid/widget/ScrollView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/SectionsScrollView$SectionsLinearLayout;
    }
.end annotation


# instance fields
.field private children:Ljava/util/ArrayList;

.field private final clipPath:Landroid/graphics/Path;

.field private contentView:Landroid/widget/LinearLayout;

.field private onScroll:Ljava/util/ArrayList;

.field private resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private sectionRadius:F

.field private sectionRadiusBottom:[F

.field private sectionRadiusTop:[F


# direct methods
.method static bridge synthetic -$$Nest$mclipChild(Lorg/telegram/ui/Components/SectionsScrollView;Landroid/graphics/Canvas;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/SectionsScrollView;->clipChild(Landroid/graphics/Canvas;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/LinearLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 1

    const/4 v0, 0x1

    .line 45
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/telegram/ui/Components/SectionsScrollView;-><init>(Landroid/content/Context;Landroid/widget/LinearLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/LinearLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Z)V
    .locals 10

    .line 53
    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    const/high16 p1, 0x41800000    # 16.0f

    .line 33
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lorg/telegram/ui/Components/SectionsScrollView;->sectionRadius:F

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/SectionsScrollView;->onScroll:Ljava/util/ArrayList;

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/SectionsScrollView;->children:Ljava/util/ArrayList;

    .line 171
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/SectionsScrollView;->clipPath:Landroid/graphics/Path;

    .line 54
    iput-object p3, p0, Lorg/telegram/ui/Components/SectionsScrollView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 55
    iput-object p2, p0, Lorg/telegram/ui/Components/SectionsScrollView;->contentView:Landroid/widget/LinearLayout;

    const/4 p2, 0x0

    .line 56
    invoke-virtual {p0, p2}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 58
    iget-object p3, p0, Lorg/telegram/ui/Components/SectionsScrollView;->contentView:Landroid/widget/LinearLayout;

    const/high16 v0, 0x41400000    # 12.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    if-eqz p4, :cond_0

    move p4, v0

    goto :goto_0

    :cond_0
    const/high16 p4, 0x40800000    # 4.0f

    :goto_0
    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p4

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-virtual {p3, v1, p4, v2, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 61
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p3

    int-to-float p3, p3

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p4

    int-to-float p4, p4

    .line 62
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    const/16 v2, 0x8

    new-array v3, v2, [F

    aput p3, v3, p2

    const/4 p3, 0x1

    aput p4, v3, p3

    const/4 p4, 0x2

    aput v0, v3, p4

    const/4 v0, 0x3

    aput v1, v3, v0

    const/4 v1, 0x4

    const/4 v4, 0x0

    aput v4, v3, v1

    const/4 v5, 0x5

    aput v4, v3, v5

    const/4 v6, 0x6

    aput v4, v3, v6

    const/4 v7, 0x7

    aput v4, v3, v7

    iput-object v3, p0, Lorg/telegram/ui/Components/SectionsScrollView;->sectionRadiusTop:[F

    .line 69
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    int-to-float v8, v8

    .line 70
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    int-to-float p1, p1

    new-array v2, v2, [F

    aput v4, v2, p2

    aput v4, v2, p3

    aput v4, v2, p4

    aput v4, v2, v0

    aput v3, v2, v1

    aput v8, v2, v5

    aput v9, v2, v6

    aput p1, v2, v7

    iput-object v2, p0, Lorg/telegram/ui/Components/SectionsScrollView;->sectionRadiusBottom:[F

    return-void
.end method

.method private clipChild(Landroid/graphics/Canvas;Landroid/view/View;)V
    .locals 11

    if-eqz p2, :cond_b

    .line 173
    invoke-static {p2}, Lorg/telegram/ui/Components/SectionsScrollView;->isSectionView(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_6

    .line 177
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/SectionsScrollView;->contentView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    const/4 v2, 0x0

    if-gez v1, :cond_1

    move-object v1, v2

    goto :goto_0

    .line 178
    :cond_1
    iget-object v3, p0, Lorg/telegram/ui/Components/SectionsScrollView;->contentView:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    :goto_0
    const/4 v3, 0x1

    add-int/2addr v0, v3

    .line 179
    iget-object v4, p0, Lorg/telegram/ui/Components/SectionsScrollView;->contentView:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-lt v0, v4, :cond_2

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lorg/telegram/ui/Components/SectionsScrollView;->contentView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    :goto_1
    const/4 v0, 0x0

    if-eqz v1, :cond_3

    .line 180
    invoke-static {v1}, Lorg/telegram/ui/Components/SectionsScrollView;->isSectionView(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v3

    goto :goto_2

    :cond_3
    move v1, v0

    :goto_2
    if-eqz v2, :cond_4

    .line 181
    invoke-static {v2}, Lorg/telegram/ui/Components/SectionsScrollView;->isSectionView(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_4

    move v2, v3

    goto :goto_3

    :cond_4
    move v2, v0

    .line 183
    :goto_3
    sget-object v4, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    .line 184
    invoke-virtual {p2}, Landroid/view/View;->getX()F

    move-result v5

    .line 185
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v6

    const/high16 v7, 0x41800000    # 16.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    sub-int/2addr v6, v8

    int-to-float v6, v6

    iget-object v8, p0, Lorg/telegram/ui/Components/SectionsScrollView;->contentView:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/view/View;->getY()F

    move-result v8

    invoke-virtual {p2}, Landroid/view/View;->getY()F

    move-result v9

    add-float/2addr v8, v9

    invoke-static {v6, v8}, Ljava/lang/Math;->max(FF)F

    move-result v6

    .line 186
    invoke-virtual {p2}, Landroid/view/View;->getX()F

    move-result v8

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v8, v9

    .line 187
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v9

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v10

    add-int/2addr v9, v10

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    add-int/2addr v9, v7

    int-to-float v7, v9

    iget-object v9, p0, Lorg/telegram/ui/Components/SectionsScrollView;->contentView:Landroid/widget/LinearLayout;

    invoke-virtual {v9}, Landroid/view/View;->getY()F

    move-result v9

    invoke-virtual {p2}, Landroid/view/View;->getY()F

    move-result v10

    add-float/2addr v9, v10

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v9, v10

    invoke-static {v7, v9}, Ljava/lang/Math;->min(FF)F

    move-result v7

    .line 183
    invoke-virtual {v4, v5, v6, v8, v7}, Landroid/graphics/RectF;->set(FFFF)V

    if-eqz v1, :cond_8

    if-eqz v2, :cond_8

    .line 190
    invoke-virtual {p2}, Landroid/view/View;->getY()F

    move-result v1

    iget v2, v4, Landroid/graphics/RectF;->top:F

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_5

    move v1, v3

    goto :goto_4

    :cond_5
    move v1, v0

    .line 191
    :goto_4
    invoke-virtual {p2}, Landroid/view/View;->getY()F

    move-result v2

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p2

    int-to-float p2, p2

    add-float/2addr v2, p2

    iget p2, v4, Landroid/graphics/RectF;->bottom:F

    cmpg-float p2, v2, p2

    if-gtz p2, :cond_6

    goto :goto_5

    :cond_6
    move v3, v0

    :goto_5
    if-eqz v1, :cond_7

    if-eqz v3, :cond_7

    goto :goto_6

    :cond_7
    move v2, v3

    :cond_8
    if-nez v1, :cond_9

    if-nez v2, :cond_9

    .line 195
    iget-object p2, p0, Lorg/telegram/ui/Components/SectionsScrollView;->clipPath:Landroid/graphics/Path;

    invoke-virtual {p2}, Landroid/graphics/Path;->rewind()V

    .line 196
    iget-object p2, p0, Lorg/telegram/ui/Components/SectionsScrollView;->clipPath:Landroid/graphics/Path;

    iget v0, p0, Lorg/telegram/ui/Components/SectionsScrollView;->sectionRadius:F

    sget-object v1, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {p2, v4, v0, v0, v1}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 197
    iget-object p2, p0, Lorg/telegram/ui/Components/SectionsScrollView;->clipPath:Landroid/graphics/Path;

    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    return-void

    :cond_9
    if-nez v1, :cond_a

    .line 199
    iget-object p2, p0, Lorg/telegram/ui/Components/SectionsScrollView;->clipPath:Landroid/graphics/Path;

    invoke-virtual {p2}, Landroid/graphics/Path;->rewind()V

    .line 200
    iget-object p2, p0, Lorg/telegram/ui/Components/SectionsScrollView;->clipPath:Landroid/graphics/Path;

    iget-object v0, p0, Lorg/telegram/ui/Components/SectionsScrollView;->sectionRadiusTop:[F

    sget-object v1, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {p2, v4, v0, v1}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 201
    iget-object p2, p0, Lorg/telegram/ui/Components/SectionsScrollView;->clipPath:Landroid/graphics/Path;

    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    return-void

    :cond_a
    if-nez v2, :cond_b

    .line 203
    iget-object p2, p0, Lorg/telegram/ui/Components/SectionsScrollView;->clipPath:Landroid/graphics/Path;

    invoke-virtual {p2}, Landroid/graphics/Path;->rewind()V

    .line 204
    iget-object p2, p0, Lorg/telegram/ui/Components/SectionsScrollView;->clipPath:Landroid/graphics/Path;

    iget-object v0, p0, Lorg/telegram/ui/Components/SectionsScrollView;->sectionRadiusBottom:[F

    sget-object v1, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {p2, v4, v0, v1}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 205
    iget-object p2, p0, Lorg/telegram/ui/Components/SectionsScrollView;->clipPath:Landroid/graphics/Path;

    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    :cond_b
    :goto_6
    return-void
.end method

.method private drawSectionBackground(Landroid/graphics/Canvas;Landroid/view/View;Landroid/view/View;)V
    .locals 11

    if-eqz p2, :cond_4

    if-nez p3, :cond_0

    goto/16 :goto_1

    .line 141
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 142
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 143
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/Components/SectionsScrollView;->contentView:Landroid/widget/LinearLayout;

    const/4 v4, 0x0

    if-eq v2, v3, :cond_1

    instance-of v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v2, :cond_1

    .line 144
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    int-to-float v0, v0

    goto :goto_0

    :cond_1
    move v0, v4

    .line 146
    :goto_0
    invoke-virtual {p3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/Components/SectionsScrollView;->contentView:Landroid/widget/LinearLayout;

    if-eq v2, v3, :cond_2

    instance-of v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v2, :cond_2

    .line 147
    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    int-to-float v4, v1

    .line 150
    :cond_2
    sget-object v6, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    .line 151
    invoke-virtual {v3}, Landroid/view/View;->getX()F

    move-result v1

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/SectionsScrollView;->getChildX(Landroid/view/View;)F

    move-result v2

    add-float/2addr v1, v2

    .line 152
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v2

    const/high16 v3, 0x41800000    # 16.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    sub-int/2addr v2, v5

    int-to-float v2, v2

    iget-object v5, p0, Lorg/telegram/ui/Components/SectionsScrollView;->contentView:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/view/View;->getY()F

    move-result v5

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/SectionsScrollView;->getChildY(Landroid/view/View;)F

    move-result v7

    add-float/2addr v5, v7

    sub-float/2addr v5, v0

    invoke-static {v2, v5}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget-object v2, p0, Lorg/telegram/ui/Components/SectionsScrollView;->contentView:Landroid/widget/LinearLayout;

    .line 153
    invoke-virtual {v2}, Landroid/view/View;->getX()F

    move-result v2

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/SectionsScrollView;->getChildX(Landroid/view/View;)F

    move-result v5

    add-float/2addr v2, v5

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v2, v5

    .line 154
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    add-int/2addr v5, v7

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v7

    add-int/2addr v5, v7

    int-to-float v5, v5

    iget-object v7, p0, Lorg/telegram/ui/Components/SectionsScrollView;->contentView:Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/view/View;->getY()F

    move-result v7

    invoke-direct {p0, p3}, Lorg/telegram/ui/Components/SectionsScrollView;->getChildY(Landroid/view/View;)F

    move-result v8

    add-float/2addr v7, v8

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result p3

    int-to-float p3, p3

    add-float/2addr v7, p3

    add-float/2addr v7, v4

    invoke-static {v5, v7}, Ljava/lang/Math;->min(FF)F

    move-result p3

    .line 150
    invoke-virtual {v6, v1, v0, v2, p3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 156
    iget p3, v6, Landroid/graphics/RectF;->bottom:F

    iget v0, v6, Landroid/graphics/RectF;->top:F

    cmpg-float p3, p3, v0

    if-gez p3, :cond_3

    goto :goto_1

    .line 157
    :cond_3
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p3

    int-to-float v7, p3

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p3

    int-to-float v8, p3

    invoke-virtual {p2}, Landroid/view/View;->getAlpha()F

    move-result v9

    iget-object v10, p0, Lorg/telegram/ui/Components/SectionsScrollView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-object v5, p1

    invoke-static/range {v5 .. v10}, Lorg/telegram/ui/Components/RecyclerListView;->drawBackgroundRect(Landroid/graphics/Canvas;Landroid/graphics/RectF;FFFLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    :cond_4
    :goto_1
    return-void
.end method

.method private drawSectionsBackgrounds(Landroid/graphics/Canvas;)V
    .locals 9

    .line 112
    iget-object v0, p0, Lorg/telegram/ui/Components/SectionsScrollView;->children:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 113
    iget-object v0, p0, Lorg/telegram/ui/Components/SectionsScrollView;->contentView:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v1}, Lorg/telegram/ui/Components/SectionsScrollView;->gatherChildren(Landroid/view/ViewGroup;FF)V

    .line 116
    iget-object v0, p0, Lorg/telegram/ui/Components/SectionsScrollView;->children:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    move-object v4, v2

    move-object v5, v4

    :goto_1
    if-ge v3, v1, :cond_3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v3, v3, 0x1

    check-cast v6, Landroid/view/View;

    .line 117
    invoke-static {v6}, Lorg/telegram/ui/Components/SectionsScrollView;->isSectionView(Landroid/view/View;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 118
    invoke-direct {p0, p1, v4, v5}, Lorg/telegram/ui/Components/SectionsScrollView;->drawSectionBackground(Landroid/graphics/Canvas;Landroid/view/View;Landroid/view/View;)V

    goto :goto_0

    :cond_0
    if-eqz v4, :cond_1

    .line 122
    invoke-virtual {v5}, Landroid/view/View;->getAlpha()F

    move-result v7

    invoke-virtual {v6}, Landroid/view/View;->getAlpha()F

    move-result v8

    sub-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    const v8, 0x3dcccccd    # 0.1f

    cmpl-float v7, v7, v8

    if-lez v7, :cond_1

    .line 123
    invoke-direct {p0, p1, v4, v5}, Lorg/telegram/ui/Components/SectionsScrollView;->drawSectionBackground(Landroid/graphics/Canvas;Landroid/view/View;Landroid/view/View;)V

    move-object v4, v2

    :cond_1
    if-nez v4, :cond_2

    move-object v4, v6

    :cond_2
    move-object v5, v6

    goto :goto_1

    .line 131
    :cond_3
    invoke-direct {p0, p1, v4, v5}, Lorg/telegram/ui/Components/SectionsScrollView;->drawSectionBackground(Landroid/graphics/Canvas;Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method private gatherChildren(Landroid/view/ViewGroup;FF)V
    .locals 6

    const/4 v0, 0x0

    .line 92
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 93
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 94
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 95
    :cond_0
    instance-of v2, v1, Landroid/widget/LinearLayout;

    if-eqz v2, :cond_1

    move-object v2, v1

    check-cast v2, Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getOrientation()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getX()F

    move-result v3

    add-float/2addr v3, p2

    iget-object v4, p0, Lorg/telegram/ui/Components/SectionsScrollView;->contentView:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getX()F

    move-result v3

    add-float/2addr v3, p2

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    iget-object v4, p0, Lorg/telegram/ui/Components/SectionsScrollView;->contentView:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    iget-object v5, p0, Lorg/telegram/ui/Components/SectionsScrollView;->contentView:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/view/View;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_1

    .line 96
    invoke-virtual {v1}, Landroid/view/View;->getX()F

    move-result v3

    add-float/2addr v3, p2

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v1

    add-float/2addr v1, p3

    invoke-direct {p0, v2, v3, v1}, Lorg/telegram/ui/Components/SectionsScrollView;->gatherChildren(Landroid/view/ViewGroup;FF)V

    goto :goto_1

    .line 98
    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/Components/SectionsScrollView;->children:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private getChildX(Landroid/view/View;)F
    .locals 1

    .line 103
    iget-object v0, p0, Lorg/telegram/ui/Components/SectionsScrollView;->contentView:Landroid/widget/LinearLayout;

    if-eq p1, v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-nez v0, :cond_0

    goto :goto_0

    .line 104
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/SectionsScrollView;->getChildX(Landroid/view/View;)F

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result p1

    add-float/2addr v0, p1

    return v0

    .line 103
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result p1

    return p1
.end method

.method private getChildY(Landroid/view/View;)F
    .locals 1

    .line 107
    iget-object v0, p0, Lorg/telegram/ui/Components/SectionsScrollView;->contentView:Landroid/widget/LinearLayout;

    if-eq p1, v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-nez v0, :cond_0

    goto :goto_0

    .line 108
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/SectionsScrollView;->getChildY(Landroid/view/View;)F

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result p1

    add-float/2addr v0, p1

    return v0

    .line 107
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result p1

    return p1
.end method

.method public static isSectionView(Landroid/view/View;)Z
    .locals 2

    .line 37
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    const v1, -0x8100

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    instance-of v0, p0, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    if-nez v0, :cond_0

    instance-of v0, p0, Lorg/telegram/ui/Cells/ShadowSectionCell;

    if-nez v0, :cond_0

    instance-of p0, p0, Lorg/telegram/ui/FiltersSetupActivity$HintInnerCell;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 162
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/SectionsScrollView;->drawSectionsBackgrounds(Landroid/graphics/Canvas;)V

    .line 163
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 0

    .line 168
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p1

    return p1
.end method

.method public onScroll(Ljava/lang/Runnable;)V
    .locals 1

    .line 76
    iget-object v0, p0, Lorg/telegram/ui/Components/SectionsScrollView;->onScroll:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected onScrollChanged(IIII)V
    .locals 0

    .line 81
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->onScrollChanged(IIII)V

    .line 83
    iget-object p1, p0, Lorg/telegram/ui/Components/SectionsScrollView;->onScroll:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 p3, 0x0

    :goto_0
    if-ge p3, p2, :cond_0

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    add-int/lit8 p3, p3, 0x1

    check-cast p4, Ljava/lang/Runnable;

    .line 84
    invoke-interface {p4}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 86
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 87
    iget-object p1, p0, Lorg/telegram/ui/Components/SectionsScrollView;->contentView:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method
