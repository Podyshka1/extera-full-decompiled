package com.google.android.exoplayer2.extractor;

/* JADX INFO: loaded from: classes4.dex */
public interface Extractor {
    void init(ExtractorOutput extractorOutput);

    int read(ExtractorInput extractorInput, PositionHolder positionHolder);

    void release();

    void seek(long j, long j2);

    boolean sniff(ExtractorInput extractorInput);
}
