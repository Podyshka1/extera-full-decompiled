package androidx.media3.exoplayer.source;

import androidx.media3.common.Format;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.util.Util;
import androidx.media3.decoder.DecoderInputBuffer;
import androidx.media3.exoplayer.FormatHolder;
import androidx.media3.exoplayer.LoadingInfo;
import androidx.media3.exoplayer.SeekParameters;
import androidx.media3.exoplayer.source.ClippingMediaSource;
import androidx.media3.exoplayer.source.MediaPeriod;
import androidx.media3.exoplayer.trackselection.ExoTrackSelection;
import com.google.common.base.Preconditions;
import kotlin.jvm.internal.LongCompanionObject;

/* JADX INFO: loaded from: classes4.dex */
public final class ClippingMediaPeriod implements MediaPeriod, MediaPeriod.Callback {
    private MediaPeriod.Callback callback;
    private ClippingMediaSource.IllegalClippingException clippingError;
    private final boolean enableClippingInMediaPeriod;
    long endUs;
    private boolean isPeriodClippingEndPosition;
    private long lastReportedDiscontinuityUs;
    public final MediaPeriod mediaPeriod;
    private long pendingInitialDiscontinuityPositionUs;
    private ClippingSampleStream[] sampleStreams;
    long startUs;

    public ClippingMediaPeriod(MediaPeriod mediaPeriod, boolean z, long j, long j2) {
        this(mediaPeriod, z, j, j2, false);
    }

    public ClippingMediaPeriod(MediaPeriod mediaPeriod, boolean z, long j, long j2, boolean z2) {
        this.mediaPeriod = mediaPeriod;
        this.sampleStreams = new ClippingSampleStream[0];
        this.pendingInitialDiscontinuityPositionUs = z ? j : -9223372036854775807L;
        this.lastReportedDiscontinuityUs = -9223372036854775807L;
        this.enableClippingInMediaPeriod = z2;
        updateClipping(j, j2);
    }

    public void updateClipping(long j, long j2) {
        this.startUs = j;
        this.endUs = j2;
        if (this.enableClippingInMediaPeriod) {
            long endPositionUs = this.mediaPeriod.setEndPositionUs(j2);
            Preconditions.checkState(endPositionUs == Long.MIN_VALUE || endPositionUs == j2, "Period updating end positions not supported, %s!=%s", endPositionUs, j2);
            this.isPeriodClippingEndPosition = endPositionUs == j2;
        }
    }

