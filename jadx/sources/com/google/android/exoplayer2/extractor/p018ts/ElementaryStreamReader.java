package com.google.android.exoplayer2.extractor.p018ts;

import com.google.android.exoplayer2.extractor.ExtractorOutput;
import com.google.android.exoplayer2.extractor.p018ts.TsPayloadReader;
import com.google.android.exoplayer2.util.ParsableByteArray;

/* JADX INFO: loaded from: classes4.dex */
public interface ElementaryStreamReader {
    void consume(ParsableByteArray parsableByteArray);

    void createTracks(ExtractorOutput extractorOutput, TsPayloadReader.TrackIdGenerator trackIdGenerator);

    void packetFinished();

    void packetStarted(long j, int i);

    void seek();
}
