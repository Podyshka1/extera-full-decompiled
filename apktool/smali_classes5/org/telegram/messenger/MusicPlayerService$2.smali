.class Lorg/telegram/messenger/MusicPlayerService$2;
.super Landroid/media/session/MediaSession$Callback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MusicPlayerService;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/MusicPlayerService;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MusicPlayerService;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lorg/telegram/messenger/MusicPlayerService$2;->this$0:Lorg/telegram/messenger/MusicPlayerService;

    invoke-direct {p0}, Landroid/media/session/MediaSession$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPause()V
    .locals 2

    .line 126
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MediaController;->pauseMessage(Lorg/telegram/messenger/MessageObject;)Z

    return-void
.end method

.method public onPlay()V
    .locals 2

    .line 121
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MediaController;->playMessage(Lorg/telegram/messenger/MessageObject;)Z

    return-void
.end method

.method public onSeekTo(J)V
    .locals 5

    .line 147
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 149
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    div-long v2, p1, v2

    long-to-float v2, v2

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getDuration()D

    move-result-wide v3

    double-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {v1, v0, v2}, Lorg/telegram/messenger/MediaController;->seekToProgress(Lorg/telegram/messenger/MessageObject;F)Z

    .line 150
    iget-object v0, p0, Lorg/telegram/messenger/MusicPlayerService$2;->this$0:Lorg/telegram/messenger/MusicPlayerService;

    invoke-static {v0, p1, p2}, Lorg/telegram/messenger/MusicPlayerService;->-$$Nest$mupdatePlaybackState(Lorg/telegram/messenger/MusicPlayerService;J)V

    :cond_0
    return-void
.end method

.method public onSkipToNext()V
    .locals 1

    .line 131
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 132
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isMusic()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaController;->playNextMessage()V

    :cond_0
    return-void
.end method

.method public onSkipToPrevious()V
    .locals 1

    .line 139
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 140
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isMusic()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaController;->playPreviousMessage()V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 0

    return-void
.end method
