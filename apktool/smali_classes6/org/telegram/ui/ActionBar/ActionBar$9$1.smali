.class Lorg/telegram/ui/ActionBar/ActionBar$9$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ActionBar/ActionBar$9;->createAnimator(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ActionBar/ActionBar$9;

.field final synthetic val$startValues:Landroid/transition/TransitionValues;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ActionBar/ActionBar$9;Landroid/transition/TransitionValues;)V
    .locals 0

    .line 2182
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBar$9$1;->this$1:Lorg/telegram/ui/ActionBar/ActionBar$9;

    iput-object p2, p0, Lorg/telegram/ui/ActionBar/ActionBar$9$1;->val$startValues:Landroid/transition/TransitionValues;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 2192
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 2193
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBar$9$1;->val$startValues:Landroid/transition/TransitionValues;

    iget-object p1, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    .line 2186
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 2187
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBar$9$1;->val$startValues:Landroid/transition/TransitionValues;

    iget-object p1, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    return-void
.end method
