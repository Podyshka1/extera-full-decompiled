package com.google.android.exoplayer2.source;

import android.net.Uri;
import com.google.android.exoplayer2.extractor.DefaultExtractorInput;
import com.google.android.exoplayer2.extractor.Extractor;
import com.google.android.exoplayer2.extractor.ExtractorInput;
import com.google.android.exoplayer2.extractor.ExtractorOutput;
import com.google.android.exoplayer2.extractor.ExtractorsFactory;
import com.google.android.exoplayer2.extractor.PositionHolder;
import com.google.android.exoplayer2.extractor.mp3.Mp3Extractor;
import com.google.android.exoplayer2.upstream.DataReader;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.Util;
import java.io.EOFException;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class BundledExtractorsAdapter implements ProgressiveMediaExtractor {
    private Extractor extractor;
    private ExtractorInput extractorInput;
    private final ExtractorsFactory extractorsFactory;

    public BundledExtractorsAdapter(ExtractorsFactory extractorsFactory) {
        this.extractorsFactory = extractorsFactory;
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x0046  */
    @Override // com.google.android.exoplayer2.source.ProgressiveMediaExtractor
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void init(DataReader dataReader, Uri uri, Map map, long j, long j2, ExtractorOutput extractorOutput) throws UnrecognizedInputFormatException {
        boolean z;
        DefaultExtractorInput defaultExtractorInput = new DefaultExtractorInput(dataReader, j, j2);
        this.extractorInput = defaultExtractorInput;
        if (this.extractor != null) {
            return;
        }
        Extractor[] extractorArrCreateExtractors = this.extractorsFactory.createExtractors(uri, map);
        if (extractorArrCreateExtractors.length == 1) {
            this.extractor = extractorArrCreateExtractors[0];
        } else {
            int length = extractorArrCreateExtractors.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    break;
                }
                Extractor extractor = extractorArrCreateExtractors[i];
                try {
                } catch (EOFException unused) {
                    if (this.extractor != null || defaultExtractorInput.getPosition() == j) {
                    }
                } catch (Throwable th) {
                    Assertions.checkState(this.extractor != null || defaultExtractorInput.getPosition() == j);
                    defaultExtractorInput.resetPeekPosition();
                    throw th;
                }
                if (extractor.sniff(defaultExtractorInput)) {
                    this.extractor = extractor;
                    Assertions.checkState(true);
                    defaultExtractorInput.resetPeekPosition();
                    break;
                } else {
                    if (this.extractor != null || defaultExtractorInput.getPosition() == j) {
                        z = true;
                    }
                    Assertions.checkState(z);
                    defaultExtractorInput.resetPeekPosition();
                    i++;
                }
                z = false;
                Assertions.checkState(z);
                defaultExtractorInput.resetPeekPosition();
                i++;
            }
            if (this.extractor == null) {
                throw new UnrecognizedInputFormatException("None of the available extractors (" + Util.getCommaDelimitedSimpleClassNames(extractorArrCreateExtractors) + ") could read the stream.", (Uri) Assertions.checkNotNull(uri));
            }
        }
        this.extractor.init(extractorOutput);
    }

    @Override // com.google.android.exoplayer2.source.ProgressiveMediaExtractor
    public void release() {
        Extractor extractor = this.extractor;
        if (extractor != null) {
            extractor.release();
            this.extractor = null;
        }
        this.extractorInput = null;
    }

    @Override // com.google.android.exoplayer2.source.ProgressiveMediaExtractor
    public void disableSeekingOnMp3Streams() {
        Extractor extractor = this.extractor;
        if (extractor instanceof Mp3Extractor) {
            ((Mp3Extractor) extractor).disableSeeking();
        }
    }

    @Override // com.google.android.exoplayer2.source.ProgressiveMediaExtractor
    public long getCurrentInputPosition() {
        ExtractorInput extractorInput = this.extractorInput;
        if (extractorInput != null) {
            return extractorInput.getPosition();
        }
        return -1L;
    }

    @Override // com.google.android.exoplayer2.source.ProgressiveMediaExtractor
    public void seek(long j, long j2) {
        ((Extractor) Assertions.checkNotNull(this.extractor)).seek(j, j2);
    }

    @Override // com.google.android.exoplayer2.source.ProgressiveMediaExtractor
    public int read(PositionHolder positionHolder) {
        return ((Extractor) Assertions.checkNotNull(this.extractor)).read((ExtractorInput) Assertions.checkNotNull(this.extractorInput), positionHolder);
    }
}
