.class Lorg/telegram/ui/Stars/StarGiftSheet$TopView$7;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->animateSwitch()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Stars/StarGiftSheet$TopView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Stars/StarGiftSheet$TopView;)V
    .locals 0

    .line 2798
    iput-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView$7;->this$0:Lorg/telegram/ui/Stars/StarGiftSheet$TopView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 2801
    iget-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView$7;->this$0:Lorg/telegram/ui/Stars/StarGiftSheet$TopView;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, v0}, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->-$$Nest$fputswitchScale(Lorg/telegram/ui/Stars/StarGiftSheet$TopView;F)V

    .line 2802
    iget-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView$7;->this$0:Lorg/telegram/ui/Stars/StarGiftSheet$TopView;

    iget-object v0, p1, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->imageLayout:Landroid/widget/FrameLayout;

    invoke-static {p1}, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->-$$Nest$fgetswitchScale(Lorg/telegram/ui/Stars/StarGiftSheet$TopView;)F

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setScaleX(F)V

    .line 2803
    iget-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView$7;->this$0:Lorg/telegram/ui/Stars/StarGiftSheet$TopView;

    iget-object v0, p1, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->imageLayout:Landroid/widget/FrameLayout;

    invoke-static {p1}, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->-$$Nest$fgetswitchScale(Lorg/telegram/ui/Stars/StarGiftSheet$TopView;)F

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setScaleY(F)V

    .line 2804
    iget-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView$7;->this$0:Lorg/telegram/ui/Stars/StarGiftSheet$TopView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method
