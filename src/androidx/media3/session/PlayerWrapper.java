package androidx.media3.session;

import android.os.Looper;
import android.os.SystemClock;
import android.view.Surface;
import androidx.media3.common.AudioAttributes;
import androidx.media3.common.DeviceInfo;
import androidx.media3.common.ForwardingPlayer;
import androidx.media3.common.MediaItem;
import androidx.media3.common.MediaMetadata;
import androidx.media3.common.PlaybackException;
import androidx.media3.common.PlaybackParameters;
import androidx.media3.common.Player;
import androidx.media3.common.Timeline;
import androidx.media3.common.TrackSelectionParameters;
import androidx.media3.common.Tracks;
import androidx.media3.common.VideoSize;
import androidx.media3.common.text.CueGroup;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.Util;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
final class PlayerWrapper extends ForwardingPlayer {
    public PlayerWrapper(Player player) {
        super(player);
    }

    @Override // androidx.media3.common.ForwardingPlayer, androidx.media3.common.Player
    public void addListener(Player.Listener listener) {
        verifyApplicationThread();
        super.addListener(listener);
    }

    @Override // androidx.media3.common.ForwardingPlayer, androidx.media3.common.Player
    public void removeListener(Player.Listener listener) {
        verifyApplicationThread();
        super.removeListener(listener);
    }

    @Override // androidx.media3.common.ForwardingPlayer, androidx.media3.common.Player
    public PlaybackException getPlayerError() {
        verifyApplicationThread();
        return super.getPlayerError();
    }

    @Override // androidx.media3.common.ForwardingPlayer, androidx.media3.common.Player
    public void play() {
        verifyApplicationThread();
        super.play();
    }

    public void playIfCommandAvailable() {
        if (isCommandAvailable(1)) {
            play();
        }
    }

    @Override // androidx.media3.common.ForwardingPlayer, androidx.media3.common.Player
    public void pause() {
        verifyApplicationThread();
        super.pause();
    }

    @Override // androidx.media3.common.ForwardingPlayer, androidx.media3.common.Player
    public void prepare() {
        verifyApplicationThread();
        super.prepare();
    }

    public void prepareIfCommandAvailable() {
        if (isCommandAvailable(2)) {
            prepare();
        }
    }

    @Override // androidx.media3.common.ForwardingPlayer, androidx.media3.common.Player
    public void stop() {
        verifyApplicationThread();
        super.stop();
    }

    @Override // androidx.media3.common.ForwardingPlayer, androidx.media3.common.Player
    public void seekToDefaultPosition(int i) {
        verifyApplicationThread();
        super.seekToDefaultPosition(i);
    }

    @Override // androidx.media3.common.ForwardingPlayer, androidx.media3.common.Player
    public void seekToDefaultPosition() {
        verifyApplicationThread();
        super.seekToDefaultPosition();
    }

    public void seekToDefaultPositionIfCommandAvailable() {
        if (isCommandAvailable(4)) {
            seekToDefaultPosition();
        }
    }

    @Override // androidx.media3.common.ForwardingPlayer, androidx.media3.common.Player
    public void seekTo(long j) {
        verifyApplicationThread();
        super.seekTo(j);
    }

    @Override // androidx.media3.common.ForwardingPlayer, androidx.media3.common.Player
    public void seekTo(int i, long j) {
        verifyApplicationThread();
        super.seekTo(i, j);
    }

    @Override // androidx.media3.common.ForwardingPlayer, androidx.media3.common.Player
    public long getSeekBackIncrement() {
        verifyApplicationThread();
        return super.getSeekBackIncrement();
    }

    @Override // androidx.media3.common.ForwardingPlayer, androidx.media3.common.Player
    public void seekBack() {
        verifyApplicationThread();
        super.seekBack();
    }

    @Override // androidx.media3.common.ForwardingPlayer, androidx.media3.common.Player
    public long getSeekForwardIncrement() {
        verifyApplicationThread();
        return super.getSeekForwardIncrement();
    }

