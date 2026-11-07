package androidx.media3.exoplayer.trackselection;

import androidx.media3.exoplayer.source.chunk.Chunk;
import androidx.media3.exoplayer.source.chunk.MediaChunk;
import androidx.media3.exoplayer.source.chunk.MediaChunkIterator;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public abstract class ForwardingTrackSelection implements ExoTrackSelection {
    private final ExoTrackSelection trackSelection;

    public ForwardingTrackSelection(ExoTrackSelection exoTrackSelection) {
        this.trackSelection = exoTrackSelection;
    }

    public ExoTrackSelection getWrappedInstance() {
        return this.trackSelection;
    }

    @Override // androidx.media3.exoplayer.trackselection.ExoTrackSelection
    public void enable() {
        this.trackSelection.enable();
    }

    @Override // androidx.media3.exoplayer.trackselection.ExoTrackSelection
    public void disable() {
        this.trackSelection.disable();
    }

    @Override // androidx.media3.exoplayer.trackselection.ExoTrackSelection
    public int getSelectedIndexInTrackGroup() {
        return this.trackSelection.getSelectedIndexInTrackGroup();
    }

    @Override // androidx.media3.exoplayer.trackselection.ExoTrackSelection
    public int getSelectedIndex() {
        return this.trackSelection.getSelectedIndex();
    }

    @Override // androidx.media3.exoplayer.trackselection.ExoTrackSelection
    public int getSelectionReason() {
        return this.trackSelection.getSelectionReason();
    }

    @Override // androidx.media3.exoplayer.trackselection.ExoTrackSelection
    public Object getSelectionData() {
        return this.trackSelection.getSelectionData();
    }

    @Override // androidx.media3.exoplayer.trackselection.ExoTrackSelection
    public void onPlaybackSpeed(float f) {
        this.trackSelection.onPlaybackSpeed(f);
    }

    @Override // androidx.media3.exoplayer.trackselection.ExoTrackSelection
    public void onDiscontinuity() {
        this.trackSelection.onDiscontinuity();
    }

    @Override // androidx.media3.exoplayer.trackselection.ExoTrackSelection
    public void onRebuffer() {
        this.trackSelection.onRebuffer();
    }

    @Override // androidx.media3.exoplayer.trackselection.ExoTrackSelection
    public void onPlayWhenReadyChanged(boolean z) {
        this.trackSelection.onPlayWhenReadyChanged(z);
    }

    @Override // androidx.media3.exoplayer.trackselection.ExoTrackSelection
    public void updateSelectedTrack(long j, long j2, long j3, List<? extends MediaChunk> list, MediaChunkIterator[] mediaChunkIteratorArr) {
        this.trackSelection.updateSelectedTrack(j, j2, j3, list, mediaChunkIteratorArr);
    }

    @Override // androidx.media3.exoplayer.trackselection.ExoTrackSelection
    public int evaluateQueueSize(long j, List<? extends MediaChunk> list) {
        return this.trackSelection.evaluateQueueSize(j, list);
    }

    @Override // androidx.media3.exoplayer.trackselection.ExoTrackSelection
    public boolean shouldCancelChunkLoad(long j, Chunk chunk, List<? extends MediaChunk> list) {
        return this.trackSelection.shouldCancelChunkLoad(j, chunk, list);
    }

    @Override // androidx.media3.exoplayer.trackselection.ExoTrackSelection
    public boolean excludeTrack(int i, long j) {
        return this.trackSelection.excludeTrack(i, j);
    }

    @Override // androidx.media3.exoplayer.trackselection.ExoTrackSelection
    public boolean isTrackExcluded(int i, long j) {
        return this.trackSelection.isTrackExcluded(i, j);
    }

    @Override // androidx.media3.exoplayer.trackselection.TrackSelection
    public int length() {
        return this.trackSelection.length();
    }

    @Override // androidx.media3.exoplayer.trackselection.TrackSelection
    public int getIndexInTrackGroup(int i) {
        return this.trackSelection.getIndexInTrackGroup(i);
    }

    @Override // androidx.media3.exoplayer.trackselection.TrackSelection
    public int indexOf(int i) {
        return this.trackSelection.indexOf(i);
    }

    public int hashCode() {
        return this.trackSelection.hashCode();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof ForwardingTrackSelection) {
            return this.trackSelection.equals(((ForwardingTrackSelection) obj).trackSelection);
        }
        return false;
    }
}
