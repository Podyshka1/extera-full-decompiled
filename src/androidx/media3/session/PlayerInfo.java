package androidx.media3.session;

import android.os.Bundle;
import androidx.media3.common.AudioAttributes;
import androidx.media3.common.DeviceInfo;
import androidx.media3.common.MediaMetadata;
import androidx.media3.common.PlaybackException;
import androidx.media3.common.PlaybackParameters;
import androidx.media3.common.Player;
import androidx.media3.common.Timeline;
import androidx.media3.common.TrackSelectionParameters;
import androidx.media3.common.Tracks;
import androidx.media3.common.VideoSize;
import androidx.media3.common.text.CueGroup;
import androidx.media3.common.util.Util;
import com.google.common.base.Preconditions;
import java.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
class PlayerInfo {
    public static final PlayerInfo DEFAULT;
    private static final String FIELD_AUDIO_ATTRIBUTES;
    private static final String FIELD_AUDIO_SESSION_ID;
    private static final String FIELD_CUE_GROUP;
    private static final String FIELD_CURRENT_TRACKS;
    private static final String FIELD_DEVICE_INFO;
    private static final String FIELD_DEVICE_MUTED;
    private static final String FIELD_DEVICE_VOLUME;
    private static final String FIELD_DISCONTINUITY_REASON;
    private static final String FIELD_IN_PROCESS_BINDER;
    private static final String FIELD_IS_LOADING;
    private static final String FIELD_IS_PLAYING;
    static final String FIELD_MAX_SEEK_TO_PREVIOUS_POSITION_MS;
    private static final String FIELD_MEDIA_ITEM_TRANSITION_REASON;
    private static final String FIELD_MEDIA_METADATA;
    static final String FIELD_NEW_POSITION_INFO;
    static final String FIELD_OLD_POSITION_INFO;
    private static final String FIELD_PLAYBACK_ERROR;
    private static final String FIELD_PLAYBACK_PARAMETERS;
    private static final String FIELD_PLAYBACK_STATE;
    private static final String FIELD_PLAYBACK_SUPPRESSION_REASON;
    private static final String FIELD_PLAYLIST_METADATA;
    private static final String FIELD_PLAY_WHEN_READY;
    private static final String FIELD_PLAY_WHEN_READY_CHANGE_REASON;
    private static final String FIELD_REPEAT_MODE;
    static final String FIELD_SEEK_BACK_INCREMENT_MS;
    static final String FIELD_SEEK_FORWARD_INCREMENT_MS;
    static final String FIELD_SESSION_POSITION_INFO;
    private static final String FIELD_SHUFFLE_MODE_ENABLED;
    private static final String FIELD_TIMELINE;
    private static final String FIELD_TIMELINE_CHANGE_REASON;
    private static final String FIELD_TRACK_SELECTION_PARAMETERS;
    private static final String FIELD_UNMUTE_VOLUME;
    private static final String FIELD_VIDEO_SIZE;
    private static final String FIELD_VOLUME;
    public final AudioAttributes audioAttributes;
    public final int audioSessionId;
    public final CueGroup cueGroup;
    public final Tracks currentTracks;
    public final DeviceInfo deviceInfo;
    public final boolean deviceMuted;
    public final int deviceVolume;
    public final int discontinuityReason;
    public final boolean isLoading;
    public final boolean isPlaying;
    public final long maxSeekToPreviousPositionMs;
    public final int mediaItemTransitionReason;
    public final MediaMetadata mediaMetadata;
    public final Player.PositionInfo newPositionInfo;
    public final Player.PositionInfo oldPositionInfo;
    public final boolean playWhenReady;
    public final int playWhenReadyChangeReason;
    public final PlaybackParameters playbackParameters;
    public final int playbackState;
    public final int playbackSuppressionReason;
    public final PlaybackException playerError;
    public final MediaMetadata playlistMetadata;
    public final int repeatMode;
    public final long seekBackIncrementMs;
    public final long seekForwardIncrementMs;
    public final SessionPositionInfo sessionPositionInfo;
    public final boolean shuffleModeEnabled;
    public final Timeline timeline;
    public final int timelineChangeReason;
    public final TrackSelectionParameters trackSelectionParameters;
    public final float unmuteVolume;
    public final VideoSize videoSize;
    public final float volume;

