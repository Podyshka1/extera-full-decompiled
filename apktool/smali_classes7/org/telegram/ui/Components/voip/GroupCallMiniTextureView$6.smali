.class Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->updateAttachState(Z)V
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

    .line 1173
    iput-object p1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$6;->this$0:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1176
    iget-object p1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$6;->this$0:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    iget-boolean v0, p1, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->hasVideo:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    iput v0, p1, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->progressToNoVideoStub:F

    .line 1177
    invoke-static {p1}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->-$$Nest$fgetnoVideoStubLayout(Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;)Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$6;->this$0:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    iget v0, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->progressToNoVideoStub:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 1178
    iget-object p1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$6;->this$0:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    invoke-static {p1}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->-$$Nest$fgetnoVideoStubLayout(Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;)Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$6;->this$0:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    iget-boolean v0, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->hasVideo:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x8

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1179
    iget-object p1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$6;->this$0:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    iget-object p1, p1, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->textureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method
