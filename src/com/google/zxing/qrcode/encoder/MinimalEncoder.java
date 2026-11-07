package com.google.zxing.qrcode.encoder;

import com.android.dx.DexMaker$$ExternalSyntheticBUOutline0;
import com.google.zxing.WriterException;
import com.google.zxing.common.BitArray;
import com.google.zxing.common.ECIEncoderSet;
import com.google.zxing.qrcode.decoder.ErrorCorrectionLevel;
import com.google.zxing.qrcode.decoder.Mode;
import com.google.zxing.qrcode.decoder.Version;
import java.lang.reflect.Array;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
final class MinimalEncoder {
    private final ErrorCorrectionLevel ecLevel;
    private final ECIEncoderSet encoders;
    private final boolean isGS1;
    private final String stringToEncode;

    public static boolean isNumeric(char c2) {
        return c2 >= '0' && c2 <= '9';
    }

    public enum VersionSize {
        SMALL("version 1-9"),
        MEDIUM("version 10-26"),
        LARGE("version 27-40");

        private final String description;

        VersionSize(String str) {
            this.description = str;
        }

        @Override // java.lang.Enum
        public String toString() {
            return this.description;
        }
    }

    public MinimalEncoder(String str, Charset charset, boolean z, ErrorCorrectionLevel errorCorrectionLevel) {
        this.stringToEncode = str;
        this.isGS1 = z;
        this.encoders = new ECIEncoderSet(str, charset, -1);
        this.ecLevel = errorCorrectionLevel;
    }

    public static ResultList encode(String str, Version version, Charset charset, boolean z, ErrorCorrectionLevel errorCorrectionLevel) {
        return new MinimalEncoder(str, charset, z, errorCorrectionLevel).encode(version);
    }

    public ResultList encode(Version version) throws WriterException {
        if (version == null) {
            Version[] versionArr = {getVersion(VersionSize.SMALL), getVersion(VersionSize.MEDIUM), getVersion(VersionSize.LARGE)};
            ResultList[] resultListArr = {encodeSpecificVersion(versionArr[0]), encodeSpecificVersion(versionArr[1]), encodeSpecificVersion(versionArr[2])};
            int i = Integer.MAX_VALUE;
            int i2 = -1;
            for (int i3 = 0; i3 < 3; i3++) {
                int size = resultListArr[i3].getSize();
                if (Encoder.willFit(size, versionArr[i3], this.ecLevel) && size < i) {
                    i2 = i3;
                    i = size;
                }
            }
            if (i2 < 0) {
                throw new WriterException("Data too big for any version");
            }
            return resultListArr[i2];
        }
        ResultList resultListEncodeSpecificVersion = encodeSpecificVersion(version);
        if (Encoder.willFit(resultListEncodeSpecificVersion.getSize(), getVersion(getVersionSize(resultListEncodeSpecificVersion.getVersion())), this.ecLevel)) {
            return resultListEncodeSpecificVersion;
        }
        throw new WriterException("Data too big for version" + version);
    }

    public static VersionSize getVersionSize(Version version) {
        return version.getVersionNumber() <= 9 ? VersionSize.SMALL : version.getVersionNumber() <= 26 ? VersionSize.MEDIUM : VersionSize.LARGE;
    }

    public static Version getVersion(VersionSize versionSize) {
        int iOrdinal = versionSize.ordinal();
        if (iOrdinal == 0) {
            return Version.getVersionForNumber(9);
        }
        if (iOrdinal == 1) {
            return Version.getVersionForNumber(26);
        }
        return Version.getVersionForNumber(40);
    }

    public static boolean isDoubleByteKanji(char c2) {
        return Encoder.isOnlyDoubleByteKanji(String.valueOf(c2));
    }

    public static boolean isAlphanumeric(char c2) {
        return Encoder.getAlphanumericCode(c2) != -1;
    }

