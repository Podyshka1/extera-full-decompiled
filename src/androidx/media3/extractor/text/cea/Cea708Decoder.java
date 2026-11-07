package androidx.media3.extractor.text.cea;

import android.graphics.Color;
import android.text.Layout;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.style.BackgroundColorSpan;
import android.text.style.ForegroundColorSpan;
import android.text.style.StyleSpan;
import android.text.style.UnderlineSpan;
import androidx.media3.common.text.Cue;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.CodecSpecificDataUtil;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.ParsableBitArray;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.extractor.text.Subtitle;
import androidx.media3.extractor.text.SubtitleInputBuffer;
import androidx.media3.extractor.text.SubtitleOutputBuffer;
import androidx.media3.extractor.text.cea.Cea708Decoder;
import com.sun.jna.IntegerType$$ExternalSyntheticBUOutline0;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import kotlin.text.Typography;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;

/* JADX INFO: loaded from: classes4.dex */
public final class Cea708Decoder extends CeaDecoder {
    private final CueInfoBuilder[] cueInfoBuilders;
    private List<Cue> cues;
    private CueInfoBuilder currentCueInfoBuilder;
    private DtvCcPacket currentDtvCcPacket;
    private int currentWindow;
    private final boolean isWideAspectRatio;
    private List<Cue> lastCues;
    private final int selectedServiceNumber;
    private final ParsableByteArray ccData = new ParsableByteArray();
    private final ParsableBitArray captionChannelPacketData = new ParsableBitArray();
    private int previousSequenceNumber = -1;

    @Override // androidx.media3.extractor.text.cea.CeaDecoder, androidx.media3.decoder.Decoder
    public /* bridge */ /* synthetic */ SubtitleInputBuffer dequeueInputBuffer() {
        return super.dequeueInputBuffer();
    }

    @Override // androidx.media3.extractor.text.cea.CeaDecoder, androidx.media3.decoder.Decoder
    public /* bridge */ /* synthetic */ SubtitleOutputBuffer dequeueOutputBuffer() {
        return super.dequeueOutputBuffer();
    }

    @Override // androidx.media3.extractor.text.cea.CeaDecoder
    public /* bridge */ /* synthetic */ void queueInputBuffer(SubtitleInputBuffer subtitleInputBuffer) {
        super.queueInputBuffer(subtitleInputBuffer);
    }

    @Override // androidx.media3.extractor.text.cea.CeaDecoder, androidx.media3.decoder.Decoder
    public /* bridge */ /* synthetic */ void release() {
        super.release();
    }

    @Override // androidx.media3.extractor.text.cea.CeaDecoder, androidx.media3.extractor.text.SubtitleDecoder
    public /* bridge */ /* synthetic */ void setPositionUs(long j) {
        super.setPositionUs(j);
    }

    public Cea708Decoder(int i, List<byte[]> list) {
        this.selectedServiceNumber = i == -1 ? 1 : i;
        this.isWideAspectRatio = list != null && CodecSpecificDataUtil.parseCea708InitializationData(list);
        this.cueInfoBuilders = new CueInfoBuilder[8];
        int i2 = 0;
        while (true) {
            CueInfoBuilder[] cueInfoBuilderArr = this.cueInfoBuilders;
            if (i2 < 8) {
                cueInfoBuilderArr[i2] = new CueInfoBuilder();
                i2++;
            } else {
                this.currentCueInfoBuilder = cueInfoBuilderArr[0];
                return;
            }
        }
    }

    @Override // androidx.media3.decoder.Decoder
    public String getName() {
        return "Cea708Decoder";
    }

    @Override // androidx.media3.extractor.text.cea.CeaDecoder, androidx.media3.decoder.Decoder
    public void flush() {
        super.flush();
        this.cues = null;
        this.lastCues = null;
        this.currentWindow = 0;
        this.currentCueInfoBuilder = this.cueInfoBuilders[0];
        resetCueBuilders();
        this.currentDtvCcPacket = null;
    }

    @Override // androidx.media3.extractor.text.cea.CeaDecoder
    public boolean isNewSubtitleDataAvailable() {
        return this.cues != this.lastCues;
    }

    @Override // androidx.media3.extractor.text.cea.CeaDecoder
    public Subtitle createSubtitle() {
        List<Cue> list = this.cues;
        this.lastCues = list;
        return new CeaSubtitle((List) Assertions.checkNotNull(list));
    }

