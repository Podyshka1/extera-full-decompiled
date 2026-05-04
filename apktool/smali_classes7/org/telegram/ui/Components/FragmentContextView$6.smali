.class Lorg/telegram/ui/Components/FragmentContextView$6;
.super Landroid/widget/TextView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/FragmentContextView;->checkCreateView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/FragmentContextView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/FragmentContextView;Landroid/content/Context;)V
    .locals 0

    .line 486
    iput-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView$6;->this$0:Lorg/telegram/ui/Components/FragmentContextView;

    invoke-direct {p0, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private updateJoinButtonWidth(I)V
    .locals 5

    .line 519
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView$6;->this$0:Lorg/telegram/ui/Components/FragmentContextView;

    invoke-static {v0}, Lorg/telegram/ui/Components/FragmentContextView;->-$$Nest$fgetjoinButtonWidth(Lorg/telegram/ui/Components/FragmentContextView;)I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 520
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView$6;->this$0:Lorg/telegram/ui/Components/FragmentContextView;

    invoke-static {v0}, Lorg/telegram/ui/Components/FragmentContextView;->-$$Nest$fgettitleTextView(Lorg/telegram/ui/Components/FragmentContextView;)Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/FragmentContextView$6;->this$0:Lorg/telegram/ui/Components/FragmentContextView;

    invoke-static {v1}, Lorg/telegram/ui/Components/FragmentContextView;->-$$Nest$fgettitleTextView(Lorg/telegram/ui/Components/FragmentContextView;)Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    move-result-object v1

    .line 521
    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Components/FragmentContextView$6;->this$0:Lorg/telegram/ui/Components/FragmentContextView;

    invoke-static {v2}, Lorg/telegram/ui/Components/FragmentContextView;->-$$Nest$fgettitleTextView(Lorg/telegram/ui/Components/FragmentContextView;)Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    move-result-object v2

    .line 522
    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/Components/FragmentContextView$6;->this$0:Lorg/telegram/ui/Components/FragmentContextView;

    invoke-static {v3}, Lorg/telegram/ui/Components/FragmentContextView;->-$$Nest$fgettitleTextView(Lorg/telegram/ui/Components/FragmentContextView;)Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    move-result-object v3

    .line 523
    invoke-virtual {v3}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/Components/FragmentContextView$6;->this$0:Lorg/telegram/ui/Components/FragmentContextView;

    invoke-static {v4}, Lorg/telegram/ui/Components/FragmentContextView;->-$$Nest$fgetjoinButtonWidth(Lorg/telegram/ui/Components/FragmentContextView;)I

    move-result v4

    sub-int/2addr v3, v4

    add-int/2addr v3, p1

    iget-object v4, p0, Lorg/telegram/ui/Components/FragmentContextView$6;->this$0:Lorg/telegram/ui/Components/FragmentContextView;

    invoke-static {v4}, Lorg/telegram/ui/Components/FragmentContextView;->-$$Nest$fgettitleTextView(Lorg/telegram/ui/Components/FragmentContextView;)Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    move-result-object v4

    .line 524
    invoke-virtual {v4}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    .line 520
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 526
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView$6;->this$0:Lorg/telegram/ui/Components/FragmentContextView;

    invoke-static {v0, p1}, Lorg/telegram/ui/Components/FragmentContextView;->-$$Nest$fputjoinButtonWidth(Lorg/telegram/ui/Components/FragmentContextView;I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 489
    invoke-super {p0, p1}, Landroid/widget/TextView;->draw(Landroid/graphics/Canvas;)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 491
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    .line 492
    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    int-to-float v2, v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    sub-int/2addr v3, v0

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    sub-int/2addr v4, v0

    int-to-float v0, v4

    invoke-virtual {v1, v2, v2, v3, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 493
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView$6;->this$0:Lorg/telegram/ui/Components/FragmentContextView;

    invoke-static {v0}, Lorg/telegram/ui/Components/FragmentContextView;->-$$Nest$fgetjoinButtonFlicker(Lorg/telegram/ui/Components/FragmentContextView;)Lorg/telegram/ui/Components/voip/CellFlickerDrawable;

    move-result-object v0

    const/high16 v2, 0x41800000    # 16.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, p1, v1, v2, p0}, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;->draw(Landroid/graphics/Canvas;Landroid/graphics/RectF;FLandroid/view/View;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 505
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    .line 506
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/FragmentContextView$6;->updateJoinButtonWidth(I)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 498
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->onSizeChanged(IIII)V

    .line 500
    iget-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView$6;->this$0:Lorg/telegram/ui/Components/FragmentContextView;

    invoke-static {p1}, Lorg/telegram/ui/Components/FragmentContextView;->-$$Nest$fgetjoinButtonFlicker(Lorg/telegram/ui/Components/FragmentContextView;)Lorg/telegram/ui/Components/voip/CellFlickerDrawable;

    move-result-object p1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;->setParentWidth(I)V

    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    .line 511
    invoke-super {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 513
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/FragmentContextView$6;->updateJoinButtonWidth(I)V

    .line 514
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView$6;->this$0:Lorg/telegram/ui/Components/FragmentContextView;

    invoke-static {v0, p1}, Lorg/telegram/ui/Components/FragmentContextView;->-$$Nest$fputjoinButtonWidth(Lorg/telegram/ui/Components/FragmentContextView;I)V

    :cond_0
    return-void
.end method
