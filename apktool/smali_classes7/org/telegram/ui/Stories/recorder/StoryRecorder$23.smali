.class Lorg/telegram/ui/Stories/recorder/StoryRecorder$23;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Stories/recorder/StoryRecorder;->onNavigateStart(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

.field final synthetic val$videoLeftSet:Lorg/telegram/messenger/Utilities$Callback2;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Lorg/telegram/messenger/Utilities$Callback2;)V
    .locals 0

    .line 5274
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$23;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    iput-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$23;->val$videoLeftSet:Lorg/telegram/messenger/Utilities$Callback2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic onAudioLeftChange(F)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate$-CC;->$default$onAudioLeftChange(Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;F)V

    return-void
.end method

.method public synthetic onAudioOffsetChange(J)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate$-CC;->$default$onAudioOffsetChange(Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;J)V

    return-void
.end method

.method public synthetic onAudioRemove()V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate$-CC;->$default$onAudioRemove(Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;)V

    return-void
.end method

.method public synthetic onAudioRightChange(F)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate$-CC;->$default$onAudioRightChange(Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;F)V

    return-void
.end method

.method public synthetic onAudioVolumeChange(F)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate$-CC;->$default$onAudioVolumeChange(Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;F)V

    return-void
.end method

.method public synthetic onProgressChange(JZ)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate$-CC;->$default$onProgressChange(Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;JZ)V

    return-void
.end method

.method public synthetic onProgressDragChange(Z)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate$-CC;->$default$onProgressDragChange(Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;Z)V

    return-void
.end method

.method public synthetic onRoundLeftChange(F)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate$-CC;->$default$onRoundLeftChange(Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;F)V

    return-void
.end method

.method public synthetic onRoundOffsetChange(J)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate$-CC;->$default$onRoundOffsetChange(Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;J)V

    return-void
.end method

.method public synthetic onRoundRemove()V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate$-CC;->$default$onRoundRemove(Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;)V

    return-void
.end method

.method public synthetic onRoundRightChange(F)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate$-CC;->$default$onRoundRightChange(Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;F)V

    return-void
.end method

.method public synthetic onRoundSelectChange(Z)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate$-CC;->$default$onRoundSelectChange(Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;Z)V

    return-void
.end method

.method public synthetic onRoundVolumeChange(F)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate$-CC;->$default$onRoundVolumeChange(Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;F)V

    return-void
.end method

.method public synthetic onVideoLeftChange(IF)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate$-CC;->$default$onVideoLeftChange(Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;IF)V

    return-void
.end method

.method public onVideoLeftChange(ZF)V
    .locals 1

    .line 5277
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$23;->val$videoLeftSet:Lorg/telegram/messenger/Utilities$Callback2;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-interface {p1, v0, p2}, Lorg/telegram/messenger/Utilities$Callback2;->run(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic onVideoOffsetChange(IJ)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate$-CC;->$default$onVideoOffsetChange(Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;IJ)V

    return-void
.end method

.method public synthetic onVideoRightChange(IF)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate$-CC;->$default$onVideoRightChange(Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;IF)V

    return-void
.end method

.method public synthetic onVideoRightChange(ZF)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate$-CC;->$default$onVideoRightChange(Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;ZF)V

    return-void
.end method

.method public synthetic onVideoSelected(I)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate$-CC;->$default$onVideoSelected(Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;I)V

    return-void
.end method

.method public synthetic onVideoVolumeChange(F)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate$-CC;->$default$onVideoVolumeChange(Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;F)V

    return-void
.end method

.method public synthetic onVideoVolumeChange(IF)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate$-CC;->$default$onVideoVolumeChange(Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;IF)V

    return-void
.end method
