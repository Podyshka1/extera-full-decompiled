.class public interface abstract Lcom/google/android/exoplayer2/analytics/AnalyticsListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;,
        Lcom/google/android/exoplayer2/analytics/AnalyticsListener$Events;
    }
.end annotation


# virtual methods
.method public abstract onAudioAttributesChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/audio/AudioAttributes;)V
.end method

.method public abstract onAudioCodecError(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/Exception;)V
.end method

.method public abstract onAudioDecoderInitialized(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/String;J)V
.end method

.method public abstract onAudioDecoderInitialized(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/String;JJ)V
.end method

.method public abstract onAudioDecoderReleased(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/String;)V
.end method

.method public abstract onAudioDisabled(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V
.end method

.method public abstract onAudioEnabled(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V
.end method

.method public abstract onAudioInputFormatChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/Format;)V
.end method

.method public abstract onAudioInputFormatChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;)V
.end method

.method public abstract onAudioPositionAdvancing(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;J)V
.end method

.method public abstract onAudioSinkError(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/Exception;)V
.end method

.method public abstract onAudioUnderrun(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;IJJ)V
.end method

.method public abstract onAvailableCommandsChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/Player$Commands;)V
.end method

.method public abstract onBandwidthEstimate(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;IJJ)V
.end method

.method public abstract onCues(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/text/CueGroup;)V
.end method

.method public abstract onCues(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/util/List;)V
.end method

.method public abstract onDecoderDisabled(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplayer2/decoder/DecoderCounters;)V
.end method

.method public abstract onDecoderEnabled(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplayer2/decoder/DecoderCounters;)V
.end method

.method public abstract onDecoderInitialized(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ILjava/lang/String;J)V
.end method

.method public abstract onDecoderInputFormatChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplayer2/Format;)V
.end method

.method public abstract onDeviceInfoChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/DeviceInfo;)V
.end method

.method public abstract onDeviceVolumeChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;IZ)V
.end method

.method public abstract onDownstreamFormatChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/source/MediaLoadData;)V
.end method

.method public abstract onDrmKeysLoaded(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V
.end method

.method public abstract onDrmKeysRemoved(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V
.end method

.method public abstract onDrmKeysRestored(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V
.end method

.method public abstract onDrmSessionAcquired(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V
.end method

.method public abstract onDrmSessionAcquired(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;I)V
.end method

.method public abstract onDrmSessionManagerError(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/Exception;)V
.end method

.method public abstract onDrmSessionReleased(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V
.end method

.method public abstract onDroppedVideoFrames(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;IJ)V
.end method

.method public abstract onEvents(Lcom/google/android/exoplayer2/Player;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$Events;)V
.end method

.method public abstract onIsLoadingChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Z)V
.end method

.method public abstract onIsPlayingChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Z)V
.end method

.method public abstract onLoadCanceled(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/source/LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaLoadData;)V
.end method

.method public abstract onLoadCompleted(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/source/LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaLoadData;)V
.end method

.method public abstract onLoadError(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/source/LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaLoadData;Ljava/io/IOException;Z)V
.end method

.method public abstract onLoadStarted(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/source/LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaLoadData;)V
.end method

.method public abstract onLoadingChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Z)V
.end method

.method public abstract onMediaItemTransition(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/MediaItem;I)V
.end method

.method public abstract onMediaMetadataChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/MediaMetadata;)V
.end method

.method public abstract onMetadata(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/metadata/Metadata;)V
.end method

.method public abstract onPlayWhenReadyChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ZI)V
.end method

.method public abstract onPlaybackParametersChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/PlaybackParameters;)V
.end method

.method public abstract onPlaybackStateChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;I)V
.end method

.method public abstract onPlaybackSuppressionReasonChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;I)V
.end method

.method public abstract onPlayerError(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/PlaybackException;)V
.end method

.method public abstract onPlayerErrorChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/PlaybackException;)V
.end method

.method public abstract onPlayerReleased(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V
.end method

.method public abstract onPlayerStateChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ZI)V
.end method

.method public abstract onPositionDiscontinuity(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;I)V
.end method

.method public abstract onPositionDiscontinuity(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/Player$PositionInfo;Lcom/google/android/exoplayer2/Player$PositionInfo;I)V
.end method

.method public abstract onRenderedFirstFrame(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/Object;J)V
.end method

.method public abstract onRepeatModeChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;I)V
.end method

.method public abstract onSeekProcessed(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V
.end method

.method public abstract onSeekStarted(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V
.end method

.method public abstract onShuffleModeChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Z)V
.end method

.method public abstract onSkipSilenceEnabledChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Z)V
.end method

.method public abstract onSurfaceSizeChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;II)V
.end method

.method public abstract onTimelineChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;I)V
.end method

.method public abstract onTracksChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/Tracks;)V
.end method

.method public abstract onUpstreamDiscarded(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/source/MediaLoadData;)V
.end method

.method public abstract onVideoCodecError(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/Exception;)V
.end method

.method public abstract onVideoDecoderInitialized(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/String;J)V
.end method

.method public abstract onVideoDecoderInitialized(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/String;JJ)V
.end method

.method public abstract onVideoDecoderReleased(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/String;)V
.end method

.method public abstract onVideoDisabled(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V
.end method

.method public abstract onVideoEnabled(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V
.end method

.method public abstract onVideoFrameProcessingOffset(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;JI)V
.end method

.method public abstract onVideoInputFormatChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/Format;)V
.end method

.method public abstract onVideoInputFormatChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;)V
.end method

.method public abstract onVideoSizeChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;IIIF)V
.end method

.method public abstract onVideoSizeChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/video/VideoSize;)V
.end method

.method public abstract onVolumeChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;F)V
.end method
