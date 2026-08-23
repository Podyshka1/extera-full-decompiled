package com.google.android.exoplayer2.extractor.p018ts;

import android.net.Uri;
import com.google.android.exoplayer2.audio.Ac4Util;
import com.google.android.exoplayer2.extractor.Extractor;
import com.google.android.exoplayer2.extractor.ExtractorInput;
import com.google.android.exoplayer2.extractor.ExtractorOutput;
import com.google.android.exoplayer2.extractor.ExtractorsFactory;
import com.google.android.exoplayer2.extractor.PositionHolder;
import com.google.android.exoplayer2.extractor.SeekMap;
import com.google.android.exoplayer2.extractor.p018ts.TsPayloadReader;
import com.google.android.exoplayer2.util.ParsableByteArray;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class Ac4Extractor implements Extractor {
    public static final ExtractorsFactory FACTORY = new ExtractorsFactory() { // from class: com.google.android.exoplayer2.extractor.ts.Ac4Extractor$$ExternalSyntheticLambda0
        @Override // com.google.android.exoplayer2.extractor.ExtractorsFactory
        public final Extractor[] createExtractors() {
            return Ac4Extractor.$r8$lambda$N5Xzrew3bu4TmTBktQJk6bj3_p4();
        }

        @Override // com.google.android.exoplayer2.extractor.ExtractorsFactory
        public /* synthetic */ Extractor[] createExtractors(Uri uri, Map map) {
            return createExtractors();
        }
    };
    private final Ac4Reader reader = new Ac4Reader();
    private final ParsableByteArray sampleData = new ParsableByteArray(16384);
    private boolean startedPacket;

    @Override // com.google.android.exoplayer2.extractor.Extractor
    public void release() {
    }

    public static /* synthetic */ Extractor[] $r8$lambda$N5Xzrew3bu4TmTBktQJk6bj3_p4() {
        return new Extractor[]{new Ac4Extractor()};
    }

    @Override // com.google.android.exoplayer2.extractor.Extractor
    public boolean sniff(ExtractorInput extractorInput) {
        ParsableByteArray parsableByteArray = new ParsableByteArray(10);
        int i = 0;
        while (true) {
            extractorInput.peekFully(parsableByteArray.getData(), 0, 10);
            parsableByteArray.setPosition(0);
            if (parsableByteArray.readUnsignedInt24() != 4801587) {
                break;
            }
            parsableByteArray.skipBytes(3);
            int synchSafeInt = parsableByteArray.readSynchSafeInt();
            i += synchSafeInt + 10;
            extractorInput.advancePeekPosition(synchSafeInt);
        }
        extractorInput.resetPeekPosition();
        extractorInput.advancePeekPosition(i);
        int i2 = 0;
        int i3 = i;
        while (true) {
            extractorInput.peekFully(parsableByteArray.getData(), 0, 7);
            parsableByteArray.setPosition(0);
            int unsignedShort = parsableByteArray.readUnsignedShort();
            if (unsignedShort == 44096 || unsignedShort == 44097) {
                i2++;
                if (i2 >= 4) {
                    return true;
                }
                int ac4SyncframeSize = Ac4Util.parseAc4SyncframeSize(parsableByteArray.getData(), unsignedShort);
                if (ac4SyncframeSize == -1) {
                    return false;
                }
                extractorInput.advancePeekPosition(ac4SyncframeSize - 7);
            } else {
                extractorInput.resetPeekPosition();
                i3++;
                if (i3 - i >= 8192) {
                    return false;
                }
                extractorInput.advancePeekPosition(i3);
                i2 = 0;
            }
        }
    }

    @Override // com.google.android.exoplayer2.extractor.Extractor
    public void init(ExtractorOutput extractorOutput) {
        this.reader.createTracks(extractorOutput, new TsPayloadReader.TrackIdGenerator(0, 1));
        extractorOutput.endTracks();
        extractorOutput.seekMap(new SeekMap.Unseekable(-9223372036854775807L));
    }

    @Override // com.google.android.exoplayer2.extractor.Extractor
    public void seek(long j, long j2) {
        this.startedPacket = false;
        this.reader.seek();
    }

    @Override // com.google.android.exoplayer2.extractor.Extractor
    public int read(ExtractorInput extractorInput, PositionHolder positionHolder) {
        int i = extractorInput.read(this.sampleData.getData(), 0, 16384);
        if (i == -1) {
            return -1;
        }
        this.sampleData.setPosition(0);
        this.sampleData.setLimit(i);
        if (!this.startedPacket) {
            this.reader.packetStarted(0L, 4);
            this.startedPacket = true;
        }
        this.reader.consume(this.sampleData);
        return 0;
    }
}
