.class Lorg/telegram/ui/Components/ChatAttachAlert$17;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ChatAttachAlert;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;ZZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final clip:Lorg/telegram/ui/GradientClip;

.field private final path:Landroid/graphics/Path;

.field final synthetic this$0:Lorg/telegram/ui/Components/ChatAttachAlert;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;)V
    .locals 0

    .line 2895
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$17;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2896
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$17;->path:Landroid/graphics/Path;

    .line 2897
    new-instance p1, Lorg/telegram/ui/GradientClip;

    invoke-direct {p1}, Lorg/telegram/ui/GradientClip;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$17;->clip:Lorg/telegram/ui/GradientClip;

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 2901
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$17;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->-$$Nest$fgetcaptionContainerBg(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2902
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$17;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->-$$Nest$fgetcaptionContainerBg(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$17;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->-$$Nest$fgetcaptionEditTextTopOffset(Lorg/telegram/ui/Components/ChatAttachAlert;)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2903
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$17;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->-$$Nest$fgetcaptionContainerBg(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    const/high16 v0, 0x41a00000    # 20.0f

    .line 2906
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40e00000    # 7.0f

    .line 2907
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    .line 2908
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    .line 2910
    sget-object v3, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    int-to-float v4, v4

    int-to-float v5, v2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v7

    sub-int/2addr v6, v7

    int-to-float v6, v6

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v7

    sub-int/2addr v7, v1

    int-to-float v7, v7

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 2911
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert$17;->path:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->rewind()V

    .line 2912
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert$17;->path:Landroid/graphics/Path;

    sget-object v6, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v4, v3, v0, v0, v6}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 2913
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 2914
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$17;->path:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    const/16 v0, 0xff

    const/16 v4, 0x1f

    .line 2915
    invoke-virtual {p1, v3, v0, v4}, Landroid/graphics/Canvas;->saveLayerAlpha(Landroid/graphics/RectF;II)I

    .line 2916
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 2917
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v6

    sub-int/2addr v4, v6

    int-to-float v4, v4

    const/high16 v6, 0x40c00000    # 6.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    add-int/2addr v2, v7

    int-to-float v2, v2

    invoke-virtual {v3, v0, v5, v4, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 2918
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$17;->clip:Lorg/telegram/ui/GradientClip;

    const/4 v2, 0x1

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v0, p1, v3, v2, v4}, Lorg/telegram/ui/GradientClip;->draw(Landroid/graphics/Canvas;Landroid/graphics/RectF;IF)V

    .line 2919
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    sub-int/2addr v2, v5

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v6

    sub-int/2addr v6, v1

    int-to-float v1, v6

    invoke-virtual {v3, v0, v2, v5, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 2920
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$17;->clip:Lorg/telegram/ui/GradientClip;

    const/4 v1, 0x3

    invoke-virtual {v0, p1, v3, v1, v4}, Lorg/telegram/ui/GradientClip;->draw(Landroid/graphics/Canvas;Landroid/graphics/RectF;IF)V

    .line 2921
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 2922
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method
