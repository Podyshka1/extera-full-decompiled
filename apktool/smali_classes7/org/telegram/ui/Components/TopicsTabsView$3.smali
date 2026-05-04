.class Lorg/telegram/ui/Components/TopicsTabsView$3;
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
.field private final animatedClip:Lorg/telegram/ui/Components/AnimatedFloat;

.field private final clip:Lorg/telegram/ui/GradientClip;

.field private pinIcon:Landroid/graphics/drawable/Drawable;

.field private pinIconColor:I

.field private final pinnedBackgroundPaint:Landroid/graphics/Paint;

.field final synthetic this$0:Lorg/telegram/ui/Components/TopicsTabsView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/TopicsTabsView;Landroid/content/Context;IILorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/messenger/Utilities$Callback5;Lorg/telegram/messenger/Utilities$Callback5Return;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 0

    .line 263
    iput-object p1, p0, Lorg/telegram/ui/Components/TopicsTabsView$3;->this$0:Lorg/telegram/ui/Components/TopicsTabsView;

    move-object p1, p0

    invoke-direct/range {p1 .. p8}, Lorg/telegram/ui/Components/UniversalRecyclerView;-><init>(Landroid/content/Context;IILorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/messenger/Utilities$Callback5;Lorg/telegram/messenger/Utilities$Callback5Return;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 264
    new-instance p2, Lorg/telegram/ui/GradientClip;

    invoke-direct {p2}, Lorg/telegram/ui/GradientClip;-><init>()V

    iput-object p2, p1, Lorg/telegram/ui/Components/TopicsTabsView$3;->clip:Lorg/telegram/ui/GradientClip;

    .line 265
    new-instance p2, Lorg/telegram/ui/Components/AnimatedFloat;

    const-wide/16 p3, 0x140

    sget-object p5, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-direct {p2, p0, p3, p4, p5}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JLandroid/animation/TimeInterpolator;)V

    iput-object p2, p1, Lorg/telegram/ui/Components/TopicsTabsView$3;->animatedClip:Lorg/telegram/ui/Components/AnimatedFloat;

    .line 285
    new-instance p2, Landroid/graphics/Paint;

    const/4 p3, 0x1

    invoke-direct {p2, p3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p1, Lorg/telegram/ui/Components/TopicsTabsView$3;->pinnedBackgroundPaint:Landroid/graphics/Paint;

    return-void
.end method

.method private drawPinnedBackground(Landroid/graphics/Canvas;)V
    .locals 7

    .line 288
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 289
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 290
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 291
    instance-of v4, v3, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;

    if-nez v4, :cond_0

    goto :goto_1

    .line 292
    :cond_0
    check-cast v3, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;

    .line 293
    invoke-static {v3}, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;->-$$Nest$fgetpinned(Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 294
    invoke-virtual {v3}, Landroid/view/View;->getY()F

    move-result v4

    cmpl-float v4, v0, v4

    if-lez v4, :cond_1

    .line 295
    invoke-virtual {v3}, Landroid/view/View;->getY()F

    move-result v0

    .line 296
    invoke-virtual {p0, v3}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    .line 298
    :cond_1
    invoke-virtual {v3}, Landroid/view/View;->getY()F

    move-result v4

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    cmpg-float v4, v1, v4

    if-gez v4, :cond_2

    .line 299
    invoke-virtual {v3}, Landroid/view/View;->getY()F

    move-result v1

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v1, v4

    .line 300
    invoke-virtual {p0, v3}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    cmpl-float v2, v1, v0

    if-lez v2, :cond_6

    .line 305
    iget-object v2, p0, Lorg/telegram/ui/Components/TopicsTabsView$3;->pinnedBackgroundPaint:Landroid/graphics/Paint;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_chats_pinnedOverlay:I

    iget-object v4, p0, Lorg/telegram/ui/Components/RecyclerListView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v3, v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 306
    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    const/high16 v4, 0x42600000    # 56.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    sub-int/2addr v3, v5

    int-to-float v3, v3

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v3, v5

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v6

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    add-int/2addr v6, v4

    int-to-float v4, v6

    div-float/2addr v4, v5

    invoke-virtual {v2, v3, v0, v4, v1}, Landroid/graphics/RectF;->set(FFFF)V

    const/high16 v0, 0x40c00000    # 6.0f

    .line 307
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    iget-object v3, p0, Lorg/telegram/ui/Components/TopicsTabsView$3;->pinnedBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v1, v0, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 309
    iget-object v0, p0, Lorg/telegram/ui/Components/TopicsTabsView$3;->pinIcon:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_4

    .line 310
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$drawable;->msg_limit_pin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/TopicsTabsView$3;->pinIcon:Landroid/graphics/drawable/Drawable;

    .line 312
    :cond_4
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_chats_pinnedIcon:I

    iget-object v1, p0, Lorg/telegram/ui/Components/RecyclerListView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v0

    .line 313
    iget v1, p0, Lorg/telegram/ui/Components/TopicsTabsView$3;->pinIconColor:I

    if-eq v1, v0, :cond_5

    .line 314
    iget-object v1, p0, Lorg/telegram/ui/Components/TopicsTabsView$3;->pinIcon:Landroid/graphics/drawable/Drawable;

    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    iput v0, p0, Lorg/telegram/ui/Components/TopicsTabsView$3;->pinIconColor:I

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v0, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 316
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/Components/TopicsTabsView$3;->pinIcon:Landroid/graphics/drawable/Drawable;

    iget v1, v2, Landroid/graphics/RectF;->left:F

    const/high16 v3, 0x40800000    # 4.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v1, v3

    float-to-int v1, v1

    iget v3, v2, Landroid/graphics/RectF;->top:F

    const v4, 0x402a3d71    # 2.66f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    float-to-int v3, v3

    iget v4, v2, Landroid/graphics/RectF;->left:F

    const v5, 0x415a8f5c    # 13.66f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    float-to-int v4, v4

    iget v2, v2, Landroid/graphics/RectF;->top:F

    const v5, 0x41451eb8    # 12.32f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v2, v5

    float-to-int v2, v2

    invoke-virtual {v0, v1, v3, v4, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 317
    iget-object v0, p0, Lorg/telegram/ui/Components/TopicsTabsView$3;->pinIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_6
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 11

    .line 268
    iget-object v0, p0, Lorg/telegram/ui/Components/TopicsTabsView$3;->animatedClip:Lorg/telegram/ui/Components/AnimatedFloat;

    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->canScrollVertically(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedFloat;->set(Z)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-lez v2, :cond_0

    .line 270
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

    .line 272
    :goto_0
    invoke-direct {p0, v4}, Lorg/telegram/ui/Components/TopicsTabsView$3;->drawPinnedBackground(Landroid/graphics/Canvas;)V

    .line 273
    invoke-super {p0, v4}, Lorg/telegram/ui/Components/UniversalRecyclerView;->dispatchDraw(Landroid/graphics/Canvas;)V

    if-lez v2, :cond_1

    .line 275
    invoke-virtual {v4}, Landroid/graphics/Canvas;->save()I

    .line 276
    sget-object p1, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x41400000    # 12.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1, v1, v1, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 277
    iget-object v1, p0, Lorg/telegram/ui/Components/TopicsTabsView$3;->clip:Lorg/telegram/ui/GradientClip;

    const/4 v2, 0x1

    invoke-virtual {v1, v4, p1, v2, v0}, Lorg/telegram/ui/GradientClip;->draw(Landroid/graphics/Canvas;Landroid/graphics/RectF;IF)V

    .line 278
    invoke-virtual {v4}, Landroid/graphics/Canvas;->restore()V

    .line 279
    invoke-virtual {v4}, Landroid/graphics/Canvas;->restore()V

    :cond_1
    return-void
.end method
