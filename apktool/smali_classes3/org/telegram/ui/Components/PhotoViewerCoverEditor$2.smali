.class Lorg/telegram/ui/Components/PhotoViewerCoverEditor$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/PhotoViewerCoverEditor;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/PhotoViewer;Lorg/telegram/ui/Components/BlurringShader$BlurManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private betterSeek:Ljava/lang/Runnable;

.field final synthetic this$0:Lorg/telegram/ui/Components/PhotoViewerCoverEditor;


# direct methods
.method public static synthetic $r8$lambda$pp9rz38SpA1TL08o4rSi_XOmI9Y(Lorg/telegram/ui/Components/PhotoViewerCoverEditor$2;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/PhotoViewerCoverEditor$2;->lambda$$0()V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/Components/PhotoViewerCoverEditor;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lorg/telegram/ui/Components/PhotoViewerCoverEditor$2;->this$0:Lorg/telegram/ui/Components/PhotoViewerCoverEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance p1, Lorg/telegram/ui/Components/PhotoViewerCoverEditor$2$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/PhotoViewerCoverEditor$2$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/PhotoViewerCoverEditor$2;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/PhotoViewerCoverEditor$2;->betterSeek:Ljava/lang/Runnable;

    return-void
.end method

.method private synthetic lambda$$0()V
    .locals 4

    .line 77
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerCoverEditor$2;->this$0:Lorg/telegram/ui/Components/PhotoViewerCoverEditor;

    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoViewerCoverEditor;->-$$Nest$fgetvideoPlayer(Lorg/telegram/ui/Components/PhotoViewerCoverEditor;)Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoViewerCoverEditor$2;->this$0:Lorg/telegram/ui/Components/PhotoViewerCoverEditor;

    invoke-static {v1}, Lorg/telegram/ui/Components/PhotoViewerCoverEditor;->-$$Nest$fgettime(Lorg/telegram/ui/Components/PhotoViewerCoverEditor;)J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Components/VideoPlayer;->seekTo(JZ)V

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
    .locals 5

    .line 80
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerCoverEditor$2;->this$0:Lorg/telegram/ui/Components/PhotoViewerCoverEditor;

    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoViewerCoverEditor;->-$$Nest$fgetvideoPlayer(Lorg/telegram/ui/Components/PhotoViewerCoverEditor;)Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 81
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerCoverEditor$2;->this$0:Lorg/telegram/ui/Components/PhotoViewerCoverEditor;

    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoViewerCoverEditor;->-$$Nest$fgetvideoPlayer(Lorg/telegram/ui/Components/PhotoViewerCoverEditor;)Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoPlayer;->getDuration()J

    move-result-wide v0

    const-wide/16 v2, 0x3c

    .line 82
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    long-to-float v2, v2

    const v3, 0x40333333    # 2.8f

    div-float/2addr v3, v2

    .line 83
    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoViewerCoverEditor$2;->this$0:Lorg/telegram/ui/Components/PhotoViewerCoverEditor;

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v4, v3

    div-float v4, p2, v4

    mul-float/2addr v3, v4

    add-float/2addr p2, v3

    long-to-float v0, v0

    mul-float/2addr p2, v0

    float-to-long v0, p2

    invoke-static {v2, v0, v1}, Lorg/telegram/ui/Components/PhotoViewerCoverEditor;->-$$Nest$fputtime(Lorg/telegram/ui/Components/PhotoViewerCoverEditor;J)V

    .line 84
    iget-object p2, p0, Lorg/telegram/ui/Components/PhotoViewerCoverEditor$2;->this$0:Lorg/telegram/ui/Components/PhotoViewerCoverEditor;

    invoke-static {p2}, Lorg/telegram/ui/Components/PhotoViewerCoverEditor;->-$$Nest$fgetvideoPlayer(Lorg/telegram/ui/Components/PhotoViewerCoverEditor;)Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object p2

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerCoverEditor$2;->this$0:Lorg/telegram/ui/Components/PhotoViewerCoverEditor;

    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoViewerCoverEditor;->-$$Nest$fgettime(Lorg/telegram/ui/Components/PhotoViewerCoverEditor;)J

    move-result-wide v0

    xor-int/lit8 v2, p1, 0x1

    invoke-virtual {p2, v0, v1, v2}, Lorg/telegram/ui/Components/VideoPlayer;->seekTo(JZ)V

    if-nez p1, :cond_1

    .line 86
    iget-object p1, p0, Lorg/telegram/ui/Components/PhotoViewerCoverEditor$2;->betterSeek:Ljava/lang/Runnable;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 87
    iget-object p1, p0, Lorg/telegram/ui/Components/PhotoViewerCoverEditor$2;->betterSeek:Ljava/lang/Runnable;

    const-wide/16 v0, 0x78

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_1
    :goto_0
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
