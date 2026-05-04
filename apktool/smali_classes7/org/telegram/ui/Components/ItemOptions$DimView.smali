.class public Lorg/telegram/ui/Components/ItemOptions$DimView;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/ItemOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DimView"
.end annotation


# instance fields
.field private blurBitmap:Landroid/graphics/Bitmap;

.field private blurPaint:Landroid/graphics/Paint;

.field private final bounds:Landroid/graphics/RectF;

.field private final cachedBitmap:Landroid/graphics/Bitmap;

.field private final cachedBitmapPaint:Landroid/graphics/Paint;

.field public final clipBottom:F

.field private final clipPath:Landroid/graphics/Path;

.field public final clipTop:F

.field private final dim:I

.field public dimProgress:F

.field private moveToX:F

.field private moveToY:F

.field final synthetic this$0:Lorg/telegram/ui/Components/ItemOptions;


# direct methods
.method public static synthetic $r8$lambda$asbk46qiL5a8MOVz2BwmuPbWxLg(Lorg/telegram/ui/Components/ItemOptions$DimView;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ItemOptions$DimView;->lambda$new$0(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmoveToX(Lorg/telegram/ui/Components/ItemOptions$DimView;)F
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->moveToX:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmoveToY(Lorg/telegram/ui/Components/ItemOptions$DimView;)F
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->moveToY:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmoveToX(Lorg/telegram/ui/Components/ItemOptions$DimView;F)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->moveToX:F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmoveToY(Lorg/telegram/ui/Components/ItemOptions$DimView;F)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->moveToY:F

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/Components/ItemOptions;Landroid/content/Context;)V
    .locals 4

    .line 1731
    iput-object p1, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    .line 1732
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 1719
    new-instance p2, Landroid/graphics/Path;

    invoke-direct {p2}, Landroid/graphics/Path;-><init>()V

    iput-object p2, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->clipPath:Landroid/graphics/Path;

    .line 1720
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->bounds:Landroid/graphics/RectF;

    .line 1734
    invoke-static {p1}, Lorg/telegram/ui/Components/ItemOptions;->-$$Nest$fgetscrimView(Lorg/telegram/ui/Components/ItemOptions;)Landroid/view/View;

    move-result-object p2

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    invoke-static {p1}, Lorg/telegram/ui/Components/ItemOptions;->-$$Nest$fgetscrimView(Lorg/telegram/ui/Components/ItemOptions;)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    instance-of p2, p2, Landroid/view/View;

    if-eqz p2, :cond_1

    .line 1735
    invoke-static {p1}, Lorg/telegram/ui/Components/ItemOptions;->-$$Nest$fgetscrimView(Lorg/telegram/ui/Components/ItemOptions;)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getY()F

    move-result p2

    invoke-static {p1}, Lorg/telegram/ui/Components/ItemOptions;->-$$Nest$fgetscrimView(Lorg/telegram/ui/Components/ItemOptions;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v1

    add-float/2addr p2, v1

    iput p2, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->clipTop:F

    .line 1736
    invoke-static {p1}, Lorg/telegram/ui/Components/ItemOptions;->-$$Nest$fgetallowMoveScrim(Lorg/telegram/ui/Components/ItemOptions;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/high16 p2, 0x42880000    # 68.0f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    int-to-float p2, p2

    invoke-static {p1}, Lorg/telegram/ui/Components/ItemOptions;->-$$Nest$fgetscrimView(Lorg/telegram/ui/Components/ItemOptions;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v1

    invoke-static {p1}, Lorg/telegram/ui/Components/ItemOptions;->-$$Nest$fgetscrimView(Lorg/telegram/ui/Components/ItemOptions;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v2

    add-float/2addr v1, v2

    invoke-static {p1}, Lorg/telegram/ui/Components/ItemOptions;->-$$Nest$fgetscrimView(Lorg/telegram/ui/Components/ItemOptions;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-static {p2, v1}, Ljava/lang/Math;->min(FF)F

    move-result p2

    goto :goto_0

    :cond_0
    move p2, v0

    :goto_0
    iput p2, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->clipBottom:F

    goto :goto_1

    .line 1738
    :cond_1
    iput v0, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->clipTop:F

    .line 1739
    iput v0, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->clipBottom:F

    :goto_1
    const/4 p2, 0x0

    .line 1741
    invoke-static {p1}, Lorg/telegram/ui/Components/ItemOptions;->-$$Nest$fgetdimAlpha(Lorg/telegram/ui/Components/ItemOptions;)I

    move-result v1

    invoke-static {p2, v1}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result p2

    iput p2, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->dim:I

    .line 1743
    invoke-static {p1}, Lorg/telegram/ui/Components/ItemOptions;->-$$Nest$fgetdrawScrim(Lorg/telegram/ui/Components/ItemOptions;)Z

    move-result p2

    const/4 v1, 0x3

    if-eqz p2, :cond_2

    invoke-static {p1}, Lorg/telegram/ui/Components/ItemOptions;->-$$Nest$fgetscrimView(Lorg/telegram/ui/Components/ItemOptions;)Landroid/view/View;

    move-result-object p2

    instance-of p2, p2, Lorg/telegram/ui/Cells/UserCell;

    if-eqz p2, :cond_2

    invoke-static {p1}, Lorg/telegram/ui/Components/ItemOptions;->-$$Nest$fgetfragment(Lorg/telegram/ui/Components/ItemOptions;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p2

    instance-of p2, p2, Lorg/telegram/ui/ProfileActivity;

    if-eqz p2, :cond_2

    .line 1744
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->cachedBitmapPaint:Landroid/graphics/Paint;

    .line 1745
    invoke-static {p1}, Lorg/telegram/ui/Components/ItemOptions;->-$$Nest$fgetscrimView(Lorg/telegram/ui/Components/ItemOptions;)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p2

    invoke-static {p1}, Lorg/telegram/ui/Components/ItemOptions;->-$$Nest$fgetviewAdditionalOffsets(Lorg/telegram/ui/Components/ItemOptions;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    add-int/2addr p2, v2

    invoke-static {p1}, Lorg/telegram/ui/Components/ItemOptions;->-$$Nest$fgetscrimView(Lorg/telegram/ui/Components/ItemOptions;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-static {p1}, Lorg/telegram/ui/Components/ItemOptions;->-$$Nest$fgetviewAdditionalOffsets(Lorg/telegram/ui/Components/ItemOptions;)Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    add-int/2addr v2, v3

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->cachedBitmap:Landroid/graphics/Bitmap;

    .line 1746
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, p2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1747
    invoke-static {p1}, Lorg/telegram/ui/Components/ItemOptions;->-$$Nest$fgetviewAdditionalOffsets(Lorg/telegram/ui/Components/ItemOptions;)Landroid/graphics/Rect;

    move-result-object p2

    iget p2, p2, Landroid/graphics/Rect;->left:I

    int-to-float p2, p2

    invoke-static {p1}, Lorg/telegram/ui/Components/ItemOptions;->-$$Nest$fgetviewAdditionalOffsets(Lorg/telegram/ui/Components/ItemOptions;)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-virtual {v2, p2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1748
    invoke-static {p1}, Lorg/telegram/ui/Components/ItemOptions;->-$$Nest$fgetscrimView(Lorg/telegram/ui/Components/ItemOptions;)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, v2}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    goto :goto_2

    :cond_2
    const/4 p2, 0x0

    .line 1750
    iput-object p2, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->cachedBitmapPaint:Landroid/graphics/Paint;

    .line 1751
    iput-object p2, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->cachedBitmap:Landroid/graphics/Bitmap;

    .line 1754
    :goto_2
    invoke-static {p1}, Lorg/telegram/ui/Components/ItemOptions;->-$$Nest$fgetblur(Lorg/telegram/ui/Components/ItemOptions;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 1755
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->blurPaint:Landroid/graphics/Paint;

    .line 1756
    invoke-static {p1}, Lorg/telegram/ui/Components/ItemOptions;->-$$Nest$fgetscrimView(Lorg/telegram/ui/Components/ItemOptions;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 1757
    new-instance p1, Lorg/telegram/ui/Components/ItemOptions$DimView$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/ItemOptions$DimView$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/ItemOptions$DimView;)V

    const/high16 p2, 0x41400000    # 12.0f

    invoke-static {p1, p2}, Lorg/telegram/messenger/AndroidUtilities;->makeGlobalBlurBitmap(Lorg/telegram/messenger/Utilities$Callback;F)V

    :cond_3
    return-void
.end method

.method private synthetic lambda$new$0(Landroid/graphics/Bitmap;)V
    .locals 2

    .line 1758
    iget-object v0, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v0}, Lorg/telegram/ui/Components/ItemOptions;->-$$Nest$fgetscrimView(Lorg/telegram/ui/Components/ItemOptions;)Landroid/view/View;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 1759
    iput-object p1, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->blurBitmap:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13

    .line 1766
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 1768
    iget-object v0, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->blurBitmap:Landroid/graphics/Bitmap;

    const/high16 v1, 0x437f0000    # 255.0f

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 1769
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1770
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v3, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->blurBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v0, v3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->blurBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-static {v0, v3}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 1771
    invoke-virtual {p1, v0, v0}, Landroid/graphics/Canvas;->scale(FF)V

    .line 1772
    iget-object v0, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->blurPaint:Landroid/graphics/Paint;

    iget v3, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->dimProgress:F

    mul-float/2addr v3, v1

    float-to-int v3, v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1773
    iget-object v0, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->blurBitmap:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->blurPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1774
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    .line 1776
    :cond_0
    iget v0, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->dim:I

    iget v3, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->dimProgress:F

    invoke-static {v0, v3}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 1779
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v0}, Lorg/telegram/ui/Components/ItemOptions;->-$$Nest$fgetdrawScrim(Lorg/telegram/ui/Components/ItemOptions;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    move-object v7, p0

    goto/16 :goto_f

    .line 1780
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->cachedBitmap:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/high16 v5, 0x3f800000    # 1.0f

    if-eqz v0, :cond_a

    iget-object v0, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v0}, Lorg/telegram/ui/Components/ItemOptions;->-$$Nest$fgetscrimView(Lorg/telegram/ui/Components/ItemOptions;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_a

    .line 1781
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1782
    iget v0, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->clipTop:F

    cmpg-float v0, v0, v5

    if-gez v0, :cond_4

    .line 1783
    iget-object v0, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v0}, Lorg/telegram/ui/Components/ItemOptions;->-$$Nest$fgetviewAdditionalOffsets(Lorg/telegram/ui/Components/ItemOptions;)Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->left:I

    neg-int v0, v0

    int-to-float v0, v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v1}, Lorg/telegram/ui/Components/ItemOptions;->-$$Nest$fgetviewAdditionalOffsets(Lorg/telegram/ui/Components/ItemOptions;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    neg-int v1, v1

    int-to-float v1, v1

    iget-object v2, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v2}, Lorg/telegram/ui/Components/ItemOptions;->-$$Nest$fgetpoint(Lorg/telegram/ui/Components/ItemOptions;)[F

    move-result-object v2

    aget v2, v2, v4

    add-float/2addr v1, v2

    iget v2, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->clipTop:F

    iget-object v6, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v6}, Lorg/telegram/ui/Components/ItemOptions;->-$$Nest$fgetblur(Lorg/telegram/ui/Components/ItemOptions;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget v6, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->dimProgress:F

    sub-float v6, v5, v6

    goto :goto_1

    :cond_3
    move v6, v5

    :goto_1
    mul-float/2addr v2, v6

    sub-float/2addr v1, v2

    add-float/2addr v1, v5

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    iget-object v5, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v5}, Lorg/telegram/ui/Components/ItemOptions;->-$$Nest$fgetviewAdditionalOffsets(Lorg/telegram/ui/Components/ItemOptions;)Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v5

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    iget-object v6, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v6}, Lorg/telegram/ui/Components/ItemOptions;->-$$Nest$fgetviewAdditionalOffsets(Lorg/telegram/ui/Components/ItemOptions;)Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    invoke-virtual {p1, v0, v1, v2, v5}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 1785
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v0}, Lorg/telegram/ui/Components/ItemOptions;->-$$Nest$fgetallowMoveScrim(Lorg/telegram/ui/Components/ItemOptions;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1786
    iget-object v0, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v0}, Lorg/telegram/ui/Components/ItemOptions;->-$$Nest$fgetscrimView(Lorg/telegram/ui/Components/ItemOptions;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v1}, Lorg/telegram/ui/Components/ItemOptions;->-$$Nest$fgetpointContainer(Lorg/telegram/ui/Components/ItemOptions;)Landroid/view/ViewGroup;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v2}, Lorg/telegram/ui/Components/ItemOptions;->-$$Nest$fgetpoint(Lorg/telegram/ui/Components/ItemOptions;)[F

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/Components/ItemOptions;->getPointOnScreen(Landroid/view/View;Landroid/view/ViewGroup;[F)V

    .line 1787
    iget-object v0, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v0}, Lorg/telegram/ui/Components/ItemOptions;->-$$Nest$fgetpoint(Lorg/telegram/ui/Components/ItemOptions;)[F

    move-result-object v0

    aget v0, v0, v3

    iget v1, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->moveToX:F

    iget v2, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->dimProgress:F

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v1}, Lorg/telegram/ui/Components/ItemOptions;->-$$Nest$fgetpoint(Lorg/telegram/ui/Components/ItemOptions;)[F

    move-result-object v1

    aget v1, v1, v4

    iget v2, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->moveToY:F

    iget v3, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->dimProgress:F

    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_2

    .line 1789
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v0}, Lorg/telegram/ui/Components/ItemOptions;->-$$Nest$fgetpoint(Lorg/telegram/ui/Components/ItemOptions;)[F

    move-result-object v0

    aget v0, v0, v3

    iget-object v1, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v1}, Lorg/telegram/ui/Components/ItemOptions;->-$$Nest$fgetpoint(Lorg/telegram/ui/Components/ItemOptions;)[F

    move-result-object v1

    aget v1, v1, v4

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1792
    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v0}, Lorg/telegram/ui/Components/ItemOptions;->-$$Nest$fgetscrimViewBackground(Lorg/telegram/ui/Components/ItemOptions;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 1793
    iget-object v0, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v0}, Lorg/telegram/ui/Components/ItemOptions;->-$$Nest$fgetscrimViewBackground(Lorg/telegram/ui/Components/ItemOptions;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    if-lez v0, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v0}, Lorg/telegram/ui/Components/ItemOptions;->-$$Nest$fgetscrimViewBackground(Lorg/telegram/ui/Components/ItemOptions;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    if-lez v0, :cond_6

    .line 1794
    iget-object v0, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v0}, Lorg/telegram/ui/Components/ItemOptions;->-$$Nest$fgetscrimViewBackground(Lorg/telegram/ui/Components/ItemOptions;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v1}, Lorg/telegram/ui/Components/ItemOptions;->-$$Nest$fgetviewAdditionalOffsets(Lorg/telegram/ui/Components/ItemOptions;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    neg-int v1, v1

    iget-object v2, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v2}, Lorg/telegram/ui/Components/ItemOptions;->-$$Nest$fgetscrimView(Lorg/telegram/ui/Components/ItemOptions;)Landroid/view/View;

    move-result-object v2

    .line 1795
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v3}, Lorg/telegram/ui/Components/ItemOptions;->-$$Nest$fgetviewAdditionalOffsets(Lorg/telegram/ui/Components/ItemOptions;)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    iget-object v3, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v3}, Lorg/telegram/ui/Components/ItemOptions;->-$$Nest$fgetscrimViewBackground(Lorg/telegram/ui/Components/ItemOptions;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iget-object v2, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v2}, Lorg/telegram/ui/Components/ItemOptions;->-$$Nest$fgetviewAdditionalOffsets(Lorg/telegram/ui/Components/ItemOptions;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    neg-int v2, v2

    iget-object v3, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v3}, Lorg/telegram/ui/Components/ItemOptions;->-$$Nest$fgetscrimView(Lorg/telegram/ui/Components/ItemOptions;)Landroid/view/View;

    move-result-object v3

    .line 1796
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v4}, Lorg/telegram/ui/Components/ItemOptions;->-$$Nest$fgetviewAdditionalOffsets(Lorg/telegram/ui/Components/ItemOptions;)Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, v4

    iget-object v4, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v4}, Lorg/telegram/ui/Components/ItemOptions;->-$$Nest$fgetscrimViewBackground(Lorg/telegram/ui/Components/ItemOptions;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iget-object v3, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v3}, Lorg/telegram/ui/Components/ItemOptions;->-$$Nest$fgetviewAdditionalOffsets(Lorg/telegram/ui/Components/ItemOptions;)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->left:I

    neg-int v3, v3

    iget-object v4, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v4}, Lorg/telegram/ui/Components/ItemOptions;->-$$Nest$fgetscrimView(Lorg/telegram/ui/Components/ItemOptions;)Landroid/view/View;

    move-result-object v4

    .line 1797
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    iget-object v5, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v5}, Lorg/telegram/ui/Components/ItemOptions;->-$$Nest$fgetviewAdditionalOffsets(Lorg/telegram/ui/Components/ItemOptions;)Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    iget-object v5, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v5}, Lorg/telegram/ui/Components/ItemOptions;->-$$Nest$fgetscrimViewBackground(Lorg/telegram/ui/Components/ItemOptions;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    add-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    iget-object v4, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v4}, Lorg/telegram/ui/Components/ItemOptions;->-$$Nest$fgetviewAdditionalOffsets(Lorg/telegram/ui/Components/ItemOptions;)Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->top:I

    neg-int v4, v4

    iget-object v5, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v5}, Lorg/telegram/ui/Components/ItemOptions;->-$$Nest$fgetscrimView(Lorg/telegram/ui/Components/ItemOptions;)Landroid/view/View;

    move-result-object v5

    .line 1798
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    iget-object v6, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v6}, Lorg/telegram/ui/Components/ItemOptions;->-$$Nest$fgetviewAdditionalOffsets(Lorg/telegram/ui/Components/ItemOptions;)Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v6

    iget-object v6, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v6}, Lorg/telegram/ui/Components/ItemOptions;->-$$Nest$fgetscrimViewBackground(Lorg/telegram/ui/Components/ItemOptions;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    add-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    .line 1794
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_3

    .line 1801
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v0}, Lorg/telegram/ui/Components/ItemOptions;->-$$Nest$fgetscrimViewBackground(Lorg/telegram/ui/Components/ItemOptions;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v1}, Lorg/telegram/ui/Components/ItemOptions;->-$$Nest$fgetviewAdditionalOffsets(Lorg/telegram/ui/Components/ItemOptions;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    neg-int v1, v1

    iget-object v2, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v2}, Lorg/telegram/ui/Components/ItemOptions;->-$$Nest$fgetviewAdditionalOffsets(Lorg/telegram/ui/Components/ItemOptions;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    neg-int v2, v2

    iget-object v3, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v3}, Lorg/telegram/ui/Components/ItemOptions;->-$$Nest$fgetscrimView(Lorg/telegram/ui/Components/ItemOptions;)Landroid/view/View;

    move-result-object v3

    .line 1804
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v4}, Lorg/telegram/ui/Components/ItemOptions;->-$$Nest$fgetviewAdditionalOffsets(Lorg/telegram/ui/Components/ItemOptions;)Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v4

    iget-object v4, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v4}, Lorg/telegram/ui/Components/ItemOptions;->-$$Nest$fgetscrimView(Lorg/telegram/ui/Components/ItemOptions;)Landroid/view/View;

    move-result-object v4

    .line 1805
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    iget-object v5, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v5}, Lorg/telegram/ui/Components/ItemOptions;->-$$Nest$fgetviewAdditionalOffsets(Lorg/telegram/ui/Components/ItemOptions;)Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, v5

    .line 1801
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1808
    :goto_3
    iget-object v0, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v0}, Lorg/telegram/ui/Components/ItemOptions;->-$$Nest$fgetscrimViewBackground(Lorg/telegram/ui/Components/ItemOptions;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1810
    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v0}, Lorg/telegram/ui/Components/ItemOptions;->-$$Nest$fgetscrimViewPadding(Lorg/telegram/ui/Components/ItemOptions;)I

    move-result v0

    if-gtz v0, :cond_8

    iget-object v0, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v0}, Lorg/telegram/ui/Components/ItemOptions;->-$$Nest$fgetscrimViewRoundRadius(Lorg/telegram/ui/Components/ItemOptions;)I

    move-result v0

    if-lez v0, :cond_9

    .line 1811
    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->clipPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    .line 1812
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    iget-object v1, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v1}, Lorg/telegram/ui/Components/ItemOptions;->-$$Nest$fgetviewAdditionalOffsets(Lorg/telegram/ui/Components/ItemOptions;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    neg-int v1, v1

    int-to-float v1, v1

    iget-object v2, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v2}, Lorg/telegram/ui/Components/ItemOptions;->-$$Nest$fgetscrimViewPadding(Lorg/telegram/ui/Components/ItemOptions;)I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->dimProgress:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget-object v2, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v2}, Lorg/telegram/ui/Components/ItemOptions;->-$$Nest$fgetviewAdditionalOffsets(Lorg/telegram/ui/Components/ItemOptions;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    neg-int v2, v2

    int-to-float v2, v2

    iget-object v3, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v3}, Lorg/telegram/ui/Components/ItemOptions;->-$$Nest$fgetscrimViewPadding(Lorg/telegram/ui/Components/ItemOptions;)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget-object v3, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v3}, Lorg/telegram/ui/Components/ItemOptions;->-$$Nest$fgetviewAdditionalOffsets(Lorg/telegram/ui/Components/ItemOptions;)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->left:I

    neg-int v3, v3

    iget-object v4, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->cachedBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    iget-object v4, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v4}, Lorg/telegram/ui/Components/ItemOptions;->-$$Nest$fgetscrimViewPadding(Lorg/telegram/ui/Components/ItemOptions;)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result v5

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    iget-object v4, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v4}, Lorg/telegram/ui/Components/ItemOptions;->-$$Nest$fgetviewAdditionalOffsets(Lorg/telegram/ui/Components/ItemOptions;)Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->top:I

    neg-int v4, v4

    iget-object v5, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->cachedBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    iget-object v5, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v5}, Lorg/telegram/ui/Components/ItemOptions;->-$$Nest$fgetscrimViewPadding(Lorg/telegram/ui/Components/ItemOptions;)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result v6

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1813
    iget-object v1, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->clipPath:Landroid/graphics/Path;

    iget-object v2, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v2}, Lorg/telegram/ui/Components/ItemOptions;->-$$Nest$fgetscrimViewRoundRadius(Lorg/telegram/ui/Components/ItemOptions;)I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->dimProgress:F

    mul-float/2addr v2, v3

    iget-object v3, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v3}, Lorg/telegram/ui/Components/ItemOptions;->-$$Nest$fgetscrimViewRoundRadius(Lorg/telegram/ui/Components/ItemOptions;)I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->dimProgress:F

    mul-float/2addr v3, v4

    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 1814
    iget-object v0, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->clipPath:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 1816
    :cond_9
    iget-object v0, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->cachedBitmapPaint:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1817
    iget-object v0, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->cachedBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v1}, Lorg/telegram/ui/Components/ItemOptions;->-$$Nest$fgetviewAdditionalOffsets(Lorg/telegram/ui/Components/ItemOptions;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    neg-int v1, v1

    int-to-float v1, v1

    iget-object v2, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v2}, Lorg/telegram/ui/Components/ItemOptions;->-$$Nest$fgetviewAdditionalOffsets(Lorg/telegram/ui/Components/ItemOptions;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    neg-int v2, v2

    int-to-float v2, v2

    iget-object v3, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->cachedBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1818
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void

    .line 1819
    :cond_a
    iget-object v0, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v0}, Lorg/telegram/ui/Components/ItemOptions;->-$$Nest$fgetscrimView(Lorg/telegram/ui/Components/ItemOptions;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v0}, Lorg/telegram/ui/Components/ItemOptions;->-$$Nest$fgetscrimView(Lorg/telegram/ui/Components/ItemOptions;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_1

    .line 1820
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1821
    iget v0, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->clipTop:F

    cmpg-float v0, v0, v5

    if-ltz v0, :cond_b

    iget v0, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->clipBottom:F

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_f

    .line 1822
    :cond_b
    iget-object v0, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v0}, Lorg/telegram/ui/Components/ItemOptions;->-$$Nest$fgetallowMoveScrim(Lorg/telegram/ui/Components/ItemOptions;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1823
    iget-object v0, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v0}, Lorg/telegram/ui/Components/ItemOptions;->-$$Nest$fgetviewAdditionalOffsets(Lorg/telegram/ui/Components/ItemOptions;)Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->left:I

    neg-int v0, v0

    int-to-float v0, v0

    iget-object v6, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v6}, Lorg/telegram/ui/Components/ItemOptions;->-$$Nest$fgetviewAdditionalOffsets(Lorg/telegram/ui/Components/ItemOptions;)Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->top:I

    neg-int v6, v6

    int-to-float v6, v6

    iget-object v7, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v7}, Lorg/telegram/ui/Components/ItemOptions;->-$$Nest$fgetpoint(Lorg/telegram/ui/Components/ItemOptions;)[F

    move-result-object v7

    aget v7, v7, v4

    add-float/2addr v6, v7

    iget v7, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->clipTop:F

    iget-object v8, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v8}, Lorg/telegram/ui/Components/ItemOptions;->-$$Nest$fgetblur(Lorg/telegram/ui/Components/ItemOptions;)Z

    move-result v8

    if-eqz v8, :cond_c

    iget v8, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->dimProgress:F

    sub-float v8, v5, v8

    goto :goto_4

    :cond_c
    move v8, v5

    :goto_4
    mul-float/2addr v7, v8

    sub-float/2addr v6, v7

    add-float/2addr v6, v5

    iget v7, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->dimProgress:F

    invoke-static {v6, v2, v7}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v6

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    iget-object v8, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v8}, Lorg/telegram/ui/Components/ItemOptions;->-$$Nest$fgetviewAdditionalOffsets(Lorg/telegram/ui/Components/ItemOptions;)Landroid/graphics/Rect;

    move-result-object v8

    iget v8, v8, Landroid/graphics/Rect;->right:I

    add-int/2addr v7, v8

    int-to-float v7, v7

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    iget-object v9, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v9}, Lorg/telegram/ui/Components/ItemOptions;->-$$Nest$fgetviewAdditionalOffsets(Lorg/telegram/ui/Components/ItemOptions;)Landroid/graphics/Rect;

    move-result-object v9

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v8, v9

    int-to-float v8, v8

    iget v9, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->clipBottom:F

    iget v10, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->dimProgress:F

    sub-float v10, v5, v10

    mul-float/2addr v9, v10

    sub-float/2addr v8, v9

    invoke-virtual {p1, v0, v6, v7, v8}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    goto :goto_6

    .line 1825
    :cond_d
    iget-object v0, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v0}, Lorg/telegram/ui/Components/ItemOptions;->-$$Nest$fgetviewAdditionalOffsets(Lorg/telegram/ui/Components/ItemOptions;)Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->left:I

    neg-int v0, v0

    int-to-float v0, v0

    iget-object v6, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v6}, Lorg/telegram/ui/Components/ItemOptions;->-$$Nest$fgetviewAdditionalOffsets(Lorg/telegram/ui/Components/ItemOptions;)Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->top:I

    neg-int v6, v6

    int-to-float v6, v6

    iget-object v7, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v7}, Lorg/telegram/ui/Components/ItemOptions;->-$$Nest$fgetpoint(Lorg/telegram/ui/Components/ItemOptions;)[F

    move-result-object v7

    aget v7, v7, v4

    add-float/2addr v6, v7

    iget v7, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->clipTop:F

    iget-object v8, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v8}, Lorg/telegram/ui/Components/ItemOptions;->-$$Nest$fgetblur(Lorg/telegram/ui/Components/ItemOptions;)Z

    move-result v8

    if-eqz v8, :cond_e

    iget v8, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->dimProgress:F

    sub-float v8, v5, v8

    goto :goto_5

    :cond_e
    move v8, v5

    :goto_5
    mul-float/2addr v7, v8

    sub-float/2addr v6, v7

    add-float/2addr v6, v5

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    iget-object v8, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v8}, Lorg/telegram/ui/Components/ItemOptions;->-$$Nest$fgetviewAdditionalOffsets(Lorg/telegram/ui/Components/ItemOptions;)Landroid/graphics/Rect;

    move-result-object v8

    iget v8, v8, Landroid/graphics/Rect;->right:I

    add-int/2addr v7, v8

    int-to-float v7, v7

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    iget-object v9, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v9}, Lorg/telegram/ui/Components/ItemOptions;->-$$Nest$fgetviewAdditionalOffsets(Lorg/telegram/ui/Components/ItemOptions;)Landroid/graphics/Rect;

    move-result-object v9

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v8, v9

    int-to-float v8, v8

    invoke-virtual {p1, v0, v6, v7, v8}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 1828
    :cond_f
    :goto_6
    iget v0, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->dimProgress:F

    .line 1829
    iget-object v6, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v6}, Lorg/telegram/ui/Components/ItemOptions;->-$$Nest$fgetallowMoveScrim(Lorg/telegram/ui/Components/ItemOptions;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 1830
    iget-object v6, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v6}, Lorg/telegram/ui/Components/ItemOptions;->-$$Nest$fgetscrimView(Lorg/telegram/ui/Components/ItemOptions;)Landroid/view/View;

    move-result-object v6

    iget-object v7, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v7}, Lorg/telegram/ui/Components/ItemOptions;->-$$Nest$fgetpointContainer(Lorg/telegram/ui/Components/ItemOptions;)Landroid/view/ViewGroup;

    move-result-object v7

    iget-object v8, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v8}, Lorg/telegram/ui/Components/ItemOptions;->-$$Nest$fgetpoint(Lorg/telegram/ui/Components/ItemOptions;)[F

    move-result-object v8

    invoke-static {v6, v7, v8}, Lorg/telegram/ui/Components/ItemOptions;->getPointOnScreen(Landroid/view/View;Landroid/view/ViewGroup;[F)V

    .line 1831
    iget-object v6, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v6}, Lorg/telegram/ui/Components/ItemOptions;->-$$Nest$fgetpoint(Lorg/telegram/ui/Components/ItemOptions;)[F

    move-result-object v6

    aget v3, v6, v3

    iget v6, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->moveToX:F

    invoke-static {v3, v6, v0}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v3

    iget-object v6, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v6}, Lorg/telegram/ui/Components/ItemOptions;->-$$Nest$fgetpoint(Lorg/telegram/ui/Components/ItemOptions;)[F

    move-result-object v6

    aget v4, v6, v4

    iget v6, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->moveToY:F

    invoke-static {v4, v6, v0}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_7

    .line 1833
    :cond_10
    iget-object v6, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v6}, Lorg/telegram/ui/Components/ItemOptions;->-$$Nest$fgetpoint(Lorg/telegram/ui/Components/ItemOptions;)[F

    move-result-object v6

    aget v3, v6, v3

    iget-object v6, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v6}, Lorg/telegram/ui/Components/ItemOptions;->-$$Nest$fgetpoint(Lorg/telegram/ui/Components/ItemOptions;)[F

    move-result-object v6

    aget v4, v6, v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1837
    :goto_7
    iget-object v3, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v3}, Lorg/telegram/ui/Components/ItemOptions;->-$$Nest$fgetanimateToWidth(Lorg/telegram/ui/Components/ItemOptions;)I

    move-result v3

    if-eqz v3, :cond_11

    iget-object v3, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v3}, Lorg/telegram/ui/Components/ItemOptions;->-$$Nest$fgetanimateToHeight(Lorg/telegram/ui/Components/ItemOptions;)I

    move-result v3

    if-eqz v3, :cond_11

    .line 1838
    iget-object v3, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v3}, Lorg/telegram/ui/Components/ItemOptions;->-$$Nest$fgetscrimView(Lorg/telegram/ui/Components/ItemOptions;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v4}, Lorg/telegram/ui/Components/ItemOptions;->-$$Nest$fgetanimateToWidth(Lorg/telegram/ui/Components/ItemOptions;)I

    move-result v4

    invoke-static {v3, v4, v0}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v3

    int-to-float v3, v3

    .line 1839
    iget-object v4, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v4}, Lorg/telegram/ui/Components/ItemOptions;->-$$Nest$fgetscrimView(Lorg/telegram/ui/Components/ItemOptions;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    iget-object v6, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v6}, Lorg/telegram/ui/Components/ItemOptions;->-$$Nest$fgetanimateToHeight(Lorg/telegram/ui/Components/ItemOptions;)I

    move-result v6

    invoke-static {v4, v6, v0}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v0

    :goto_8
    int-to-float v0, v0

    move v10, v0

    move v9, v3

    goto :goto_9

    .line 1841
    :cond_11
    iget-object v0, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v0}, Lorg/telegram/ui/Components/ItemOptions;->-$$Nest$fgetscrimView(Lorg/telegram/ui/Components/ItemOptions;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v3, v0

    .line 1842
    iget-object v0, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v0}, Lorg/telegram/ui/Components/ItemOptions;->-$$Nest$fgetscrimView(Lorg/telegram/ui/Components/ItemOptions;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    goto :goto_8

    .line 1845
    :goto_9
    iget-object v0, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v0}, Lorg/telegram/ui/Components/ItemOptions;->-$$Nest$fgetscrimViewBackground(Lorg/telegram/ui/Components/ItemOptions;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 1846
    iget-object v0, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v0}, Lorg/telegram/ui/Components/ItemOptions;->-$$Nest$fgetscrimViewBackground(Lorg/telegram/ui/Components/ItemOptions;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    if-lez v0, :cond_12

    iget-object v0, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v0}, Lorg/telegram/ui/Components/ItemOptions;->-$$Nest$fgetscrimViewBackground(Lorg/telegram/ui/Components/ItemOptions;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    if-lez v0, :cond_12

    .line 1847
    iget-object v0, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v0}, Lorg/telegram/ui/Components/ItemOptions;->-$$Nest$fgetscrimViewBackground(Lorg/telegram/ui/Components/ItemOptions;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v3, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v3}, Lorg/telegram/ui/Components/ItemOptions;->-$$Nest$fgetviewAdditionalOffsets(Lorg/telegram/ui/Components/ItemOptions;)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->left:I

    neg-int v3, v3

    iget-object v4, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v4}, Lorg/telegram/ui/Components/ItemOptions;->-$$Nest$fgetscrimView(Lorg/telegram/ui/Components/ItemOptions;)Landroid/view/View;

    move-result-object v4

    .line 1848
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    iget-object v6, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v6}, Lorg/telegram/ui/Components/ItemOptions;->-$$Nest$fgetviewAdditionalOffsets(Lorg/telegram/ui/Components/ItemOptions;)Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v6

    iget-object v6, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v6}, Lorg/telegram/ui/Components/ItemOptions;->-$$Nest$fgetscrimViewBackground(Lorg/telegram/ui/Components/ItemOptions;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    sub-int/2addr v4, v6

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    iget-object v4, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v4}, Lorg/telegram/ui/Components/ItemOptions;->-$$Nest$fgetviewAdditionalOffsets(Lorg/telegram/ui/Components/ItemOptions;)Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->top:I

    neg-int v4, v4

    iget-object v6, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v6}, Lorg/telegram/ui/Components/ItemOptions;->-$$Nest$fgetscrimView(Lorg/telegram/ui/Components/ItemOptions;)Landroid/view/View;

    move-result-object v6

    .line 1849
    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    iget-object v7, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v7}, Lorg/telegram/ui/Components/ItemOptions;->-$$Nest$fgetviewAdditionalOffsets(Lorg/telegram/ui/Components/ItemOptions;)Landroid/graphics/Rect;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v6, v7

    iget-object v7, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v7}, Lorg/telegram/ui/Components/ItemOptions;->-$$Nest$fgetscrimViewBackground(Lorg/telegram/ui/Components/ItemOptions;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    sub-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v4, v6

    iget-object v6, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v6}, Lorg/telegram/ui/Components/ItemOptions;->-$$Nest$fgetviewAdditionalOffsets(Lorg/telegram/ui/Components/ItemOptions;)Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->left:I

    neg-int v6, v6

    iget-object v7, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v7}, Lorg/telegram/ui/Components/ItemOptions;->-$$Nest$fgetscrimView(Lorg/telegram/ui/Components/ItemOptions;)Landroid/view/View;

    move-result-object v7

    .line 1850
    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v7

    iget-object v8, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v8}, Lorg/telegram/ui/Components/ItemOptions;->-$$Nest$fgetviewAdditionalOffsets(Lorg/telegram/ui/Components/ItemOptions;)Landroid/graphics/Rect;

    move-result-object v8

    iget v8, v8, Landroid/graphics/Rect;->right:I

    add-int/2addr v7, v8

    iget-object v8, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v8}, Lorg/telegram/ui/Components/ItemOptions;->-$$Nest$fgetscrimViewBackground(Lorg/telegram/ui/Components/ItemOptions;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    add-int/2addr v7, v8

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    iget-object v7, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v7}, Lorg/telegram/ui/Components/ItemOptions;->-$$Nest$fgetviewAdditionalOffsets(Lorg/telegram/ui/Components/ItemOptions;)Landroid/graphics/Rect;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Rect;->top:I

    neg-int v7, v7

    iget-object v8, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v8}, Lorg/telegram/ui/Components/ItemOptions;->-$$Nest$fgetscrimView(Lorg/telegram/ui/Components/ItemOptions;)Landroid/view/View;

    move-result-object v8

    .line 1851
    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v8

    iget-object v11, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v11}, Lorg/telegram/ui/Components/ItemOptions;->-$$Nest$fgetviewAdditionalOffsets(Lorg/telegram/ui/Components/ItemOptions;)Landroid/graphics/Rect;

    move-result-object v11

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v8, v11

    iget-object v11, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v11}, Lorg/telegram/ui/Components/ItemOptions;->-$$Nest$fgetscrimViewBackground(Lorg/telegram/ui/Components/ItemOptions;)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v11

    add-int/2addr v8, v11

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    .line 1847
    invoke-virtual {v0, v3, v4, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_a

    .line 1854
    :cond_12
    iget-object v0, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v0}, Lorg/telegram/ui/Components/ItemOptions;->-$$Nest$fgetscrimViewBackground(Lorg/telegram/ui/Components/ItemOptions;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v3, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v3}, Lorg/telegram/ui/Components/ItemOptions;->-$$Nest$fgetviewAdditionalOffsets(Lorg/telegram/ui/Components/ItemOptions;)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->left:I

    neg-int v3, v3

    iget-object v4, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v4}, Lorg/telegram/ui/Components/ItemOptions;->-$$Nest$fgetviewAdditionalOffsets(Lorg/telegram/ui/Components/ItemOptions;)Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->top:I

    neg-int v4, v4

    iget-object v6, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v6}, Lorg/telegram/ui/Components/ItemOptions;->-$$Nest$fgetscrimView(Lorg/telegram/ui/Components/ItemOptions;)Landroid/view/View;

    move-result-object v6

    .line 1857
    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    iget-object v7, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v7}, Lorg/telegram/ui/Components/ItemOptions;->-$$Nest$fgetviewAdditionalOffsets(Lorg/telegram/ui/Components/ItemOptions;)Landroid/graphics/Rect;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Rect;->right:I

    add-int/2addr v6, v7

    iget-object v7, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v7}, Lorg/telegram/ui/Components/ItemOptions;->-$$Nest$fgetscrimView(Lorg/telegram/ui/Components/ItemOptions;)Landroid/view/View;

    move-result-object v7

    .line 1858
    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v7

    iget-object v8, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v8}, Lorg/telegram/ui/Components/ItemOptions;->-$$Nest$fgetviewAdditionalOffsets(Lorg/telegram/ui/Components/ItemOptions;)Landroid/graphics/Rect;

    move-result-object v8

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v7, v8

    .line 1854
    invoke-virtual {v0, v3, v4, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1861
    :goto_a
    iget-object v0, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v0}, Lorg/telegram/ui/Components/ItemOptions;->-$$Nest$fgetscrimViewBackground(Lorg/telegram/ui/Components/ItemOptions;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v3, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->dimProgress:F

    mul-float/2addr v3, v1

    float-to-int v3, v3

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1862
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1d

    if-lt v0, v3, :cond_13

    iget-object v0, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v0}, Lorg/telegram/ui/Components/ItemOptions;->-$$Nest$fgetscrimViewBackground(Lorg/telegram/ui/Components/ItemOptions;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Landroid/graphics/drawable/ShapeDrawable;

    if-eqz v0, :cond_13

    .line 1863
    iget-object v0, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v0}, Lorg/telegram/ui/Components/ItemOptions;->-$$Nest$fgetscrimViewBackground(Lorg/telegram/ui/Components/ItemOptions;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    .line 1865
    invoke-virtual {v0}, Landroid/graphics/Paint;->getShadowLayerRadius()F

    move-result v3

    .line 1866
    invoke-virtual {v0}, Landroid/graphics/Paint;->getShadowLayerDx()F

    move-result v4

    .line 1867
    invoke-virtual {v0}, Landroid/graphics/Paint;->getShadowLayerDy()F

    move-result v6

    iget-object v7, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v7}, Lorg/telegram/ui/Components/ItemOptions;->-$$Nest$fgetscrimViewBackgroundShadowColor(Lorg/telegram/ui/Components/ItemOptions;)I

    move-result v7

    iget v8, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->dimProgress:F

    .line 1868
    invoke-static {v7, v8}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v7

    .line 1864
    invoke-virtual {v0, v3, v4, v6, v7}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 1871
    :cond_13
    iget-object v0, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v0}, Lorg/telegram/ui/Components/ItemOptions;->-$$Nest$fgetscrimViewBackground(Lorg/telegram/ui/Components/ItemOptions;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1873
    :cond_14
    iget-object v0, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v0}, Lorg/telegram/ui/Components/ItemOptions;->-$$Nest$fgetscrimViewPadding(Lorg/telegram/ui/Components/ItemOptions;)I

    move-result v0

    if-gtz v0, :cond_15

    iget-object v0, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v0}, Lorg/telegram/ui/Components/ItemOptions;->-$$Nest$fgetscrimViewRoundRadius(Lorg/telegram/ui/Components/ItemOptions;)I

    move-result v0

    if-lez v0, :cond_17

    .line 1874
    :cond_15
    iget-object v0, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->clipPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    .line 1875
    iget-object v0, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v0}, Lorg/telegram/ui/Components/ItemOptions;->-$$Nest$fgetscrimView(Lorg/telegram/ui/Components/ItemOptions;)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lorg/telegram/ui/Components/ItemOptions$ScrimView;

    if-eqz v0, :cond_16

    .line 1876
    iget-object v0, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v0}, Lorg/telegram/ui/Components/ItemOptions;->-$$Nest$fgetscrimView(Lorg/telegram/ui/Components/ItemOptions;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/ItemOptions$ScrimView;

    iget-object v2, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->bounds:Landroid/graphics/RectF;

    invoke-interface {v0, v2}, Lorg/telegram/ui/Components/ItemOptions$ScrimView;->getBounds(Landroid/graphics/RectF;)V

    goto :goto_b

    .line 1878
    :cond_16
    iget-object v0, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->bounds:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0, v2, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1880
    :goto_b
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    iget-object v2, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v2}, Lorg/telegram/ui/Components/ItemOptions;->-$$Nest$fgetviewAdditionalOffsets(Lorg/telegram/ui/Components/ItemOptions;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    neg-int v2, v2

    int-to-float v2, v2

    iget-object v3, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->bounds:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    add-float/2addr v2, v3

    iget-object v3, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v3}, Lorg/telegram/ui/Components/ItemOptions;->-$$Nest$fgetscrimViewPadding(Lorg/telegram/ui/Components/ItemOptions;)I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->dimProgress:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget-object v3, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v3}, Lorg/telegram/ui/Components/ItemOptions;->-$$Nest$fgetviewAdditionalOffsets(Lorg/telegram/ui/Components/ItemOptions;)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->top:I

    neg-int v3, v3

    int-to-float v3, v3

    iget-object v4, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->bounds:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, v4

    iget-object v4, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v4}, Lorg/telegram/ui/Components/ItemOptions;->-$$Nest$fgetscrimViewPadding(Lorg/telegram/ui/Components/ItemOptions;)I

    move-result v4

    int-to-float v4, v4

    iget v6, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->dimProgress:F

    mul-float/2addr v4, v6

    add-float/2addr v3, v4

    iget-object v4, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v4}, Lorg/telegram/ui/Components/ItemOptions;->-$$Nest$fgetviewAdditionalOffsets(Lorg/telegram/ui/Components/ItemOptions;)Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->left:I

    neg-int v4, v4

    int-to-float v4, v4

    iget-object v6, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->bounds:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->right:F

    add-float/2addr v4, v6

    iget-object v6, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v6}, Lorg/telegram/ui/Components/ItemOptions;->-$$Nest$fgetscrimViewPadding(Lorg/telegram/ui/Components/ItemOptions;)I

    move-result v6

    int-to-float v6, v6

    iget v7, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->dimProgress:F

    mul-float/2addr v6, v7

    sub-float/2addr v4, v6

    iget-object v6, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v6}, Lorg/telegram/ui/Components/ItemOptions;->-$$Nest$fgetviewAdditionalOffsets(Lorg/telegram/ui/Components/ItemOptions;)Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->top:I

    neg-int v6, v6

    int-to-float v6, v6

    iget-object v7, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->bounds:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v6, v7

    iget-object v7, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v7}, Lorg/telegram/ui/Components/ItemOptions;->-$$Nest$fgetscrimViewPadding(Lorg/telegram/ui/Components/ItemOptions;)I

    move-result v7

    int-to-float v7, v7

    iget v8, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->dimProgress:F

    mul-float/2addr v7, v8

    sub-float/2addr v6, v7

    invoke-virtual {v0, v2, v3, v4, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1886
    iget-object v2, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->clipPath:Landroid/graphics/Path;

    iget-object v3, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v3}, Lorg/telegram/ui/Components/ItemOptions;->-$$Nest$fgetscrimViewRoundRadius(Lorg/telegram/ui/Components/ItemOptions;)I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->dimProgress:F

    mul-float/2addr v3, v4

    iget-object v4, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v4}, Lorg/telegram/ui/Components/ItemOptions;->-$$Nest$fgetscrimViewRoundRadius(Lorg/telegram/ui/Components/ItemOptions;)I

    move-result v4

    int-to-float v4, v4

    iget v6, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->dimProgress:F

    mul-float/2addr v4, v6

    sget-object v6, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v2, v0, v3, v4, v6}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 1887
    iget-object v0, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->clipPath:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 1889
    :cond_17
    iget-object v0, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v0}, Lorg/telegram/ui/Components/ItemOptions;->-$$Nest$fgetscrimView(Lorg/telegram/ui/Components/ItemOptions;)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;

    const v2, 0x3f666666    # 0.9f

    const/high16 v3, 0x40000000    # 2.0f

    if-eqz v0, :cond_19

    .line 1890
    iget-object v0, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v0}, Lorg/telegram/ui/Components/ItemOptions;->-$$Nest$fgetscrimView(Lorg/telegram/ui/Components/ItemOptions;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    cmpl-float v0, v0, v5

    if-ltz v0, :cond_18

    .line 1891
    iget-object v0, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v0}, Lorg/telegram/ui/Components/ItemOptions;->-$$Nest$fgetscrimView(Lorg/telegram/ui/Components/ItemOptions;)Landroid/view/View;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;

    iget v11, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->dimProgress:F

    move-object v7, p0

    move-object v8, p1

    invoke-virtual/range {v6 .. v11}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->customDraw(Landroid/view/View;Landroid/graphics/Canvas;FFF)V

    goto/16 :goto_e

    :cond_18
    move-object v8, p1

    move-object p1, p0

    .line 1893
    iget v0, p1, Lorg/telegram/ui/Components/ItemOptions$DimView;->dimProgress:F

    mul-float/2addr v0, v1

    float-to-int v11, v0

    const/16 v12, 0x1f

    const/4 v7, 0x0

    move-object v6, v8

    const/4 v8, 0x0

    invoke-virtual/range {v6 .. v12}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    move-object v8, v6

    .line 1894
    iget v0, p1, Lorg/telegram/ui/Components/ItemOptions$DimView;->dimProgress:F

    invoke-static {v5, v2, v0}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v0

    div-float v1, v9, v3

    div-float v2, v10, v3

    .line 1895
    invoke-virtual {v8, v0, v0, v1, v2}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 1896
    iget-object v0, p1, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v0}, Lorg/telegram/ui/Components/ItemOptions;->-$$Nest$fgetscrimView(Lorg/telegram/ui/Components/ItemOptions;)Landroid/view/View;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;

    iget v11, p1, Lorg/telegram/ui/Components/ItemOptions$DimView;->dimProgress:F

    move-object v7, p1

    invoke-virtual/range {v6 .. v11}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->customDraw(Landroid/view/View;Landroid/graphics/Canvas;FFF)V

    .line 1897
    invoke-virtual {v8}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_e

    :cond_19
    move-object v7, p0

    move-object v8, p1

    .line 1899
    iget-object p1, v7, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {p1}, Lorg/telegram/ui/Components/ItemOptions;->-$$Nest$fgetscrimView(Lorg/telegram/ui/Components/ItemOptions;)Landroid/view/View;

    move-result-object p1

    instance-of p1, p1, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;

    if-eqz p1, :cond_1b

    iget-object p1, v7, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {p1}, Lorg/telegram/ui/Components/ItemOptions;->-$$Nest$fgetanimateToWidth(Lorg/telegram/ui/Components/ItemOptions;)I

    move-result p1

    if-eqz p1, :cond_1b

    iget-object p1, v7, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {p1}, Lorg/telegram/ui/Components/ItemOptions;->-$$Nest$fgetanimateToHeight(Lorg/telegram/ui/Components/ItemOptions;)I

    move-result p1

    if-eqz p1, :cond_1b

    .line 1900
    iget-object p1, v7, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {p1}, Lorg/telegram/ui/Components/ItemOptions;->-$$Nest$fgetscrimView(Lorg/telegram/ui/Components/ItemOptions;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result p1

    cmpl-float p1, p1, v5

    if-ltz p1, :cond_1a

    .line 1901
    iget-object p1, v7, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {p1}, Lorg/telegram/ui/Components/ItemOptions;->-$$Nest$fgetscrimView(Lorg/telegram/ui/Components/ItemOptions;)Landroid/view/View;

    move-result-object p1

    move-object v6, p1

    check-cast v6, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;

    iget v11, v7, Lorg/telegram/ui/Components/ItemOptions$DimView;->dimProgress:F

    invoke-virtual/range {v6 .. v11}, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->customDraw(Landroid/view/View;Landroid/graphics/Canvas;FFF)V

    goto/16 :goto_e

    :cond_1a
    move-object p1, v7

    .line 1903
    iget v0, p1, Lorg/telegram/ui/Components/ItemOptions$DimView;->dimProgress:F

    mul-float/2addr v0, v1

    float-to-int v11, v0

    const/16 v12, 0x1f

    const/4 v7, 0x0

    move-object v6, v8

    const/4 v8, 0x0

    invoke-virtual/range {v6 .. v12}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    move-object v8, v6

    .line 1904
    iget v0, p1, Lorg/telegram/ui/Components/ItemOptions$DimView;->dimProgress:F

    invoke-static {v5, v2, v0}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v0

    div-float v1, v9, v3

    div-float v2, v10, v3

    .line 1905
    invoke-virtual {v8, v0, v0, v1, v2}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 1906
    iget-object v0, p1, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v0}, Lorg/telegram/ui/Components/ItemOptions;->-$$Nest$fgetscrimView(Lorg/telegram/ui/Components/ItemOptions;)Landroid/view/View;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;

    iget v11, p1, Lorg/telegram/ui/Components/ItemOptions$DimView;->dimProgress:F

    move-object v7, p1

    invoke-virtual/range {v6 .. v11}, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->customDraw(Landroid/view/View;Landroid/graphics/Canvas;FFF)V

    .line 1907
    invoke-virtual {v8}, Landroid/graphics/Canvas;->restore()V

    goto :goto_e

    .line 1910
    :cond_1b
    iget-object p1, v7, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {p1}, Lorg/telegram/ui/Components/ItemOptions;->-$$Nest$fgetallowMoveScrim(Lorg/telegram/ui/Components/ItemOptions;)Z

    move-result p1

    if-eqz p1, :cond_1c

    .line 1911
    iget-object p1, v7, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {p1}, Lorg/telegram/ui/Components/ItemOptions;->-$$Nest$fgetscrimView(Lorg/telegram/ui/Components/ItemOptions;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    int-to-float v3, p1

    iget-object p1, v7, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {p1}, Lorg/telegram/ui/Components/ItemOptions;->-$$Nest$fgetscrimView(Lorg/telegram/ui/Components/ItemOptions;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float v4, p1

    iget p1, v7, Lorg/telegram/ui/Components/ItemOptions$DimView;->dimProgress:F

    mul-float/2addr p1, v1

    float-to-int v5, p1

    const/16 v6, 0x1f

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, v8

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    goto :goto_c

    .line 1913
    :cond_1c
    invoke-virtual {v8}, Landroid/graphics/Canvas;->save()I

    .line 1915
    :goto_c
    iget-object p1, v7, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {p1}, Lorg/telegram/ui/Components/ItemOptions;->-$$Nest$fgetscrimView(Lorg/telegram/ui/Components/ItemOptions;)Landroid/view/View;

    move-result-object p1

    instance-of p1, p1, Lorg/telegram/ui/Components/ItemOptions$ScrimView;

    if-eqz p1, :cond_1d

    .line 1916
    iget-object p1, v7, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {p1}, Lorg/telegram/ui/Components/ItemOptions;->-$$Nest$fgetscrimView(Lorg/telegram/ui/Components/ItemOptions;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Components/ItemOptions$ScrimView;

    iget v0, v7, Lorg/telegram/ui/Components/ItemOptions$DimView;->dimProgress:F

    invoke-interface {p1, v8, v0}, Lorg/telegram/ui/Components/ItemOptions$ScrimView;->drawScrim(Landroid/graphics/Canvas;F)V

    goto :goto_d

    .line 1918
    :cond_1d
    iget-object p1, v7, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {p1}, Lorg/telegram/ui/Components/ItemOptions;->-$$Nest$fgetscrimView(Lorg/telegram/ui/Components/ItemOptions;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result p1

    neg-int p1, p1

    int-to-float p1, p1

    iget-object v0, v7, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v0}, Lorg/telegram/ui/Components/ItemOptions;->-$$Nest$fgetscrimView(Lorg/telegram/ui/Components/ItemOptions;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {v8, p1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1919
    iget-object p1, v7, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {p1}, Lorg/telegram/ui/Components/ItemOptions;->-$$Nest$fgetscrimView(Lorg/telegram/ui/Components/ItemOptions;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v8}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 1921
    :goto_d
    invoke-virtual {v8}, Landroid/graphics/Canvas;->restore()V

    .line 1923
    :goto_e
    invoke-virtual {v8}, Landroid/graphics/Canvas;->restore()V

    :goto_f
    return-void
.end method

.method public setProgress(F)V
    .locals 1

    .line 1726
    iget v0, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->dimProgress:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    return-void

    .line 1727
    :cond_0
    iput p1, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->dimProgress:F

    .line 1728
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
