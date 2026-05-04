.class Lorg/telegram/ui/PinchToZoomHelper$ZoomOverlayView$1;
.super Landroid/view/ViewOutlineProvider;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PinchToZoomHelper$ZoomOverlayView;-><init>(Lorg/telegram/ui/PinchToZoomHelper;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/PinchToZoomHelper$ZoomOverlayView;

.field final synthetic val$this$0:Lorg/telegram/ui/PinchToZoomHelper;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PinchToZoomHelper$ZoomOverlayView;Lorg/telegram/ui/PinchToZoomHelper;)V
    .locals 0

    .line 441
    iput-object p1, p0, Lorg/telegram/ui/PinchToZoomHelper$ZoomOverlayView$1;->this$1:Lorg/telegram/ui/PinchToZoomHelper$ZoomOverlayView;

    iput-object p2, p0, Lorg/telegram/ui/PinchToZoomHelper$ZoomOverlayView$1;->val$this$0:Lorg/telegram/ui/PinchToZoomHelper;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 9

    .line 446
    sget v0, Lorg/telegram/messenger/R$id;->parent_tag:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/ImageReceiver;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    .line 448
    invoke-virtual {v0, v2}, Lorg/telegram/messenger/ImageReceiver;->getRoundRadius(Z)[I

    move-result-object v0

    move v2, v1

    :goto_0
    const/4 v3, 0x4

    if-ge v1, v3, :cond_0

    .line 451
    aget v3, v0, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 453
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    int-to-float v8, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, p2

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    return-void

    :cond_1
    move-object v3, p2

    .line 455
    sget p1, Lorg/telegram/messenger/AndroidUtilities;->roundMessageSize:I

    invoke-virtual {v3, v1, v1, p1, p1}, Landroid/graphics/Outline;->setOval(IIII)V

    return-void
.end method
