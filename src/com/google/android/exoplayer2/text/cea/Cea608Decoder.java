package com.google.android.exoplayer2.text.cea;

import android.text.Layout;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.style.ForegroundColorSpan;
import android.text.style.StyleSpan;
import android.text.style.UnderlineSpan;
import com.google.android.exoplayer2.text.Cue;
import com.google.android.exoplayer2.text.Subtitle;
import com.google.android.exoplayer2.text.SubtitleInputBuffer;
import com.google.android.exoplayer2.text.SubtitleOutputBuffer;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.Log;
import com.google.android.exoplayer2.util.ParsableByteArray;
import com.google.android.exoplayer2.util.Util;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import kotlin.jvm.internal.ByteCompanionObject;
import kotlin.jvm.internal.LongCompanionObject;
import org.mvel2.asm.Opcodes;

/* JADX INFO: loaded from: classes4.dex */
public final class Cea608Decoder extends CeaDecoder {
    private int captionMode;
    private int captionRowCount;
    private List<Cue> cues;
    private boolean isCaptionValid;
    private boolean isInCaptionService;
    private long lastCueUpdateUs;
    private List<Cue> lastCues;
    private final int packetLength;
    private byte repeatableControlCc1;
    private byte repeatableControlCc2;
    private boolean repeatableControlSet;
    private final int selectedChannel;
    private final int selectedField;
    private final long validDataChannelTimeoutUs;
    private static final int[] ROW_INDICES = {11, 1, 3, 12, 14, 5, 7, 9};
    private static final int[] COLUMN_INDICES = {0, 4, 8, 12, 16, 20, 24, 28};
    private static final int[] STYLE_COLORS = {-1, -16711936, -16776961, -16711681, Opcodes.V_PREVIEW, -256, -65281};
    private static final int[] BASIC_CHARACTER_SET = {32, 33, 34, 35, 36, 37, 38, 39, 40, 41, com.android.dx.io.Opcodes.SHR_INT_LIT8, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 233, 93, 237, 243, 250, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 231, 247, com.android.dx.io.Opcodes.RSUB_INT, 241, 9632};
    private static final int[] SPECIAL_CHARACTER_SET = {174, 176, 189, 191, 8482, 162, 163, 9834, com.android.dx.io.Opcodes.SHL_INT_LIT8, 32, 232, com.android.dx.io.Opcodes.USHR_INT_LIT8, 234, 238, 244, com.android.dx.io.Opcodes.INVOKE_POLYMORPHIC_RANGE};
    private static final int[] SPECIAL_ES_FR_CHARACTER_SET = {193, 201, com.android.dx.io.Opcodes.DIV_INT_LIT16, com.android.dx.io.Opcodes.MUL_INT_LIT8, com.android.dx.io.Opcodes.REM_INT_LIT8, com.android.dx.io.Opcodes.INVOKE_CUSTOM, 8216, 161, 42, 39, 8212, 169, 8480, 8226, 8220, 8221, 192, 194, 199, 200, 202, 203, 235, com.android.dx.io.Opcodes.DIV_DOUBLE_2ADDR, com.android.dx.io.Opcodes.REM_DOUBLE_2ADDR, 239, com.android.dx.io.Opcodes.REM_INT_LIT16, com.android.dx.io.Opcodes.RSUB_INT_LIT8, 249, com.android.dx.io.Opcodes.DIV_INT_LIT8, 171, 187};
    private static final int[] SPECIAL_PT_DE_CHARACTER_SET = {195, 227, com.android.dx.io.Opcodes.MUL_DOUBLE_2ADDR, com.android.dx.io.Opcodes.SUB_DOUBLE_2ADDR, 236, com.android.dx.io.Opcodes.MUL_INT_LIT16, 242, com.android.dx.io.Opcodes.AND_INT_LIT16, 245, 123, 125, 92, 94, 95, 124, 126, 196, 228, com.android.dx.io.Opcodes.OR_INT_LIT16, 246, com.android.dx.io.Opcodes.XOR_INT_LIT8, 165, 164, 9474, 197, 229, com.android.dx.io.Opcodes.ADD_INT_LIT8, 248, 9484, 9488, 9492, 9496};
    private static final boolean[] ODD_PARITY_BYTE_TABLE = {false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false};
    private final ParsableByteArray ccData = new ParsableByteArray();
    private final ArrayList<CueBuilder> cueBuilders = new ArrayList<>();
    private CueBuilder currentCueBuilder = new CueBuilder(0, 4);
    private int currentChannel = 0;

