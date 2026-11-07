package androidx.media3.exoplayer.source.chunk;

import androidx.media3.common.Format;
import androidx.media3.exoplayer.analytics.PlayerId;
import androidx.media3.extractor.ChunkIndex;
import androidx.media3.extractor.ExtractorInput;
import androidx.media3.extractor.TrackOutput;
import androidx.media3.extractor.text.SubtitleParser;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public interface ChunkExtractor {

    public interface Factory {
        ChunkExtractor createProgressiveMediaExtractor(int i, Format format, boolean z, List<Format> list, TrackOutput trackOutput, PlayerId playerId);

        Factory experimentalParseSubtitlesDuringExtraction(boolean z);

        Factory experimentalSetCodecsToParseWithinGopSampleDependencies(int i);

        Format getOutputTextFormat(Format format);

        Factory setSubtitleParserFactory(SubtitleParser.Factory factory);
    }

    public interface TrackOutputProvider {
        TrackOutput track(int i, int i2);
    }

    ChunkIndex getChunkIndex();

    Format[] getSampleFormats();

    void init(TrackOutputProvider trackOutputProvider, long j, long j2);

    boolean read(ExtractorInput extractorInput);

    void release();
}
