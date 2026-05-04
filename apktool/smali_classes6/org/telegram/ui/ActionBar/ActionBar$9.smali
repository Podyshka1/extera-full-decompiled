.class Lorg/telegram/ui/ActionBar/ActionBar$9;
.super Landroid/transition/ChangeBounds;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ActionBar/ActionBar;->beginDelayedTransition()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ActionBar/ActionBar;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ActionBar/ActionBar;)V
    .locals 0

    .line 2150
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBar$9;->this$0:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-direct {p0}, Landroid/transition/ChangeBounds;-><init>()V

    return-void
.end method


# virtual methods
.method public captureEndValues(Landroid/transition/TransitionValues;)V
    .locals 2

    .line 2160
    invoke-super {p0, p1}, Landroid/transition/ChangeBounds;->captureEndValues(Landroid/transition/TransitionValues;)V

    .line 2161
    iget-object v0, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    instance-of v1, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-eqz v1, :cond_0

    .line 2162
    check-cast v0, Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    .line 2163
    iget-object p1, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v1, "text_size"

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public captureStartValues(Landroid/transition/TransitionValues;)V
    .locals 2

    .line 2152
    invoke-super {p0, p1}, Landroid/transition/ChangeBounds;->captureStartValues(Landroid/transition/TransitionValues;)V

    .line 2153
    iget-object v0, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    instance-of v1, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-eqz v1, :cond_0

    .line 2154
    check-cast v0, Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    .line 2155
    iget-object p1, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v1, "text_size"

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public createAnimator(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 5

    if-eqz p2, :cond_1

    .line 2169
    iget-object v0, p2, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    instance-of v0, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-eqz v0, :cond_1

    .line 2170
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p3, :cond_0

    .line 2172
    invoke-super {p0, p1, p2, p3}, Landroid/transition/ChangeBounds;->createAnimator(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;

    move-result-object p1

    .line 2173
    iget-object v3, p2, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v4, "text_size"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    iget-object p3, p3, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {p3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p3

    div-float/2addr v3, p3

    .line 2174
    iget-object p3, p2, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {p3, v3}, Landroid/view/View;->setScaleX(F)V

    .line 2175
    iget-object p3, p2, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {p3, v3}, Landroid/view/View;->setScaleY(F)V

    if-eqz p1, :cond_0

    .line 2177
    new-array p3, v2, [Landroid/animation/Animator;

    aput-object p1, p3, v1

    invoke-virtual {v0, p3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 2180
    :cond_0
    iget-object p1, p2, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    sget-object p3, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v3, v2, [F

    const/high16 v4, 0x3f800000    # 1.0f

    aput v4, v3, v1

    invoke-static {p1, p3, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    new-array p3, v2, [Landroid/animation/Animator;

    aput-object p1, p3, v1

    invoke-virtual {v0, p3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 2181
    iget-object p1, p2, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    sget-object p3, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v3, v2, [F

    aput v4, v3, v1

    invoke-static {p1, p3, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    new-array p3, v2, [Landroid/animation/Animator;

    aput-object p1, p3, v1

    invoke-virtual {v0, p3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 2182
    new-instance p1, Lorg/telegram/ui/ActionBar/ActionBar$9$1;

    invoke-direct {p1, p0, p2}, Lorg/telegram/ui/ActionBar/ActionBar$9$1;-><init>(Lorg/telegram/ui/ActionBar/ActionBar$9;Landroid/transition/TransitionValues;)V

    invoke-virtual {v0, p1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v0

    .line 2198
    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroid/transition/ChangeBounds;->createAnimator(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;

    move-result-object p1

    return-object p1
.end method
