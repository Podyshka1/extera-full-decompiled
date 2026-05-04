.class public final Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCard$initializePlayer$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/Player$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCard;->initializePlayer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCard;


# direct methods
.method constructor <init>(Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCard;)V
    .locals 0

    iput-object p1, p0, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCard$initializePlayer$1$1;->this$0:Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCard;

    .line 379
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic onAudioAttributesChanged(Lcom/google/android/exoplayer2/audio/AudioAttributes;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onAudioAttributesChanged(Lcom/google/android/exoplayer2/Player$Listener;Lcom/google/android/exoplayer2/audio/AudioAttributes;)V

    return-void
.end method

.method public synthetic onAvailableCommandsChanged(Lcom/google/android/exoplayer2/Player$Commands;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onAvailableCommandsChanged(Lcom/google/android/exoplayer2/Player$Listener;Lcom/google/android/exoplayer2/Player$Commands;)V

    return-void
.end method

.method public synthetic onCues(Lcom/google/android/exoplayer2/text/CueGroup;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onCues(Lcom/google/android/exoplayer2/Player$Listener;Lcom/google/android/exoplayer2/text/CueGroup;)V

    return-void
.end method

.method public synthetic onCues(Ljava/util/List;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onCues(Lcom/google/android/exoplayer2/Player$Listener;Ljava/util/List;)V

    return-void
.end method

.method public synthetic onDeviceInfoChanged(Lcom/google/android/exoplayer2/DeviceInfo;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onDeviceInfoChanged(Lcom/google/android/exoplayer2/Player$Listener;Lcom/google/android/exoplayer2/DeviceInfo;)V

    return-void
.end method

.method public synthetic onDeviceVolumeChanged(IZ)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onDeviceVolumeChanged(Lcom/google/android/exoplayer2/Player$Listener;IZ)V

    return-void
.end method

.method public synthetic onEvents(Lcom/google/android/exoplayer2/Player;Lcom/google/android/exoplayer2/Player$Events;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onEvents(Lcom/google/android/exoplayer2/Player$Listener;Lcom/google/android/exoplayer2/Player;Lcom/google/android/exoplayer2/Player$Events;)V

    return-void
.end method

.method public synthetic onIsLoadingChanged(Z)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onIsLoadingChanged(Lcom/google/android/exoplayer2/Player$Listener;Z)V

    return-void
.end method

.method public onIsPlayingChanged(Z)V
    .locals 1

    .line 381
    iget-object v0, p0, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCard$initializePlayer$1$1;->this$0:Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCard;

    invoke-static {v0, p1}, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCard;->access$setPlaying$p(Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCard;Z)V

    .line 382
    iget-object v0, p0, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCard$initializePlayer$1$1;->this$0:Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCard;

    invoke-static {v0}, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCard;->access$updatePlayPauseButton(Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCard;)V

    if-nez p1, :cond_0

    .line 384
    iget-object p1, p0, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCard$initializePlayer$1$1;->this$0:Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCard;

    invoke-static {p1}, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCard;->access$abandonAudioFocus(Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCard;)V

    :cond_0
    return-void
.end method

.method public synthetic onLoadingChanged(Z)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onLoadingChanged(Lcom/google/android/exoplayer2/Player$Listener;Z)V

    return-void
.end method

.method public synthetic onMediaItemTransition(Lcom/google/android/exoplayer2/MediaItem;I)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onMediaItemTransition(Lcom/google/android/exoplayer2/Player$Listener;Lcom/google/android/exoplayer2/MediaItem;I)V

    return-void
.end method

.method public synthetic onMediaMetadataChanged(Lcom/google/android/exoplayer2/MediaMetadata;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onMediaMetadataChanged(Lcom/google/android/exoplayer2/Player$Listener;Lcom/google/android/exoplayer2/MediaMetadata;)V

    return-void
.end method

.method public synthetic onMetadata(Lcom/google/android/exoplayer2/metadata/Metadata;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onMetadata(Lcom/google/android/exoplayer2/Player$Listener;Lcom/google/android/exoplayer2/metadata/Metadata;)V

    return-void
.end method

.method public synthetic onPlayWhenReadyChanged(ZI)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onPlayWhenReadyChanged(Lcom/google/android/exoplayer2/Player$Listener;ZI)V

    return-void
.end method

.method public synthetic onPlaybackParametersChanged(Lcom/google/android/exoplayer2/PlaybackParameters;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onPlaybackParametersChanged(Lcom/google/android/exoplayer2/Player$Listener;Lcom/google/android/exoplayer2/PlaybackParameters;)V

    return-void
.end method

.method public onPlaybackStateChanged(I)V
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 390
    iget-object p1, p0, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCard$initializePlayer$1$1;->this$0:Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCard;

    invoke-static {p1}, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCard;->access$abandonAudioFocus(Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCard;)V

    :cond_0
    return-void
.end method

.method public synthetic onPlaybackSuppressionReasonChanged(I)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onPlaybackSuppressionReasonChanged(Lcom/google/android/exoplayer2/Player$Listener;I)V

    return-void
.end method

.method public synthetic onPlayerError(Lcom/google/android/exoplayer2/PlaybackException;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onPlayerError(Lcom/google/android/exoplayer2/Player$Listener;Lcom/google/android/exoplayer2/PlaybackException;)V

    return-void
.end method

.method public synthetic onPlayerErrorChanged(Lcom/google/android/exoplayer2/PlaybackException;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onPlayerErrorChanged(Lcom/google/android/exoplayer2/Player$Listener;Lcom/google/android/exoplayer2/PlaybackException;)V

    return-void
.end method

.method public synthetic onPlayerStateChanged(ZI)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onPlayerStateChanged(Lcom/google/android/exoplayer2/Player$Listener;ZI)V

    return-void
.end method

.method public synthetic onPositionDiscontinuity(I)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onPositionDiscontinuity(Lcom/google/android/exoplayer2/Player$Listener;I)V

    return-void
.end method

.method public synthetic onPositionDiscontinuity(Lcom/google/android/exoplayer2/Player$PositionInfo;Lcom/google/android/exoplayer2/Player$PositionInfo;I)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onPositionDiscontinuity(Lcom/google/android/exoplayer2/Player$Listener;Lcom/google/android/exoplayer2/Player$PositionInfo;Lcom/google/android/exoplayer2/Player$PositionInfo;I)V

    return-void
.end method

.method public synthetic onRenderedFirstFrame()V
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onRenderedFirstFrame(Lcom/google/android/exoplayer2/Player$Listener;)V

    return-void
.end method

.method public synthetic onRepeatModeChanged(I)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onRepeatModeChanged(Lcom/google/android/exoplayer2/Player$Listener;I)V

    return-void
.end method

.method public synthetic onSeekProcessed()V
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onSeekProcessed(Lcom/google/android/exoplayer2/Player$Listener;)V

    return-void
.end method

.method public synthetic onShuffleModeEnabledChanged(Z)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onShuffleModeEnabledChanged(Lcom/google/android/exoplayer2/Player$Listener;Z)V

    return-void
.end method

.method public synthetic onSkipSilenceEnabledChanged(Z)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onSkipSilenceEnabledChanged(Lcom/google/android/exoplayer2/Player$Listener;Z)V

    return-void
.end method

.method public synthetic onSurfaceSizeChanged(II)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onSurfaceSizeChanged(Lcom/google/android/exoplayer2/Player$Listener;II)V

    return-void
.end method

.method public synthetic onTimelineChanged(Lcom/google/android/exoplayer2/Timeline;I)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onTimelineChanged(Lcom/google/android/exoplayer2/Player$Listener;Lcom/google/android/exoplayer2/Timeline;I)V

    return-void
.end method

.method public synthetic onTracksChanged(Lcom/google/android/exoplayer2/Tracks;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onTracksChanged(Lcom/google/android/exoplayer2/Player$Listener;Lcom/google/android/exoplayer2/Tracks;)V

    return-void
.end method

.method public synthetic onVideoSizeChanged(Lcom/google/android/exoplayer2/video/VideoSize;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onVideoSizeChanged(Lcom/google/android/exoplayer2/Player$Listener;Lcom/google/android/exoplayer2/video/VideoSize;)V

    return-void
.end method

.method public synthetic onVolumeChanged(F)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onVolumeChanged(Lcom/google/android/exoplayer2/Player$Listener;F)V

    return-void
.end method
