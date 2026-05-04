.class Lorg/telegram/ui/Components/TopicsTabsView$1;
.super Lorg/telegram/ui/Components/UniversalRecyclerView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/TopicsTabsView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;IJLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final animateTab:Lorg/telegram/ui/Components/AnimatedFloat;

.field private final animatedClip:Lorg/telegram/ui/Components/AnimatedFloat;

.field private final clip:Lorg/telegram/ui/GradientClip;

.field private final linePaint:Landroid/graphics/Paint;

.field private final lineRect:Landroid/graphics/RectF;

.field private pinIcon:Landroid/graphics/drawable/Drawable;

.field private pinIconColor:I

.field private final pinnedBackgroundPaint:Landroid/graphics/Paint;

.field final synthetic this$0:Lorg/telegram/ui/Components/TopicsTabsView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/TopicsTabsView;Landroid/content/Context;IILorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/messenger/Utilities$Callback5;Lorg/telegram/messenger/Utilities$Callback5Return;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lorg/telegram/ui/Components/TopicsTabsView$1;->this$0:Lorg/telegram/ui/Components/TopicsTabsView;

    move-object p1, p0

    invoke-direct/range {p1 .. p8}, Lorg/telegram/ui/Components/UniversalRecyclerView;-><init>(Landroid/content/Context;IILorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/messenger/Utilities$Callback5;Lorg/telegram/messenger/Utilities$Callback5Return;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 125
    new-instance p2, Lorg/telegram/ui/GradientClip;

    invoke-direct {p2}, Lorg/telegram/ui/GradientClip;-><init>()V

    iput-object p2, p1, Lorg/telegram/ui/Components/TopicsTabsView$1;->clip:Lorg/telegram/ui/GradientClip;

    .line 126
    new-instance p2, Lorg/telegram/ui/Components/AnimatedFloat;

    sget-object p3, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const-wide/16 p4, 0x140

    invoke-direct {p2, p0, p4, p5, p3}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JLandroid/animation/TimeInterpolator;)V

    iput-object p2, p1, Lorg/telegram/ui/Components/TopicsTabsView$1;->animatedClip:Lorg/telegram/ui/Components/AnimatedFloat;

    .line 127
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p1, Lorg/telegram/ui/Components/TopicsTabsView$1;->lineRect:Landroid/graphics/RectF;

    .line 128
    new-instance p2, Landroid/graphics/Paint;

    const/4 p4, 0x1

    invoke-direct {p2, p4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p1, Lorg/telegram/ui/Components/TopicsTabsView$1;->linePaint:Landroid/graphics/Paint;

    .line 129
    new-instance p2, Lorg/telegram/ui/Components/AnimatedFloat;

    const-wide/16 p5, 0x1a4

    invoke-direct {p2, p0, p5, p6, p3}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JLandroid/animation/TimeInterpolator;)V

    iput-object p2, p1, Lorg/telegram/ui/Components/TopicsTabsView$1;->animateTab:Lorg/telegram/ui/Components/AnimatedFloat;

    .line 187
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, p4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p1, Lorg/telegram/ui/Components/TopicsTabsView$1;->pinnedBackgroundPaint:Landroid/graphics/Paint;

    return-void
.end method