    @Override // androidx.media3.common.ForwardingPlayer, androidx.media3.common.Player
    public void seekForward() {
        verifyApplicationThread();
        super.seekForward();
    }

    @Override // androidx.media3.common.ForwardingPlayer, androidx.media3.common.Player
    public void setPlaybackParameters(PlaybackParameters playbackParameters) {
        verifyApplicationThread();
        super.setPlaybackParameters(playbackParameters);
    }

    @Override // androidx.media3.common.ForwardingPlayer, androidx.media3.common.Player
    public void setPlaybackSpeed(float f) {
        verifyApplicationThread();
        super.setPlaybackSpeed(f);
    }

    @Override // androidx.media3.common.ForwardingPlayer, androidx.media3.common.Player
    public long getCurrentPosition() {
        verifyApplicationThread();
        return super.getCurrentPosition();
    }

    @Override // androidx.media3.common.ForwardingPlayer, androidx.media3.common.Player
    public long getDuration() {
        verifyApplicationThread();
        return super.getDuration();
    }

    public long getDurationWithCommandCheck() {
        if (isCommandAvailable(16)) {
            return getDuration();
        }
        return -9223372036854775807L;
    }

    @Override // androidx.media3.common.ForwardingPlayer, androidx.media3.common.Player
    public long getBufferedPosition() {
        verifyApplicationThread();
        return super.getBufferedPosition();
    }

    @Override // androidx.media3.common.ForwardingPlayer, androidx.media3.common.Player
    public int getBufferedPercentage() {
        verifyApplicationThread();
        return super.getBufferedPercentage();
    }

    @Override // androidx.media3.common.ForwardingPlayer, androidx.media3.common.Player
    public long getTotalBufferedDuration() {
        verifyApplicationThread();
        return super.getTotalBufferedDuration();
    }

    @Override // androidx.media3.common.ForwardingPlayer, androidx.media3.common.Player
    public long getCurrentLiveOffset() {
        verifyApplicationThread();
        return super.getCurrentLiveOffset();
    }

    @Override // androidx.media3.common.ForwardingPlayer, androidx.media3.common.Player
    public long getContentDuration() {
        verifyApplicationThread();
        return super.getContentDuration();
    }

    @Override // androidx.media3.common.ForwardingPlayer, androidx.media3.common.Player
    public long getContentPosition() {
        verifyApplicationThread();
        return super.getContentPosition();
    }

    @Override // androidx.media3.common.ForwardingPlayer, androidx.media3.common.Player
    public long getContentBufferedPosition() {
        verifyApplicationThread();
        return super.getContentBufferedPosition();
    }

    @Override // androidx.media3.common.ForwardingPlayer, androidx.media3.common.Player
    public boolean isPlayingAd() {
        verifyApplicationThread();
        return super.isPlayingAd();
    }

    @Override // androidx.media3.common.ForwardingPlayer, androidx.media3.common.Player
    public int getCurrentAdGroupIndex() {
        verifyApplicationThread();
        return super.getCurrentAdGroupIndex();
    }

    @Override // androidx.media3.common.ForwardingPlayer, androidx.media3.common.Player
    public int getCurrentAdIndexInAdGroup() {
        verifyApplicationThread();
        return super.getCurrentAdIndexInAdGroup();
    }

    @Override // androidx.media3.common.ForwardingPlayer, androidx.media3.common.Player
    public PlaybackParameters getPlaybackParameters() {
        verifyApplicationThread();
        return super.getPlaybackParameters();
    }

    @Override // androidx.media3.common.ForwardingPlayer, androidx.media3.common.Player
    public VideoSize getVideoSize() {
        verifyApplicationThread();
        return super.getVideoSize();
    }

    @Override // androidx.media3.common.ForwardingPlayer, androidx.media3.common.Player
    public void setVideoSurface(Surface surface) {
        verifyApplicationThread();
        super.setVideoSurface(surface);
    }

    @Override // androidx.media3.common.ForwardingPlayer, androidx.media3.common.Player
    public AudioAttributes getAudioAttributes() {
        verifyApplicationThread();
        return super.getAudioAttributes();
    }