    /* JADX INFO: renamed from: com.google.zxing.qrcode.encoder.MinimalEncoder$1 */
    public static /* synthetic */ class C21991 {
        static final /* synthetic */ int[] $SwitchMap$com$google$zxing$qrcode$decoder$Mode;

        static {
            int[] iArr = new int[Mode.values().length];
            $SwitchMap$com$google$zxing$qrcode$decoder$Mode = iArr;
            try {
                iArr[Mode.KANJI.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$google$zxing$qrcode$decoder$Mode[Mode.ALPHANUMERIC.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$google$zxing$qrcode$decoder$Mode[Mode.NUMERIC.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$google$zxing$qrcode$decoder$Mode[Mode.BYTE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$google$zxing$qrcode$decoder$Mode[Mode.ECI.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    public boolean canEncode(Mode mode, char c2) {
        int i = C21991.$SwitchMap$com$google$zxing$qrcode$decoder$Mode[mode.ordinal()];
        if (i == 1) {
            return isDoubleByteKanji(c2);
        }
        if (i == 2) {
            return isAlphanumeric(c2);
        }
        if (i != 3) {
            return i == 4;
        }
        return isNumeric(c2);
    }

    public static int getCompactedOrdinal(Mode mode) {
        int i;
        if (mode == null || (i = C21991.$SwitchMap$com$google$zxing$qrcode$decoder$Mode[mode.ordinal()]) == 1) {
            return 0;
        }
        if (i == 2) {
            return 1;
        }
        if (i == 3) {
            return 2;
        }
        if (i == 4) {
            return 3;
        }
        DexMaker$$ExternalSyntheticBUOutline0.m223m("Illegal mode ", mode);
        return 0;
    }

    public void addEdge(Edge[][][] edgeArr, int i, Edge edge) {
        Edge[] edgeArr2 = edgeArr[i + edge.characterLength][edge.charsetEncoderIndex];
        int compactedOrdinal = getCompactedOrdinal(edge.mode);
        Edge edge2 = edgeArr2[compactedOrdinal];
        if (edge2 == null || edge2.cachedTotalSize > edge.cachedTotalSize) {
            edgeArr2[compactedOrdinal] = edge;
        }
    }

    public void addEdges(Version version, Edge[][][] edgeArr, int i, Edge edge) {
        int i2;
        int length = this.encoders.length();
        int priorityEncoderIndex = this.encoders.getPriorityEncoderIndex();
        if (priorityEncoderIndex < 0 || !this.encoders.canEncode(this.stringToEncode.charAt(i), priorityEncoderIndex)) {
            priorityEncoderIndex = 0;
        } else {
            length = priorityEncoderIndex + 1;
        }
        int i3 = length;
        for (int i4 = priorityEncoderIndex; i4 < i3; i4++) {
            if (this.encoders.canEncode(this.stringToEncode.charAt(i), i4)) {
                addEdge(edgeArr, i, new Edge(this, Mode.BYTE, i, i4, 1, edge, version, null));
            }
        }
        Mode mode = Mode.KANJI;
        if (canEncode(mode, this.stringToEncode.charAt(i))) {
            addEdge(edgeArr, i, new Edge(this, mode, i, 0, 1, edge, version, null));
        }
        int length2 = this.stringToEncode.length();
        Mode mode2 = Mode.ALPHANUMERIC;
        int i5 = 2;
        if (canEncode(mode2, this.stringToEncode.charAt(i))) {
            int i6 = i + 1;
            addEdge(edgeArr, i, new Edge(this, mode2, i, 0, (i6 >= length2 || !canEncode(mode2, this.stringToEncode.charAt(i6))) ? 1 : 2, edge, version, null));
        }
        Mode mode3 = Mode.NUMERIC;
        if (canEncode(mode3, this.stringToEncode.charAt(i))) {
            int i7 = i + 1;
            if (i7 >= length2 || !canEncode(mode3, this.stringToEncode.charAt(i7))) {
                i2 = 1;
            } else {
                int i8 = i + 2;
                if (i8 < length2 && canEncode(mode3, this.stringToEncode.charAt(i8))) {
                    i5 = 3;
                }
                i2 = i5;
            }
            addEdge(edgeArr, i, new Edge(this, mode3, i, 0, i2, edge, version, null));
        }
    }

    public ResultList encodeSpecificVersion(Version version) throws WriterException {
        int length = this.stringToEncode.length();
        Edge[][][] edgeArr = (Edge[][][]) Array.newInstance((Class<?>) Edge.class, length + 1, this.encoders.length(), 4);
        addEdges(version, edgeArr, 0, null);
        for (int i = 1; i <= length; i++) {
            for (int i2 = 0; i2 < this.encoders.length(); i2++) {
                for (int i3 = 0; i3 < 4; i3++) {
                    Edge edge = edgeArr[i][i2][i3];
                    if (edge != null && i < length) {
                        addEdges(version, edgeArr, i, edge);
                    }
                }
            }
        }
        int i4 = -1;
        int i5 = Integer.MAX_VALUE;
        int i6 = -1;
        for (int i7 = 0; i7 < this.encoders.length(); i7++) {
            for (int i8 = 0; i8 < 4; i8++) {
                Edge edge2 = edgeArr[length][i7][i8];
                if (edge2 != null && edge2.cachedTotalSize < i5) {
                    i5 = edge2.cachedTotalSize;
                    i4 = i7;
                    i6 = i8;
                }
            }
        }
        if (i4 < 0) {
            throw new WriterException("Internal error: failed to encode \"" + this.stringToEncode + "\"");
        }
        return new ResultList(version, edgeArr[length][i4][i6]);
    }

    public final class Edge {
        private final int cachedTotalSize;
        private final int characterLength;
        private final int charsetEncoderIndex;
        private final int fromPosition;
        private final Mode mode;
        private final Edge previous;

        public /* synthetic */ Edge(MinimalEncoder minimalEncoder, Mode mode, int i, int i2, int i3, Edge edge, Version version, C21991 c21991) {
            this(mode, i, i2, i3, edge, version);
        }

        private Edge(Mode mode, int i, int i2, int i3, Edge edge, Version version) {
            this.mode = mode;
            this.fromPosition = i;
            Mode mode2 = Mode.BYTE;
            int i4 = (mode == mode2 || edge == null) ? i2 : edge.charsetEncoderIndex;
            this.charsetEncoderIndex = i4;
            this.characterLength = i3;
            this.previous = edge;
            boolean z = false;
            int characterCountBits = edge != null ? edge.cachedTotalSize : 0;
            if ((mode == mode2 && edge == null && i4 != 0) || (edge != null && i4 != edge.charsetEncoderIndex)) {
                z = true;
            }
            characterCountBits = (edge == null || mode != edge.mode || z) ? characterCountBits + mode.getCharacterCountBits(version) + 4 : characterCountBits;
            int i5 = C21991.$SwitchMap$com$google$zxing$qrcode$decoder$Mode[mode.ordinal()];
            if (i5 == 1) {
                characterCountBits += 13;
            } else if (i5 == 2) {
                characterCountBits += i3 == 1 ? 6 : 11;
            } else if (i5 == 3) {
                characterCountBits += i3 != 1 ? i3 == 2 ? 7 : 10 : 4;
            } else if (i5 == 4) {
                characterCountBits += MinimalEncoder.this.encoders.encode(MinimalEncoder.this.stringToEncode.substring(i, i3 + i), i2).length * 8;
                if (z) {
                    characterCountBits += 12;
                }
            }
            this.cachedTotalSize = characterCountBits;
        }
    }

    public final class ResultList {
        private final List<ResultNode> list = new ArrayList();
        private final Version version;

        public ResultList(Version version, Edge edge) {
            int i;
            int i2;
            int i3;
            Edge edge2 = edge;
            int i4 = 0;
            int i5 = 0;
            while (true) {
                if (edge2 == null) {
                    break;
                }
                int i6 = i4 + edge2.characterLength;
                Edge edge3 = edge2.previous;
                boolean z = (edge2.mode == Mode.BYTE && edge3 == null && edge2.charsetEncoderIndex != 0) || !(edge3 == null || edge2.charsetEncoderIndex == edge3.charsetEncoderIndex);
                i = z ? 1 : i5;
                if (edge3 == null || edge3.mode != edge2.mode || z) {
                    this.list.add(0, new ResultNode(edge2.mode, edge2.fromPosition, edge2.charsetEncoderIndex, i6));
                    i3 = 0;
                } else {
                    i3 = i6;
                }
                if (z) {
                    this.list.add(0, new ResultNode(Mode.ECI, edge2.fromPosition, edge2.charsetEncoderIndex, 0));
                }
                i5 = i;
                edge2 = edge3;
                i4 = i3;
            }
            if (MinimalEncoder.this.isGS1) {
                ResultNode resultNode = this.list.get(0);
                if (resultNode != null) {
                    Mode mode = resultNode.mode;
                    int i7 = i5;
                    Mode mode2 = Mode.ECI;
                    if (mode != mode2 && i7 != 0) {
                        this.list.add(0, new ResultNode(mode2, 0, 0, 0));
                    }
                }
                this.list.add(this.list.get(0).mode == Mode.ECI ? 1 : 0, new ResultNode(Mode.FNC1_FIRST_POSITION, 0, 0, 0));
            }
            int versionNumber = version.getVersionNumber();
            int iOrdinal = MinimalEncoder.getVersionSize(version).ordinal();
            if (iOrdinal == 0) {
                i2 = 9;
            } else if (iOrdinal != 1) {
                i = 27;
                i2 = 40;
            } else {
                i = 10;
                i2 = 26;
            }
            int size = getSize(version);
            while (versionNumber < i2 && !Encoder.willFit(size, Version.getVersionForNumber(versionNumber), MinimalEncoder.this.ecLevel)) {
                versionNumber++;
            }
            while (versionNumber > i && Encoder.willFit(size, Version.getVersionForNumber(versionNumber - 1), MinimalEncoder.this.ecLevel)) {
                versionNumber--;
            }
            this.version = Version.getVersionForNumber(versionNumber);
        }

        public int getSize() {
            return getSize(this.version);
        }

        private int getSize(Version version) {
            Iterator<ResultNode> it = this.list.iterator();
            int size = 0;
            while (it.hasNext()) {
                size += it.next().getSize(version);
            }
            return size;
        }

        public void getBits(BitArray bitArray) {
            Iterator<ResultNode> it = this.list.iterator();
            while (it.hasNext()) {
                it.next().getBits(bitArray);
            }
        }

        public Version getVersion() {
            return this.version;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder();
            ResultNode resultNode = null;
            for (ResultNode resultNode2 : this.list) {
                if (resultNode != null) {
                    sb.append(",");
                }
                sb.append(resultNode2.toString());
                resultNode = resultNode2;
            }
            return sb.toString();
        }

        public final class ResultNode {
            private final int characterLength;
            private final int charsetEncoderIndex;
            private final int fromPosition;
            private final Mode mode;

            public ResultNode(Mode mode, int i, int i2, int i3) {
                this.mode = mode;
                this.fromPosition = i;
                this.charsetEncoderIndex = i2;
                this.characterLength = i3;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public int getSize(Version version) {
                int characterCountIndicator;
                int characterCountBits = this.mode.getCharacterCountBits(version);
                int i = characterCountBits + 4;
                int i2 = C21991.$SwitchMap$com$google$zxing$qrcode$decoder$Mode[this.mode.ordinal()];
                if (i2 != 1) {
                    if (i2 == 2) {
                        int i3 = this.characterLength;
                        return i + ((i3 / 2) * 11) + (i3 % 2 == 1 ? 6 : 0);
                    }
                    if (i2 == 3) {
                        int i4 = this.characterLength;
                        int i5 = i + ((i4 / 3) * 10);
                        int i6 = i4 % 3;
                        if (i6 == 1) {
                            i = 4;
                        } else if (i6 == 2) {
                            i = 7;
                        }
                        return i5 + i;
                    }
                    if (i2 != 4) {
                        return i2 != 5 ? i : characterCountBits + 12;
                    }
                    characterCountIndicator = getCharacterCountIndicator() * 8;
                } else {
                    characterCountIndicator = this.characterLength * 13;
                }
                return i + characterCountIndicator;
            }

            private int getCharacterCountIndicator() {
                if (this.mode == Mode.BYTE) {
                    ECIEncoderSet eCIEncoderSet = MinimalEncoder.this.encoders;
                    String str = MinimalEncoder.this.stringToEncode;
                    int i = this.fromPosition;
                    return eCIEncoderSet.encode(str.substring(i, this.characterLength + i), this.charsetEncoderIndex).length;
                }
                return this.characterLength;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void getBits(BitArray bitArray) {
                bitArray.appendBits(this.mode.getBits(), 4);
                if (this.characterLength > 0) {
                    bitArray.appendBits(getCharacterCountIndicator(), this.mode.getCharacterCountBits(ResultList.this.version));
                }
                if (this.mode == Mode.ECI) {
                    bitArray.appendBits(MinimalEncoder.this.encoders.getECIValue(this.charsetEncoderIndex), 8);
                } else if (this.characterLength > 0) {
                    String str = MinimalEncoder.this.stringToEncode;
                    int i = this.fromPosition;
                    Encoder.appendBytes(str.substring(i, this.characterLength + i), this.mode, bitArray, MinimalEncoder.this.encoders.getCharset(this.charsetEncoderIndex));
                }
            }

            public String toString() {
                StringBuilder sb = new StringBuilder();
                sb.append(this.mode);
                sb.append('(');
                Mode mode = this.mode;
                Mode mode2 = Mode.ECI;
                ResultList resultList = ResultList.this;
                if (mode == mode2) {
                    sb.append(MinimalEncoder.this.encoders.getCharset(this.charsetEncoderIndex).displayName());
                } else {
                    String str = MinimalEncoder.this.stringToEncode;
                    int i = this.fromPosition;
                    sb.append(makePrintable(str.substring(i, this.characterLength + i)));
                }
                sb.append(')');
                return sb.toString();
            }

            private String makePrintable(String str) {
                StringBuilder sb = new StringBuilder();
                for (int i = 0; i < str.length(); i++) {
                    if (str.charAt(i) < ' ' || str.charAt(i) > '~') {
                        sb.append('.');
                    } else {
                        sb.append(str.charAt(i));
                    }
                }
                return sb.toString();
            }
        }
    }
}
