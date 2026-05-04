.class Lorg/telegram/ui/ArticleViewer$12;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ArticleViewer;->setParentActivity(Landroid/app/Activity;Lorg/telegram/ui/ActionBar/BaseFragment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ArticleViewer;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;)V
    .locals 0

    .line 3679
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$12;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 10

    .line 3683
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$12;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v2}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$fgetwindowView(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/ui/ArticleViewer$WindowView;

    move-result-object v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$12;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v2}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$fgetwindowView(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/ui/ArticleViewer$WindowView;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/ui/ArticleViewer$WindowView;->-$$Nest$fgetmovingPage(Lorg/telegram/ui/ArticleViewer$WindowView;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$12;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v2}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$fgetwindowView(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/ui/ArticleViewer$WindowView;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/ui/ArticleViewer$WindowView;->-$$Nest$fgetopeningPage(Lorg/telegram/ui/ArticleViewer$WindowView;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 3684
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 3685
    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer$12;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v3, v3, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v3}, Landroid/view/View;->getTranslationX()F

    move-result v3

    float-to-int v3, v3

    .line 3689
    iget-object v5, p0, Lorg/telegram/ui/ArticleViewer$12;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v5, v5, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    const/4 v6, 0x1

    aget-object v7, v5, v6

    if-ne p2, v7, :cond_2

    move v7, v3

    :cond_1
    move v5, v4

    goto :goto_0

    .line 3691
    :cond_2
    aget-object v5, v5, v4

    move v7, v2

    if-ne p2, v5, :cond_1

    move v5, v3

    .line 3695
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v8

    .line 3696
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v9

    invoke-virtual {p1, v5, v4, v7, v9}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 3697
    invoke-super/range {p0 .. p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v9

    .line 3698
    invoke-virtual {p1, v8}, Landroid/graphics/Canvas;->restoreToCount(I)V

    if-eqz v3, :cond_4

    .line 3701
    iget-object v4, p0, Lorg/telegram/ui/ArticleViewer$12;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v4, v4, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v4, v4, v6

    if-ne p2, v4, :cond_4

    sub-int v1, v2, v3

    int-to-float v1, v1

    int-to-float v2, v2

    div-float/2addr v1, v2

    const v2, 0x3f4ccccd    # 0.8f

    .line 3702
    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    const/4 v2, 0x0

    cmpg-float v3, v1, v2

    if-gez v3, :cond_3

    move v1, v2

    .line 3706
    :cond_3
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$12;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v2}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$fgetscrimPaint(Lorg/telegram/ui/ArticleViewer;)Landroid/graphics/Paint;

    move-result-object v2

    const/high16 v3, 0x43190000    # 153.0f

    mul-float/2addr v1, v3

    float-to-int v1, v1

    shl-int/lit8 v1, v1, 0x18

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v1, v5

    int-to-float v3, v7

    .line 3707
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v4, v2

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$12;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v2}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$fgetscrimPaint(Lorg/telegram/ui/ArticleViewer;)Landroid/graphics/Paint;

    move-result-object v5

    const/4 v2, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_4
    return v9

    .line 3713
    :cond_5
    invoke-super/range {p0 .. p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    return v0
.end method

.method public invalidate()V
    .locals 0

    .line 3719
    invoke-super {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method
