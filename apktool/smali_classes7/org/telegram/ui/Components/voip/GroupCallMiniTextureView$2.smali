.class Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/webrtc/RendererCommon$RendererEvents;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;-><init>(Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;Ljava/util/ArrayList;Lorg/telegram/messenger/ChatObject$Call;Lorg/telegram/ui/GroupCallActivity;)V
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

    .line 491
    iput-object p1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$2;->this$0:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFirstFrameRendered()V
    .locals 2

    const/4 v0, 0x0

    .line 494
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$2;->this$0:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    iget-object v1, v1, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->onFirstFrameRunnables:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 495
    iget-object v1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$2;->this$0:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    iget-object v1, v1, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->onFirstFrameRunnables:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 496
    iget-object v1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$2;->this$0:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    iget-object v1, v1, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->onFirstFrameRunnables:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 498
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$2;->this$0:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    iget-object v0, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->onFirstFrameRunnables:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public onFrameResolutionChanged(III)V
    .locals 0

    return-void
.end method
