package androidx.media3.exoplayer;

import androidx.media3.common.PlaybackParameters;

/* JADX INFO: loaded from: classes4.dex */
public interface MediaClock {
    PlaybackParameters getPlaybackParameters();

    long getPositionUs();

    default boolean hasSkippedSilenceSinceLastCall() {
        return false;
    }

    void setPlaybackParameters(PlaybackParameters playbackParameters);
}
