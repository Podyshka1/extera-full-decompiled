package com.google.android.exoplayer2.extractor.mkv;

import com.google.android.exoplayer2.extractor.ExtractorInput;

/* JADX INFO: loaded from: classes4.dex */
interface EbmlReader {
    void init(EbmlProcessor ebmlProcessor);

    boolean read(ExtractorInput extractorInput);

    void reset();
}
