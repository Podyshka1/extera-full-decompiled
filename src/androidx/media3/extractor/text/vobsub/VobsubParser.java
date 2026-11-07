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

/* JADX INFO: loaded from: classes4.dex */
public final class VobsubParser implements SubtitleParser {
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
        Cue cue = parse();
        consumer.accept(new CuesWithTiming(cue != null ? ImmutableList.of(cue) : ImmutableList.of(), -9223372036854775807L, 5000000L));
    }

    private Cue parse() {
        if (this.inflater == null) {
            this.inflater = new Inflater();
        }
        if (Util.maybeInflate(this.scratch, this.inflatedScratch, this.inflater)) {
            this.scratch.reset(this.inflatedScratch.getData(), this.inflatedScratch.limit());
        }
        this.cueBuilder.reset();
        int iBytesLeft = this.scratch.bytesLeft();
        if (iBytesLeft < 2 || this.scratch.readUnsignedShort() != iBytesLeft) {
            return null;
        }
        this.cueBuilder.parseSpu(this.scratch);
        return this.cueBuilder.build(this.scratch);
    }

    public static final class CueBuilder {
        private Rect boundingBox;
        private final int[] colors = new int[4];
        private int dataOffset0 = -1;
        private int dataOffset1 = -1;
        private boolean hasColors;
        private boolean hasPlane;
        private int[] palette;
        private int planeHeight;
        private int planeWidth;

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
                    if (strArrSplit2.length == 2) {
                        try {
                            this.planeWidth = Integer.parseInt(strArrSplit2[0]);
                            this.planeHeight = Integer.parseInt(strArrSplit2[1]);
                            this.hasPlane = true;
                        } catch (RuntimeException e) {
                            Log.m164w("VobsubParser", "Parsing IDX failed", e);
                        }
                    }
                }
            }
        }

        private static int parseColor(String str) {
            try {
                return Integer.parseInt(str, 16);
            } catch (RuntimeException unused) {
                return 0;
            }
        }

        public void parseSpu(ParsableByteArray parsableByteArray) {
            int[] iArr = this.palette;
            if (iArr == null || !this.hasPlane) {
                return;
            }
            parsableByteArray.skipBytes(parsableByteArray.readUnsignedShort() - 2);
            parseControl(iArr, parsableByteArray, parsableByteArray.readUnsignedShort());
        }

        private void parseControl(int[] iArr, ParsableByteArray parsableByteArray, int i) {
            while (parsableByteArray.getPosition() < i && parsableByteArray.bytesLeft() > 0) {
                switch (parsableByteArray.readUnsignedByte()) {
                    case 0:
                    case 1:
                    case 2:
                        break;
                    case 3:
                        if (!parseControlColors(iArr, parsableByteArray)) {
                            return;
                        }
                        break;
                    case 4:
                        if (!parseControlAlpha(parsableByteArray)) {
                            return;
                        }
                        break;
                    case 5:
                        if (!parseControlArea(parsableByteArray)) {
                            return;
                        }
                        break;
                    case 6:
                        if (!parseControlOffsets(parsableByteArray)) {
                            return;
                        }
                        break;
                    default:
                        return;
                }
            }
        }

        private boolean parseControlColors(int[] iArr, ParsableByteArray parsableByteArray) {
            if (parsableByteArray.bytesLeft() < 2) {
                return false;
            }
            int unsignedByte = parsableByteArray.readUnsignedByte();
            int unsignedByte2 = parsableByteArray.readUnsignedByte();
            this.colors[3] = getColor(iArr, unsignedByte >> 4);
            this.colors[2] = getColor(iArr, unsignedByte & 15);
            this.colors[1] = getColor(iArr, unsignedByte2 >> 4);
            this.colors[0] = getColor(iArr, unsignedByte2 & 15);
            this.hasColors = true;
            return true;
        }

        private static int getColor(int[] iArr, int i) {
            return (i < 0 || i >= iArr.length) ? iArr[0] : iArr[i];
        }

        private boolean parseControlAlpha(ParsableByteArray parsableByteArray) {
            if (parsableByteArray.bytesLeft() < 2 || !this.hasColors) {
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
