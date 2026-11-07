package androidx.media3.exoplayer.trackselection;

import androidx.media3.common.AudioAttributes;
import androidx.media3.common.Timeline;
import androidx.media3.common.TrackSelectionParameters;
import androidx.media3.common.util.Assertions;
import androidx.media3.exoplayer.Renderer;
import androidx.media3.exoplayer.RendererCapabilities;
import androidx.media3.exoplayer.source.MediaSource;
import androidx.media3.exoplayer.source.TrackGroupArray;
import androidx.media3.exoplayer.upstream.BandwidthMeter;

/* JADX INFO: loaded from: classes4.dex */
public abstract class TrackSelector {
    private BandwidthMeter bandwidthMeter;
    private InvalidationListener listener;

    public interface InvalidationListener {
        void onRendererCapabilitiesChanged(Renderer renderer);

        void onTrackSelectionsInvalidated();
    }

    public abstract TrackSelectionParameters getParameters();

    public abstract RendererCapabilities.Listener getRendererCapabilitiesListener();

    public abstract boolean isSetParametersSupported();

    public abstract void onSelectionActivated(Object obj);

    public abstract TrackSelectorResult selectTracks(RendererCapabilities[] rendererCapabilitiesArr, TrackGroupArray trackGroupArray, MediaSource.MediaPeriodId mediaPeriodId, Timeline timeline);

    public abstract void setAudioAttributes(AudioAttributes audioAttributes);

    public abstract void setParameters(TrackSelectionParameters trackSelectionParameters);

    public void init(InvalidationListener invalidationListener, BandwidthMeter bandwidthMeter) {
        Assertions.checkState(this.listener == null);
        this.listener = invalidationListener;
        this.bandwidthMeter = bandwidthMeter;
    }

    public void release() {
        this.listener = null;
        this.bandwidthMeter = null;
    }

    public final void invalidate() {
        InvalidationListener invalidationListener = this.listener;
        if (invalidationListener != null) {
            invalidationListener.onTrackSelectionsInvalidated();
        }
    }

    public final void invalidateForRendererCapabilitiesChange(Renderer renderer) {
        InvalidationListener invalidationListener = this.listener;
        if (invalidationListener != null) {
            invalidationListener.onRendererCapabilitiesChanged(renderer);
        }
    }

    public final BandwidthMeter getBandwidthMeter() {
        return (BandwidthMeter) Assertions.checkStateNotNull(this.bandwidthMeter);
    }
}