    @Override // androidx.media3.extractor.text.cea.CeaDecoder
    public void decode(SubtitleInputBuffer subtitleInputBuffer) {
        ByteBuffer byteBuffer = (ByteBuffer) Assertions.checkNotNull(subtitleInputBuffer.data);
        this.ccData.reset(byteBuffer.array(), byteBuffer.limit());
        while (this.ccData.bytesLeft() >= 3) {
            int unsignedByte = this.ccData.readUnsignedByte();
            int i = unsignedByte & 3;
            boolean z = (unsignedByte & 4) == 4;
            byte unsignedByte2 = (byte) this.ccData.readUnsignedByte();
            byte unsignedByte3 = (byte) this.ccData.readUnsignedByte();
            if (i == 2 || i == 3) {
                if (z) {
                    if (i == 3) {
                        finalizeCurrentPacket();
                        int i2 = (unsignedByte2 & 192) >> 6;
                        int i3 = this.previousSequenceNumber;
                        if (i3 != -1 && i2 != (i3 + 1) % 4) {
                            resetCueBuilders();
                            Log.m163w("Cea708Decoder", "Sequence number discontinuity. previous=" + this.previousSequenceNumber + " current=" + i2);
                        }
                        this.previousSequenceNumber = i2;
                        int i4 = unsignedByte2 & 63;
                        if (i4 == 0) {
                            i4 = 64;
                        }
                        DtvCcPacket dtvCcPacket = new DtvCcPacket(i2, i4);
                        this.currentDtvCcPacket = dtvCcPacket;
                        byte[] bArr = dtvCcPacket.packetData;
                        int i5 = dtvCcPacket.currentIndex;
                        dtvCcPacket.currentIndex = i5 + 1;
                        bArr[i5] = unsignedByte3;
                    } else {
                        Assertions.checkArgument(i == 2);
                        DtvCcPacket dtvCcPacket2 = this.currentDtvCcPacket;
                        if (dtvCcPacket2 == null) {
                            Log.m160e("Cea708Decoder", "Encountered DTVCC_PACKET_DATA before DTVCC_PACKET_START");
                        } else {
                            byte[] bArr2 = dtvCcPacket2.packetData;
                            int i6 = dtvCcPacket2.currentIndex;
                            int i7 = i6 + 1;
                            dtvCcPacket2.currentIndex = i7;
                            bArr2[i6] = unsignedByte2;
                            dtvCcPacket2.currentIndex = i6 + 2;
                            bArr2[i7] = unsignedByte3;
                        }
                    }
                    DtvCcPacket dtvCcPacket3 = this.currentDtvCcPacket;
                    if (dtvCcPacket3.currentIndex == (dtvCcPacket3.packetSize * 2) - 1) {
                        finalizeCurrentPacket();
                    }
                }
            }
        }
    }

    private void finalizeCurrentPacket() {
        if (this.currentDtvCcPacket == null) {
            return;
        }
        processCurrentPacket();
        this.currentDtvCcPacket = null;
    }

    @RequiresNonNull({"currentDtvCcPacket"})
    private void processCurrentPacket() {
        DtvCcPacket dtvCcPacket = this.currentDtvCcPacket;
        if (dtvCcPacket.currentIndex != (dtvCcPacket.packetSize * 2) - 1) {
            Log.m158d("Cea708Decoder", "DtvCcPacket ended prematurely; size is " + ((this.currentDtvCcPacket.packetSize * 2) - 1) + ", but current index is " + this.currentDtvCcPacket.currentIndex + " (sequence number " + this.currentDtvCcPacket.sequenceNumber + ");");
        }
        ParsableBitArray parsableBitArray = this.captionChannelPacketData;
        DtvCcPacket dtvCcPacket2 = this.currentDtvCcPacket;
        parsableBitArray.reset(dtvCcPacket2.packetData, dtvCcPacket2.currentIndex);
        boolean z = false;
        while (true) {
            if (this.captionChannelPacketData.bitsLeft() <= 0) {
                break;
            }
            int bits = this.captionChannelPacketData.readBits(3);
            int bits2 = this.captionChannelPacketData.readBits(5);
            if (bits == 7) {
                this.captionChannelPacketData.skipBits(2);
                bits = this.captionChannelPacketData.readBits(6);
                if (bits < 7) {
                    Log.m163w("Cea708Decoder", "Invalid extended service number: " + bits);
                }
            }
            if (bits2 != 0) {
                int i = this.selectedServiceNumber;
                ParsableBitArray parsableBitArray2 = this.captionChannelPacketData;
                if (bits != i) {
                    parsableBitArray2.skipBytes(bits2);
                } else {
                    int position = parsableBitArray2.getPosition() + (bits2 * 8);
                    while (this.captionChannelPacketData.getPosition() < position) {
                        int bits3 = this.captionChannelPacketData.readBits(8);
                        if (bits3 == 16) {
                            int bits4 = this.captionChannelPacketData.readBits(8);
                            if (bits4 <= 31) {
                                handleC2Command(bits4);
                            } else {
                                if (bits4 <= 127) {
                                    handleG2Character(bits4);
                                } else if (bits4 <= 159) {
                                    handleC3Command(bits4);
                                } else if (bits4 <= 255) {
                                    handleG3Character(bits4);
                                } else {
                                    Log.m163w("Cea708Decoder", "Invalid extended command: " + bits4);
                                }
                                z = true;
                            }
                        } else if (bits3 <= 31) {
                            handleC0Command(bits3);
                        } else {
                            if (bits3 <= 127) {
                                handleG0Character(bits3);
                            } else if (bits3 <= 159) {
                                handleC1Command(bits3);
                            } else if (bits3 <= 255) {
                                handleG1Character(bits3);
                            } else {
                                Log.m163w("Cea708Decoder", "Invalid base command: " + bits3);
                            }
                            z = true;
                        }
                    }
                }
            } else if (bits != 0) {
                Log.m163w("Cea708Decoder", "serviceNumber is non-zero (" + bits + ") when blockSize is 0");
            }
        }
        if (z) {
            this.cues = getDisplayCues();
        }
    }