    private boolean isPlaying(int i, boolean z, int i2) {
        return i == 3 && z && i2 == 0;
    }

    public static class BundlingExclusions {
        public final boolean areCurrentTracksExcluded;
        public final boolean isTimelineExcluded;
        public static final BundlingExclusions NONE = new BundlingExclusions(false, false);
        private static final String FIELD_IS_TIMELINE_EXCLUDED = Util.intToStringMaxRadix(0);
        private static final String FIELD_ARE_CURRENT_TRACKS_EXCLUDED = Util.intToStringMaxRadix(1);

        public BundlingExclusions(boolean z, boolean z2) {
            this.isTimelineExcluded = z;
            this.areCurrentTracksExcluded = z2;
        }

        public Bundle toBundle() {
            Bundle bundle = new Bundle();
            bundle.putBoolean(FIELD_IS_TIMELINE_EXCLUDED, this.isTimelineExcluded);
            bundle.putBoolean(FIELD_ARE_CURRENT_TRACKS_EXCLUDED, this.areCurrentTracksExcluded);
            return bundle;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof BundlingExclusions)) {
                return false;
            }
            BundlingExclusions bundlingExclusions = (BundlingExclusions) obj;
            return this.isTimelineExcluded == bundlingExclusions.isTimelineExcluded && this.areCurrentTracksExcluded == bundlingExclusions.areCurrentTracksExcluded;
        }

        public int hashCode() {
            return Objects.hash(Boolean.valueOf(this.isTimelineExcluded), Boolean.valueOf(this.areCurrentTracksExcluded));
        }
    }

    public static class Builder {
        private AudioAttributes audioAttributes;
        private int audioSessionId;
        private CueGroup cueGroup;
        private Tracks currentTracks;
        private DeviceInfo deviceInfo;
        private boolean deviceMuted;
        private int deviceVolume;
        private int discontinuityReason;
        private boolean isLoading;
        private boolean isPlaying;
        private long maxSeekToPreviousPositionMs;
        private int mediaItemTransitionReason;
        private MediaMetadata mediaMetadata;
        private Player.PositionInfo newPositionInfo;
        private Player.PositionInfo oldPositionInfo;
        private boolean playWhenReady;
        private int playWhenReadyChangeReason;
        private PlaybackParameters playbackParameters;
        private int playbackState;
        private int playbackSuppressionReason;
        private PlaybackException playerError;
        private MediaMetadata playlistMetadata;
        private int repeatMode;
        private long seekBackIncrementMs;
        private long seekForwardIncrementMs;
        private SessionPositionInfo sessionPositionInfo;
        private boolean shuffleModeEnabled;
        private Timeline timeline;
        private int timelineChangeReason;
        private TrackSelectionParameters trackSelectionParameters;
        private float unmuteVolume;
        private VideoSize videoSize;
        private float volume;

        public Builder(PlayerInfo playerInfo) {
            this.playerError = playerInfo.playerError;
            this.mediaItemTransitionReason = playerInfo.mediaItemTransitionReason;
            this.sessionPositionInfo = playerInfo.sessionPositionInfo;
            this.oldPositionInfo = playerInfo.oldPositionInfo;
            this.newPositionInfo = playerInfo.newPositionInfo;
            this.discontinuityReason = playerInfo.discontinuityReason;
            this.playbackParameters = playerInfo.playbackParameters;
            this.repeatMode = playerInfo.repeatMode;
            this.shuffleModeEnabled = playerInfo.shuffleModeEnabled;
            this.timeline = playerInfo.timeline;
            this.timelineChangeReason = playerInfo.timelineChangeReason;
            this.videoSize = playerInfo.videoSize;
            this.playlistMetadata = playerInfo.playlistMetadata;
            this.volume = playerInfo.volume;
            this.unmuteVolume = playerInfo.unmuteVolume;
            this.audioSessionId = playerInfo.audioSessionId;
            this.audioAttributes = playerInfo.audioAttributes;
            this.cueGroup = playerInfo.cueGroup;
            this.deviceInfo = playerInfo.deviceInfo;
            this.deviceVolume = playerInfo.deviceVolume;
            this.deviceMuted = playerInfo.deviceMuted;
            this.playWhenReady = playerInfo.playWhenReady;
            this.playWhenReadyChangeReason = playerInfo.playWhenReadyChangeReason;
            this.isPlaying = playerInfo.isPlaying;
            this.isLoading = playerInfo.isLoading;
            this.playbackSuppressionReason = playerInfo.playbackSuppressionReason;
            this.playbackState = playerInfo.playbackState;
            this.mediaMetadata = playerInfo.mediaMetadata;
            this.seekBackIncrementMs = playerInfo.seekBackIncrementMs;
            this.seekForwardIncrementMs = playerInfo.seekForwardIncrementMs;
            this.maxSeekToPreviousPositionMs = playerInfo.maxSeekToPreviousPositionMs;
            this.currentTracks = playerInfo.currentTracks;
            this.trackSelectionParameters = playerInfo.trackSelectionParameters;
        }

        public Builder setPlayerError(PlaybackException playbackException) {
            this.playerError = playbackException;
            return this;
        }

        public Builder setMediaItemTransitionReason(int i) {
            this.mediaItemTransitionReason = i;
            return this;
        }

        public Builder setSessionPositionInfo(SessionPositionInfo sessionPositionInfo) {
            this.sessionPositionInfo = sessionPositionInfo;
            return this;
        }

        public Builder setOldPositionInfo(Player.PositionInfo positionInfo) {
            this.oldPositionInfo = positionInfo;
            return this;
        }

        public Builder setNewPositionInfo(Player.PositionInfo positionInfo) {
            this.newPositionInfo = positionInfo;
            return this;
        }

        public Builder setDiscontinuityReason(int i) {
            this.discontinuityReason = i;
            return this;
        }

        public Builder setPlaybackParameters(PlaybackParameters playbackParameters) {
            this.playbackParameters = playbackParameters;
            return this;
        }

        public Builder setRepeatMode(int i) {
            this.repeatMode = i;
            return this;
        }

        public Builder setShuffleModeEnabled(boolean z) {
            this.shuffleModeEnabled = z;
            return this;
        }

        public Builder setTimeline(Timeline timeline) {
            this.timeline = timeline;
            return this;
        }

        public Builder setTimelineChangeReason(int i) {
            this.timelineChangeReason = i;
            return this;
        }

        public Builder setVideoSize(VideoSize videoSize) {
            this.videoSize = videoSize;
            return this;
        }

        public Builder setPlaylistMetadata(MediaMetadata mediaMetadata) {
            this.playlistMetadata = mediaMetadata;
            return this;
        }

        public Builder setVolume(float f) {
            this.unmuteVolume = f != 0.0f ? f : this.volume;
            this.volume = f;
            return this;
        }

        public Builder setAudioSessionId(int i) {
            this.audioSessionId = i;
            return this;
        }

        public Builder setAudioAttributes(AudioAttributes audioAttributes) {
            this.audioAttributes = audioAttributes;
            return this;
        }

        public Builder setCues(CueGroup cueGroup) {
            this.cueGroup = cueGroup;
            return this;
        }

        public Builder setDeviceInfo(DeviceInfo deviceInfo) {
            this.deviceInfo = deviceInfo;
            return this;
        }

        public Builder setDeviceVolume(int i) {
            this.deviceVolume = i;
            return this;
        }

        public Builder setDeviceMuted(boolean z) {
            this.deviceMuted = z;
            return this;
        }

        public Builder setPlayWhenReady(boolean z) {
            this.playWhenReady = z;
            return this;
        }

        public Builder setPlayWhenReadyChangeReason(int i) {
            this.playWhenReadyChangeReason = i;
            return this;
        }

        public Builder setIsPlaying(boolean z) {
            this.isPlaying = z;
            return this;
        }

        public Builder setIsLoading(boolean z) {
            this.isLoading = z;
            return this;
        }

        public Builder setPlaybackSuppressionReason(int i) {
            this.playbackSuppressionReason = i;
            return this;
        }

        public Builder setPlaybackState(int i) {
            this.playbackState = i;
            return this;
        }

        public Builder setMediaMetadata(MediaMetadata mediaMetadata) {
            this.mediaMetadata = mediaMetadata;
            return this;
        }

        public Builder setCurrentTracks(Tracks tracks) {
            this.currentTracks = tracks;
            return this;
        }

        public Builder setTrackSelectionParameters(TrackSelectionParameters trackSelectionParameters) {
            this.trackSelectionParameters = trackSelectionParameters;
            return this;
        }

        public PlayerInfo build() {
            Preconditions.checkState(this.timeline.isEmpty() || this.sessionPositionInfo.positionInfo.mediaItemIndex < this.timeline.getWindowCount());
            return new PlayerInfo(this.playerError, this.mediaItemTransitionReason, this.sessionPositionInfo, this.oldPositionInfo, this.newPositionInfo, this.discontinuityReason, this.playbackParameters, this.repeatMode, this.shuffleModeEnabled, this.videoSize, this.timeline, this.timelineChangeReason, this.playlistMetadata, this.volume, this.unmuteVolume, this.audioAttributes, this.audioSessionId, this.cueGroup, this.deviceInfo, this.deviceVolume, this.deviceMuted, this.playWhenReady, this.playWhenReadyChangeReason, this.playbackSuppressionReason, this.playbackState, this.isPlaying, this.isLoading, this.mediaMetadata, this.seekBackIncrementMs, this.seekForwardIncrementMs, this.maxSeekToPreviousPositionMs, this.currentTracks, this.trackSelectionParameters);
        }
    }

    static {
        SessionPositionInfo sessionPositionInfo = SessionPositionInfo.DEFAULT;
        Player.PositionInfo positionInfo = SessionPositionInfo.DEFAULT_POSITION_INFO;
        PlaybackParameters playbackParameters = PlaybackParameters.DEFAULT;
        VideoSize videoSize = VideoSize.UNKNOWN;
        Timeline timeline = Timeline.EMPTY;
        MediaMetadata mediaMetadata = MediaMetadata.EMPTY;
        DEFAULT = new PlayerInfo(null, 0, sessionPositionInfo, positionInfo, positionInfo, 0, playbackParameters, 0, false, videoSize, timeline, 0, mediaMetadata, 1.0f, 1.0f, AudioAttributes.DEFAULT, 0, CueGroup.EMPTY_TIME_ZERO, DeviceInfo.UNKNOWN, 0, false, false, 1, 0, 1, false, false, mediaMetadata, 5000L, 15000L, 3000L, Tracks.EMPTY, TrackSelectionParameters.DEFAULT);
        FIELD_PLAYBACK_PARAMETERS = Util.intToStringMaxRadix(1);
        FIELD_REPEAT_MODE = Util.intToStringMaxRadix(2);
        FIELD_SHUFFLE_MODE_ENABLED = Util.intToStringMaxRadix(3);
        FIELD_TIMELINE = Util.intToStringMaxRadix(4);
        FIELD_VIDEO_SIZE = Util.intToStringMaxRadix(5);
        FIELD_PLAYLIST_METADATA = Util.intToStringMaxRadix(6);
        FIELD_VOLUME = Util.intToStringMaxRadix(7);
        FIELD_UNMUTE_VOLUME = Util.intToStringMaxRadix(33);
        FIELD_AUDIO_ATTRIBUTES = Util.intToStringMaxRadix(8);
        FIELD_DEVICE_INFO = Util.intToStringMaxRadix(9);
        FIELD_DEVICE_VOLUME = Util.intToStringMaxRadix(10);
        FIELD_DEVICE_MUTED = Util.intToStringMaxRadix(11);
        FIELD_PLAY_WHEN_READY = Util.intToStringMaxRadix(12);
        FIELD_PLAY_WHEN_READY_CHANGE_REASON = Util.intToStringMaxRadix(13);
        FIELD_PLAYBACK_SUPPRESSION_REASON = Util.intToStringMaxRadix(14);
        FIELD_PLAYBACK_STATE = Util.intToStringMaxRadix(15);
        FIELD_IS_PLAYING = Util.intToStringMaxRadix(16);
        FIELD_IS_LOADING = Util.intToStringMaxRadix(17);
        FIELD_PLAYBACK_ERROR = Util.intToStringMaxRadix(18);
        FIELD_SESSION_POSITION_INFO = Util.intToStringMaxRadix(19);
        FIELD_MEDIA_ITEM_TRANSITION_REASON = Util.intToStringMaxRadix(20);
        FIELD_OLD_POSITION_INFO = Util.intToStringMaxRadix(21);
        FIELD_NEW_POSITION_INFO = Util.intToStringMaxRadix(22);
        FIELD_DISCONTINUITY_REASON = Util.intToStringMaxRadix(23);
        FIELD_CUE_GROUP = Util.intToStringMaxRadix(24);
        FIELD_MEDIA_METADATA = Util.intToStringMaxRadix(25);
        FIELD_SEEK_BACK_INCREMENT_MS = Util.intToStringMaxRadix(26);
        FIELD_SEEK_FORWARD_INCREMENT_MS = Util.intToStringMaxRadix(27);
        FIELD_MAX_SEEK_TO_PREVIOUS_POSITION_MS = Util.intToStringMaxRadix(28);
        FIELD_TRACK_SELECTION_PARAMETERS = Util.intToStringMaxRadix(29);
        FIELD_CURRENT_TRACKS = Util.intToStringMaxRadix(30);
        FIELD_TIMELINE_CHANGE_REASON = Util.intToStringMaxRadix(31);
        FIELD_IN_PROCESS_BINDER = Util.intToStringMaxRadix(32);
        FIELD_AUDIO_SESSION_ID = Util.intToStringMaxRadix(34);
    }

    public PlayerInfo copyWithPlayWhenReady(boolean z, int i, int i2) {
        return new Builder(this).setPlayWhenReady(z).setPlayWhenReadyChangeReason(i).setPlaybackSuppressionReason(i2).setIsPlaying(isPlaying(this.playbackState, z, i2)).build();
    }

    public PlayerInfo copyWithMediaItemTransitionReason(int i) {
        return new Builder(this).setMediaItemTransitionReason(i).build();
    }

    public PlayerInfo copyWithPlayerError(PlaybackException playbackException) {
        return new Builder(this).setPlayerError(playbackException).build();
    }

    public PlayerInfo copyWithPlaybackState(int i, PlaybackException playbackException) {
        return new Builder(this).setPlayerError(playbackException).setPlaybackState(i).setIsPlaying(isPlaying(i, this.playWhenReady, this.playbackSuppressionReason)).build();
    }

    public PlayerInfo copyWithIsPlaying(boolean z) {
        return new Builder(this).setIsPlaying(z).build();
    }

    public PlayerInfo copyWithIsLoading(boolean z) {
        return new Builder(this).setIsLoading(z).build();
    }

    public PlayerInfo copyWithPlaybackParameters(PlaybackParameters playbackParameters) {
        return new Builder(this).setPlaybackParameters(playbackParameters).build();
    }

    public PlayerInfo copyWithPositionInfos(Player.PositionInfo positionInfo, Player.PositionInfo positionInfo2, int i) {
        return new Builder(this).setOldPositionInfo(positionInfo).setNewPositionInfo(positionInfo2).setDiscontinuityReason(i).build();
    }

    public PlayerInfo copyWithSessionPositionInfo(SessionPositionInfo sessionPositionInfo) {
        return new Builder(this).setSessionPositionInfo(sessionPositionInfo).build();
    }

    public PlayerInfo copyWithTimelineAndSessionPositionInfo(Timeline timeline, SessionPositionInfo sessionPositionInfo, int i) {
        return new Builder(this).setTimeline(timeline).setSessionPositionInfo(sessionPositionInfo).setTimelineChangeReason(i).build();
    }

    public PlayerInfo copyWithPlaylistMetadata(MediaMetadata mediaMetadata) {
        return new Builder(this).setPlaylistMetadata(mediaMetadata).build();
    }

    public PlayerInfo copyWithRepeatMode(int i) {
        return new Builder(this).setRepeatMode(i).build();
    }

    public PlayerInfo copyWithShuffleModeEnabled(boolean z) {
        return new Builder(this).setShuffleModeEnabled(z).build();
    }

    public PlayerInfo copyWithAudioSessionId(int i) {
        return new Builder(this).setAudioSessionId(i).build();
    }

    public PlayerInfo copyWithAudioAttributes(AudioAttributes audioAttributes) {
        return new Builder(this).setAudioAttributes(audioAttributes).build();
    }

    public PlayerInfo copyWithVideoSize(VideoSize videoSize) {
        return new Builder(this).setVideoSize(videoSize).build();
    }

    public PlayerInfo copyWithVolume(float f) {
        return new Builder(this).setVolume(f).build();
    }

    public PlayerInfo copyWithDeviceInfo(DeviceInfo deviceInfo) {
        return new Builder(this).setDeviceInfo(deviceInfo).build();
    }

    public PlayerInfo copyWithDeviceVolume(int i, boolean z) {
        return new Builder(this).setDeviceVolume(i).setDeviceMuted(z).build();
    }

    public PlayerInfo copyWithMediaMetadata(MediaMetadata mediaMetadata) {
        return new Builder(this).setMediaMetadata(mediaMetadata).build();
    }

    public PlayerInfo copyWithCurrentTracks(Tracks tracks) {
        return new Builder(this).setCurrentTracks(tracks).build();
    }

    public PlayerInfo copyWithTrackSelectionParameters(TrackSelectionParameters trackSelectionParameters) {
        return new Builder(this).setTrackSelectionParameters(trackSelectionParameters).build();
    }

    public PlayerInfo(PlaybackException playbackException, int i, SessionPositionInfo sessionPositionInfo, Player.PositionInfo positionInfo, Player.PositionInfo positionInfo2, int i2, PlaybackParameters playbackParameters, int i3, boolean z, VideoSize videoSize, Timeline timeline, int i4, MediaMetadata mediaMetadata, float f, float f2, AudioAttributes audioAttributes, int i5, CueGroup cueGroup, DeviceInfo deviceInfo, int i6, boolean z2, boolean z3, int i7, int i8, int i9, boolean z4, boolean z5, MediaMetadata mediaMetadata2, long j, long j2, long j3, Tracks tracks, TrackSelectionParameters trackSelectionParameters) {
        this.playerError = playbackException;
        this.mediaItemTransitionReason = i;
        this.sessionPositionInfo = sessionPositionInfo;
        this.oldPositionInfo = positionInfo;
        this.newPositionInfo = positionInfo2;
        this.discontinuityReason = i2;
        this.playbackParameters = playbackParameters;
        this.repeatMode = i3;
        this.shuffleModeEnabled = z;
        this.videoSize = videoSize;
        this.timeline = timeline;
        this.timelineChangeReason = i4;
        this.playlistMetadata = mediaMetadata;
        this.volume = f;
        this.unmuteVolume = f2;
        this.audioSessionId = i5;
        this.audioAttributes = audioAttributes;
        this.cueGroup = cueGroup;
        this.deviceInfo = deviceInfo;
        this.deviceVolume = i6;
        this.deviceMuted = z2;
        this.playWhenReady = z3;
        this.playWhenReadyChangeReason = i7;
        this.playbackSuppressionReason = i8;
        this.playbackState = i9;
        this.isPlaying = z4;
        this.isLoading = z5;
        this.mediaMetadata = mediaMetadata2;
        this.seekBackIncrementMs = j;
        this.seekForwardIncrementMs = j2;
        this.maxSeekToPreviousPositionMs = j3;
        this.currentTracks = tracks;
        this.trackSelectionParameters = trackSelectionParameters;
    }

    public PlayerInfo filterByAvailableCommands(Player.Commands commands, boolean z, boolean z2) {
        Builder builder = new Builder(this);
        boolean zContains = commands.contains(16);
        boolean zContains2 = commands.contains(17);
        builder.setSessionPositionInfo(this.sessionPositionInfo.filterByAvailableCommands(zContains, zContains2));
        builder.setOldPositionInfo(this.oldPositionInfo.filterByAvailableCommands(zContains, zContains2));
        builder.setNewPositionInfo(this.newPositionInfo.filterByAvailableCommands(zContains, zContains2));
        if (!zContains2 && zContains && !this.timeline.isEmpty()) {
            builder.setTimeline(this.timeline.copyWithSingleWindow(this.sessionPositionInfo.positionInfo.mediaItemIndex));
        } else if (z || !zContains2) {
            builder.setTimeline(Timeline.EMPTY);
        }
        if (!commands.contains(18)) {
            builder.setPlaylistMetadata(MediaMetadata.EMPTY);
        }
        if (!commands.contains(22)) {
            builder.setVolume(1.0f);
        }
        if (!commands.contains(21)) {
            builder.setAudioAttributes(AudioAttributes.DEFAULT);
        }
        if (!commands.contains(28)) {
            builder.setCues(CueGroup.EMPTY_TIME_ZERO);
        }
        if (!commands.contains(23)) {
            builder.setDeviceVolume(0).setDeviceMuted(false);
        }
        if (!commands.contains(18)) {
            builder.setMediaMetadata(MediaMetadata.EMPTY);
        }
        if (z2 || !commands.contains(30)) {
            builder.setCurrentTracks(Tracks.EMPTY);
        }
        return builder.build();
    }

    public Bundle toBundleForRemoteProcess(int i) {
        Bundle bundle = new Bundle();
        PlaybackException playbackException = this.playerError;
        if (playbackException != null) {
            bundle.putBundle(FIELD_PLAYBACK_ERROR, playbackException.toBundle());
        }
        int i2 = this.mediaItemTransitionReason;
        if (i2 != 0) {
            bundle.putInt(FIELD_MEDIA_ITEM_TRANSITION_REASON, i2);
        }
        if (i < 3 || !this.sessionPositionInfo.equals(SessionPositionInfo.DEFAULT)) {
            bundle.putBundle(FIELD_SESSION_POSITION_INFO, this.sessionPositionInfo.toBundle(i));
        }
        if (i < 3 || !SessionPositionInfo.DEFAULT_POSITION_INFO.equalsForBundling(this.oldPositionInfo)) {
            bundle.putBundle(FIELD_OLD_POSITION_INFO, this.oldPositionInfo.toBundle(i));
        }
        if (i < 3 || !SessionPositionInfo.DEFAULT_POSITION_INFO.equalsForBundling(this.newPositionInfo)) {
            bundle.putBundle(FIELD_NEW_POSITION_INFO, this.newPositionInfo.toBundle(i));
        }
        int i3 = this.discontinuityReason;
        if (i3 != 0) {
            bundle.putInt(FIELD_DISCONTINUITY_REASON, i3);
        }
        if (!this.playbackParameters.equals(PlaybackParameters.DEFAULT)) {
            bundle.putBundle(FIELD_PLAYBACK_PARAMETERS, this.playbackParameters.toBundle());
        }
        int i4 = this.repeatMode;
        if (i4 != 0) {
            bundle.putInt(FIELD_REPEAT_MODE, i4);
        }
        boolean z = this.shuffleModeEnabled;
        if (z) {
            bundle.putBoolean(FIELD_SHUFFLE_MODE_ENABLED, z);
        }
        if (!this.timeline.equals(Timeline.EMPTY)) {
            bundle.putBundle(FIELD_TIMELINE, this.timeline.toBundle(i));
        }
        int i5 = this.timelineChangeReason;
        if (i5 != 0) {
            bundle.putInt(FIELD_TIMELINE_CHANGE_REASON, i5);
        }
        if (!this.videoSize.equals(VideoSize.UNKNOWN)) {
            bundle.putBundle(FIELD_VIDEO_SIZE, this.videoSize.toBundle());
        }
        MediaMetadata mediaMetadata = this.playlistMetadata;
        MediaMetadata mediaMetadata2 = MediaMetadata.EMPTY;
        if (!mediaMetadata.equals(mediaMetadata2)) {
            bundle.putBundle(FIELD_PLAYLIST_METADATA, this.playlistMetadata.toBundle(i));
        }
        float f = this.volume;
        if (f != 1.0f) {
            bundle.putFloat(FIELD_VOLUME, f);
        }
        float f2 = this.unmuteVolume;
        if (f2 != 1.0f) {
            bundle.putFloat(FIELD_UNMUTE_VOLUME, f2);
        }
        int i6 = this.audioSessionId;
        if (i6 != 0) {
            bundle.putInt(FIELD_AUDIO_SESSION_ID, i6);
        }
        if (!this.audioAttributes.equals(AudioAttributes.DEFAULT)) {
            bundle.putBundle(FIELD_AUDIO_ATTRIBUTES, this.audioAttributes.toBundle());
        }
        if (!this.cueGroup.equals(CueGroup.EMPTY_TIME_ZERO)) {
            bundle.putBundle(FIELD_CUE_GROUP, this.cueGroup.toBundle());
        }
        if (!this.deviceInfo.equals(DeviceInfo.UNKNOWN)) {
            bundle.putBundle(FIELD_DEVICE_INFO, this.deviceInfo.toBundle());
        }
        int i7 = this.deviceVolume;
        if (i7 != 0) {
            bundle.putInt(FIELD_DEVICE_VOLUME, i7);
        }
        boolean z2 = this.deviceMuted;
        if (z2) {
            bundle.putBoolean(FIELD_DEVICE_MUTED, z2);
        }
        boolean z3 = this.playWhenReady;
        if (z3) {
            bundle.putBoolean(FIELD_PLAY_WHEN_READY, z3);
        }
        int i8 = this.playWhenReadyChangeReason;
        if (i8 != 1) {
            bundle.putInt(FIELD_PLAY_WHEN_READY_CHANGE_REASON, i8);
        }
        int i9 = this.playbackSuppressionReason;
        if (i9 != 0) {
            bundle.putInt(FIELD_PLAYBACK_SUPPRESSION_REASON, i9);
        }
        int i10 = this.playbackState;
        if (i10 != 1) {
            bundle.putInt(FIELD_PLAYBACK_STATE, i10);
        }
        boolean z4 = this.isPlaying;
        if (z4) {
            bundle.putBoolean(FIELD_IS_PLAYING, z4);
        }
        boolean z5 = this.isLoading;
        if (z5) {
            bundle.putBoolean(FIELD_IS_LOADING, z5);
        }
        if (!this.mediaMetadata.equals(mediaMetadata2)) {
            bundle.putBundle(FIELD_MEDIA_METADATA, this.mediaMetadata.toBundle(i));
        }
        long j = i < 6 ? 0L : 5000L;
        long j2 = this.seekBackIncrementMs;
        if (j2 != j) {
            bundle.putLong(FIELD_SEEK_BACK_INCREMENT_MS, j2);
        }
        long j3 = i < 6 ? 0L : 15000L;
        long j4 = this.seekForwardIncrementMs;
        if (j4 != j3) {
            bundle.putLong(FIELD_SEEK_FORWARD_INCREMENT_MS, j4);
        }
        long j5 = i >= 6 ? 3000L : 0L;
        long j6 = this.maxSeekToPreviousPositionMs;
        if (j6 != j5) {
            bundle.putLong(FIELD_MAX_SEEK_TO_PREVIOUS_POSITION_MS, j6);
        }
        if (!this.currentTracks.equals(Tracks.EMPTY)) {
            bundle.putBundle(FIELD_CURRENT_TRACKS, this.currentTracks.toBundle());
        }
        if (!this.trackSelectionParameters.equals(TrackSelectionParameters.DEFAULT)) {
            bundle.putBundle(FIELD_TRACK_SELECTION_PARAMETERS, this.trackSelectionParameters.toBundle());
        }
        return bundle;
    }
}
