package androidx.media3.extractor.text.vobsub;

import android.graphics.Bitmap;
import android.graphics.Rect;
import androidx.media3.common.text.Cue;
import androidx.media3.common.util.Consumer;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.ParsableBitArray;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.Util;
import androidx.media3.extractor.text.CuesWithTiming;
import androidx.media3.extractor.text.SubtitleParser;
import com.google.common.collect.ImmutableList;
import java.nio.charset.StandardCharsets;
import java.util.Arrays;
import java.util.List;
import java.util.zip.Inflater;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;

/* JADX INFO: loaded from: classes4.dex */
public final class VobsubParser implements SubtitleParser {
    public static final CuesWithTiming EMPTY_CUES = new CuesWithTiming(ImmutableList.of(), -9223372036854775807L, -9223372036854775807L);
    private final CueBuilder cueBuilder;
    private Inflater inflater;
    private final ParsableByteArray scratch = new ParsableByteArray();
    private final ParsableByteArray inflatedScratch = new ParsableByteArray();

    @Override // androidx.media3.extractor.text.SubtitleParser
    public int getCueReplacementBehavior() {
        return 2;
    }

    public VobsubParser(List<byte[]> list) {
        CueBuilder cueBuilder = new CueBuilder();
        this.cueBuilder = cueBuilder;
        cueBuilder.parseIdx(new String(list.get(0), StandardCharsets.UTF_8));
    }

    @Override // androidx.media3.extractor.text.SubtitleParser
    public void parse(byte[] bArr, int i, int i2, SubtitleParser.OutputOptions outputOptions, Consumer<CuesWithTiming> consumer) {
        this.scratch.reset(bArr, i2 + i);
        this.scratch.setPosition(i);
        consumer.accept(parse());
    }

    private CuesWithTiming parse() {
        if (this.inflater == null) {
            this.inflater = new Inflater();
        }
        if (Util.maybeInflate(this.scratch, this.inflatedScratch, this.inflater)) {
            this.scratch.reset(this.inflatedScratch.getData(), this.inflatedScratch.limit());
        }
        this.cueBuilder.reset();
        int iBytesLeft = this.scratch.bytesLeft();
        if (iBytesLeft < 2 || this.scratch.readUnsignedShort() != iBytesLeft) {
            return EMPTY_CUES;
        }
        this.cueBuilder.parseSpuControlSequenceTable(this.scratch);
        Cue cueBuild = this.cueBuilder.build(this.scratch);
        long j = -9223372036854775807L;
        if (this.cueBuilder.endTimeUs != -9223372036854775807L) {
            j = (this.cueBuilder.startTimeUs == -9223372036854775807L || this.cueBuilder.endTimeUs <= this.cueBuilder.startTimeUs) ? this.cueBuilder.endTimeUs : this.cueBuilder.endTimeUs - this.cueBuilder.startTimeUs;
        }
        return new CuesWithTiming(cueBuild != null ? ImmutableList.of(cueBuild) : ImmutableList.of(), this.cueBuilder.startTimeUs, j);
    }

    public static final class CueBuilder {
        private Rect boundingBox;
        private boolean hasColors;
        private boolean hasPlane;
        private int[] palette;
        private int planeHeight;
        private int planeWidth;
        private long startTimeUs = -9223372036854775807L;
        private long endTimeUs = -9223372036854775807L;
        private final int[] colors = new int[4];
        private int dataOffset0 = -1;
        private int dataOffset1 = -1;

        private static int setAlpha(int i, int i2) {
            return (i & 16777215) | ((i2 * 17) << 24);
        }

        public void parseIdx(String str) {
            for (String str2 : Util.split(str.trim(), "\\r?\\n")) {
                if (str2.startsWith("palette: ")) {
                    String[] strArrSplit = Util.split(str2.substring(9), ",");
                    this.palette = new int[strArrSplit.length];
                    for (int i = 0; i < strArrSplit.length; i++) {
                        this.palette[i] = parseColor(strArrSplit[i].trim());
                    }
                } else if (str2.startsWith("size: ")) {
                    String[] strArrSplit2 = Util.split(str2.substring(6).trim(), "x");
                    if (strArrSplit2.length != 2) {
                        Log.m164w("VobsubParser", "Ignoring malformed IDX size line: '" + str2 + "'");
                    } else {
                        try {
                            this.planeWidth = Integer.parseInt(strArrSplit2[0]);
                            this.planeHeight = Integer.parseInt(strArrSplit2[1]);
                            this.hasPlane = true;
                        } catch (RuntimeException e) {
                            Log.m165w("VobsubParser", "Parsing IDX failed", e);
                        }
                    }
                }
            }
        }

