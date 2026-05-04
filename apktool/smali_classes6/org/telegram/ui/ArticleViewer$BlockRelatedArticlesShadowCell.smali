.class Lorg/telegram/ui/ArticleViewer$BlockRelatedArticlesShadowCell;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ArticleViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BlockRelatedArticlesShadowCell"
.end annotation


# instance fields
.field private shadowDrawable:Lorg/telegram/ui/Components/CombinedDrawable;

.field final synthetic this$0:Lorg/telegram/ui/ArticleViewer;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;)V
    .locals 3

    .line 10445
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockRelatedArticlesShadowCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    .line 10446
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 10448
    sget v0, Lorg/telegram/messenger/R$drawable;->greydivider_bottom:I

    const/high16 v1, -0x1000000

    invoke-static {p2, v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 10449
    new-instance v0, Lorg/telegram/ui/Components/CombinedDrawable;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_iv_backgroundGray:I

    invoke-virtual {p1, v2}, Lorg/telegram/ui/ArticleViewer;->getThemedColor(I)I

    move-result p1

    invoke-direct {v1, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-direct {v0, v1, p2}, Lorg/telegram/ui/Components/CombinedDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockRelatedArticlesShadowCell;->shadowDrawable:Lorg/telegram/ui/Components/CombinedDrawable;

    const/4 p1, 0x1

    .line 10450
    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/CombinedDrawable;->setFullsize(Z)V

    .line 10451
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockRelatedArticlesShadowCell;->shadowDrawable:Lorg/telegram/ui/Components/CombinedDrawable;

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 1

    .line 10456
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 p2, 0x41400000    # 12.0f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 10457
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockRelatedArticlesShadowCell;->shadowDrawable:Lorg/telegram/ui/Components/CombinedDrawable;

    iget-object p2, p0, Lorg/telegram/ui/ArticleViewer$BlockRelatedArticlesShadowCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_iv_backgroundGray:I

    invoke-virtual {p2, v0}, Lorg/telegram/ui/ArticleViewer;->getThemedColor(I)I

    move-result p2

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lorg/telegram/ui/ActionBar/Theme;->setCombinedDrawableColor(Landroid/graphics/drawable/Drawable;IZ)V

    return-void
.end method
