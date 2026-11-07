package androidx.media3.extractor;

import android.net.Uri;
import androidx.media3.extractor.text.SubtitleParser;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public interface ExtractorsFactory {
    public static final ExtractorsFactory EMPTY = new ExtractorsFactory() { // from class: androidx.media3.extractor.ExtractorsFactory$$ExternalSyntheticLambda0
        @Override // androidx.media3.extractor.ExtractorsFactory
        public final Extractor[] createExtractors() {
            return ExtractorsFactory.$r8$lambda$Km_UToGAasPNMKzsvW0dtCSXBAI();
        }
    };

    Extractor[] createExtractors();

    default ExtractorsFactory experimentalSetCodecsToParseWithinGopSampleDependencies(int i) {
        return this;
    }

    @Deprecated
    default ExtractorsFactory experimentalSetTextTrackTranscodingEnabled(boolean z) {
        return this;
    }

    default ExtractorsFactory setSubtitleParserFactory(SubtitleParser.Factory factory) {
        return this;
    }

    static /* synthetic */ Extractor[] $r8$lambda$Km_UToGAasPNMKzsvW0dtCSXBAI() {
        return new Extractor[0];
    }

    default Extractor[] createExtractors(Uri uri, Map<String, List<String>> map) {
        return createExtractors();
    }
}