        private static int parseColor(String str) {
            try {
                return Integer.parseInt(str, 16);
            } catch (RuntimeException e) {
                Log.m165w("VobsubParser", "Parsing color failed", e);
                return 0;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void parseSpuControlSequenceTable(ParsableByteArray parsableByteArray) {
            if (this.palette == null) {
                Log.m164w("VobsubParser", "Skipping SPU (no palette)");
            } else {
                if (!this.hasPlane) {
                    Log.m164w("VobsubParser", "Skipping SPU (no plane)");
                    return;
                }
                int position = parsableByteArray.getPosition() - 2;
                parsableByteArray.setPosition(parsableByteArray.readUnsignedShort() + position);
                while (parseControlSequence(parsableByteArray, position)) {
                }
            }
        }

        @RequiresNonNull({"this.palette"})
        private boolean parseControlSequence(ParsableByteArray parsableByteArray, int i) {
            boolean z = false;
            if (parsableByteArray.bytesLeft() < 4) {
                return false;
            }
            int position = parsableByteArray.getPosition();
            int unsignedShort = parsableByteArray.readUnsignedShort() * 10000;
            int unsignedShort2 = i + parsableByteArray.readUnsignedShort();
            boolean command = true;
            if (unsignedShort2 != position && unsignedShort2 < parsableByteArray.limit()) {
                z = true;
            }
            int iLimit = z ? unsignedShort2 : parsableByteArray.limit();
            while (parsableByteArray.getPosition() < iLimit && command) {
                command = parseCommand(unsignedShort, parsableByteArray);
            }
            if (z) {
                parsableByteArray.setPosition(unsignedShort2);
            }
            return z;
        }

        @RequiresNonNull({"this.palette"})
        private boolean parseCommand(long j, ParsableByteArray parsableByteArray) {
            int unsignedByte = parsableByteArray.readUnsignedByte();
            if (unsignedByte == 255) {
                return false;
            }
            switch (unsignedByte) {
                case 1:
                    this.startTimeUs = j;
                case 0:
                    return true;
                case 2:
                    this.endTimeUs = j;
                    return true;
                case 3:
                    return parseControlColors(parsableByteArray);
                case 4:
                    return parseControlAlpha(parsableByteArray);
                case 5:
                    return parseControlArea(parsableByteArray);
                case 6:
                    return parseControlOffsets(parsableByteArray);
                default:
                    Log.m164w("VobsubParser", "Unrecognized command: " + unsignedByte);
                    return false;
            }
        }

        @RequiresNonNull({"this.palette"})
        private boolean parseControlColors(ParsableByteArray parsableByteArray) {
            if (parsableByteArray.bytesLeft() < 2) {
                Log.m164w("VobsubParser", "Incomplete color command");
                return false;
            }
            int unsignedByte = parsableByteArray.readUnsignedByte();
            int unsignedByte2 = parsableByteArray.readUnsignedByte();
            this.colors[3] = getColor(this.palette, unsignedByte >> 4);
            this.colors[2] = getColor(this.palette, unsignedByte & 15);
            this.colors[1] = getColor(this.palette, unsignedByte2 >> 4);
            this.colors[0] = getColor(this.palette, unsignedByte2 & 15);
            this.hasColors = true;
            return true;
        }

        private static int getColor(int[] iArr, int i) {
            return (i < 0 || i >= iArr.length) ? iArr[0] : iArr[i];
        }

        private boolean parseControlAlpha(ParsableByteArray parsableByteArray) {
            if (parsableByteArray.bytesLeft() < 2) {
                Log.m164w("VobsubParser", "Incomplete alpha command");
                return false;
            }
            if (!this.hasColors) {
                Log.m164w("VobsubParser", "Ignoring alpha command before color command");
                return false;
            }
            int unsignedByte = parsableByteArray.readUnsignedByte();
            int unsignedByte2 = parsableByteArray.readUnsignedByte();
            int[] iArr = this.colors;
            iArr[3] = setAlpha(iArr[3], unsignedByte >> 4);
            int[] iArr2 = this.colors;
            iArr2[2] = setAlpha(iArr2[2], unsignedByte & 15);
            int[] iArr3 = this.colors;
            iArr3[1] = setAlpha(iArr3[1], unsignedByte2 >> 4);
            int[] iArr4 = this.colors;
            iArr4[0] = setAlpha(iArr4[0], unsignedByte2 & 15);
            return true;
        }

        private boolean parseControlArea(ParsableByteArray parsableByteArray) {
            if (parsableByteArray.bytesLeft() < 6) {
                Log.m164w("VobsubParser", "Incomplete area command");
                return false;
            }
            int unsignedByte = parsableByteArray.readUnsignedByte();
            int unsignedByte2 = parsableByteArray.readUnsignedByte();
            int i = (unsignedByte << 4) | (unsignedByte2 >> 4);
            int unsignedByte3 = ((unsignedByte2 & 15) << 8) | parsableByteArray.readUnsignedByte();
            int unsignedByte4 = parsableByteArray.readUnsignedByte();
            int unsignedByte5 = parsableByteArray.readUnsignedByte();
            this.boundingBox = new Rect(i, (unsignedByte4 << 4) | (unsignedByte5 >> 4), unsignedByte3 + 1, (parsableByteArray.readUnsignedByte() | ((unsignedByte5 & 15) << 8)) + 1);
            return true;
        }

        private boolean parseControlOffsets(ParsableByteArray parsableByteArray) {
            if (parsableByteArray.bytesLeft() < 4) {
                Log.m164w("VobsubParser", "Incomplete offsets command");
                return false;
            }
            this.dataOffset0 = parsableByteArray.readUnsignedShort();
            this.dataOffset1 = parsableByteArray.readUnsignedShort();
            return true;
        }

        public Cue build(ParsableByteArray parsableByteArray) {
            Rect rect;
            if (this.palette == null || !this.hasPlane || !this.hasColors || (rect = this.boundingBox) == null || this.dataOffset0 == -1 || this.dataOffset1 == -1 || rect.width() < 2 || this.boundingBox.height() < 2) {
                return null;
            }
            Rect rect2 = this.boundingBox;
            int[] iArr = new int[rect2.width() * rect2.height()];
            ParsableBitArray parsableBitArray = new ParsableBitArray();
            parsableByteArray.setPosition(this.dataOffset0);
            parsableBitArray.reset(parsableByteArray);
            parseRleData(parsableBitArray, true, rect2, iArr);
            parsableByteArray.setPosition(this.dataOffset1);
            parsableBitArray.reset(parsableByteArray);
            parseRleData(parsableBitArray, false, rect2, iArr);
            return new Cue.Builder().setBitmap(Bitmap.createBitmap(iArr, rect2.width(), rect2.height(), Bitmap.Config.ARGB_8888)).setPosition(rect2.left / this.planeWidth).setPositionAnchor(0).setLine(rect2.top / this.planeHeight, 0).setLineAnchor(0).setSize(rect2.width() / this.planeWidth).setBitmapHeight(rect2.height() / this.planeHeight).build();
        }

        private void parseRleData(ParsableBitArray parsableBitArray, boolean z, Rect rect, int[] iArr) {
            int iWidth = rect.width();
            int iHeight = rect.height();
            int i = !z ? 1 : 0;
            int i2 = i * iWidth;
            Run run = new Run();
            while (true) {
                int i3 = 0;
                do {
                    parseRun(parsableBitArray, iWidth, run);
                    int iMin = Math.min(run.length, iWidth - i3);
                    if (iMin > 0) {
                        int i4 = i2 + iMin;
                        Arrays.fill(iArr, i2, i4, this.colors[run.colorIndex]);
                        i3 += iMin;
                        i2 = i4;
                    }
                } while (i3 < iWidth);
                i += 2;
                if (i >= iHeight) {
                    return;
                }
                i2 = i * iWidth;
                parsableBitArray.byteAlign();
            }
        }

        private static void parseRun(ParsableBitArray parsableBitArray, int i, Run run) {
            int bits = 0;
            for (int i2 = 1; bits < i2 && i2 <= 64; i2 <<= 2) {
                if (parsableBitArray.bitsLeft() < 4) {
                    run.colorIndex = -1;
                    run.length = 0;
                    return;
                }
                bits = (bits << 4) | parsableBitArray.readBits(4);
            }
            run.colorIndex = bits & 3;
            if (bits >= 4) {
                i = bits >> 2;
            }
            run.length = i;
        }

        public void reset() {
            this.startTimeUs = -9223372036854775807L;
            this.endTimeUs = -9223372036854775807L;
            this.hasColors = false;
            this.boundingBox = null;
            this.dataOffset0 = -1;
            this.dataOffset1 = -1;
        }

        public static final class Run {
            public int colorIndex;
            public int length;

            private Run() {
            }
        }
    }
}
