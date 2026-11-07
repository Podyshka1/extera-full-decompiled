package androidx.media3.container;

import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.ParsableBitArray;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.internal.ByteCompanionObject;

/* JADX INFO: loaded from: classes3.dex */
public abstract class ObuParser {

    public static final class Obu {
        public final ByteBuffer payload;
        public final int type;

        private Obu(int i, ByteBuffer byteBuffer) {
            this.type = i;
            this.payload = byteBuffer;
        }
    }

    public static List<Obu> split(ByteBuffer byteBuffer) {
        int iRemaining;
        ByteBuffer byteBufferAsReadOnlyBuffer = byteBuffer.asReadOnlyBuffer();
        ArrayList arrayList = new ArrayList();
        while (byteBufferAsReadOnlyBuffer.hasRemaining()) {
            byte b2 = byteBufferAsReadOnlyBuffer.get();
            int i = (b2 >> 3) & 15;
            if (((b2 >> 2) & 1) != 0) {
                byteBufferAsReadOnlyBuffer.get();
            }
            if (((b2 >> 1) & 1) != 0) {
                iRemaining = leb128(byteBufferAsReadOnlyBuffer);
            } else {
                iRemaining = byteBufferAsReadOnlyBuffer.remaining();
            }
            ByteBuffer byteBufferDuplicate = byteBufferAsReadOnlyBuffer.duplicate();
            byteBufferDuplicate.limit(byteBufferAsReadOnlyBuffer.position() + iRemaining);
            arrayList.add(new Obu(i, byteBufferDuplicate));
            byteBufferAsReadOnlyBuffer.position(byteBufferAsReadOnlyBuffer.position() + iRemaining);
        }
        return arrayList;
    }

    private static int leb128(ByteBuffer byteBuffer) {
        int i = 0;
        for (int i2 = 0; i2 < 8; i2++) {
            byte b2 = byteBuffer.get();
            i |= (b2 & ByteCompanionObject.MAX_VALUE) << (i2 * 7);
            if ((b2 & ByteCompanionObject.MIN_VALUE) == 0) {
                return i;
            }
        }
        return i;
    }

    public static final class SequenceHeader {
        public final int chromaSamplePosition;
        public final byte colorPrimaries;
        public final boolean decoderModelInfoPresentFlag;
        public final boolean frameIdNumbersPresentFlag;
        public final boolean highBitdepth;
        public final int initialDisplayDelayMinus1;
        public final boolean initialDisplayDelayPresentFlag;
        public final byte matrixCoefficients;
        public final boolean monochrome;
        public final int orderHintBits;
        public final boolean reducedStillPictureHeader;
        public final boolean seqForceIntegerMv;
        public final boolean seqForceScreenContentTools;
        public final int seqLevelIdx0;
        public final int seqProfile;
        public final int seqTier0;
        public final boolean subsamplingX;
        public final boolean subsamplingY;
        public final byte transferCharacteristics;
        public final boolean twelveBit;