    public AudioAttributes getAudioAttributesWithCommandCheck() {
        if (isCommandAvailable(21)) {
            return getAudioAttributes();
        }
        return AudioAttributes.DEFAULT;
    }

    @Override // androidx.media3.common.ForwardingPlayer, androidx.media3.common.Player
    public void setMediaItem(MediaItem mediaItem, long j) {
        verifyApplicationThread();
        super.setMediaItem(mediaItem, j);
    }

    @Override // androidx.media3.common.ForwardingPlayer, androidx.media3.common.Player
    public void setMediaItem(MediaItem mediaItem, boolean z) {
        verifyApplicationThread();
        super.setMediaItem(mediaItem, z);
    }

    @Override // androidx.media3.common.ForwardingPlayer, androidx.media3.common.Player
    public void setMediaItems(List<MediaItem> list, boolean z) {
        verifyApplicationThread();
        super.setMediaItems(list, z);
    }

    @Override // androidx.media3.common.ForwardingPlayer, androidx.media3.common.Player
    public void setMediaItems(List<MediaItem> list, int i, long j) {
        verifyApplicationThread();
        super.setMediaItems(list, i, j);
    }

    @Override // androidx.media3.common.ForwardingPlayer, androidx.media3.common.Player
    public void addMediaItems(List<MediaItem> list) {
        verifyApplicationThread();
        super.addMediaItems(list);
    }

    @Override // androidx.media3.common.ForwardingPlayer, androidx.media3.common.Player
    public void addMediaItems(int i, List<MediaItem> list) {
        verifyApplicationThread();
        super.addMediaItems(i, list);
    }

    @Override // androidx.media3.common.ForwardingPlayer, androidx.media3.common.Player
    public void clearMediaItems() {
        verifyApplicationThread();
        super.clearMediaItems();
    }

    @Override // androidx.media3.common.ForwardingPlayer, androidx.media3.common.Player
    public void removeMediaItem(int i) {
        verifyApplicationThread();
        super.removeMediaItem(i);
    }

    @Override // androidx.media3.common.ForwardingPlayer, androidx.media3.common.Player
    public void removeMediaItems(int i, int i2) {
        verifyApplicationThread();
        super.removeMediaItems(i, i2);
    }

    @Override // androidx.media3.common.ForwardingPlayer, androidx.media3.common.Player
    public void moveMediaItem(int i, int i2) {
        verifyApplicationThread();
        super.moveMediaItem(i, i2);
    }

    @Override // androidx.media3.common.ForwardingPlayer, androidx.media3.common.Player
    public void moveMediaItems(int i, int i2, int i3) {
        verifyApplicationThread();
        super.moveMediaItems(i, i2, i3);
    }

    @Override // androidx.media3.common.ForwardingPlayer, androidx.media3.common.Player
    public void replaceMediaItem(int i, MediaItem mediaItem) {
        verifyApplicationThread();
        super.replaceMediaItem(i, mediaItem);
    }

    @Override // androidx.media3.common.ForwardingPlayer, androidx.media3.common.Player
    public void replaceMediaItems(int i, int i2, List<MediaItem> list) {
        verifyApplicationThread();
        super.replaceMediaItems(i, i2, list);
    }

    @Override // androidx.media3.common.ForwardingPlayer, androidx.media3.common.Player
    public boolean hasPreviousMediaItem() {
        verifyApplicationThread();
        return super.hasPreviousMediaItem();
    }

    @Override // androidx.media3.common.ForwardingPlayer, androidx.media3.common.Player
    public boolean hasNextMediaItem() {
        verifyApplicationThread();
        return super.hasNextMediaItem();
    }

    @Override // androidx.media3.common.ForwardingPlayer, androidx.media3.common.Player
    public void seekToPreviousMediaItem() {
        verifyApplicationThread();
        super.seekToPreviousMediaItem();
    }

    @Override // androidx.media3.common.ForwardingPlayer, androidx.media3.common.Player
    public void seekToNextMediaItem() {
        verifyApplicationThread();
        super.seekToNextMediaItem();
    }

