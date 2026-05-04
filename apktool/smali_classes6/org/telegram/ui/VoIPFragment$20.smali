.class Lorg/telegram/ui/VoIPFragment$20;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/VoIPFragment;->showFloatingLayout(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/VoIPFragment;


# direct methods
.method constructor <init>(Lorg/telegram/ui/VoIPFragment;)V
    .locals 0

    .line 2373
    iput-object p1, p0, Lorg/telegram/ui/VoIPFragment$20;->this$0:Lorg/telegram/ui/VoIPFragment;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 2376
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment$20;->this$0:Lorg/telegram/ui/VoIPFragment;

    invoke-static {p1}, Lorg/telegram/ui/VoIPFragment;->-$$Nest$fgetcurrentUserCameraFloatingLayout(Lorg/telegram/ui/VoIPFragment;)Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 2377
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment$20;->this$0:Lorg/telegram/ui/VoIPFragment;

    invoke-static {p1}, Lorg/telegram/ui/VoIPFragment;->-$$Nest$fgetcurrentUserCameraFloatingLayout(Lorg/telegram/ui/VoIPFragment;)Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 2378
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment$20;->this$0:Lorg/telegram/ui/VoIPFragment;

    invoke-static {p1}, Lorg/telegram/ui/VoIPFragment;->-$$Nest$fgetcurrentUserCameraFloatingLayout(Lorg/telegram/ui/VoIPFragment;)Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    .line 2379
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment$20;->this$0:Lorg/telegram/ui/VoIPFragment;

    invoke-static {p1}, Lorg/telegram/ui/VoIPFragment;->-$$Nest$fgetcurrentUserCameraFloatingLayout(Lorg/telegram/ui/VoIPFragment;)Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 2380
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment$20;->this$0:Lorg/telegram/ui/VoIPFragment;

    invoke-static {p1}, Lorg/telegram/ui/VoIPFragment;->-$$Nest$fgetcurrentUserCameraFloatingLayout(Lorg/telegram/ui/VoIPFragment;)Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
