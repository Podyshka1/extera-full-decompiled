package com.google.android.exoplayer2.extractor;

import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.extractor.FlacStreamMetadata;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.metadata.flac.PictureFrame;
import com.google.android.exoplayer2.metadata.id3.Id3Decoder;
import com.google.android.exoplayer2.util.ParsableBitArray;
import com.google.android.exoplayer2.util.ParsableByteArray;
import com.google.common.collect.ImmutableList;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public abstract class FlacMetadataReader {

    public static final class FlacStreamMetadataHolder {
        public FlacStreamMetadata flacStreamMetadata;

        public FlacStreamMetadataHolder(FlacStreamMetadata flacStreamMetadata) {
            this.flacStreamMetadata = flacStreamMetadata;
        }
    }

    public static Metadata peekId3Metadata(ExtractorInput extractorInput, boolean z) throws Throwable {
        Metadata metadataPeekId3Data = new Id3Peeker().peekId3Data(extractorInput, z ? null : Id3Decoder.NO_FRAMES_PREDICATE);
        if (metadataPeekId3Data == null || metadataPeekId3Data.length() == 0) {
            return null;
        }
        return metadataPeekId3Data;
    }

    public static boolean checkAndPeekStreamMarker(ExtractorInput extractorInput) {
        ParsableByteArray parsableByteArray = new ParsableByteArray(4);
        extractorInput.peekFully(parsableByteArray.getData(), 0, 4);
        return parsableByteArray.readUnsignedInt() == 1716281667;
    }

    public static Metadata readId3Metadata(ExtractorInput extractorInput, boolean z) throws Throwable {
        extractorInput.resetPeekPosition();
        long peekPosition = extractorInput.getPeekPosition();
        Metadata metadataPeekId3Metadata = peekId3Metadata(extractorInput, z);
        extractorInput.skipFully((int) (extractorInput.getPeekPosition() - peekPosition));
        return metadataPeekId3Metadata;
    }

    public static void readStreamMarker(ExtractorInput extractorInput) throws ParserException {
        ParsableByteArray parsableByteArray = new ParsableByteArray(4);
        extractorInput.readFully(parsableByteArray.getData(), 0, 4);
        if (parsableByteArray.readUnsignedInt() != 1716281667) {
            throw ParserException.createForMalformedContainer("Failed to read FLAC stream marker.", null);
        }
    }

    public static boolean readMetadataBlock(ExtractorInput extractorInput, FlacStreamMetadataHolder flacStreamMetadataHolder) {
        extractorInput.resetPeekPosition();
        ParsableBitArray parsableBitArray = new ParsableBitArray(new byte[4]);
        extractorInput.peekFully(parsableBitArray.data, 0, 4);
        boolean bit = parsableBitArray.readBit();
        int bits = parsableBitArray.readBits(7);
        int bits2 = parsableBitArray.readBits(24) + 4;
        if (bits == 0) {
            flacStreamMetadataHolder.flacStreamMetadata = readStreamInfoBlock(extractorInput);
            return bit;
        }
        FlacStreamMetadata flacStreamMetadata = flacStreamMetadataHolder.flacStreamMetadata;
        if (flacStreamMetadata == null) {
            throw new IllegalArgumentException();
        }
        if (bits == 3) {
            flacStreamMetadataHolder.flacStreamMetadata = flacStreamMetadata.copyWithSeekTable(readSeekTableMetadataBlock(extractorInput, bits2));
            return bit;
        }
        if (bits == 4) {
            flacStreamMetadataHolder.flacStreamMetadata = flacStreamMetadata.copyWithVorbisComments(readVorbisCommentMetadataBlock(extractorInput, bits2));
            return bit;
        }
        if (bits == 6) {
            ParsableByteArray parsableByteArray = new ParsableByteArray(bits2);
            extractorInput.readFully(parsableByteArray.getData(), 0, bits2);
            parsableByteArray.skipBytes(4);
            flacStreamMetadataHolder.flacStreamMetadata = flacStreamMetadata.copyWithPictureFrames(ImmutableList.m483of((Object) PictureFrame.fromPictureBlock(parsableByteArray)));
            return bit;
        }
        extractorInput.skipFully(bits2);
        return bit;
    }

    public static FlacStreamMetadata.SeekTable readSeekTableMetadataBlock(ParsableByteArray parsableByteArray) {
        parsableByteArray.skipBytes(1);
        int unsignedInt24 = parsableByteArray.readUnsignedInt24();
        long position = ((long) parsableByteArray.getPosition()) + ((long) unsignedInt24);
        int i = unsignedInt24 / 18;
        long[] jArrCopyOf = new long[i];
        long[] jArrCopyOf2 = new long[i];
        int i2 = 0;
        while (true) {
            if (i2 >= i) {
                break;
            }
            long j = parsableByteArray.readLong();
            if (j == -1) {
                jArrCopyOf = Arrays.copyOf(jArrCopyOf, i2);
                jArrCopyOf2 = Arrays.copyOf(jArrCopyOf2, i2);
                break;
            }
            jArrCopyOf[i2] = j;
            jArrCopyOf2[i2] = parsableByteArray.readLong();
            parsableByteArray.skipBytes(2);
            i2++;
        }
        parsableByteArray.skipBytes((int) (position - ((long) parsableByteArray.getPosition())));
        return new FlacStreamMetadata.SeekTable(jArrCopyOf, jArrCopyOf2);
    }

    public static int getFrameStartMarker(ExtractorInput extractorInput) throws ParserException {
        extractorInput.resetPeekPosition();
        ParsableByteArray parsableByteArray = new ParsableByteArray(2);
        extractorInput.peekFully(parsableByteArray.getData(), 0, 2);
        int unsignedShort = parsableByteArray.readUnsignedShort();
        if ((unsignedShort >> 2) != 16382) {
            extractorInput.resetPeekPosition();
            throw ParserException.createForMalformedContainer("First frame does not start with sync code.", null);
        }
        extractorInput.resetPeekPosition();
        return unsignedShort;
    }

    private static FlacStreamMetadata readStreamInfoBlock(ExtractorInput extractorInput) {
        byte[] bArr = new byte[38];
        extractorInput.readFully(bArr, 0, 38);
        return new FlacStreamMetadata(bArr, 4);
    }

    private static FlacStreamMetadata.SeekTable readSeekTableMetadataBlock(ExtractorInput extractorInput, int i) {
        ParsableByteArray parsableByteArray = new ParsableByteArray(i);
        extractorInput.readFully(parsableByteArray.getData(), 0, i);
        return readSeekTableMetadataBlock(parsableByteArray);
    }

    private static List readVorbisCommentMetadataBlock(ExtractorInput extractorInput, int i) {
        ParsableByteArray parsableByteArray = new ParsableByteArray(i);
        extractorInput.readFully(parsableByteArray.getData(), 0, i);
        parsableByteArray.skipBytes(4);
        return Arrays.asList(VorbisUtil.readVorbisCommentHeader(parsableByteArray, false, false).comments);
    }
}