    @Override // androidx.media3.common.ForwardingPlayer, androidx.media3.common.Player
    public void setPlaylistMetadata(MediaMetadata mediaMetadata) {
        verifyApplicationThread();
        super.setPlaylistMetadata(mediaMetadata);
    }

    @Override // androidx.media3.common.ForwardingPlayer, androidx.media3.common.Player
    public void setRepeatMode(int i) {
        verifyApplicationThread();
        super.setRepeatMode(i);
    }

    @Override // androidx.media3.common.ForwardingPlayer, androidx.media3.common.Player
    public void setShuffleModeEnabled(boolean z) {
        verifyApplicationThread();
        super.setShuffleModeEnabled(z);
    }

    @Override // androidx.media3.common.ForwardingPlayer, androidx.media3.common.Player
    public Timeline getCurrentTimeline() {
        verifyApplicationThread();
        return super.getCurrentTimeline();
    }

    public Timeline getCurrentTimelineWithCommandCheck() {
        if (isCommandAvailable(17)) {
            return getCurrentTimeline();
        }
        if (isCommandAvailable(16)) {
            if (getCurrentTimeline().isEmpty()) {
                return Timeline.EMPTY;
            }
            return new CurrentMediaItemOnlyTimeline(this);
        }
        return Timeline.EMPTY;
    }

    @Override // androidx.media3.common.ForwardingPlayer, androidx.media3.common.Player
    public MediaMetadata getPlaylistMetadata() {
        verifyApplicationThread();
        return super.getPlaylistMetadata();
    }

    public MediaMetadata getPlaylistMetadataWithCommandCheck() {
        if (isCommandAvailable(18)) {
            return getPlaylistMetadata();
        }
        return MediaMetadata.EMPTY;
    }

    @Override // androidx.media3.common.ForwardingPlayer, androidx.media3.common.Player
    public int getRepeatMode() {
        verifyApplicationThread();
        return super.getRepeatMode();
    }

    @Override // androidx.media3.common.ForwardingPlayer, androidx.media3.common.Player
    public boolean getShuffleModeEnabled() {
        verifyApplicationThread();
        return super.getShuffleModeEnabled();
    }

    @Override // androidx.media3.common.ForwardingPlayer, androidx.media3.common.Player
    public MediaItem getCurrentMediaItem() {
        verifyApplicationThread();
        return super.getCurrentMediaItem();
    }

    public MediaItem getCurrentMediaItemWithCommandCheck() {
        if (isCommandAvailable(16)) {
            return getCurrentMediaItem();
        }
        return null;
    }

    @Override // androidx.media3.common.ForwardingPlayer, androidx.media3.common.Player
    public int getCurrentMediaItemIndex() {
        verifyApplicationThread();
        return super.getCurrentMediaItemIndex();
    }

    @Override // androidx.media3.common.ForwardingPlayer, androidx.media3.common.Player
    public float getVolume() {
        verifyApplicationThread();
        return super.getVolume();
    }

    public float getVolumeWithCommandCheck() {
        if (isCommandAvailable(22)) {
            return getVolume();
        }
        return 1.0f;
    }

    @Override // androidx.media3.common.ForwardingPlayer, androidx.media3.common.Player
    public void setVolume(float f) {
        verifyApplicationThread();
        super.setVolume(f);
    }

    @Override // androidx.media3.common.ForwardingPlayer, androidx.media3.common.Player
    public CueGroup getCurrentCues() {
        verifyApplicationThread();
        return super.getCurrentCues();
    }

    public CueGroup getCurrentCuesWithCommandCheck() {
        return isCommandAvailable(28) ? getCurrentCues() : CueGroup.EMPTY_TIME_ZERO;
    }

    @Override // androidx.media3.common.ForwardingPlayer, androidx.media3.common.Player
    public DeviceInfo getDeviceInfo() {
        verifyApplicationThread();
        return super.getDeviceInfo();
    }