        public static SequenceHeader parse(Obu obu) {
            try {
                return new SequenceHeader(obu);
            } catch (NotYetImplementedException unused) {
                return null;
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r8v4, types: [int] */
        /* JADX WARN: Type inference failed for: r8v5 */
        /* JADX WARN: Type inference failed for: r8v6 */
        private SequenceHeader(Obu obu) {
            int bits;
            int bits2;
            boolean bit;
            ?? r8;
            Assertions.checkArgument(obu.type == 1);
            byte[] bArr = new byte[obu.payload.remaining()];
            obu.payload.asReadOnlyBuffer().get(bArr);
            ParsableBitArray parsableBitArray = new ParsableBitArray(bArr);
            this.seqProfile = parsableBitArray.readBits(3);
            parsableBitArray.skipBit();
            boolean bit2 = parsableBitArray.readBit();
            this.reducedStillPictureHeader = bit2;
            if (bit2) {
                bits2 = parsableBitArray.readBits(5);
                this.decoderModelInfoPresentFlag = false;
                this.initialDisplayDelayPresentFlag = false;
                r8 = 0;
                bits = 0;
            } else {
                if (parsableBitArray.readBit()) {
                    skipTimingInfo(parsableBitArray);
                    boolean bit3 = parsableBitArray.readBit();
                    this.decoderModelInfoPresentFlag = bit3;
                    if (bit3) {
                        parsableBitArray.skipBits(47);
                    }
                } else {
                    this.decoderModelInfoPresentFlag = false;
                }
                this.initialDisplayDelayPresentFlag = parsableBitArray.readBit();
                int bits3 = parsableBitArray.readBits(5);
                int bits4 = 0;
                int i = 0;
                boolean z = false;
                bits = 0;
                while (i <= bits3) {
                    parsableBitArray.skipBits(12);
                    if (i == 0) {
                        bits4 = parsableBitArray.readBits(5);
                        bit = z;
                        if (bits4 > 7) {
                            bit = parsableBitArray.readBit();
                        }
                    } else {
                        bit = z;
                        if (parsableBitArray.readBits(5) > 7) {
                            parsableBitArray.skipBit();
                            bit = z;
                        }
                    }
                    if (this.decoderModelInfoPresentFlag) {
                        parsableBitArray.skipBit();
                    }
                    if (this.initialDisplayDelayPresentFlag && parsableBitArray.readBit()) {
                        if (i == 0) {
                            bits = parsableBitArray.readBits(4);
                        } else {
                            parsableBitArray.skipBits(4);
                        }
                    }
                    i++;
                    z = bit;
                }
                bits2 = bits4;
                r8 = z;
            }
            int bits5 = parsableBitArray.readBits(4);
            int bits6 = parsableBitArray.readBits(4);
            parsableBitArray.skipBits(bits5 + 1);
            parsableBitArray.skipBits(bits6 + 1);
            if (!this.reducedStillPictureHeader) {
                this.frameIdNumbersPresentFlag = parsableBitArray.readBit();
            } else {
                this.frameIdNumbersPresentFlag = false;
            }
            if (this.frameIdNumbersPresentFlag) {
                parsableBitArray.skipBits(4);
                parsableBitArray.skipBits(3);
            }
            parsableBitArray.skipBits(3);
            if (this.reducedStillPictureHeader) {
                this.seqForceIntegerMv = true;
                this.seqForceScreenContentTools = true;
                this.orderHintBits = 0;
            } else {
                parsableBitArray.skipBits(4);
                boolean bit4 = parsableBitArray.readBit();
                if (bit4) {
                    parsableBitArray.skipBits(2);
                }
                if (parsableBitArray.readBit()) {
                    this.seqForceScreenContentTools = true;
                } else {
                    this.seqForceScreenContentTools = parsableBitArray.readBit();
                }
                if (!this.seqForceScreenContentTools || parsableBitArray.readBit()) {
                    this.seqForceIntegerMv = true;
                } else {
                    this.seqForceIntegerMv = parsableBitArray.readBit();
                }
                if (bit4) {
                    this.orderHintBits = parsableBitArray.readBits(3) + 1;
                } else {
                    this.orderHintBits = 0;
                }
            }
            this.seqLevelIdx0 = bits2;
            this.seqTier0 = r8;
            this.initialDisplayDelayMinus1 = bits;
            parsableBitArray.skipBits(3);
            boolean bit5 = parsableBitArray.readBit();
            this.highBitdepth = bit5;
            if (this.seqProfile == 2 && bit5) {
                this.twelveBit = parsableBitArray.readBit();
            } else {
                this.twelveBit = false;
            }
            if (this.seqProfile != 1) {
                this.monochrome = parsableBitArray.readBit();
            } else {
                this.monochrome = false;
            }
            if (parsableBitArray.readBit()) {
                this.colorPrimaries = (byte) parsableBitArray.readBits(8);
                this.transferCharacteristics = (byte) parsableBitArray.readBits(8);
                this.matrixCoefficients = (byte) parsableBitArray.readBits(8);
            } else {
                this.colorPrimaries = (byte) 0;
                this.transferCharacteristics = (byte) 0;
                this.matrixCoefficients = (byte) 0;
            }
            if (this.monochrome) {
                parsableBitArray.skipBit();
                this.subsamplingX = false;
                this.subsamplingY = false;
                this.chromaSamplePosition = 0;
            } else if (this.colorPrimaries == 1 && this.transferCharacteristics == 13 && this.matrixCoefficients == 0) {
                this.subsamplingX = false;
                this.subsamplingY = false;
                this.chromaSamplePosition = 0;
            } else {
                parsableBitArray.skipBit();
                int i2 = this.seqProfile;
                if (i2 == 0) {
                    this.subsamplingX = true;
                    this.subsamplingY = true;
                } else if (i2 == 1) {
                    this.subsamplingX = false;
                    this.subsamplingY = false;
                } else if (this.twelveBit) {
                    boolean bit6 = parsableBitArray.readBit();
                    this.subsamplingX = bit6;
                    if (bit6) {
                        this.subsamplingY = parsableBitArray.readBit();
                    } else {
                        this.subsamplingY = false;
                    }
                } else {
                    this.subsamplingX = true;
                    this.subsamplingY = false;
                }
                if (this.subsamplingX && this.subsamplingY) {
                    this.chromaSamplePosition = parsableBitArray.readBits(2);
                } else {
                    this.chromaSamplePosition = 0;
                }
            }
            parsableBitArray.skipBit();
        }

        private static void skipTimingInfo(ParsableBitArray parsableBitArray) {
            parsableBitArray.skipBits(64);
            if (parsableBitArray.readBit()) {
                ObuParser.skipUvlc(parsableBitArray);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void skipUvlc(ParsableBitArray parsableBitArray) {
        int i = 0;
        while (!parsableBitArray.readBit()) {
            i++;
        }
        if (i < 32) {
            parsableBitArray.skipBits(i);
        }
    }

    public static final class FrameHeader {
        private final boolean isDependedOn;

        public boolean isDependedOn() {
            return this.isDependedOn;
        }

        public static FrameHeader parse(SequenceHeader sequenceHeader, Obu obu) {
            try {
                return new FrameHeader(sequenceHeader, obu);
            } catch (NotYetImplementedException unused) {
                return null;
            }
        }

        private FrameHeader(SequenceHeader sequenceHeader, Obu obu) throws NotYetImplementedException {
            int i = obu.type;
            Assertions.checkArgument(i == 6 || i == 3);
            byte[] bArr = new byte[Math.min(4, obu.payload.remaining())];
            obu.payload.asReadOnlyBuffer().get(bArr);
            ParsableBitArray parsableBitArray = new ParsableBitArray(bArr);
            ObuParser.throwWhenFeatureRequired(sequenceHeader.reducedStillPictureHeader);
            if (parsableBitArray.readBit()) {
                this.isDependedOn = false;
                return;
            }
            int bits = parsableBitArray.readBits(2);
            boolean bit = parsableBitArray.readBit();
            ObuParser.throwWhenFeatureRequired(sequenceHeader.decoderModelInfoPresentFlag);
            if (!bit) {
                this.isDependedOn = true;
                return;
            }
            boolean bit2 = (bits == 3 || bits == 0) ? true : parsableBitArray.readBit();
            parsableBitArray.skipBit();
            ObuParser.throwWhenFeatureRequired(!sequenceHeader.seqForceScreenContentTools);
            if (parsableBitArray.readBit()) {
                ObuParser.throwWhenFeatureRequired(!sequenceHeader.seqForceIntegerMv);
                parsableBitArray.skipBit();
            }
            ObuParser.throwWhenFeatureRequired(sequenceHeader.frameIdNumbersPresentFlag);
            if (bits != 3) {
                parsableBitArray.skipBit();
            }
            parsableBitArray.skipBits(sequenceHeader.orderHintBits);
            if (bits != 2 && bits != 0 && !bit2) {
                parsableBitArray.skipBits(3);
            }
            this.isDependedOn = ((bits == 3 || bits == 0) ? 255 : parsableBitArray.readBits(8)) != 0;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void throwWhenFeatureRequired(boolean z) throws NotYetImplementedException {
        if (z) {
            throw new NotYetImplementedException();
        }
    }

    public static class NotYetImplementedException extends Exception {
        private NotYetImplementedException() {
        }
    }
}
