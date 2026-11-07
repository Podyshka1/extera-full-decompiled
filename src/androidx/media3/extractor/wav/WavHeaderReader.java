package androidx.media3.extractor.wav;

import android.util.Pair;
import androidx.media3.common.ParserException;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.Util;
import androidx.media3.extractor.ExtractorInput;
import java.util.Arrays;
import kotlin.jvm.internal.ByteCompanionObject;

/* JADX INFO: loaded from: classes4.dex */
abstract class WavHeaderReader {
    private static final byte[] WAVEEXT_SUBFORMAT = {0, 0, 0, 0, 16, 0, ByteCompanionObject.MIN_VALUE, 0, 0, -86, 0, 56, -101, 113};
    private static final byte[] AMBISONIC_SUBFORMAT = {0, 0, 33, 7, -45, 17, -122, 68, -56, -63, -54, 0, 0, 0};

    public static boolean checkFileType(ExtractorInput extractorInput) {
        ParsableByteArray parsableByteArray = new ParsableByteArray(8);
        int i = ChunkHeader.peek(extractorInput, parsableByteArray).id;
        if (i != 1380533830 && i != 1380333108) {
            return false;
        }
        extractorInput.peekFully(parsableByteArray.getData(), 0, 4);
        parsableByteArray.setPosition(0);
        int i2 = parsableByteArray.readInt();
        if (i2 == 1463899717) {
            return true;
        }
        Log.m160e("WavHeaderReader", "Unsupported form type: " + i2);
        return false;
    }

    public static long readRf64SampleDataSize(ExtractorInput extractorInput) {
        ParsableByteArray parsableByteArray = new ParsableByteArray(8);
        ChunkHeader chunkHeaderPeek = ChunkHeader.peek(extractorInput, parsableByteArray);
        if (chunkHeaderPeek.id != 1685272116) {
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
            if (littleEndianUnsignedShort == 65534 && i == 24) {
                ParsableByteArray parsableByteArray2 = new ParsableByteArray(bArr);
                parsableByteArray2.readLittleEndianUnsignedShort();
                int littleEndianUnsignedShort5 = parsableByteArray2.readLittleEndianUnsignedShort();
                if (littleEndianUnsignedShort5 != 0 && littleEndianUnsignedShort5 != littleEndianUnsignedShort4) {
                    throw ParserException.createForUnsupportedContainerFeature("validBits ( " + littleEndianUnsignedShort5 + ")  != bitsPerSample( " + littleEndianUnsignedShort4 + ") are not supported");
                }
                int littleEndianUnsignedIntToInt3 = parsableByteArray2.readLittleEndianUnsignedIntToInt();
                if ((littleEndianUnsignedIntToInt3 >> 18) != 0) {
                    throw ParserException.createForUnsupportedContainerFeature("invalid channel mask " + littleEndianUnsignedIntToInt3);
                }
                if (littleEndianUnsignedIntToInt3 != 0 && Integer.bitCount(littleEndianUnsignedIntToInt3) != littleEndianUnsignedShort2) {
                    throw ParserException.createForUnsupportedContainerFeature("invalid number of channels (" + Integer.bitCount(littleEndianUnsignedIntToInt3) + ") in channel mask " + littleEndianUnsignedIntToInt3);
                }
                littleEndianUnsignedShort = parsableByteArray2.readLittleEndianUnsignedShort();
                byte[] bArr2 = new byte[14];
                parsableByteArray2.readBytes(bArr2, 0, 14);
                if (!Arrays.equals(bArr2, WAVEEXT_SUBFORMAT) && !Arrays.equals(bArr2, AMBISONIC_SUBFORMAT)) {
                    throw ParserException.createForUnsupportedContainerFeature("invalid wav format extension guid");
                }
            }
        } else {
            bArr = Util.EMPTY_BYTE_ARRAY;
        }
        byte[] bArr3 = bArr;
        int i2 = littleEndianUnsignedShort;
        extractorInput.skipFully((int) (extractorInput.getPeekPosition() - extractorInput.getPosition()));
        return new WavFormat(i2, littleEndianUnsignedShort2, littleEndianUnsignedIntToInt, littleEndianUnsignedIntToInt2, littleEndianUnsignedShort3, littleEndianUnsignedShort4, bArr3);
    }

    public static Pair<Long, Long> skipToSampleData(ExtractorInput extractorInput) throws ParserException {
        extractorInput.resetPeekPosition();
        ChunkHeader chunkHeaderSkipToChunk = skipToChunk(1684108385, extractorInput, new ParsableByteArray(8));
        extractorInput.skipFully(8);
        return Pair.create(Long.valueOf(extractorInput.getPosition()), Long.valueOf(chunkHeaderSkipToChunk.size));
    }

    private static ChunkHeader skipToChunk(int i, ExtractorInput extractorInput, ParsableByteArray parsableByteArray) throws ParserException {
        ChunkHeader chunkHeaderPeek = ChunkHeader.peek(extractorInput, parsableByteArray);
        while (chunkHeaderPeek.id != i) {
            Log.m163w("WavHeaderReader", "Ignoring unknown WAV chunk: " + chunkHeaderPeek.id);
            long j = chunkHeaderPeek.size;
            long j2 = 8 + j;
            if (j % 2 != 0) {
                j2 = 9 + j;
            }
            if (j2 > 2147483647L) {
                throw ParserException.createForUnsupportedContainerFeature("Chunk is too large (~2GB+) to skip; id: " + chunkHeaderPeek.id);
            }
            extractorInput.skipFully((int) j2);
            chunkHeaderPeek = ChunkHeader.peek(extractorInput, parsableByteArray);
        }
        return chunkHeaderPeek;
    }

    public static final class ChunkHeader {
        public final int id;
        public final long size;

        private ChunkHeader(int i, long j) {
            this.id = i;
            this.size = j;
        }

        public static ChunkHeader peek(ExtractorInput extractorInput, ParsableByteArray parsableByteArray) {
            extractorInput.peekFully(parsableByteArray.getData(), 0, 8);
            parsableByteArray.setPosition(0);
            return new ChunkHeader(parsableByteArray.readInt(), parsableByteArray.readLittleEndianUnsignedInt());
        }
    }
}