    @Override // androidx.media3.common.ForwardingPlayer, androidx.media3.common.Player
    public int getDeviceVolume() {
        verifyApplicationThread();
        return super.getDeviceVolume();
    }

    public int getDeviceVolumeWithCommandCheck() {
        if (isCommandAvailable(23)) {
            return getDeviceVolume();
        }
        return 0;
    }

    @Override // androidx.media3.common.ForwardingPlayer, androidx.media3.common.Player
    public boolean isDeviceMuted() {
        verifyApplicationThread();
        return super.isDeviceMuted();
    }

    public boolean isDeviceMutedWithCommandCheck() {
        return isCommandAvailable(23) && isDeviceMuted();
    }

    @Override // androidx.media3.common.ForwardingPlayer, androidx.media3.common.Player
    @Deprecated
    public void setDeviceVolume(int i) {
        verifyApplicationThread();
        super.setDeviceVolume(i);
    }

    @Override // androidx.media3.common.ForwardingPlayer, androidx.media3.common.Player
    public void setDeviceVolume(int i, int i2) {
        verifyApplicationThread();
        super.setDeviceVolume(i, i2);
    }

    @Override // androidx.media3.common.ForwardingPlayer, androidx.media3.common.Player
    @Deprecated
    public void increaseDeviceVolume() {
        verifyApplicationThread();
        super.increaseDeviceVolume();
    }

    @Override // androidx.media3.common.ForwardingPlayer, androidx.media3.common.Player
    public void increaseDeviceVolume(int i) {
        verifyApplicationThread();
        super.increaseDeviceVolume(i);
    }

    @Override // androidx.media3.common.ForwardingPlayer, androidx.media3.common.Player
    @Deprecated
    public void decreaseDeviceVolume() {
        verifyApplicationThread();
        super.decreaseDeviceVolume();
    }

    @Override // androidx.media3.common.ForwardingPlayer, androidx.media3.common.Player
    public void decreaseDeviceVolume(int i) {
        verifyApplicationThread();
        super.decreaseDeviceVolume(i);
    }

    @Override // androidx.media3.common.ForwardingPlayer, androidx.media3.common.Player
    @Deprecated
    public void setDeviceMuted(boolean z) {
        verifyApplicationThread();
        super.setDeviceMuted(z);
    }

    @Override // androidx.media3.common.ForwardingPlayer, androidx.media3.common.Player
    public void setDeviceMuted(boolean z, int i) {
        verifyApplicationThread();
        super.setDeviceMuted(z, i);
    }

    @Override // androidx.media3.common.ForwardingPlayer, androidx.media3.common.Player
    public void setPlayWhenReady(boolean z) {
        verifyApplicationThread();
        super.setPlayWhenReady(z);
    }

    @Override // androidx.media3.common.ForwardingPlayer, androidx.media3.common.Player
    public boolean getPlayWhenReady() {
        verifyApplicationThread();
        return super.getPlayWhenReady();
    }

    @Override // androidx.media3.common.ForwardingPlayer, androidx.media3.common.Player
    public int getPlaybackSuppressionReason() {
        verifyApplicationThread();
        return super.getPlaybackSuppressionReason();
    }

    @Override // androidx.media3.common.ForwardingPlayer, androidx.media3.common.Player
    public int getPlaybackState() {
        verifyApplicationThread();
        return super.getPlaybackState();
    }

    @Override // androidx.media3.common.ForwardingPlayer, androidx.media3.common.Player
    public boolean isPlaying() {
        verifyApplicationThread();
        return super.isPlaying();
    }

    @Override // androidx.media3.common.ForwardingPlayer, androidx.media3.common.Player
    public boolean isLoading() {
        verifyApplicationThread();
        return super.isLoading();
    }

    @Override // androidx.media3.common.ForwardingPlayer, androidx.media3.common.Player
    public MediaMetadata getMediaMetadata() {
        verifyApplicationThread();
        return super.getMediaMetadata();
    }

    public MediaMetadata getMediaMetadataWithCommandCheck() {
        return isCommandAvailable(18) ? getMediaMetadata() : MediaMetadata.EMPTY;
    }

