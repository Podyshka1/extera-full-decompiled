.class Lorg/telegram/ui/Components/TopicsTabsView$BotNewTopicDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/TopicsTabsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BotNewTopicDrawable"
.end annotation


# instance fields
.field private final drawable:Landroid/graphics/drawable/Drawable;

.field private final paint:Landroid/graphics/Paint;

.field private final rectF:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 2023
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 2020
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/TopicsTabsView$BotNewTopicDrawable;->paint:Landroid/graphics/Paint;

    .line 2021
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/TopicsTabsView$BotNewTopicDrawable;->rectF:Landroid/graphics/RectF;

    .line 2024
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/R$drawable;->menu_topic_add:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/TopicsTabsView$BotNewTopicDrawable;->drawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 2033
    iget-object v0, p0, Lorg/telegram/ui/Components/TopicsTabsView$BotNewTopicDrawable;->rectF:Landroid/graphics/RectF;

    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    iget-object v3, p0, Lorg/telegram/ui/Components/TopicsTabsView$BotNewTopicDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 2034
    iget-object v0, p0, Lorg/telegram/ui/Components/TopicsTabsView$BotNewTopicDrawable;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 4

    .line 2039
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 2040
    iget-object v0, p0, Lorg/telegram/ui/Components/TopicsTabsView$BotNewTopicDrawable;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 2042
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    const/high16 v1, 0x41400000    # 12.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int/2addr v0, v2

    .line 2043
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result p1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int/2addr p1, v1

    .line 2045
    iget-object v1, p0, Lorg/telegram/ui/Components/TopicsTabsView$BotNewTopicDrawable;->drawable:Landroid/graphics/drawable/Drawable;

    const/high16 v2, 0x41c00000    # 24.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    add-int/2addr v3, v0

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int/2addr v2, p1

    invoke-virtual {v1, v0, p1, v3, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    .line 2050
    iget-object v0, p0, Lorg/telegram/ui/Components/TopicsTabsView$BotNewTopicDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 2051
    iget-object v0, p0, Lorg/telegram/ui/Components/TopicsTabsView$BotNewTopicDrawable;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    return-void
.end method

.method public setColor(I)V
    .locals 1

    .line 2028
    iget-object v0, p0, Lorg/telegram/ui/Components/TopicsTabsView$BotNewTopicDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method
