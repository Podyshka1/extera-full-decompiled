.class Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$10;
.super Lorg/telegram/ui/Components/Paint/Views/PaintColorsListView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;-><init>(Landroid/content/Context;Landroid/app/Activity;ILandroid/graphics/Bitmap;Landroid/graphics/Bitmap;ILjava/util/ArrayList;Lorg/telegram/messenger/MediaController$CropState;Ljava/lang/Runnable;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private path:Landroid/graphics/Path;

.field final synthetic this$0:Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;Landroid/content/Context;)V
    .locals 0

    .line 831
    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$10;->this$0:Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/Paint/Views/PaintColorsListView;-><init>(Landroid/content/Context;)V

    .line 832
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$10;->path:Landroid/graphics/Path;

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 836
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$10;->this$0:Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;

    invoke-static {v0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->-$$Nest$mgetBarView(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)Landroid/view/ViewGroup;

    move-result-object v0

    .line 837
    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    .line 838
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$10;->this$0:Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;

    invoke-static {v3}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->-$$Nest$fgettoolsTransformProgress(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)F

    move-result v3

    const/4 v4, 0x0

    invoke-static {v2, v4, v3}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v2

    int-to-float v2, v2

    .line 839
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v5

    sub-int/2addr v3, v5

    iget-object v5, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$10;->this$0:Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;

    invoke-static {v5}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->-$$Nest$fgettoolsTransformProgress(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)F

    move-result v5

    invoke-static {v3, v4, v5}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v3

    int-to-float v3, v3

    .line 840
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v5

    iget-object v6, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$10;->this$0:Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;

    invoke-static {v6}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->-$$Nest$fgettoolsTransformProgress(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)F

    move-result v6

    invoke-static {v4, v5, v6}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v4

    int-to-float v4, v4

    .line 841
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v5

    sub-int/2addr v0, v5

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    iget-object v6, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$10;->this$0:Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;

    invoke-static {v6}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->-$$Nest$fgettoolsTransformProgress(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)F

    move-result v6

    invoke-static {v0, v5, v6}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v0

    int-to-float v0, v0

    .line 837
    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 844
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$10;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    .line 845
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$10;->path:Landroid/graphics/Path;

    const/high16 v2, 0x42000000    # 32.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 847
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 848
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$10;->path:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 849
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->draw(Landroid/graphics/Canvas;)V

    .line 850
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method