.method private drawPinnedBackground(Landroid/graphics/Canvas;)V
    .locals 8

    .line 190
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 191
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 192
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 193
    instance-of v4, v3, Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView;

    if-nez v4, :cond_0

    goto :goto_1

    .line 194
    :cond_0
    check-cast v3, Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView;

    .line 195
    invoke-static {v3}, Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView;->-$$Nest$fgetpinned(Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 196
    invoke-virtual {v3}, Landroid/view/View;->getX()F

    move-result v4

    cmpl-float v4, v0, v4

    if-lez v4, :cond_1

    .line 197
    invoke-virtual {v3}, Landroid/view/View;->getX()F

    move-result v0

    .line 198
    invoke-virtual {p0, v3}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    .line 200
    :cond_1
    invoke-virtual {v3}, Landroid/view/View;->getX()F

    move-result v4

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    cmpg-float v4, v1, v4

    if-gez v4, :cond_2

    .line 201
    invoke-virtual {v3}, Landroid/view/View;->getX()F

    move-result v1

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v1, v4

    .line 202
    invoke-virtual {p0, v3}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    cmpl-float v2, v1, v0

    if-lez v2, :cond_6

    .line 207
    iget-object v2, p0, Lorg/telegram/ui/Components/TopicsTabsView$1;->pinnedBackgroundPaint:Landroid/graphics/Paint;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    iget-object v4, p0, Lorg/telegram/ui/Components/RecyclerListView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v3, v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v3

    const v4, 0x3d75c28f    # 0.06f

    invoke-static {v3, v4}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 208
    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v0, v4

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    const/high16 v5, 0x41e00000    # 28.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    sub-int/2addr v4, v6

    int-to-float v4, v4

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v4, v6

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    sub-float v3, v1, v3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v7

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    add-int/2addr v7, v5

    int-to-float v5, v7

    div-float/2addr v5, v6

    invoke-virtual {v2, v0, v4, v3, v5}, Landroid/graphics/RectF;->set(FFFF)V

    const/high16 v0, 0x41600000    # 14.0f

    .line 209
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    iget-object v4, p0, Lorg/telegram/ui/Components/TopicsTabsView$1;->pinnedBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v0, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 211
    iget-object v0, p0, Lorg/telegram/ui/Components/TopicsTabsView$1;->pinIcon:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_4

    .line 212
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lorg/telegram/messenger/R$drawable;->msg_limit_pin:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/TopicsTabsView$1;->pinIcon:Landroid/graphics/drawable/Drawable;

    .line 214
    :cond_4
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_chats_pinnedIcon:I

    iget-object v3, p0, Lorg/telegram/ui/Components/RecyclerListView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v0, v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v0

    .line 215
    iget v3, p0, Lorg/telegram/ui/Components/TopicsTabsView$1;->pinIconColor:I

    if-eq v3, v0, :cond_5

    .line 216
    iget-object v3, p0, Lorg/telegram/ui/Components/TopicsTabsView$1;->pinIcon:Landroid/graphics/drawable/Drawable;

    new-instance v4, Landroid/graphics/PorterDuffColorFilter;

    iput v0, p0, Lorg/telegram/ui/Components/TopicsTabsView$1;->pinIconColor:I

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v0, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 218
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/Components/TopicsTabsView$1;->pinIcon:Landroid/graphics/drawable/Drawable;

    const/high16 v3, -0x3e780000    # -17.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v3, v1

    float-to-int v3, v3

    iget v4, v2, Landroid/graphics/RectF;->top:F

    const/high16 v5, 0x41200000    # 10.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    float-to-int v4, v4

    const/high16 v5, -0x3f200000    # -7.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v1, v5

    float-to-int v1, v1

    iget v2, v2, Landroid/graphics/RectF;->top:F

    const/high16 v5, 0x41a00000    # 20.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v2, v5

    float-to-int v2, v2

    invoke-virtual {v0, v3, v4, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 219
    iget-object v0, p0, Lorg/telegram/ui/Components/TopicsTabsView$1;->pinIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_6
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 13

    .line 132
    iget-object v0, p0, Lorg/telegram/ui/Components/TopicsTabsView$1;->animatedClip:Lorg/telegram/ui/Components/AnimatedFloat;

    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedFloat;->set(Z)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-lez v2, :cond_0

    .line 134
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v7, v3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v8, v3

    const/16 v9, 0xff

    const/16 v10, 0x1f

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v4, p1

    invoke-virtual/range {v4 .. v10}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    goto :goto_0

    :cond_0
    move-object v4, p1

    .line 136
    :goto_0
    invoke-direct {p0, v4}, Lorg/telegram/ui/Components/TopicsTabsView$1;->drawPinnedBackground(Landroid/graphics/Canvas;)V

    .line 137
    invoke-super {p0, v4}, Lorg/telegram/ui/Components/UniversalRecyclerView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 138
    iget-object p1, p0, Lorg/telegram/ui/Components/TopicsTabsView$1;->this$0:Lorg/telegram/ui/Components/TopicsTabsView;

    invoke-static {p1}, Lorg/telegram/ui/Components/TopicsTabsView;->-$$Nest$fgetlastSelectedTopicId(Lorg/telegram/ui/Components/TopicsTabsView;)J

    move-result-wide v5

    iget-object p1, p0, Lorg/telegram/ui/Components/TopicsTabsView$1;->this$0:Lorg/telegram/ui/Components/TopicsTabsView;

    invoke-static {p1}, Lorg/telegram/ui/Components/TopicsTabsView;->-$$Nest$fgetcurrentTopicId(Lorg/telegram/ui/Components/TopicsTabsView;)J

    move-result-wide v7

    cmp-long p1, v5, v7

    if-eqz p1, :cond_1

    .line 139
    iget-object p1, p0, Lorg/telegram/ui/Components/TopicsTabsView$1;->this$0:Lorg/telegram/ui/Components/TopicsTabsView;

    invoke-static {p1}, Lorg/telegram/ui/Components/TopicsTabsView;->-$$Nest$fgetlastSelectedTopicId(Lorg/telegram/ui/Components/TopicsTabsView;)J

    move-result-wide v5

    invoke-static {p1, v5, v6}, Lorg/telegram/ui/Components/TopicsTabsView;->-$$Nest$fputanimateFromSelectedTopicId(Lorg/telegram/ui/Components/TopicsTabsView;J)V

    .line 140
    iget-object p1, p0, Lorg/telegram/ui/Components/TopicsTabsView$1;->animateTab:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/AnimatedFloat;->force(F)V

    .line 142
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/TopicsTabsView$1;->this$0:Lorg/telegram/ui/Components/TopicsTabsView;

    invoke-static {p1}, Lorg/telegram/ui/Components/TopicsTabsView;->-$$Nest$fgetcurrentTopicId(Lorg/telegram/ui/Components/TopicsTabsView;)J

    move-result-wide v5

    invoke-static {p1, v5, v6}, Lorg/telegram/ui/Components/TopicsTabsView;->-$$Nest$fputlastSelectedTopicId(Lorg/telegram/ui/Components/TopicsTabsView;J)V

    const/4 p1, 0x0

    const/4 v3, 0x0

    move v6, p1

    move-object v5, v3

    .line 145
    :goto_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    if-ge v6, v7, :cond_5

    .line 146
    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 147
    instance-of v8, v7, Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView;

    if-eqz v8, :cond_4

    .line 148
    check-cast v7, Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView;

    .line 149
    invoke-static {v7}, Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView;->-$$Nest$fgetisAdd(Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView;)Z

    move-result v8

    if-eqz v8, :cond_2

    goto :goto_2

    .line 151
    :cond_2
    invoke-virtual {v7}, Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView;->getTopicId()J

    move-result-wide v8

    iget-object v10, p0, Lorg/telegram/ui/Components/TopicsTabsView$1;->this$0:Lorg/telegram/ui/Components/TopicsTabsView;

    invoke-static {v10}, Lorg/telegram/ui/Components/TopicsTabsView;->-$$Nest$fgetcurrentTopicId(Lorg/telegram/ui/Components/TopicsTabsView;)J

    move-result-wide v10

    cmp-long v8, v8, v10

    if-nez v8, :cond_3

    move-object v3, v7

    .line 154
    :cond_3
    invoke-virtual {v7}, Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView;->getTopicId()J

    move-result-wide v8

    iget-object v10, p0, Lorg/telegram/ui/Components/TopicsTabsView$1;->this$0:Lorg/telegram/ui/Components/TopicsTabsView;

    invoke-static {v10}, Lorg/telegram/ui/Components/TopicsTabsView;->-$$Nest$fgetanimateFromSelectedTopicId(Lorg/telegram/ui/Components/TopicsTabsView;)J

    move-result-wide v10

    cmp-long v8, v8, v10

    if-nez v8, :cond_4

    move-object v5, v7

    :cond_4
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_5
    if-eqz v3, :cond_7

    .line 160
    iget-object v6, p0, Lorg/telegram/ui/Components/TopicsTabsView$1;->lineRect:Landroid/graphics/RectF;

    .line 161
    invoke-virtual {v3}, Landroid/view/View;->getX()F

    move-result v7

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v7, v9

    .line 162
    invoke-virtual {v3}, Landroid/view/View;->getY()F

    move-result v9

    const/high16 v10, 0x40800000    # 4.0f

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    int-to-float v11, v11

    add-float/2addr v9, v11

    .line 163
    invoke-virtual {v3}, Landroid/view/View;->getX()F

    move-result v11

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v12

    int-to-float v12, v12

    add-float/2addr v11, v12

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    int-to-float v12, v12

    sub-float/2addr v11, v12

    .line 164
    invoke-virtual {v3}, Landroid/view/View;->getY()F

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v12

    int-to-float v12, v12

    add-float/2addr v3, v12

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    int-to-float v12, v12

    sub-float/2addr v3, v12

    .line 160
    invoke-virtual {v6, v7, v9, v11, v3}, Landroid/graphics/RectF;->set(FFFF)V

    if-eqz v5, :cond_6

    .line 166
    sget-object v3, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    .line 167
    invoke-virtual {v5}, Landroid/view/View;->getX()F

    move-result v6

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v6, v7

    .line 168
    invoke-virtual {v5}, Landroid/view/View;->getY()F

    move-result v7

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v7, v9

    .line 169
    invoke-virtual {v5}, Landroid/view/View;->getX()F

    move-result v9

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v11

    int-to-float v11, v11

    add-float/2addr v9, v11

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    int-to-float v11, v11

    sub-float/2addr v9, v11

    .line 170
    invoke-virtual {v5}, Landroid/view/View;->getY()F

    move-result v5

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v11

    int-to-float v11, v11

    add-float/2addr v5, v11

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    int-to-float v10, v10

    sub-float/2addr v5, v10

    .line 166
    invoke-virtual {v3, v6, v7, v9, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 171
    iget-object v5, p0, Lorg/telegram/ui/Components/TopicsTabsView$1;->lineRect:Landroid/graphics/RectF;

    iget-object v6, p0, Lorg/telegram/ui/Components/TopicsTabsView$1;->animateTab:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {v6, v8}, Lorg/telegram/ui/Components/AnimatedFloat;->set(F)F

    move-result v6

    iget-object v7, p0, Lorg/telegram/ui/Components/TopicsTabsView$1;->lineRect:Landroid/graphics/RectF;

    invoke-static {v3, v5, v6, v7}, Lorg/telegram/messenger/AndroidUtilities;->lerp(Landroid/graphics/RectF;Landroid/graphics/RectF;FLandroid/graphics/RectF;)V

    .line 173
    :cond_6
    iget-object v3, p0, Lorg/telegram/ui/Components/TopicsTabsView$1;->linePaint:Landroid/graphics/Paint;

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButton:I

    iget-object v6, p0, Lorg/telegram/ui/Components/RecyclerListView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v5, v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v5

    const/16 v6, 0x1f

    invoke-static {v5, v6}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 174
    iget-object v3, p0, Lorg/telegram/ui/Components/TopicsTabsView$1;->lineRect:Landroid/graphics/RectF;

    const/high16 v5, 0x41600000    # 14.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    iget-object v7, p0, Lorg/telegram/ui/Components/TopicsTabsView$1;->linePaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v3, v6, v5, v7}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_7
    if-lez v2, :cond_8

    .line 177
    invoke-virtual {v4}, Landroid/graphics/Canvas;->save()I

    .line 178
    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    const/high16 v3, 0x41400000    # 12.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v2, v1, v1, v3, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 179
    iget-object v1, p0, Lorg/telegram/ui/Components/TopicsTabsView$1;->clip:Lorg/telegram/ui/GradientClip;

    invoke-virtual {v1, v4, v2, p1, v0}, Lorg/telegram/ui/GradientClip;->draw(Landroid/graphics/Canvas;Landroid/graphics/RectF;IF)V

    .line 180
    invoke-virtual {v4}, Landroid/graphics/Canvas;->restore()V

    .line 181
    invoke-virtual {v4}, Landroid/graphics/Canvas;->restore()V

    :cond_8
    return-void
.end method

.method public getSelectorColor(I)Ljava/lang/Integer;
    .locals 0

    const/4 p1, 0x0

    .line 225
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
