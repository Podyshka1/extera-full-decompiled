package androidx.media3.extractor;

import androidx.media3.common.Format;

/* JADX INFO: loaded from: classes4.dex */
public abstract class ForwardingTrackOutput implements TrackOutput {
    private final TrackOutput trackOutput;

    public ForwardingTrackOutput(TrackOutput trackOutput) {
        this.trackOutput = trackOutput;
    }

    @Override // androidx.media3.extractor.TrackOutput
    public void durationUs(long j) {
        this.trackOutput.durationUs(j);
    }

    @Override // androidx.media3.extractor.TrackOutput
    public void format(Format format) {
        this.trackOutput.format(format);
    }
}
