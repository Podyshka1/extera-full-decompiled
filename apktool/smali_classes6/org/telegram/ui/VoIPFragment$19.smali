.class Lorg/telegram/ui/VoIPFragment$19;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/VoIPFragment;->updateViewState()V
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

    .line 2239
    iput-object p1, p0, Lorg/telegram/ui/VoIPFragment$19;->this$0:Lorg/telegram/ui/VoIPFragment;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 2242
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment$19;->this$0:Lorg/telegram/ui/VoIPFragment;

    invoke-static {p1}, Lorg/telegram/ui/VoIPFragment;->-$$Nest$fgetcallingUserMiniFloatingLayout(Lorg/telegram/ui/VoIPFragment;)Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    .line 2243
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment$19;->this$0:Lorg/telegram/ui/VoIPFragment;

    invoke-static {p1}, Lorg/telegram/ui/VoIPFragment;->-$$Nest$fgetcallingUserMiniFloatingLayout(Lorg/telegram/ui/VoIPFragment;)Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method