    @Override // androidx.media3.common.ForwardingPlayer, androidx.media3.common.Player
    public boolean isCommandAvailable(int i) {
        verifyApplicationThread();
        return super.isCommandAvailable(i);
    }

    @Override // androidx.media3.common.ForwardingPlayer, androidx.media3.common.Player
    public Player.Commands getAvailableCommands() {
        verifyApplicationThread();
        return super.getAvailableCommands();
    }

    @Override // androidx.media3.common.ForwardingPlayer, androidx.media3.common.Player
    public TrackSelectionParameters getTrackSelectionParameters() {
        verifyApplicationThread();
        return super.getTrackSelectionParameters();
    }

    @Override // androidx.media3.common.ForwardingPlayer, androidx.media3.common.Player
    public void setTrackSelectionParameters(TrackSelectionParameters trackSelectionParameters) {
        verifyApplicationThread();
        super.setTrackSelectionParameters(trackSelectionParameters);
    }

    @Override // androidx.media3.common.ForwardingPlayer, androidx.media3.common.Player
    public void seekToPrevious() {
        verifyApplicationThread();
        super.seekToPrevious();
    }

    @Override // androidx.media3.common.ForwardingPlayer, androidx.media3.common.Player
    public long getMaxSeekToPreviousPosition() {
        verifyApplicationThread();
        return super.getMaxSeekToPreviousPosition();
    }

    @Override // androidx.media3.common.ForwardingPlayer, androidx.media3.common.Player
    public void seekToNext() {
        verifyApplicationThread();
        super.seekToNext();
    }

    @Override // androidx.media3.common.ForwardingPlayer, androidx.media3.common.Player
    public Tracks getCurrentTracks() {
        verifyApplicationThread();
        return super.getCurrentTracks();
    }

    public Tracks getCurrentTracksWithCommandCheck() {
        return isCommandAvailable(30) ? getCurrentTracks() : Tracks.EMPTY;
    }

    @Override // androidx.media3.common.ForwardingPlayer, androidx.media3.common.Player
    public int getCurrentPeriodIndex() {
        verifyApplicationThread();
        return super.getCurrentPeriodIndex();
    }

    @Override // androidx.media3.common.ForwardingPlayer, androidx.media3.common.Player
    public boolean isCurrentMediaItemDynamic() {
        verifyApplicationThread();
        return super.isCurrentMediaItemDynamic();
    }

    @Override // androidx.media3.common.ForwardingPlayer, androidx.media3.common.Player
    public boolean isCurrentMediaItemLive() {
        verifyApplicationThread();
        return super.isCurrentMediaItemLive();
    }

    public boolean isCurrentMediaItemLiveWithCommandCheck() {
        return isCommandAvailable(16) && isCurrentMediaItemLive();
    }

    @Override // androidx.media3.common.ForwardingPlayer, androidx.media3.common.Player
    public boolean isCurrentMediaItemSeekable() {
        verifyApplicationThread();
        return super.isCurrentMediaItemSeekable();
    }

    public Player.PositionInfo createPositionInfo() {
        boolean zIsCommandAvailable = isCommandAvailable(16);
        boolean zIsCommandAvailable2 = isCommandAvailable(17);
        return new Player.PositionInfo(null, zIsCommandAvailable2 ? getCurrentMediaItemIndex() : 0, zIsCommandAvailable ? getCurrentMediaItem() : null, null, zIsCommandAvailable2 ? getCurrentPeriodIndex() : 0, zIsCommandAvailable ? getCurrentPosition() : 0L, zIsCommandAvailable ? getContentPosition() : 0L, zIsCommandAvailable ? getCurrentAdGroupIndex() : -1, zIsCommandAvailable ? getCurrentAdIndexInAdGroup() : -1);
    }

