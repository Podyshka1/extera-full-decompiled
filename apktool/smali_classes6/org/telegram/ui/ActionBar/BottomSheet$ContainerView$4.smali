.class Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->onLayout(ZIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;)V
    .locals 0

    .line 674
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView$4;->this$1:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 677
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView$4;->this$1:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    iget-object p1, p1, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget-object p1, p1, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 678
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView$4;->this$1:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    iget-object p1, p1, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->onContainerViewTranslation()V

    .line 679
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView$4;->this$1:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    iget-object p1, p1, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget-object v0, p1, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->onSmoothContainerViewLayout(F)V

    .line 680
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView$4;->this$1:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method
