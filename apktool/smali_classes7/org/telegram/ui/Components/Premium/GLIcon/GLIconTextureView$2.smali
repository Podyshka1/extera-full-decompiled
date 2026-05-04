.class Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;)V
    .locals 0

    .line 579
    iput-object p1, p0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView$2;->this$0:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 582
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView$2;->this$0:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    iget-object v0, v0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->animatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView$2;->this$0:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    iget-object v0, v0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->backAnimation:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 583
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView$2;->this$0:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    invoke-static {v0}, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->-$$Nest$fgetidleDelay(Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->scheduleIdleAnimation(J)V

    return-void

    .line 585
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView$2;->this$0:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->startIdleAnimation()V

    return-void
.end method
