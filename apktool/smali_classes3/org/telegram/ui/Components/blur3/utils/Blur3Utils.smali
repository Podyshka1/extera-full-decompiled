.class public abstract Lorg/telegram/ui/Components/blur3/utils/Blur3Utils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final captureTmpChildPos:Landroid/graphics/RectF;

.field private static final captureTmpRectF:Landroid/graphics/RectF;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    sput-object v0, Lorg/telegram/ui/Components/blur3/utils/Blur3Utils;->captureTmpRectF:Landroid/graphics/RectF;

    .line 17
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    sput-object v0, Lorg/telegram/ui/Components/blur3/utils/Blur3Utils;->captureTmpChildPos:Landroid/graphics/RectF;

    return-void
.end method

.method public static captureRelativeParent(Lorg/telegram/ui/Components/blur3/capture/IBlur3Capture;Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/view/View;Landroid/view/ViewGroup;)V
    .locals 6

    const/16 v5, 0xff

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 20
    invoke-static/range {v0 .. v5}, Lorg/telegram/ui/Components/blur3/utils/Blur3Utils;->captureRelativeParent(Lorg/telegram/ui/Components/blur3/capture/IBlur3Capture;Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/view/View;Landroid/view/ViewGroup;I)V

    return-void
.end method

.method public static captureRelativeParent(Lorg/telegram/ui/Components/blur3/capture/IBlur3Capture;Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/view/View;Landroid/view/ViewGroup;I)V
    .locals 4

    if-gtz p5, :cond_0

    goto :goto_3

    .line 28
    :cond_0
    sget-object v0, Lorg/telegram/ui/Components/blur3/utils/Blur3Utils;->captureTmpChildPos:Landroid/graphics/RectF;

    invoke-static {p3, p4, v0}, Lorg/telegram/ui/Components/chat/ViewPositionWatcher;->computeRectInParent(Landroid/view/View;Landroid/view/View;Landroid/graphics/RectF;)Z

    move-result p3

    if-eqz p3, :cond_7

    .line 29
    iget p3, v0, Landroid/graphics/RectF;->left:F

    .line 30
    iget p4, v0, Landroid/graphics/RectF;->top:F

    .line 31
    sget-object v0, Lorg/telegram/ui/Components/blur3/utils/Blur3Utils;->captureTmpRectF:Landroid/graphics/RectF;

    invoke-virtual {v0, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    neg-float p2, p3

    neg-float v1, p4

    .line 32
    invoke-virtual {v0, p2, v1}, Landroid/graphics/RectF;->offset(FF)V

    const/4 p2, 0x0

    cmpl-float v1, p3, p2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_2

    cmpl-float p2, p4, p2

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    move p2, v3

    goto :goto_1

    :cond_2
    :goto_0
    move p2, v2

    :goto_1
    const/16 v1, 0xff

    if-eq p5, v1, :cond_3

    goto :goto_2

    :cond_3
    move v2, v3

    :goto_2
    if-eqz p2, :cond_4

    .line 38
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 39
    invoke-virtual {p1, p3, p4}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_4
    if-eqz v2, :cond_5

    .line 42
    invoke-virtual {p1, v0, p5}, Landroid/graphics/Canvas;->saveLayerAlpha(Landroid/graphics/RectF;I)I

    .line 44
    :cond_5
    invoke-interface {p0, p1, v0}, Lorg/telegram/ui/Components/blur3/capture/IBlur3Capture;->capture(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V

    if-eqz v2, :cond_6

    .line 46
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_6
    if-eqz p2, :cond_7

    .line 49
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_7
    :goto_3
    return-void
.end method
