.class Lorg/telegram/ui/SecretVoicePlayer$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/Components/VideoPlayer$VideoPlayerDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/SecretVoicePlayer;->setCell(Lorg/telegram/ui/Cells/ChatMessageCell;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/SecretVoicePlayer;


# direct methods
.method public static synthetic $r8$lambda$ttNcdUw39SR0DQPey2AHx7o4Iw4(Lorg/telegram/ui/SecretVoicePlayer$6;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/SecretVoicePlayer$6;->lambda$onRenderedFirstFrame$0()V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/SecretVoicePlayer;)V
    .locals 0

    .line 588
    iput-object p1, p0, Lorg/telegram/ui/SecretVoicePlayer$6;->this$0:Lorg/telegram/ui/SecretVoicePlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onRenderedFirstFrame$0()V
    .locals 2

    .line 612
    iget-object v0, p0, Lorg/telegram/ui/SecretVoicePlayer$6;->this$0:Lorg/telegram/ui/SecretVoicePlayer;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/telegram/ui/SecretVoicePlayer;->-$$Nest$fputrenderedFirstFrame(Lorg/telegram/ui/SecretVoicePlayer;Z)V

    .line 613
    iget-object v0, p0, Lorg/telegram/ui/SecretVoicePlayer$6;->this$0:Lorg/telegram/ui/SecretVoicePlayer;

    invoke-static {v0}, Lorg/telegram/ui/SecretVoicePlayer;->-$$Nest$fgetmyCell(Lorg/telegram/ui/SecretVoicePlayer;)Lorg/telegram/ui/Cells/ChatMessageCell;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->invalidate()V

    return-void
.end method


# virtual methods
.method public onError(Lorg/telegram/ui/Components/VideoPlayer;Ljava/lang/Exception;)V
    .locals 0

    return-void
.end method

.method public onRenderedFirstFrame()V
    .locals 1

    .line 611
    new-instance v0, Lorg/telegram/ui/SecretVoicePlayer$6$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/ui/SecretVoicePlayer$6$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/SecretVoicePlayer$6;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public synthetic onRenderedFirstFrame(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Components/VideoPlayer$VideoPlayerDelegate$-CC;->$default$onRenderedFirstFrame(Lorg/telegram/ui/Components/VideoPlayer$VideoPlayerDelegate;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V

    return-void
.end method

.method public synthetic onSeekFinished(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Components/VideoPlayer$VideoPlayerDelegate$-CC;->$default$onSeekFinished(Lorg/telegram/ui/Components/VideoPlayer$VideoPlayerDelegate;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V

    return-void
.end method

.method public synthetic onSeekStarted(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Components/VideoPlayer$VideoPlayerDelegate$-CC;->$default$onSeekStarted(Lorg/telegram/ui/Components/VideoPlayer$VideoPlayerDelegate;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V

    return-void
.end method

.method public onStateChanged(ZI)V
    .locals 2

    const/4 p1, 0x4

    if-ne p2, p1, :cond_0

    .line 592
    iget-object p1, p0, Lorg/telegram/ui/SecretVoicePlayer$6;->this$0:Lorg/telegram/ui/SecretVoicePlayer;

    invoke-virtual {p1}, Lorg/telegram/ui/SecretVoicePlayer;->dismiss()V

    return-void

    .line 594
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/SecretVoicePlayer$6;->this$0:Lorg/telegram/ui/SecretVoicePlayer;

    invoke-static {p1}, Lorg/telegram/ui/SecretVoicePlayer;->-$$Nest$fgetcheckTimeRunnable(Lorg/telegram/ui/SecretVoicePlayer;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 595
    iget-object p1, p0, Lorg/telegram/ui/SecretVoicePlayer$6;->this$0:Lorg/telegram/ui/SecretVoicePlayer;

    invoke-static {p1}, Lorg/telegram/ui/SecretVoicePlayer;->-$$Nest$fgetcheckTimeRunnable(Lorg/telegram/ui/SecretVoicePlayer;)Ljava/lang/Runnable;

    move-result-object p1

    const-wide/16 v0, 0x10

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public onSurfaceDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method

.method public onVideoSizeChanged(IIIF)V
    .locals 0

    return-void
.end method
