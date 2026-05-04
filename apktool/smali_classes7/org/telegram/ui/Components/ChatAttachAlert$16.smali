.class Lorg/telegram/ui/Components/ChatAttachAlert$16;
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
.field final synthetic this$0:Lorg/telegram/ui/Components/ChatAttachAlert;


# direct methods
.method public static synthetic $r8$lambda$D6h6UVA78VaiVO7VHecqbCHTdg8(Lorg/telegram/ui/Components/ChatAttachAlert$16;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlert$16;->lambda$onDraw$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;)V
    .locals 0

    .line 2855
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$16;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private synthetic lambda$onDraw$0(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 2874
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$16;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->-$$Nest$fputcaptionEditTextTopOffset(Lorg/telegram/ui/Components/ChatAttachAlert;F)V

    .line 2875
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$16;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->-$$Nest$fgetcaptionContainer(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 2876
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$16;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->-$$Nest$fgetframeLayout2(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 2877
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 2888
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 2889
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$16;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->-$$Nest$fgetcaptionEditTextTopOffset(Lorg/telegram/ui/Components/ChatAttachAlert;)F

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v0, v1, v2}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 2890
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 2891
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 2864
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$16;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->-$$Nest$fgetcaptionContainer(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result p1

    const/4 v0, 0x0

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_0

    goto/16 :goto_0

    .line 2867
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$16;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->-$$Nest$fgetchatActivityEnterViewAnimateFromTop(Lorg/telegram/ui/Components/ChatAttachAlert;)F

    move-result p1

    cmpl-float p1, p1, v0

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$16;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->-$$Nest$fgetchatActivityEnterViewAnimateFromTop(Lorg/telegram/ui/Components/ChatAttachAlert;)F

    move-result p1

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$16;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->-$$Nest$fgetframeLayout2(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$16;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatAttachAlert;->-$$Nest$fgetchatActivityEnterViewAnimateFromTop(Lorg/telegram/ui/Components/ChatAttachAlert;)F

    move-result v2

    add-float/2addr v1, v2

    cmpl-float p1, p1, v1

    if-eqz p1, :cond_2

    .line 2868
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$16;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->-$$Nest$fgettopBackgroundAnimator(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/animation/ValueAnimator;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 2869
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$16;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->-$$Nest$fgettopBackgroundAnimator(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 2871
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$16;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->-$$Nest$fgetchatActivityEnterViewAnimateFromTop(Lorg/telegram/ui/Components/ChatAttachAlert;)F

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$16;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatAttachAlert;->-$$Nest$fgetframeLayout2(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert$16;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatAttachAlert;->-$$Nest$fgetcaptionEditTextTopOffset(Lorg/telegram/ui/Components/ChatAttachAlert;)F

    move-result v3

    add-float/2addr v2, v3

    sub-float/2addr v1, v2

    invoke-static {p1, v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->-$$Nest$fputcaptionEditTextTopOffset(Lorg/telegram/ui/Components/ChatAttachAlert;F)V

    .line 2872
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$16;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->-$$Nest$fgetcaptionEditTextTopOffset(Lorg/telegram/ui/Components/ChatAttachAlert;)F

    move-result v1

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v1, v2, v3

    const/4 v1, 0x1

    aput v0, v2, v1

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->-$$Nest$fputtopBackgroundAnimator(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/animation/ValueAnimator;)V

    .line 2873
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$16;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->-$$Nest$fgettopBackgroundAnimator(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/animation/ValueAnimator;

    move-result-object p1

    new-instance v1, Lorg/telegram/ui/Components/ChatAttachAlert$16$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/ChatAttachAlert$16$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert$16;)V

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2879
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$16;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->-$$Nest$fgettopBackgroundAnimator(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/animation/ValueAnimator;

    move-result-object p1

    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2880
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$16;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->-$$Nest$fgettopBackgroundAnimator(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/animation/ValueAnimator;

    move-result-object p1

    const-wide/16 v1, 0xc8

    invoke-virtual {p1, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 2881
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$16;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->-$$Nest$fgettopBackgroundAnimator(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 2882
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$16;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->-$$Nest$fputchatActivityEnterViewAnimateFromTop(Lorg/telegram/ui/Components/ChatAttachAlert;F)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setAlpha(F)V
    .locals 0

    .line 2858
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 2859
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
