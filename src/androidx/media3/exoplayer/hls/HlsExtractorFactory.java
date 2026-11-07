package androidx.media3.exoplayer.hls;

import android.net.Uri;
import androidx.media3.common.Format;
import androidx.media3.common.util.TimestampAdjuster;
import androidx.media3.exoplayer.analytics.PlayerId;
import androidx.media3.extractor.ExtractorInput;
import androidx.media3.extractor.text.SubtitleParser;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public interface HlsExtractorFactory {
    HlsMediaChunkExtractor createExtractor(Uri uri, Format format, List<Format> list, TimestampAdjuster timestampAdjuster, Map<String, List<String>> map, ExtractorInput extractorInput, PlayerId playerId);

    HlsExtractorFactory experimentalParseSubtitlesDuringExtraction(boolean z);

    HlsExtractorFactory experimentalSetCodecsToParseWithinGopSampleDependencies(int i);

    Format getOutputTextFormat(Format format);

    HlsExtractorFactory setSubtitleParserFactory(SubtitleParser.Factory factory);
}
