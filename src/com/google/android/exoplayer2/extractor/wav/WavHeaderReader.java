package com.google.android.exoplayer2.extractor.wav;

import android.util.Pair;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.extractor.ExtractorInput;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.Log;
import com.google.android.exoplayer2.util.ParsableByteArray;
import com.google.android.exoplayer2.util.Util;

/* JADX INFO: loaded from: classes4.dex */
abstract class WavHeaderReader {
    public static boolean checkFileType(ExtractorInput extractorInput) {
        ParsableByteArray parsableByteArray = new ParsableByteArray(8);
        int i = ChunkHeader.peek(extractorInput, parsableByteArray).f315id;
        if (i != 1380533830 && i != 1380333108) {
            return false;
        }
        extractorInput.peekFully(parsableByteArray.getData(), 0, 4);
        parsableByteArray.setPosition(0);
        int i2 = parsableByteArray.readInt();
        if (i2 == 1463899717) {
            return true;
        }
        Log.m325e("WavHeaderReader", "Unsupported form type: " + i2);
        return false;
    }

    public static long readRf64SampleDataSize(ExtractorInput extractorInput) {
        ParsableByteArray parsableByteArray = new ParsableByteArray(8);
        ChunkHeader chunkHeaderPeek = ChunkHeader.peek(extractorInput, parsableByteArray);
        if (chunkHeaderPeek.f315id != 1685272116) {
            extractorInput.resetPeekPosition();
            return -1L;
        }
        extractorInput.advancePeekPosition(8);
        parsableByteArray.setPosition(0);
        extractorInput.peekFully(parsableByteArray.getData(), 0, 8);
        long littleEndianLong = parsableByteArray.readLittleEndianLong();
        extractorInput.skipFully(((int) chunkHeaderPeek.size) + 8);
        return littleEndianLong;
    }

    public static WavFormat readFormat(ExtractorInput extractorInput) throws ParserException {
        byte[] bArr;
        ParsableByteArray parsableByteArray = new ParsableByteArray(16);
        ChunkHeader chunkHeaderSkipToChunk = skipToChunk(1718449184, extractorInput, parsableByteArray);
        Assertions.checkState(chunkHeaderSkipToChunk.size >= 16);
        extractorInput.peekFully(parsableByteArray.getData(), 0, 16);
        parsableByteArray.setPosition(0);
        int littleEndianUnsignedShort = parsableByteArray.readLittleEndianUnsignedShort();
        int littleEndianUnsignedShort2 = parsableByteArray.readLittleEndianUnsignedShort();
        int littleEndianUnsignedIntToInt = parsableByteArray.readLittleEndianUnsignedIntToInt();
        int littleEndianUnsignedIntToInt2 = parsableByteArray.readLittleEndianUnsignedIntToInt();
        int littleEndianUnsignedShort3 = parsableByteArray.readLittleEndianUnsignedShort();
        int littleEndianUnsignedShort4 = parsableByteArray.readLittleEndianUnsignedShort();
        int i = ((int) chunkHeaderSkipToChunk.size) - 16;
        if (i > 0) {
            bArr = new byte[i];
            extractorInput.peekFully(bArr, 0, i);
        } else {
            bArr = Util.EMPTY_BYTE_ARRAY;
        }
        byte[] bArr2 = bArr;
        extractorInput.skipFully((int) (extractorInput.getPeekPosition() - extractorInput.getPosition()));
        return new WavFormat(littleEndianUnsignedShort, littleEndianUnsignedShort2, littleEndianUnsignedIntToInt, littleEndianUnsignedIntToInt2, littleEndianUnsignedShort3, littleEndianUnsignedShort4, bArr2);
    }

    public static Pair skipToSampleData(ExtractorInput extractorInput) throws ParserException {
        extractorInput.resetPeekPosition();
        ChunkHeader chunkHeaderSkipToChunk = skipToChunk(1684108385, extractorInput, new ParsableByteArray(8));
        extractorInput.skipFully(8);
        return Pair.create(Long.valueOf(extractorInput.getPosition()), Long.valueOf(chunkHeaderSkipToChunk.size));
    }

    private static ChunkHeader skipToChunk(int i, ExtractorInput extractorInput, ParsableByteArray parsableByteArray) throws ParserException {
        ChunkHeader chunkHeaderPeek = ChunkHeader.peek(extractorInput, parsableByteArray);
        while (chunkHeaderPeek.f315id != i) {
            Log.m329w("WavHeaderReader", "Ignoring unknown WAV chunk: " + chunkHeaderPeek.f315id);
            long j = chunkHeaderPeek.size + 8;
            if (j > 2147483647L) {
                throw ParserException.createForUnsupportedContainerFeature("Chunk is too large (~2GB+) to skip; id: " + chunkHeaderPeek.f315id);
            }
            extractorInput.skipFully((int) j);
            chunkHeaderPeek = ChunkHeader.peek(extractorInput, parsableByteArray);
        }
        return chunkHeaderPeek;
    }

    private static final class ChunkHeader {

        /* JADX INFO: renamed from: id */
        public final int f315id;
        public final long size;

        private ChunkHeader(int i, long j) {
            this.f315id = i;
            this.size = j;
        }

        public static ChunkHeader peek(ExtractorInput extractorInput, ParsableByteArray parsableByteArray) {
            extractorInput.peekFully(parsableByteArray.getData(), 0, 8);
            parsableByteArray.setPosition(0);
            return new ChunkHeader(parsableByteArray.readInt(), parsableByteArray.readLittleEndianUnsignedInt());
        }
    }
}
