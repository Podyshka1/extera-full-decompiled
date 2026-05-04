.class Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$8;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->startFlipAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;)V
    .locals 0

    .line 1891
    iput-object p1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$8;->this$0:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1894
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 1895
    iget-object p1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$8;->this$0:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    const/4 v0, 0x0

    iput-object v0, p1, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->flipAnimator:Landroid/animation/ValueAnimator;

    .line 1896
    iget-object p1, p1, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->textureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setRotationY(F)V

    .line 1898
    iget-object p1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$8;->this$0:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    iget-boolean v0, p1, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->flipHalfReached:Z

    if-nez v0, :cond_0

    .line 1899
    iget-object p1, p1, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->textureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    iget-object p1, p1, Lorg/telegram/ui/Components/voip/VoIPTextureView;->renderer:Lorg/webrtc/TextureViewRenderer;

    invoke-virtual {p1}, Lorg/webrtc/TextureViewRenderer;->clearImage()V

    :cond_0
    return-void
.end method
