.class Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/webrtc/RendererCommon$RendererEvents;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->pipCreatePictureInPictureView()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;)V
    .locals 0

    .line 784
    iput-object p1, p0, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay$11;->this$0:Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFirstFrameRendered()V
    .locals 2

    .line 787
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay$11;->this$0:Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;

    invoke-static {v0}, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->-$$Nest$fgetfirstFrameCallback(Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 788
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay$11;->this$0:Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;

    invoke-static {v0}, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->-$$Nest$fgetfirstFrameCallback(Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 789
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay$11;->this$0:Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->-$$Nest$fputfirstFrameCallback(Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public onFrameResolutionChanged(III)V
    .locals 0

    return-void
.end method