    private void handleC0Command(int i) {
        if (i != 0) {
            if (i == 3) {
                this.cues = getDisplayCues();
                return;
            }
            if (i == 8) {
                this.currentCueInfoBuilder.backspace();
                return;
            }
            switch (i) {
                case 12:
                    resetCueBuilders();
                    break;
                case 13:
                    this.currentCueInfoBuilder.append('\n');
                    break;
                case 14:
                    break;
                default:
                    if (i >= 17 && i <= 23) {
                        Log.m163w("Cea708Decoder", "Currently unsupported COMMAND_EXT1 Command: " + i);
                        this.captionChannelPacketData.skipBits(8);
                    } else if (i >= 24 && i <= 31) {
                        Log.m163w("Cea708Decoder", "Currently unsupported COMMAND_P16 Command: " + i);
                        this.captionChannelPacketData.skipBits(16);
                    } else {
                        Log.m163w("Cea708Decoder", "Invalid C0 command: " + i);
                    }
                    break;
            }
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private void handleC1Command(int i) {
        int i2 = 1;
        switch (i) {
            case 128:
            case 129:
            case 130:
            case 131:
            case 132:
            case 133:
            case 134:
            case 135:
                int i3 = i - 128;
                if (this.currentWindow != i3) {
                    this.currentWindow = i3;
                    this.currentCueInfoBuilder = this.cueInfoBuilders[i3];
                }
                break;
            case 136:
                while (i2 <= 8) {
                    if (this.captionChannelPacketData.readBit()) {
                        this.cueInfoBuilders[8 - i2].clear();
                    }
                    i2++;
                }
                break;
            case 137:
                for (int i4 = 1; i4 <= 8; i4++) {
                    if (this.captionChannelPacketData.readBit()) {
                        this.cueInfoBuilders[8 - i4].setVisibility(true);
                    }
                }
                break;
            case 138:
                while (i2 <= 8) {
                    if (this.captionChannelPacketData.readBit()) {
                        this.cueInfoBuilders[8 - i2].setVisibility(false);
                    }
                    i2++;
                }
                break;
            case 139:
                for (int i5 = 1; i5 <= 8; i5++) {
                    if (this.captionChannelPacketData.readBit()) {
                        this.cueInfoBuilders[8 - i5].setVisibility(!r0.isVisible());
                    }
                }
                break;
            case 140:
                while (i2 <= 8) {
                    if (this.captionChannelPacketData.readBit()) {
                        this.cueInfoBuilders[8 - i2].reset();
                    }
                    i2++;
                }
                break;
            case 141:
                this.captionChannelPacketData.skipBits(8);
                break;
            case 142:
                break;
            case 143:
                resetCueBuilders();
                break;
            case 144:
                if (!this.currentCueInfoBuilder.isDefined()) {
                    this.captionChannelPacketData.skipBits(16);
                } else {
                    handleSetPenAttributes();
                }
                break;
            case 145:
                if (!this.currentCueInfoBuilder.isDefined()) {
                    this.captionChannelPacketData.skipBits(24);
                } else {
                    handleSetPenColor();
                }
                break;
            case 146:
                if (!this.currentCueInfoBuilder.isDefined()) {
                    this.captionChannelPacketData.skipBits(16);
                } else {
                    handleSetPenLocation();
                }
                break;
            case 147:
            case 148:
            case 149:
            case 150:
            default:
                Log.m163w("Cea708Decoder", "Invalid C1 command: " + i);
                break;
            case 151:
                if (!this.currentCueInfoBuilder.isDefined()) {
                    this.captionChannelPacketData.skipBits(32);
                } else {
                    handleSetWindowAttributes();
                }
                break;
            case 152:
            case 153:
            case 154:
            case 155:
            case 156:
            case 157:
            case 158:
            case 159:
                int i6 = i - 152;
                handleDefineWindow(i6);
                if (this.currentWindow != i6) {
                    this.currentWindow = i6;
                    this.currentCueInfoBuilder = this.cueInfoBuilders[i6];
                }
                break;
        }
    }

    private void handleC2Command(int i) {
        if (i <= 7) {
            return;
        }
        if (i <= 15) {
            this.captionChannelPacketData.skipBits(8);
        } else if (i <= 23) {
            this.captionChannelPacketData.skipBits(16);
        } else if (i <= 31) {
            this.captionChannelPacketData.skipBits(24);
        }
    }

    private void handleC3Command(int i) {
        if (i <= 135) {
            this.captionChannelPacketData.skipBits(32);
            return;
        }
        if (i <= 143) {
            this.captionChannelPacketData.skipBits(40);
        } else if (i <= 159) {
            this.captionChannelPacketData.skipBits(2);
            this.captionChannelPacketData.skipBits(this.captionChannelPacketData.readBits(6) * 8);
        }
    }

    private void handleG0Character(int i) {
        CueInfoBuilder cueInfoBuilder = this.currentCueInfoBuilder;
        if (i == 127) {
            cueInfoBuilder.append((char) 9835);
        } else {
            cueInfoBuilder.append((char) (i & 255));
        }
    }

    private void handleG1Character(int i) {
        this.currentCueInfoBuilder.append((char) (i & 255));
    }

    private void handleG2Character(int i) {
        if (i == 32) {
            this.currentCueInfoBuilder.append(' ');
            return;
        }
        if (i == 33) {
            this.currentCueInfoBuilder.append(Typography.nbsp);
            return;
        }
        if (i == 37) {
            this.currentCueInfoBuilder.append(Typography.ellipsis);
            return;
        }
        if (i == 42) {
            this.currentCueInfoBuilder.append((char) 352);
            return;
        }
        if (i == 44) {
            this.currentCueInfoBuilder.append((char) 338);
            return;
        }
        if (i == 63) {
            this.currentCueInfoBuilder.append((char) 376);
            return;
        }
        if (i == 57) {
            this.currentCueInfoBuilder.append(Typography.tm);
            return;
        }
        if (i == 58) {
            this.currentCueInfoBuilder.append((char) 353);
            return;
        }
        if (i == 60) {
            this.currentCueInfoBuilder.append((char) 339);
            return;
        }
        if (i != 61) {
            switch (i) {
                case 48:
                    this.currentCueInfoBuilder.append((char) 9608);
                    break;
                case 49:
                    this.currentCueInfoBuilder.append(Typography.leftSingleQuote);
                    break;
                case 50:
                    this.currentCueInfoBuilder.append(Typography.rightSingleQuote);
                    break;
                case 51:
                    this.currentCueInfoBuilder.append(Typography.leftDoubleQuote);
                    break;
                case 52:
                    this.currentCueInfoBuilder.append(Typography.rightDoubleQuote);
                    break;
                case 53:
                    this.currentCueInfoBuilder.append(Typography.bullet);
                    break;
                default:
                    switch (i) {
                        case 118:
                            this.currentCueInfoBuilder.append((char) 8539);
                            break;
                        case 119:
                            this.currentCueInfoBuilder.append((char) 8540);
                            break;
                        case 120:
                            this.currentCueInfoBuilder.append((char) 8541);
                            break;
                        case 121:
                            this.currentCueInfoBuilder.append((char) 8542);
                            break;
                        case 122:
                            this.currentCueInfoBuilder.append((char) 9474);
                            break;
                        case 123:
                            this.currentCueInfoBuilder.append((char) 9488);
                            break;
                        case 124:
                            this.currentCueInfoBuilder.append((char) 9492);
                            break;
                        case 125:
                            this.currentCueInfoBuilder.append((char) 9472);
                            break;
                        case 126:
                            this.currentCueInfoBuilder.append((char) 9496);
                            break;
                        case 127:
                            this.currentCueInfoBuilder.append((char) 9484);
                            break;
                        default:
                            Log.m163w("Cea708Decoder", "Invalid G2 character: " + i);
                            break;
                    }
                    break;
            }
            return;
        }
        this.currentCueInfoBuilder.append((char) 8480);
    }

    private void handleG3Character(int i) {
        if (i == 160) {
            this.currentCueInfoBuilder.append((char) 13252);
            return;
        }
        Log.m163w("Cea708Decoder", "Invalid G3 character: " + i);
        this.currentCueInfoBuilder.append('_');
    }

    private void handleSetPenAttributes() {
        this.currentCueInfoBuilder.setPenAttributes(this.captionChannelPacketData.readBits(4), this.captionChannelPacketData.readBits(2), this.captionChannelPacketData.readBits(2), this.captionChannelPacketData.readBit(), this.captionChannelPacketData.readBit(), this.captionChannelPacketData.readBits(3), this.captionChannelPacketData.readBits(3));
    }

    private void handleSetPenColor() {
        int argbColorFromCeaColor = CueInfoBuilder.getArgbColorFromCeaColor(this.captionChannelPacketData.readBits(2), this.captionChannelPacketData.readBits(2), this.captionChannelPacketData.readBits(2), this.captionChannelPacketData.readBits(2));
        int argbColorFromCeaColor2 = CueInfoBuilder.getArgbColorFromCeaColor(this.captionChannelPacketData.readBits(2), this.captionChannelPacketData.readBits(2), this.captionChannelPacketData.readBits(2), this.captionChannelPacketData.readBits(2));
        this.captionChannelPacketData.skipBits(2);
        this.currentCueInfoBuilder.setPenColor(argbColorFromCeaColor, argbColorFromCeaColor2, CueInfoBuilder.getArgbColorFromCeaColor(this.captionChannelPacketData.readBits(2), this.captionChannelPacketData.readBits(2), this.captionChannelPacketData.readBits(2)));
    }

    private void handleSetPenLocation() {
        this.captionChannelPacketData.skipBits(4);
        int bits = this.captionChannelPacketData.readBits(4);
        this.captionChannelPacketData.skipBits(2);
        this.currentCueInfoBuilder.setPenLocation(bits, this.captionChannelPacketData.readBits(6));
    }

    private void handleSetWindowAttributes() {
        int argbColorFromCeaColor = CueInfoBuilder.getArgbColorFromCeaColor(this.captionChannelPacketData.readBits(2), this.captionChannelPacketData.readBits(2), this.captionChannelPacketData.readBits(2), this.captionChannelPacketData.readBits(2));
        int bits = this.captionChannelPacketData.readBits(2);
        int argbColorFromCeaColor2 = CueInfoBuilder.getArgbColorFromCeaColor(this.captionChannelPacketData.readBits(2), this.captionChannelPacketData.readBits(2), this.captionChannelPacketData.readBits(2));
        if (this.captionChannelPacketData.readBit()) {
            bits |= 4;
        }
        boolean bit = this.captionChannelPacketData.readBit();
        int bits2 = this.captionChannelPacketData.readBits(2);
        int bits3 = this.captionChannelPacketData.readBits(2);
        int bits4 = this.captionChannelPacketData.readBits(2);
        this.captionChannelPacketData.skipBits(8);
        this.currentCueInfoBuilder.setWindowAttributes(argbColorFromCeaColor, argbColorFromCeaColor2, bit, bits, bits2, bits3, bits4);
    }

    private void handleDefineWindow(int i) {
        CueInfoBuilder cueInfoBuilder = this.cueInfoBuilders[i];
        this.captionChannelPacketData.skipBits(2);
        boolean bit = this.captionChannelPacketData.readBit();
        this.captionChannelPacketData.skipBits(2);
        int bits = this.captionChannelPacketData.readBits(3);
        boolean bit2 = this.captionChannelPacketData.readBit();
        int bits2 = this.captionChannelPacketData.readBits(7);
        int bits3 = this.captionChannelPacketData.readBits(8);
        int bits4 = this.captionChannelPacketData.readBits(4);
        int bits5 = this.captionChannelPacketData.readBits(4);
        this.captionChannelPacketData.skipBits(2);
        this.captionChannelPacketData.skipBits(6);
        this.captionChannelPacketData.skipBits(2);
        cueInfoBuilder.defineWindow(bit, bits, bit2, bits2, bits3, bits5, bits4, this.captionChannelPacketData.readBits(3), this.captionChannelPacketData.readBits(3));
    }

    private List<Cue> getDisplayCues() {
        Cea708CueInfo cea708CueInfoBuild;
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < 8; i++) {
            if (!this.cueInfoBuilders[i].isEmpty() && this.cueInfoBuilders[i].isVisible() && (cea708CueInfoBuild = this.cueInfoBuilders[i].build()) != null) {
                arrayList.add(cea708CueInfoBuild);
            }
        }
        Collections.sort(arrayList, Cea708CueInfo.LEAST_IMPORTANT_FIRST);
        ArrayList arrayList2 = new ArrayList(arrayList.size());
        for (int i2 = 0; i2 < arrayList.size(); i2++) {
            arrayList2.add(((Cea708CueInfo) arrayList.get(i2)).cue);
        }
        return Collections.unmodifiableList(arrayList2);
    }

    private void resetCueBuilders() {
        for (int i = 0; i < 8; i++) {
            this.cueInfoBuilders[i].reset();
        }
    }

    public static final class DtvCcPacket {
        int currentIndex = 0;
        public final byte[] packetData;
        public final int packetSize;
        public final int sequenceNumber;

        public DtvCcPacket(int i, int i2) {
            this.sequenceNumber = i;
            this.packetSize = i2;
            this.packetData = new byte[(i2 * 2) - 1];
        }
    }

    public static final class CueInfoBuilder {
        public static final int COLOR_SOLID_BLACK;
        public static final int COLOR_SOLID_WHITE = getArgbColorFromCeaColor(2, 2, 2, 0);
        public static final int COLOR_TRANSPARENT;
        private static final int[] PEN_STYLE_BACKGROUND;
        private static final int[] PEN_STYLE_EDGE_TYPE;
        private static final int[] PEN_STYLE_FONT_STYLE;
        private static final int[] WINDOW_STYLE_FILL;
        private static final int[] WINDOW_STYLE_JUSTIFICATION;
        private static final int[] WINDOW_STYLE_PRINT_DIRECTION;
        private static final int[] WINDOW_STYLE_SCROLL_DIRECTION;
        private static final boolean[] WINDOW_STYLE_WORD_WRAP;
        private int anchorId;
        private int backgroundColor;
        private int backgroundColorStartPosition;
        private boolean defined;
        private int foregroundColor;
        private int foregroundColorStartPosition;
        private int horizontalAnchor;
        private int italicsStartPosition;
        private int justification;
        private int penStyleId;
        private int priority;
        private boolean relativePositioning;
        private int row;
        private int rowCount;
        private int underlineStartPosition;
        private int verticalAnchor;
        private boolean visible;
        private int windowFillColor;
        private int windowStyleId;
        private final List<SpannableString> rolledUpCaptions = new ArrayList();
        private final SpannableStringBuilder captionStringBuilder = new SpannableStringBuilder();

        static {
            int argbColorFromCeaColor = getArgbColorFromCeaColor(0, 0, 0, 0);
            COLOR_SOLID_BLACK = argbColorFromCeaColor;
            int argbColorFromCeaColor2 = getArgbColorFromCeaColor(0, 0, 0, 3);
            COLOR_TRANSPARENT = argbColorFromCeaColor2;
            WINDOW_STYLE_JUSTIFICATION = new int[]{0, 0, 0, 0, 0, 2, 0};
            WINDOW_STYLE_PRINT_DIRECTION = new int[]{0, 0, 0, 0, 0, 0, 2};
            WINDOW_STYLE_SCROLL_DIRECTION = new int[]{3, 3, 3, 3, 3, 3, 1};
            WINDOW_STYLE_WORD_WRAP = new boolean[]{false, false, false, true, true, true, false};
            WINDOW_STYLE_FILL = new int[]{argbColorFromCeaColor, argbColorFromCeaColor2, argbColorFromCeaColor, argbColorFromCeaColor, argbColorFromCeaColor2, argbColorFromCeaColor, argbColorFromCeaColor};
            PEN_STYLE_FONT_STYLE = new int[]{0, 1, 2, 3, 4, 3, 4};
            PEN_STYLE_EDGE_TYPE = new int[]{0, 0, 0, 0, 0, 3, 3};
            PEN_STYLE_BACKGROUND = new int[]{argbColorFromCeaColor, argbColorFromCeaColor, argbColorFromCeaColor, argbColorFromCeaColor, argbColorFromCeaColor, argbColorFromCeaColor2, argbColorFromCeaColor2};
        }

        public CueInfoBuilder() {
            reset();
        }

        public boolean isEmpty() {
            if (isDefined()) {
                return this.rolledUpCaptions.isEmpty() && this.captionStringBuilder.length() == 0;
            }
            return true;
        }

        public void reset() {
            clear();
            this.defined = false;
            this.visible = false;
            this.priority = 4;
            this.relativePositioning = false;
            this.verticalAnchor = 0;
            this.horizontalAnchor = 0;
            this.anchorId = 0;
            this.rowCount = 15;
            this.justification = 0;
            this.windowStyleId = 0;
            this.penStyleId = 0;
            int i = COLOR_SOLID_BLACK;
            this.windowFillColor = i;
            this.foregroundColor = COLOR_SOLID_WHITE;
            this.backgroundColor = i;
        }

        public void clear() {
            this.rolledUpCaptions.clear();
            this.captionStringBuilder.clear();
            this.italicsStartPosition = -1;
            this.underlineStartPosition = -1;
            this.foregroundColorStartPosition = -1;
            this.backgroundColorStartPosition = -1;
            this.row = 0;
        }

        public boolean isDefined() {
            return this.defined;
        }

        public void setVisibility(boolean z) {
            this.visible = z;
        }

        public boolean isVisible() {
            return this.visible;
        }

        public void defineWindow(boolean z, int i, boolean z2, int i2, int i3, int i4, int i5, int i6, int i7) {
            this.defined = true;
            this.visible = z;
            this.priority = i;
            this.relativePositioning = z2;
            this.verticalAnchor = i2;
            this.horizontalAnchor = i3;
            this.anchorId = i5;
            int i8 = i4 + 1;
            if (this.rowCount != i8) {
                this.rowCount = i8;
                while (true) {
                    if (this.rolledUpCaptions.size() < this.rowCount && this.rolledUpCaptions.size() < 15) {
                        break;
                    } else {
                        this.rolledUpCaptions.remove(0);
                    }
                }
            }
            if (i6 != 0 && this.windowStyleId != i6) {
                this.windowStyleId = i6;
                int i9 = i6 - 1;
                setWindowAttributes(WINDOW_STYLE_FILL[i9], COLOR_TRANSPARENT, WINDOW_STYLE_WORD_WRAP[i9], 0, WINDOW_STYLE_PRINT_DIRECTION[i9], WINDOW_STYLE_SCROLL_DIRECTION[i9], WINDOW_STYLE_JUSTIFICATION[i9]);
            }
            if (i7 == 0 || this.penStyleId == i7) {
                return;
            }
            this.penStyleId = i7;
            int i10 = i7 - 1;
            setPenAttributes(0, 1, 1, false, false, PEN_STYLE_EDGE_TYPE[i10], PEN_STYLE_FONT_STYLE[i10]);
            setPenColor(COLOR_SOLID_WHITE, PEN_STYLE_BACKGROUND[i10], COLOR_SOLID_BLACK);
        }

        public void setWindowAttributes(int i, int i2, boolean z, int i3, int i4, int i5, int i6) {
            this.windowFillColor = i;
            this.justification = i6;
        }

        public void setPenAttributes(int i, int i2, int i3, boolean z, boolean z2, int i4, int i5) {
            if (this.italicsStartPosition != -1) {
                if (!z) {
                    this.captionStringBuilder.setSpan(new StyleSpan(2), this.italicsStartPosition, this.captionStringBuilder.length(), 33);
                    this.italicsStartPosition = -1;
                }
            } else if (z) {
                this.italicsStartPosition = this.captionStringBuilder.length();
            }
            if (this.underlineStartPosition == -1) {
                if (z2) {
                    this.underlineStartPosition = this.captionStringBuilder.length();
                }
            } else {
                if (z2) {
                    return;
                }
                this.captionStringBuilder.setSpan(new UnderlineSpan(), this.underlineStartPosition, this.captionStringBuilder.length(), 33);
                this.underlineStartPosition = -1;
            }
        }

        public void setPenColor(int i, int i2, int i3) {
            if (this.foregroundColorStartPosition != -1 && this.foregroundColor != i) {
                this.captionStringBuilder.setSpan(new ForegroundColorSpan(this.foregroundColor), this.foregroundColorStartPosition, this.captionStringBuilder.length(), 33);
            }
            if (i != COLOR_SOLID_WHITE) {
                this.foregroundColorStartPosition = this.captionStringBuilder.length();
                this.foregroundColor = i;
            }
            if (this.backgroundColorStartPosition != -1 && this.backgroundColor != i2) {
                this.captionStringBuilder.setSpan(new BackgroundColorSpan(this.backgroundColor), this.backgroundColorStartPosition, this.captionStringBuilder.length(), 33);
            }
            if (i2 != COLOR_SOLID_BLACK) {
                this.backgroundColorStartPosition = this.captionStringBuilder.length();
                this.backgroundColor = i2;
            }
        }

        public void setPenLocation(int i, int i2) {
            if (this.row != i) {
                append('\n');
            }
            this.row = i;
        }

        public void backspace() {
            int length = this.captionStringBuilder.length();
            if (length > 0) {
                this.captionStringBuilder.delete(length - 1, length);
            }
        }

        public void append(char c2) {
            if (c2 == '\n') {
                this.rolledUpCaptions.add(buildSpannableString());
                this.captionStringBuilder.clear();
                if (this.italicsStartPosition != -1) {
                    this.italicsStartPosition = 0;
                }
                if (this.underlineStartPosition != -1) {
                    this.underlineStartPosition = 0;
                }
                if (this.foregroundColorStartPosition != -1) {
                    this.foregroundColorStartPosition = 0;
                }
                if (this.backgroundColorStartPosition != -1) {
                    this.backgroundColorStartPosition = 0;
                }
                while (true) {
                    if (this.rolledUpCaptions.size() >= this.rowCount || this.rolledUpCaptions.size() >= 15) {
                        this.rolledUpCaptions.remove(0);
                    } else {
                        this.row = this.rolledUpCaptions.size();
                        return;
                    }
                }
            } else {
                this.captionStringBuilder.append(c2);
            }
        }

        public SpannableString buildSpannableString() {
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(this.captionStringBuilder);
            int length = spannableStringBuilder.length();
            if (length > 0) {
                if (this.italicsStartPosition != -1) {
                    spannableStringBuilder.setSpan(new StyleSpan(2), this.italicsStartPosition, length, 33);
                }
                if (this.underlineStartPosition != -1) {
                    spannableStringBuilder.setSpan(new UnderlineSpan(), this.underlineStartPosition, length, 33);
                }
                if (this.foregroundColorStartPosition != -1) {
                    spannableStringBuilder.setSpan(new ForegroundColorSpan(this.foregroundColor), this.foregroundColorStartPosition, length, 33);
                }
                if (this.backgroundColorStartPosition != -1) {
                    spannableStringBuilder.setSpan(new BackgroundColorSpan(this.backgroundColor), this.backgroundColorStartPosition, length, 33);
                }
            }
            return new SpannableString(spannableStringBuilder);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r7v10 */
        /* JADX WARN: Type inference failed for: r7v7 */
        /* JADX WARN: Type inference failed for: r7v8 */
        /* JADX WARN: Type inference failed for: r7v9, types: [int] */
        public Cea708CueInfo build() {
            Layout.Alignment alignment;
            float f;
            float f2;
            boolean z;
            ?? r7;
            if (isEmpty()) {
                return null;
            }
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
            for (int i = 0; i < this.rolledUpCaptions.size(); i++) {
                spannableStringBuilder.append((CharSequence) this.rolledUpCaptions.get(i));
                spannableStringBuilder.append('\n');
            }
            spannableStringBuilder.append((CharSequence) buildSpannableString());
            int i2 = this.justification;
            int i3 = 1;
            if (i2 == 0) {
                alignment = Layout.Alignment.ALIGN_NORMAL;
            } else if (i2 == 1) {
                alignment = Layout.Alignment.ALIGN_OPPOSITE;
            } else if (i2 != 2) {
                if (i2 != 3) {
                    IntegerType$$ExternalSyntheticBUOutline0.m486m("Unexpected justification value: ", this.justification);
                    return null;
                }
                alignment = Layout.Alignment.ALIGN_NORMAL;
            } else {
                alignment = Layout.Alignment.ALIGN_CENTER;
            }
            boolean z2 = this.relativePositioning;
            int i4 = this.horizontalAnchor;
            if (z2) {
                f = i4 / 99.0f;
                f2 = this.verticalAnchor / 99.0f;
            } else {
                f = i4 / 209.0f;
                f2 = this.verticalAnchor / 74.0f;
            }
            float f3 = (f * 0.9f) + 0.05f;
            float f4 = (f2 * 0.9f) + 0.05f;
            int i5 = this.anchorId;
            if (i5 / 3 == 0) {
                z = true;
                i3 = 0;
            } else if (i5 / 3 == 1) {
                z = true;
            } else {
                z = true;
                i3 = 2;
            }
            if (i5 % 3 == 0) {
                r7 = 0;
            } else {
                r7 = i5 % 3 == z ? z : 2;
            }
            if (this.windowFillColor == COLOR_SOLID_BLACK) {
                z = false;
            }
            return new Cea708CueInfo(spannableStringBuilder, alignment, f4, 0, i3, f3, r7, -3.4028235E38f, z, this.windowFillColor, this.priority);
        }

        public static int getArgbColorFromCeaColor(int i, int i2, int i3) {
            return getArgbColorFromCeaColor(i, i2, i3, 0);
        }

        /* JADX WARN: Removed duplicated region for block: B:9:0x001b  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public static int getArgbColorFromCeaColor(int i, int i2, int i3, int i4) {
            int i5;
            Assertions.checkIndex(i, 0, 4);
            Assertions.checkIndex(i2, 0, 4);
            Assertions.checkIndex(i3, 0, 4);
            Assertions.checkIndex(i4, 0, 4);
            if (i4 == 0 || i4 == 1) {
                i5 = 255;
            } else if (i4 == 2) {
                i5 = 127;
            } else if (i4 == 3) {
                i5 = 0;
            }
            return Color.argb(i5, i > 1 ? 255 : 0, i2 > 1 ? 255 : 0, i3 > 1 ? 255 : 0);
        }
    }

    public static final class Cea708CueInfo {
        private static final Comparator<Cea708CueInfo> LEAST_IMPORTANT_FIRST = new Comparator() { // from class: androidx.media3.extractor.text.cea.Cea708Decoder$Cea708CueInfo$$ExternalSyntheticLambda0
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return Integer.compare(((Cea708Decoder.Cea708CueInfo) obj2).priority, ((Cea708Decoder.Cea708CueInfo) obj).priority);
            }
        };
        public final Cue cue;
        public final int priority;

        public Cea708CueInfo(CharSequence charSequence, Layout.Alignment alignment, float f, int i, int i2, float f2, int i3, float f3, boolean z, int i4, int i5) {
            Cue.Builder size = new Cue.Builder().setText(charSequence).setTextAlignment(alignment).setLine(f, i).setLineAnchor(i2).setPosition(f2).setPositionAnchor(i3).setSize(f3);
            if (z) {
                size.setWindowColor(i4);
            }
            this.cue = size.build();
            this.priority = i5;
        }
    }
}
