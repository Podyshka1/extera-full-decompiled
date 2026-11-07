package androidx.media3.extractor.heif;

import androidx.media3.extractor.Extractor;
import androidx.media3.extractor.ExtractorInput;
import androidx.media3.extractor.ExtractorOutput;
import androidx.media3.extractor.PositionHolder;
import androidx.media3.extractor.SingleSampleExtractor;

/* JADX INFO: loaded from: classes4.dex */
public final class HeifExtractor implements Extractor {
    private final boolean extractImage;
    private final Extractor extractor;

    public HeifExtractor(int i) {
        boolean z = (i & 1) != 0;
        this.extractImage = z;
        if (z) {
            this.extractor = new SingleSampleExtractor(-1, -1, "image/heif");
        } else {
            this.extractor = new HeicMotionPhotoExtractor();
        }
    }

    @Override // androidx.media3.extractor.Extractor
    public boolean sniff(ExtractorInput extractorInput) {
        if (this.extractImage) {
            return HeifSniffer.sniff(extractorInput, false);
        }
        return this.extractor.sniff(extractorInput);
    }

    @Override // androidx.media3.extractor.Extractor
    public void init(ExtractorOutput extractorOutput) {
        this.extractor.init(extractorOutput);
    }

    @Override // androidx.media3.extractor.Extractor
    public int read(ExtractorInput extractorInput, PositionHolder positionHolder) {
        return this.extractor.read(extractorInput, positionHolder);
    }

    @Override // androidx.media3.extractor.Extractor
    public void seek(long j, long j2) {
        this.extractor.seek(j, j2);
    }

    @Override // androidx.media3.extractor.Extractor
    public void release() {
        this.extractor.release();
    }
}
