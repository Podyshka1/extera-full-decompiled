package androidx.media3.exoplayer.source.chunk;

import androidx.media3.common.DataReader;
import androidx.media3.common.Format;
import androidx.media3.datasource.DataSource;
import androidx.media3.datasource.DataSourceUtil;
import androidx.media3.datasource.DataSpec;
import androidx.media3.extractor.DefaultExtractorInput;
import androidx.media3.extractor.TrackOutput;

/* JADX INFO: loaded from: classes4.dex */
@Deprecated
public final class SingleSampleMediaChunk extends BaseMediaChunk {
    private boolean loadCompleted;
    private long nextLoadPosition;
    private final Format sampleFormat;
    private final int trackType;

    @Override // androidx.media3.exoplayer.upstream.Loader.Loadable
    public void cancelLoad() {
    }

    public SingleSampleMediaChunk(DataSource dataSource, DataSpec dataSpec, Format format, int i, Object obj, long j, long j2, long j3, int i2, Format format2) {
        super(dataSource, dataSpec, format, i, obj, j, j2, -9223372036854775807L, -9223372036854775807L, j3);
        this.trackType = i2;
        this.sampleFormat = format2;
    }

    @Override // androidx.media3.exoplayer.source.chunk.MediaChunk
    public boolean isLoadCompleted() {
        return this.loadCompleted;
    }

    @Override // androidx.media3.exoplayer.upstream.Loader.Loadable
    public void load() {
        BaseMediaChunkOutput output = getOutput();
        output.setSampleOffsetUs(0L);
        int iSampleData = 0;
        TrackOutput trackOutputTrack = output.track(0, this.trackType);
        trackOutputTrack.format(this.sampleFormat);
        try {
            long jOpen = this.dataSource.open(this.dataSpec.subrange(this.nextLoadPosition));
            if (jOpen != -1) {
                jOpen += this.nextLoadPosition;
            }
            DefaultExtractorInput defaultExtractorInput = new DefaultExtractorInput(this.dataSource, this.nextLoadPosition, jOpen);
            while (true) {
                long j = this.nextLoadPosition;
                if (iSampleData != -1) {
                    this.nextLoadPosition = j + ((long) iSampleData);
                    iSampleData = trackOutputTrack.sampleData((DataReader) defaultExtractorInput, Integer.MAX_VALUE, true);
                } else {
                    trackOutputTrack.sampleMetadata(this.startTimeUs, 1, (int) j, 0, null);
                    DataSourceUtil.closeQuietly(this.dataSource);
                    this.loadCompleted = true;
                    return;
                }
            }
        } catch (Throwable th) {
            DataSourceUtil.closeQuietly(this.dataSource);
            throw th;
        }
    }
}