    public void setClippingError(ClippingMediaSource.IllegalClippingException illegalClippingException) {
        this.clippingError = illegalClippingException;
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod
    public void prepare(MediaPeriod.Callback callback, long j) {
        this.callback = callback;
        this.mediaPeriod.prepare(this, j);
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod
    public void maybeThrowPrepareError() throws ClippingMediaSource.IllegalClippingException {
        ClippingMediaSource.IllegalClippingException illegalClippingException = this.clippingError;
        if (illegalClippingException != null) {
            throw illegalClippingException;
        }
        this.mediaPeriod.maybeThrowPrepareError();
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod
    public TrackGroupArray getTrackGroups() {
        return this.mediaPeriod.getTrackGroups();
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod
    public long selectTracks(ExoTrackSelection[] exoTrackSelectionArr, boolean[] zArr, SampleStream[] sampleStreamArr, boolean[] zArr2, long j) {
        this.sampleStreams = new ClippingSampleStream[sampleStreamArr.length];
        SampleStream[] sampleStreamArr2 = new SampleStream[sampleStreamArr.length];
        int i = 0;
        while (true) {
            SampleStream sampleStream = null;
            if (i >= sampleStreamArr.length) {
                break;
            }
            ClippingSampleStream[] clippingSampleStreamArr = this.sampleStreams;
            ClippingSampleStream clippingSampleStream = (ClippingSampleStream) sampleStreamArr[i];
            clippingSampleStreamArr[i] = clippingSampleStream;
            if (clippingSampleStream != null) {
                sampleStream = clippingSampleStream.childStream;
            }
            sampleStreamArr2[i] = sampleStream;
            i++;
        }
        long jSelectTracks = this.mediaPeriod.selectTracks(exoTrackSelectionArr, zArr, sampleStreamArr2, zArr2, j);
        long jEnforceClippingRange = enforceClippingRange(jSelectTracks, j, this.endUs);
        this.pendingInitialDiscontinuityPositionUs = (isPendingInitialDiscontinuity() && shouldKeepInitialDiscontinuity(jSelectTracks, j, exoTrackSelectionArr)) ? jEnforceClippingRange : -9223372036854775807L;
        for (int i2 = 0; i2 < sampleStreamArr.length; i2++) {
            SampleStream sampleStream2 = sampleStreamArr2[i2];
            ClippingSampleStream[] clippingSampleStreamArr2 = this.sampleStreams;
            if (sampleStream2 == null) {
                clippingSampleStreamArr2[i2] = null;
            } else {
                ClippingSampleStream clippingSampleStream2 = clippingSampleStreamArr2[i2];
                if (clippingSampleStream2 == null || clippingSampleStream2.childStream != sampleStream2) {
                    clippingSampleStreamArr2[i2] = new ClippingSampleStream(sampleStream2);
                }
            }
            sampleStreamArr[i2] = this.sampleStreams[i2];
        }
        return jEnforceClippingRange;
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod
    public void discardBuffer(long j, boolean z) {
        this.mediaPeriod.discardBuffer(j, z);
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod, androidx.media3.exoplayer.source.SequenceableLoader
    public void reevaluateBuffer(long j) {
        this.mediaPeriod.reevaluateBuffer(j);
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod
    public long readDiscontinuity() {
        if (isPendingInitialDiscontinuity()) {
            long j = this.pendingInitialDiscontinuityPositionUs;
            this.pendingInitialDiscontinuityPositionUs = -9223372036854775807L;
            this.lastReportedDiscontinuityUs = j;
            long discontinuity = readDiscontinuity();
            return discontinuity != -9223372036854775807L ? discontinuity : j;
        }
        long discontinuity2 = this.mediaPeriod.readDiscontinuity();
        if (discontinuity2 == -9223372036854775807L) {
            return -9223372036854775807L;
        }
        long jEnforceClippingRange = enforceClippingRange(discontinuity2, this.startUs, this.endUs);
        if (jEnforceClippingRange == this.lastReportedDiscontinuityUs) {
            return -9223372036854775807L;
        }
        this.lastReportedDiscontinuityUs = jEnforceClippingRange;
        return jEnforceClippingRange;
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod, androidx.media3.exoplayer.source.SequenceableLoader
    public long getBufferedPositionUs() {
        long bufferedPositionUs = this.mediaPeriod.getBufferedPositionUs();
        if (!this.isPeriodClippingEndPosition) {
            if (bufferedPositionUs != Long.MIN_VALUE) {
                long j = this.endUs;
                if (j == Long.MIN_VALUE || bufferedPositionUs < j) {
                }
            }
            return Long.MIN_VALUE;
        }
        long j2 = this.endUs;
        if (j2 != Long.MIN_VALUE && bufferedPositionUs != Long.MIN_VALUE) {
            return Math.min(j2, bufferedPositionUs);
        }
        return bufferedPositionUs;
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod
    public long seekToUs(long j) {
        this.pendingInitialDiscontinuityPositionUs = -9223372036854775807L;
        for (ClippingSampleStream clippingSampleStream : this.sampleStreams) {
            if (clippingSampleStream != null) {
                clippingSampleStream.clearSentEos();
            }
        }
        return enforceClippingRange(this.mediaPeriod.seekToUs(j), this.startUs, this.endUs);
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod
    public long getAdjustedSeekPositionUs(long j, SeekParameters seekParameters) {
        long j2 = this.startUs;
        if (j == j2) {
            return j2;
        }
        return this.mediaPeriod.getAdjustedSeekPositionUs(j, clipSeekParameters(j, seekParameters));
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod, androidx.media3.exoplayer.source.SequenceableLoader
    public long getNextLoadPositionUs() {
        long nextLoadPositionUs = this.mediaPeriod.getNextLoadPositionUs();
        if (!this.isPeriodClippingEndPosition) {
            if (nextLoadPositionUs != Long.MIN_VALUE) {
                long j = this.endUs;
                if (j == Long.MIN_VALUE || nextLoadPositionUs < j) {
                }
            }
            return Long.MIN_VALUE;
        }
        long j2 = this.endUs;
        if (j2 != Long.MIN_VALUE && nextLoadPositionUs != Long.MIN_VALUE) {
            return Math.min(j2, nextLoadPositionUs);
        }
        return nextLoadPositionUs;
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod, androidx.media3.exoplayer.source.SequenceableLoader
    public boolean continueLoading(LoadingInfo loadingInfo) {
        return this.mediaPeriod.continueLoading(loadingInfo);
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod, androidx.media3.exoplayer.source.SequenceableLoader
    public boolean isLoading() {
        return this.mediaPeriod.isLoading();
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod.Callback
    public void onPrepared(MediaPeriod mediaPeriod) {
        if (this.clippingError != null) {
            return;
        }
        ((MediaPeriod.Callback) Preconditions.checkNotNull(this.callback)).onPrepared(this);
    }

    @Override // androidx.media3.exoplayer.source.SequenceableLoader.Callback
    public void onContinueLoadingRequested(MediaPeriod mediaPeriod) {
        ((MediaPeriod.Callback) Preconditions.checkNotNull(this.callback)).onContinueLoadingRequested(this);
    }

    public boolean isPendingInitialDiscontinuity() {
        return this.pendingInitialDiscontinuityPositionUs != -9223372036854775807L;
    }

    private SeekParameters clipSeekParameters(long j, SeekParameters seekParameters) {
        long jConstrainValue = Util.constrainValue(seekParameters.toleranceBeforeUs, 0L, j - this.startUs);
        long j2 = seekParameters.toleranceAfterUs;
        long j3 = this.endUs;
        long jConstrainValue2 = Util.constrainValue(j2, 0L, j3 == Long.MIN_VALUE ? LongCompanionObject.MAX_VALUE : j3 - j);
        return (jConstrainValue == seekParameters.toleranceBeforeUs && jConstrainValue2 == seekParameters.toleranceAfterUs) ? seekParameters : new SeekParameters(jConstrainValue, jConstrainValue2);
    }

    private static boolean shouldKeepInitialDiscontinuity(long j, long j2, ExoTrackSelection[] exoTrackSelectionArr) {
        if (j < j2) {
            return true;
        }
        if (j != 0) {
            for (ExoTrackSelection exoTrackSelection : exoTrackSelectionArr) {
                if (exoTrackSelection != null) {
                    Format selectedFormat = exoTrackSelection.getSelectedFormat();
                    if (!MimeTypes.allSamplesAreSyncSamples(selectedFormat.sampleMimeType, selectedFormat.codecs)) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    private static long enforceClippingRange(long j, long j2, long j3) {
        long jMax = Math.max(j, j2);
        return j3 != Long.MIN_VALUE ? Math.min(jMax, j3) : jMax;
    }

    public final class ClippingSampleStream implements SampleStream {
        public final SampleStream childStream;
        private boolean sentEos;

        public ClippingSampleStream(SampleStream sampleStream) {
            this.childStream = sampleStream;
        }

        public void clearSentEos() {
            this.sentEos = false;
        }

        @Override // androidx.media3.exoplayer.source.SampleStream
        public boolean isReady() {
            return !ClippingMediaPeriod.this.isPendingInitialDiscontinuity() && this.childStream.isReady();
        }

        @Override // androidx.media3.exoplayer.source.SampleStream
        public void maybeThrowError() {
            this.childStream.maybeThrowError();
        }

        @Override // androidx.media3.exoplayer.source.SampleStream
        public int readData(FormatHolder formatHolder, DecoderInputBuffer decoderInputBuffer, int i) {
            if (ClippingMediaPeriod.this.isPendingInitialDiscontinuity()) {
                return -3;
            }
            if (ClippingMediaPeriod.this.isPeriodClippingEndPosition) {
                int data = this.childStream.readData(formatHolder, decoderInputBuffer, i);
                if (data != -5) {
                    return data;
                }
                ClippingMediaPeriod clippingMediaPeriod = ClippingMediaPeriod.this;
                ClippingMediaPeriod.updateDecoderDelayPaddingForClipping(formatHolder, clippingMediaPeriod.startUs, clippingMediaPeriod.endUs);
                return -5;
            }
            if (this.sentEos) {
                decoderInputBuffer.setFlags(4);
                return -4;
            }
            long bufferedPositionUs = ClippingMediaPeriod.this.getBufferedPositionUs();
            int data2 = this.childStream.readData(formatHolder, decoderInputBuffer, i);
            if (ClippingMediaPeriod.this.lastReportedDiscontinuityUs != -9223372036854775807L && data2 != -3) {
                ClippingMediaPeriod.this.lastReportedDiscontinuityUs = -9223372036854775807L;
            }
            ClippingMediaPeriod clippingMediaPeriod2 = ClippingMediaPeriod.this;
            if (data2 == -5) {
                ClippingMediaPeriod.updateDecoderDelayPaddingForClipping(formatHolder, clippingMediaPeriod2.startUs, clippingMediaPeriod2.endUs);
                return -5;
            }
            long j = clippingMediaPeriod2.endUs;
            if (j == Long.MIN_VALUE || ((data2 != -4 || decoderInputBuffer.timeUs < j) && !(data2 == -3 && bufferedPositionUs == Long.MIN_VALUE && !decoderInputBuffer.waitingForKeys))) {
                return data2;
            }
            decoderInputBuffer.clear();
            decoderInputBuffer.setFlags(4);
            this.sentEos = true;
            return -4;
        }

        @Override // androidx.media3.exoplayer.source.SampleStream
        public int skipData(long j) {
            if (ClippingMediaPeriod.this.isPendingInitialDiscontinuity()) {
                return -3;
            }
            return this.childStream.skipData(j);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void updateDecoderDelayPaddingForClipping(FormatHolder formatHolder, long j, long j2) {
        Format format = (Format) Preconditions.checkNotNull(formatHolder.format);
        int i = format.encoderDelay;
        if (i == 0 && format.encoderPadding == 0) {
            return;
        }
        if (j != 0) {
            i = 0;
        }
        formatHolder.format = format.buildUpon().setEncoderDelay(i).setEncoderPadding(j2 == Long.MIN_VALUE ? format.encoderPadding : 0).build();
    }
}