    public SessionPositionInfo createSessionPositionInfo() {
        boolean zIsCommandAvailable = isCommandAvailable(16);
        return new SessionPositionInfo(createPositionInfo(), zIsCommandAvailable && isPlayingAd(), SystemClock.elapsedRealtime(), zIsCommandAvailable ? getDuration() : -9223372036854775807L, zIsCommandAvailable ? getBufferedPosition() : 0L, zIsCommandAvailable ? getBufferedPercentage() : 0, zIsCommandAvailable ? getTotalBufferedDuration() : 0L, zIsCommandAvailable ? getCurrentLiveOffset() : -9223372036854775807L, zIsCommandAvailable ? getContentDuration() : -9223372036854775807L, zIsCommandAvailable ? getContentBufferedPosition() : 0L);
    }

    public PlayerInfo createInitialPlayerInfo() {
        return new PlayerInfo(getPlayerError(), 0, createSessionPositionInfo(), createPositionInfo(), createPositionInfo(), 0, getPlaybackParameters(), getRepeatMode(), getShuffleModeEnabled(), getVideoSize(), getCurrentTimelineWithCommandCheck(), 0, getPlaylistMetadataWithCommandCheck(), getVolumeWithCommandCheck(), getAudioAttributesWithCommandCheck(), getCurrentCuesWithCommandCheck(), getDeviceInfo(), getDeviceVolumeWithCommandCheck(), isDeviceMutedWithCommandCheck(), getPlayWhenReady(), 1, getPlaybackSuppressionReason(), getPlaybackState(), isPlaying(), isLoading(), getMediaMetadataWithCommandCheck(), getSeekBackIncrement(), getSeekForwardIncrement(), getMaxSeekToPreviousPosition(), getCurrentTracksWithCommandCheck(), getTrackSelectionParameters());
    }

    private void verifyApplicationThread() {
        Assertions.checkState(Looper.myLooper() == getApplicationLooper());
    }

    public static final class CurrentMediaItemOnlyTimeline extends Timeline {
        private static final Object UID = new Object();
        private final long durationUs;
        private final boolean isDynamic;
        private final boolean isPlaceholder;
        private final boolean isSeekable;
        private final MediaItem.LiveConfiguration liveConfiguration;
        private final MediaItem mediaItem;

        @Override // androidx.media3.common.Timeline
        public int getPeriodCount() {
            return 1;
        }

        @Override // androidx.media3.common.Timeline
        public int getWindowCount() {
            return 1;
        }

        public CurrentMediaItemOnlyTimeline(PlayerWrapper playerWrapper) {
            this.mediaItem = playerWrapper.getCurrentMediaItem();
            this.isSeekable = playerWrapper.isCurrentMediaItemSeekable();
            this.isDynamic = playerWrapper.isCurrentMediaItemDynamic();
            this.isPlaceholder = !playerWrapper.getCurrentTimeline().isEmpty() && playerWrapper.getCurrentTimeline().getWindow(playerWrapper.getCurrentMediaItemIndex(), new Timeline.Window()).isPlaceholder;
            this.liveConfiguration = playerWrapper.isCurrentMediaItemLive() ? MediaItem.LiveConfiguration.UNSET : null;
            this.durationUs = Util.msToUs(playerWrapper.getContentDuration());
        }

        @Override // androidx.media3.common.Timeline
        public Timeline.Window getWindow(int i, Timeline.Window window, long j) {
            window.set(UID, this.mediaItem, null, -9223372036854775807L, -9223372036854775807L, -9223372036854775807L, this.isSeekable, this.isDynamic, this.liveConfiguration, 0L, this.durationUs, 0, 0, 0L);
            window.isPlaceholder = this.isPlaceholder;
            return window;
        }

        @Override // androidx.media3.common.Timeline
        public Timeline.Period getPeriod(int i, Timeline.Period period, boolean z) {
            Object obj = UID;
            period.set(obj, obj, 0, this.durationUs, 0L);
            period.isPlaceholder = this.isPlaceholder;
            return period;
        }

        @Override // androidx.media3.common.Timeline
        public int getIndexOfPeriod(Object obj) {
            return UID.equals(obj) ? 0 : -1;
        }

        @Override // androidx.media3.common.Timeline
        public Object getUidOfPeriod(int i) {
            return UID;
        }
    }
}