    private static int getChannel(byte b2) {
        return (b2 >> 3) & 1;
    }

    private static boolean isCtrlCode(byte b2) {
        return (b2 & 224) == 0;
    }

    private static boolean isExtendedWestEuropeanChar(byte b2, byte b3) {
        return (b2 & 246) == 18 && (b3 & 224) == 32;
    }

    private static boolean isMidrowCtrlCode(byte b2, byte b3) {
        return (b2 & 247) == 17 && (b3 & 240) == 32;
    }

    private static boolean isMiscCode(byte b2, byte b3) {
        return (b2 & 246) == 20 && (b3 & 240) == 32;
    }

    private static boolean isPreambleAddressCode(byte b2, byte b3) {
        return (b2 & 240) == 16 && (b3 & 192) == 64;
    }

    private static boolean isRepeatable(byte b2) {
        return (b2 & 240) == 16;
    }

    private static boolean isServiceSwitchCommand(byte b2) {
        return (b2 & 246) == 20;
    }

    private static boolean isSpecialNorthAmericanChar(byte b2, byte b3) {
        return (b2 & 247) == 17 && (b3 & 240) == 48;
    }

    private static boolean isTabCtrlCode(byte b2, byte b3) {
        return (b2 & 247) == 23 && b3 >= 33 && b3 <= 35;
    }

    private static boolean isXdsControlCode(byte b2) {
        return 1 <= b2 && b2 <= 15;
    }

    @Override // com.google.android.exoplayer2.text.cea.CeaDecoder, com.google.android.exoplayer2.decoder.Decoder
    public void release() {
    }

    @Override // com.google.android.exoplayer2.text.cea.CeaDecoder, com.google.android.exoplayer2.decoder.Decoder
    public /* bridge */ /* synthetic */ SubtitleInputBuffer dequeueInputBuffer() {
        return super.dequeueInputBuffer();
    }

    @Override // com.google.android.exoplayer2.text.cea.CeaDecoder
    public /* bridge */ /* synthetic */ void queueInputBuffer(SubtitleInputBuffer subtitleInputBuffer) {
        super.queueInputBuffer(subtitleInputBuffer);
    }

    @Override // com.google.android.exoplayer2.text.cea.CeaDecoder, com.google.android.exoplayer2.text.SubtitleDecoder
    public /* bridge */ /* synthetic */ void setPositionUs(long j) {
        super.setPositionUs(j);
    }

    public Cea608Decoder(String str, int i, long j) {
        this.validDataChannelTimeoutUs = j > 0 ? j * 1000 : -9223372036854775807L;
        this.packetLength = "application/x-mp4-cea-608".equals(str) ? 2 : 3;
        if (i == 1) {
            this.selectedChannel = 0;
            this.selectedField = 0;
        } else if (i == 2) {
            this.selectedChannel = 1;
            this.selectedField = 0;
        } else if (i == 3) {
            this.selectedChannel = 0;
            this.selectedField = 1;
        } else if (i == 4) {
            this.selectedChannel = 1;
            this.selectedField = 1;
        } else {
            Log.m274w("Cea608Decoder", "Invalid channel. Defaulting to CC1.");
            this.selectedChannel = 0;
            this.selectedField = 0;
        }
        setCaptionMode(0);
        resetCueBuilders();
        this.isInCaptionService = true;
        this.lastCueUpdateUs = -9223372036854775807L;
    }

    @Override // com.google.android.exoplayer2.decoder.Decoder
    public String getName() {
        return "Cea608Decoder";
    }

