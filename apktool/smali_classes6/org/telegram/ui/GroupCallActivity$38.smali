.class Lorg/telegram/ui/GroupCallActivity$38;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/GroupCallActivity;-><init>(Landroid/app/Activity;Lorg/telegram/messenger/AccountInstance;Lorg/telegram/messenger/ChatObject$Call;Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/tgnet/TLRPC$InputPeer;ZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final backgroundPaint:Landroid/graphics/Paint;

.field final synthetic this$0:Lorg/telegram/ui/GroupCallActivity;

.field private final tmpRect:Landroid/graphics/RectF;

.field private final tmpRect2:Landroid/graphics/RectF;

.field private final tmpRect3:Landroid/graphics/RectF;


# direct methods
.method constructor <init>(Lorg/telegram/ui/GroupCallActivity;Landroid/content/Context;)V
    .locals 0

    .line 5447
    iput-object p1, p0, Lorg/telegram/ui/GroupCallActivity$38;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 5448
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/GroupCallActivity$38;->tmpRect:Landroid/graphics/RectF;

    .line 5449
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/GroupCallActivity$38;->tmpRect2:Landroid/graphics/RectF;

    .line 5450
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/GroupCallActivity$38;->tmpRect3:Landroid/graphics/RectF;

    .line 5451
    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/GroupCallActivity$38;->backgroundPaint:Landroid/graphics/Paint;

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 5455
    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$38;->tmpRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lorg/telegram/ui/GroupCallActivity$38;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v1}, Lorg/telegram/ui/GroupCallActivity;->-$$Nest$fgetcallMessageEnterContainer(Lorg/telegram/ui/GroupCallActivity;)Landroid/widget/FrameLayout;

    move-result-object v1

    .line 5457
    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/GroupCallActivity$38;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v2}, Lorg/telegram/ui/GroupCallActivity;->-$$Nest$fgetcallMessageEnterContainer(Lorg/telegram/ui/GroupCallActivity;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget-object v2, p0, Lorg/telegram/ui/GroupCallActivity$38;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v2}, Lorg/telegram/ui/GroupCallActivity;->-$$Nest$fgetanimatorMessageInputHeight(Lorg/telegram/ui/GroupCallActivity;)Lme/vkryl/android/animator/FactorAnimator;

    move-result-object v2

    invoke-virtual {v2}, Lme/vkryl/android/animator/FactorAnimator;->getFactor()F

    move-result v2

    sub-float/2addr v1, v2

    .line 5458
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    const/4 v4, 0x0

    .line 5455
    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 5459
    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$38;->tmpRect2:Landroid/graphics/RectF;

    iget-object v1, p0, Lorg/telegram/ui/GroupCallActivity$38;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v1}, Lorg/telegram/ui/GroupCallActivity;->-$$Nest$fgetcallMessageEnterContainer(Lorg/telegram/ui/GroupCallActivity;)Landroid/widget/FrameLayout;

    move-result-object v1

    .line 5461
    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/GroupCallActivity$38;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v2}, Lorg/telegram/ui/GroupCallActivity;->-$$Nest$fgetcallMessageEnterContainer(Lorg/telegram/ui/GroupCallActivity;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    .line 5462
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    .line 5459
    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 5463
    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$38;->tmpRect3:Landroid/graphics/RectF;

    iget-object v1, p0, Lorg/telegram/ui/GroupCallActivity$38;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v1}, Lorg/telegram/ui/GroupCallActivity;->-$$Nest$fgetcallMessageEnterContainer(Lorg/telegram/ui/GroupCallActivity;)Landroid/widget/FrameLayout;

    move-result-object v1

    .line 5465
    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/GroupCallActivity$38;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v2}, Lorg/telegram/ui/GroupCallActivity;->-$$Nest$fgetcallMessageEnterContainer(Lorg/telegram/ui/GroupCallActivity;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget-object v2, p0, Lorg/telegram/ui/GroupCallActivity$38;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v2}, Lorg/telegram/ui/GroupCallActivity;->-$$Nest$fgetanimatorMessageInputHeight(Lorg/telegram/ui/GroupCallActivity;)Lme/vkryl/android/animator/FactorAnimator;

    move-result-object v2

    invoke-virtual {v2}, Lme/vkryl/android/animator/FactorAnimator;->getFactor()F

    move-result v2

    sub-float/2addr v1, v2

    .line 5466
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lorg/telegram/ui/GroupCallActivity$38;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v3}, Lorg/telegram/ui/GroupCallActivity;->-$$Nest$fgetcallMessageEnterContainer(Lorg/telegram/ui/GroupCallActivity;)Landroid/widget/FrameLayout;

    move-result-object v3

    .line 5467
    invoke-virtual {v3}, Landroid/view/View;->getY()F

    move-result v3

    iget-object v5, p0, Lorg/telegram/ui/GroupCallActivity$38;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v5}, Lorg/telegram/ui/GroupCallActivity;->-$$Nest$fgetcallMessageEnterContainer(Lorg/telegram/ui/GroupCallActivity;)Landroid/widget/FrameLayout;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v3, v5

    .line 5463
    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 5469
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    const v2, 0xdffffff

    const v3, -0xe3ddd7

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$38;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v0}, Lorg/telegram/ui/GroupCallActivity;->-$$Nest$fgetrenderNodeBlur(Lorg/telegram/ui/GroupCallActivity;)Landroid/graphics/RenderNode;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5470
    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$38;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 5471
    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$38;->tmpRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lorg/telegram/ui/GroupCallActivity$38;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 5473
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 5474
    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$38;->tmpRect:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    .line 5475
    invoke-virtual {p0}, Landroid/view/View;->getX()F

    move-result v0

    neg-float v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getY()F

    move-result v1

    neg-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 5476
    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$38;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v0}, Lorg/telegram/ui/GroupCallActivity;->-$$Nest$fgetrenderNodeBlurScale(Lorg/telegram/ui/GroupCallActivity;)F

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/GroupCallActivity$38;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v1}, Lorg/telegram/ui/GroupCallActivity;->-$$Nest$fgetrenderNodeBlurScale(Lorg/telegram/ui/GroupCallActivity;)F

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 5477
    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$38;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v0}, Lorg/telegram/ui/GroupCallActivity;->-$$Nest$fgetrenderNodeBlur(Lorg/telegram/ui/GroupCallActivity;)Landroid/graphics/RenderNode;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawRenderNode(Landroid/graphics/RenderNode;)V

    .line 5478
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 5480
    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$38;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 5481
    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$38;->tmpRect2:Landroid/graphics/RectF;

    iget-object v1, p0, Lorg/telegram/ui/GroupCallActivity$38;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 5483
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$38;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 5484
    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$38;->tmpRect3:Landroid/graphics/RectF;

    iget-object v1, p0, Lorg/telegram/ui/GroupCallActivity$38;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 5486
    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$38;->backgroundPaint:Landroid/graphics/Paint;

    invoke-static {v2, v3}, Landroidx/core/graphics/ColorUtils;->compositeColors(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 5487
    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$38;->tmpRect2:Landroid/graphics/RectF;

    iget-object v1, p0, Lorg/telegram/ui/GroupCallActivity$38;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 5490
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method