    @Override // com.google.android.exoplayer2.text.cea.CeaDecoder, com.google.android.exoplayer2.decoder.Decoder
    public void flush() {
        super.flush();
        this.cues = null;
        this.lastCues = null;
        setCaptionMode(0);
        setCaptionRowCount(4);
        resetCueBuilders();
        this.isCaptionValid = false;
        this.repeatableControlSet = false;
        this.repeatableControlCc1 = (byte) 0;
        this.repeatableControlCc2 = (byte) 0;
        this.currentChannel = 0;
        this.isInCaptionService = true;
        this.lastCueUpdateUs = -9223372036854775807L;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.google.android.exoplayer2.text.cea.CeaDecoder, com.google.android.exoplayer2.decoder.Decoder
    public SubtitleOutputBuffer dequeueOutputBuffer() {
        SubtitleOutputBuffer availableOutputBuffer;
        SubtitleOutputBuffer subtitleOutputBufferDequeueOutputBuffer = super.dequeueOutputBuffer();
        if (subtitleOutputBufferDequeueOutputBuffer != null) {
            return subtitleOutputBufferDequeueOutputBuffer;
        }
        if (!shouldClearStuckCaptions() || (availableOutputBuffer = getAvailableOutputBuffer()) == null) {
            return null;
        }
        this.cues = Collections.EMPTY_LIST;
        this.lastCueUpdateUs = -9223372036854775807L;
        availableOutputBuffer.setContent(getPositionUs(), createSubtitle(), LongCompanionObject.MAX_VALUE);
        return availableOutputBuffer;
    }

    @Override // com.google.android.exoplayer2.text.cea.CeaDecoder
    public boolean isNewSubtitleDataAvailable() {
        return this.cues != this.lastCues;
    }

    @Override // com.google.android.exoplayer2.text.cea.CeaDecoder
    public Subtitle createSubtitle() {
        List<Cue> list = this.cues;
        this.lastCues = list;
        return new CeaSubtitle((List) Assertions.checkNotNull(list));
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x0063  */
    @Override // com.google.android.exoplayer2.text.cea.CeaDecoder
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void decode(SubtitleInputBuffer subtitleInputBuffer) {
        ByteBuffer byteBuffer = (ByteBuffer) Assertions.checkNotNull(subtitleInputBuffer.data);
        this.ccData.reset(byteBuffer.array(), byteBuffer.limit());
        boolean z = false;
        while (true) {
            int iBytesLeft = this.ccData.bytesLeft();
            int i = this.packetLength;
            if (iBytesLeft < i) {
                break;
            }
            int unsignedByte = i == 2 ? -4 : this.ccData.readUnsignedByte();
            int unsignedByte2 = this.ccData.readUnsignedByte();
            int unsignedByte3 = this.ccData.readUnsignedByte();
            if ((unsignedByte & 2) == 0 && (unsignedByte & 1) == this.selectedField) {
                byte b2 = (byte) (unsignedByte2 & 127);
                byte b3 = (byte) (unsignedByte3 & 127);
                if (b2 != 0 || b3 != 0) {
                    boolean z2 = this.isCaptionValid;
                    if ((unsignedByte & 4) == 4) {
                        boolean[] zArr = ODD_PARITY_BYTE_TABLE;
                        boolean z3 = zArr[unsignedByte2] && zArr[unsignedByte3];
                        this.isCaptionValid = z3;
                        if (!isRepeatedCommand(z3, b2, b3)) {
                            if (this.isCaptionValid) {
                                maybeUpdateIsInCaptionService(b2, b3);
                                if (this.isInCaptionService && updateAndVerifyCurrentChannel(b2)) {
                                    if (isCtrlCode(b2)) {
                                        if (isSpecialNorthAmericanChar(b2, b3)) {
                                            this.currentCueBuilder.append(getSpecialNorthAmericanChar(b3));
                                        } else if (isExtendedWestEuropeanChar(b2, b3)) {
                                            this.currentCueBuilder.backspace();
                                            this.currentCueBuilder.append(getExtendedWestEuropeanChar(b2, b3));
                                        } else if (isMidrowCtrlCode(b2, b3)) {
                                            handleMidrowCtrl(b3);
                                        } else if (isPreambleAddressCode(b2, b3)) {
                                            handlePreambleAddressCode(b2, b3);
                                        } else if (isTabCtrlCode(b2, b3)) {
                                            this.currentCueBuilder.tabOffset = b3 - 32;
                                        } else if (isMiscCode(b2, b3)) {
                                            handleMiscCode(b3);
                                        }
                                    } else {
                                        this.currentCueBuilder.append(getBasicChar(b2));
                                        if ((b3 & 224) != 0) {
                                            this.currentCueBuilder.append(getBasicChar(b3));
                                        }
                                    }
                                    z = true;
                                }
                            } else if (z2) {
                                resetCueBuilders();
                                z = true;
                            }
                        }
                    }
                }
            }
        }
        if (z) {
            int i2 = this.captionMode;
            if (i2 == 1 || i2 == 3) {
                this.cues = getDisplayCues();
                this.lastCueUpdateUs = getPositionUs();
            }
        }
    }

    private boolean updateAndVerifyCurrentChannel(byte b2) {
        if (isCtrlCode(b2)) {
            this.currentChannel = getChannel(b2);
        }
        return this.currentChannel == this.selectedChannel;
    }

    private boolean isRepeatedCommand(boolean z, byte b2, byte b3) {
        if (z && isRepeatable(b2)) {
            if (this.repeatableControlSet && this.repeatableControlCc1 == b2 && this.repeatableControlCc2 == b3) {
                this.repeatableControlSet = false;
                return true;
            }
            this.repeatableControlSet = true;
            this.repeatableControlCc1 = b2;
            this.repeatableControlCc2 = b3;
        } else {
            this.repeatableControlSet = false;
        }
        return false;
    }

    private void handleMidrowCtrl(byte b2) {
        this.currentCueBuilder.append(' ');
        this.currentCueBuilder.setStyle((b2 >> 1) & 7, (b2 & 1) == 1);
    }

    private void handlePreambleAddressCode(byte b2, byte b3) {
        int i = ROW_INDICES[b2 & 7];
        if ((b3 & 32) != 0) {
            i++;
        }
        if (i != this.currentCueBuilder.row) {
            if (this.captionMode != 1 && !this.currentCueBuilder.isEmpty()) {
                CueBuilder cueBuilder = new CueBuilder(this.captionMode, this.captionRowCount);
                this.currentCueBuilder = cueBuilder;
                this.cueBuilders.add(cueBuilder);
            }
            this.currentCueBuilder.row = i;
        }
        boolean z = (b3 & 16) == 16;
        boolean z2 = (b3 & 1) == 1;
        int i2 = (b3 >> 1) & 7;
        this.currentCueBuilder.setStyle(z ? 8 : i2, z2);
        if (z) {
            this.currentCueBuilder.indent = COLUMN_INDICES[i2];
        }
    }

    private void handleMiscCode(byte b2) {
        if (b2 == 32) {
            setCaptionMode(2);
            return;
        }
        if (b2 != 41) {
            switch (b2) {
                case 37:
                    setCaptionMode(1);
                    setCaptionRowCount(2);
                    break;
                case 38:
                    setCaptionMode(1);
                    setCaptionRowCount(3);
                    break;
                case 39:
                    setCaptionMode(1);
                    setCaptionRowCount(4);
                    break;
                default:
                    int i = this.captionMode;
                    if (i != 0) {
                        if (b2 != 33) {
                            switch (b2) {
                                case 44:
                                    this.cues = Collections.EMPTY_LIST;
                                    if (i == 1 || i == 3) {
                                        resetCueBuilders();
                                    }
                                    break;
                                case 45:
                                    if (i == 1 && !this.currentCueBuilder.isEmpty()) {
                                        this.currentCueBuilder.rollUp();
                                        break;
                                    }
                                    break;
                                case 46:
                                    resetCueBuilders();
                                    break;
                                case 47:
                                    this.cues = getDisplayCues();
                                    resetCueBuilders();
                                    break;
                            }
                        } else {
                            this.currentCueBuilder.backspace();
                            break;
                        }
                    }
                    break;
            }
            return;
        }
        setCaptionMode(3);
    }

    private List<Cue> getDisplayCues() {
        int size = this.cueBuilders.size();
        ArrayList arrayList = new ArrayList(size);
        int iMin = 2;
        for (int i = 0; i < size; i++) {
            Cue cueBuild = this.cueBuilders.get(i).build(Integer.MIN_VALUE);
            arrayList.add(cueBuild);
            if (cueBuild != null) {
                iMin = Math.min(iMin, cueBuild.positionAnchor);
            }
        }
        ArrayList arrayList2 = new ArrayList(size);
        for (int i2 = 0; i2 < size; i2++) {
            Cue cue = (Cue) arrayList.get(i2);
            if (cue != null) {
                if (cue.positionAnchor != iMin) {
                    cue = (Cue) Assertions.checkNotNull(this.cueBuilders.get(i2).build(iMin));
                }
                arrayList2.add(cue);
            }
        }
        return arrayList2;
    }

    private void setCaptionMode(int i) {
        int i2 = this.captionMode;
        if (i2 == i) {
            return;
        }
        this.captionMode = i;
        if (i == 3) {
            for (int i3 = 0; i3 < this.cueBuilders.size(); i3++) {
                this.cueBuilders.get(i3).setCaptionMode(i);
            }
            return;
        }
        resetCueBuilders();
        if (i2 == 3 || i == 1 || i == 0) {
            this.cues = Collections.EMPTY_LIST;
        }
    }

    private void setCaptionRowCount(int i) {
        this.captionRowCount = i;
        this.currentCueBuilder.setCaptionRowCount(i);
    }

    private void resetCueBuilders() {
        this.currentCueBuilder.reset(this.captionMode);
        this.cueBuilders.clear();
        this.cueBuilders.add(this.currentCueBuilder);
    }

    private void maybeUpdateIsInCaptionService(byte b2, byte b3) {
        if (isXdsControlCode(b2)) {
            this.isInCaptionService = false;
            return;
        }
        if (isServiceSwitchCommand(b2)) {
            if (b3 != 32 && b3 != 47) {
                switch (b3) {
                    case 37:
                    case 38:
                    case 39:
                        break;
                    default:
                        switch (b3) {
                            case 42:
                            case 43:
                                this.isInCaptionService = false;
                                break;
                        }
                        return;
                }
            }
            this.isInCaptionService = true;
        }
    }

    private static char getBasicChar(byte b2) {
        return (char) BASIC_CHARACTER_SET[(b2 & ByteCompanionObject.MAX_VALUE) - 32];
    }

    private static char getSpecialNorthAmericanChar(byte b2) {
        return (char) SPECIAL_CHARACTER_SET[b2 & 15];
    }

    private static char getExtendedWestEuropeanChar(byte b2, byte b3) {
        if ((b2 & 1) == 0) {
            return getExtendedEsFrChar(b3);
        }
        return getExtendedPtDeChar(b3);
    }

    private static char getExtendedEsFrChar(byte b2) {
        return (char) SPECIAL_ES_FR_CHARACTER_SET[b2 & 31];
    }

    private static char getExtendedPtDeChar(byte b2) {
        return (char) SPECIAL_PT_DE_CHARACTER_SET[b2 & 31];
    }

    public static final class CueBuilder {
        private int captionMode;
        private int captionRowCount;
        private int indent;
        private int row;
        private int tabOffset;
        private final List<CueStyle> cueStyles = new ArrayList();
        private final List<SpannableString> rolledUpCaptions = new ArrayList();
        private final StringBuilder captionStringBuilder = new StringBuilder();

        public CueBuilder(int i, int i2) {
            reset(i);
            this.captionRowCount = i2;
        }

        public void reset(int i) {
            this.captionMode = i;
            this.cueStyles.clear();
            this.rolledUpCaptions.clear();
            this.captionStringBuilder.setLength(0);
            this.row = 15;
            this.indent = 0;
            this.tabOffset = 0;
        }

        public boolean isEmpty() {
            return this.cueStyles.isEmpty() && this.rolledUpCaptions.isEmpty() && this.captionStringBuilder.length() == 0;
        }

        public void setCaptionMode(int i) {
            this.captionMode = i;
        }

        public void setCaptionRowCount(int i) {
            this.captionRowCount = i;
        }

        public void setStyle(int i, boolean z) {
            this.cueStyles.add(new CueStyle(i, z, this.captionStringBuilder.length()));
        }

        public void backspace() {
            int length = this.captionStringBuilder.length();
            if (length > 0) {
                this.captionStringBuilder.delete(length - 1, length);
                for (int size = this.cueStyles.size() - 1; size >= 0; size--) {
                    CueStyle cueStyle = this.cueStyles.get(size);
                    int i = cueStyle.start;
                    if (i != length) {
                        return;
                    }
                    cueStyle.start = i - 1;
                }
            }
        }

        public void append(char c2) {
            if (this.captionStringBuilder.length() < 32) {
                this.captionStringBuilder.append(c2);
            }
        }

        public void rollUp() {
            this.rolledUpCaptions.add(buildCurrentLine());
            this.captionStringBuilder.setLength(0);
            this.cueStyles.clear();
            int iMin = Math.min(this.captionRowCount, this.row);
            while (this.rolledUpCaptions.size() >= iMin) {
                this.rolledUpCaptions.remove(0);
            }
        }

        public Cue build(int i) {
            float f;
            int i2 = this.indent + this.tabOffset;
            int i3 = 32 - i2;
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
            for (int i4 = 0; i4 < this.rolledUpCaptions.size(); i4++) {
                spannableStringBuilder.append(Util.truncateAscii(this.rolledUpCaptions.get(i4), i3));
                spannableStringBuilder.append('\n');
            }
            spannableStringBuilder.append(Util.truncateAscii(buildCurrentLine(), i3));
            if (spannableStringBuilder.length() == 0) {
                return null;
            }
            int length = i3 - spannableStringBuilder.length();
            int i5 = i2 - length;
            if (i == Integer.MIN_VALUE) {
                if (this.captionMode != 2 || (Math.abs(i5) >= 3 && length >= 0)) {
                    i = (this.captionMode != 2 || i5 <= 0) ? 0 : 2;
                } else {
                    i = 1;
                }
            }
            if (i != 1) {
                if (i == 2) {
                    i2 = 32 - length;
                }
                f = ((i2 / 32.0f) * 0.8f) + 0.1f;
            } else {
                f = 0.5f;
            }
            int i6 = this.row;
            if (i6 > 7) {
                i6 -= 17;
            } else if (this.captionMode == 1) {
                i6 -= this.captionRowCount - 1;
            }
            return new Cue.Builder().setText(spannableStringBuilder).setTextAlignment(Layout.Alignment.ALIGN_NORMAL).setLine(i6, 1).setPosition(f).setPositionAnchor(i).build();
        }

        private SpannableString buildCurrentLine() {
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(this.captionStringBuilder);
            int length = spannableStringBuilder.length();
            int i = -1;
            int i2 = -1;
            int i3 = -1;
            int i4 = -1;
            int i5 = 0;
            int i6 = 0;
            boolean z = false;
            while (i5 < this.cueStyles.size()) {
                CueStyle cueStyle = this.cueStyles.get(i5);
                boolean z2 = cueStyle.underline;
                int i7 = cueStyle.style;
                if (i7 != 8) {
                    boolean z3 = i7 == 7;
                    if (i7 != 7) {
                        i4 = Cea608Decoder.STYLE_COLORS[i7];
                    }
                    z = z3;
                }
                int i8 = cueStyle.start;
                i5++;
                if (i8 != (i5 < this.cueStyles.size() ? this.cueStyles.get(i5).start : length)) {
                    if (i != -1 && !z2) {
                        setUnderlineSpan(spannableStringBuilder, i, i8);
                        i = -1;
                    } else if (i == -1 && z2) {
                        i = i8;
                    }
                    if (i2 != -1 && !z) {
                        setItalicSpan(spannableStringBuilder, i2, i8);
                        i2 = -1;
                    } else if (i2 == -1 && z) {
                        i2 = i8;
                    }
                    if (i4 != i3) {
                        setColorSpan(spannableStringBuilder, i6, i8, i3);
                        i3 = i4;
                        i6 = i8;
                    }
                }
            }
            if (i != -1 && i != length) {
                setUnderlineSpan(spannableStringBuilder, i, length);
            }
            if (i2 != -1 && i2 != length) {
                setItalicSpan(spannableStringBuilder, i2, length);
            }
            if (i6 != length) {
                setColorSpan(spannableStringBuilder, i6, length, i3);
            }
            return new SpannableString(spannableStringBuilder);
        }

        private static void setUnderlineSpan(SpannableStringBuilder spannableStringBuilder, int i, int i2) {
            spannableStringBuilder.setSpan(new UnderlineSpan(), i, i2, 33);
        }

        private static void setItalicSpan(SpannableStringBuilder spannableStringBuilder, int i, int i2) {
            spannableStringBuilder.setSpan(new StyleSpan(2), i, i2, 33);
        }

        private static void setColorSpan(SpannableStringBuilder spannableStringBuilder, int i, int i2, int i3) {
            if (i3 == -1) {
                return;
            }
            spannableStringBuilder.setSpan(new ForegroundColorSpan(i3), i, i2, 33);
        }

        public static class CueStyle {
            public int start;
            public final int style;
            public final boolean underline;

            public CueStyle(int i, boolean z, int i2) {
                this.style = i;
                this.underline = z;
                this.start = i2;
            }
        }
    }

    private boolean shouldClearStuckCaptions() {
        return (this.validDataChannelTimeoutUs == -9223372036854775807L || this.lastCueUpdateUs == -9223372036854775807L || getPositionUs() - this.lastCueUpdateUs < this.validDataChannelTimeoutUs) ? false : true;
    }
}
