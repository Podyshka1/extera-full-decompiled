package com.google.zxing.qrcode.decoder;

import com.android.dx.io.Opcodes;
import com.google.zxing.DecodeHintType;
import com.google.zxing.FormatException;
import com.google.zxing.common.BitSource;
import com.google.zxing.common.CharacterSetECI;
import com.google.zxing.common.DecoderResult;
import com.google.zxing.common.StringUtils;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
abstract class DecodedBitStreamParser {
    private static final char[] ALPHANUMERIC_CHARS = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ $%*+-./:".toCharArray();

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:61:0x00ff A[LOOP:0: B:64:0x001e->B:61:0x00ff, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:68:0x00c8 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static DecoderResult decode(byte[] bArr, Version version, ErrorCorrectionLevel errorCorrectionLevel, Map<DecodeHintType, ?> map) throws FormatException {
        Mode modeForBits;
        Mode mode;
        int i;
        StringBuilder sb;
        int i2;
        byte[] bArr2 = bArr;
        BitSource bitSource = new BitSource(bArr2);
        StringBuilder sb2 = new StringBuilder(50);
        int i3 = 1;
        ArrayList arrayList = new ArrayList(1);
        int bits = -1;
        int bits2 = -1;
        boolean z = false;
        boolean z2 = false;
        boolean z3 = false;
        CharacterSetECI characterSetECIByValue = null;
        while (true) {
            try {
                if (bitSource.available() < 4) {
                    modeForBits = Mode.TERMINATOR;
                } else {
                    modeForBits = Mode.forBits(bitSource.readBits(4));
                }
                int[] iArr = C20611.$SwitchMap$com$google$zxing$qrcode$decoder$Mode;
                switch (iArr[modeForBits.ordinal()]) {
                    case 5:
                        mode = modeForBits;
                        i = 4;
                        if (mode == Mode.TERMINATOR) {
                            if (characterSetECIByValue != null) {
                                if (z2) {
                                    sb = sb2;
                                    i2 = i;
                                } else if (z3) {
                                    i3 = 6;
                                    sb = sb2;
                                    i2 = i3;
                                } else {
                                    sb = sb2;
                                    i2 = 2;
                                }
                            } else if (z2) {
                                sb = sb2;
                                i2 = 3;
                            } else {
                                if (z3) {
                                    i3 = 5;
                                }
                                sb = sb2;
                                i2 = i3;
                            }
                            String string = sb.toString();
                            if (arrayList.isEmpty()) {
                                arrayList = null;
                            }
                            return new DecoderResult(bArr2, string, arrayList, errorCorrectionLevel == null ? null : errorCorrectionLevel.toString(), bits, bits2, i2);
                        }
                        bArr2 = bArr;
                        break;
                    case 6:
                        mode = modeForBits;
                        i = 4;
                        z = true;
                        z2 = true;
                        if (mode == Mode.TERMINATOR) {
                        }
                        break;
                    case 7:
                        mode = modeForBits;
                        i = 4;
                        z = true;
                        z3 = true;
                        if (mode == Mode.TERMINATOR) {
                        }
                        break;
                    case 8:
                        mode = modeForBits;
                        i = 4;
                        if (bitSource.available() < 16) {
                            throw FormatException.getFormatInstance();
                        }
                        bits = bitSource.readBits(8);
                        bits2 = bitSource.readBits(8);
                        if (mode == Mode.TERMINATOR) {
                        }
                        break;
                    case 9:
                        mode = modeForBits;
                        i = 4;
                        characterSetECIByValue = CharacterSetECI.getCharacterSetECIByValue(parseECIValue(bitSource));
                        if (characterSetECIByValue == null) {
                            throw FormatException.getFormatInstance();
                        }
                        if (mode == Mode.TERMINATOR) {
                        }
                        break;
                    case 10:
                        mode = modeForBits;
                        i = 4;
                        int bits3 = bitSource.readBits(4);
                        int bits4 = bitSource.readBits(mode.getCharacterCountBits(version));
                        if (bits3 == 1) {
                            decodeHanziSegment(bitSource, sb2, bits4);
                        }
                        if (mode == Mode.TERMINATOR) {
                        }
                        break;
                    default:
                        int bits5 = bitSource.readBits(modeForBits.getCharacterCountBits(version));
                        int i4 = iArr[modeForBits.ordinal()];
                        if (i4 == 1) {
                            mode = modeForBits;
                            decodeNumericSegment(bitSource, sb2, bits5);
                        } else if (i4 == 2) {
                            mode = modeForBits;
                            decodeAlphanumericSegment(bitSource, sb2, bits5, z);
                        } else if (i4 == 3) {
                            mode = modeForBits;
                            decodeByteSegment(bitSource, sb2, bits5, characterSetECIByValue, arrayList, map);
                        } else if (i4 == 4) {
                            decodeKanjiSegment(bitSource, sb2, bits5);
                            mode = modeForBits;
                        } else {
                            throw FormatException.getFormatInstance();
                        }
                        i = 4;
                        if (mode == Mode.TERMINATOR) {
                        }
                        break;
                }
            } catch (IllegalArgumentException unused) {
                throw FormatException.getFormatInstance();
            }
        }
    }

    /* JADX INFO: renamed from: com.google.zxing.qrcode.decoder.DecodedBitStreamParser$1 */
    public static /* synthetic */ class C20611 {
        static final /* synthetic */ int[] $SwitchMap$com$google$zxing$qrcode$decoder$Mode;

        static {
            int[] iArr = new int[Mode.values().length];
            $SwitchMap$com$google$zxing$qrcode$decoder$Mode = iArr;
            try {
                iArr[Mode.NUMERIC.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$google$zxing$qrcode$decoder$Mode[Mode.ALPHANUMERIC.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$google$zxing$qrcode$decoder$Mode[Mode.BYTE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$google$zxing$qrcode$decoder$Mode[Mode.KANJI.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$google$zxing$qrcode$decoder$Mode[Mode.TERMINATOR.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$google$zxing$qrcode$decoder$Mode[Mode.FNC1_FIRST_POSITION.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$google$zxing$qrcode$decoder$Mode[Mode.FNC1_SECOND_POSITION.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$com$google$zxing$qrcode$decoder$Mode[Mode.STRUCTURED_APPEND.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$com$google$zxing$qrcode$decoder$Mode[Mode.ECI.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$com$google$zxing$qrcode$decoder$Mode[Mode.HANZI.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
        }
    }

    private static void decodeHanziSegment(BitSource bitSource, StringBuilder sb, int i) throws FormatException {
        if (StringUtils.GB2312_CHARSET == null) {
            throw FormatException.getFormatInstance();
        }
        if (i * 13 > bitSource.available()) {
            throw FormatException.getFormatInstance();
        }
        byte[] bArr = new byte[i * 2];
        int i2 = 0;
        while (i > 0) {
            int bits = bitSource.readBits(13);
            int i3 = (bits % 96) | ((bits / 96) << 8);
            int i4 = i3 + (i3 < 2560 ? 41377 : 42657);
            bArr[i2] = (byte) ((i4 >> 8) & 255);
            bArr[i2 + 1] = (byte) (i4 & 255);
            i2 += 2;
            i--;
        }
        sb.append(new String(bArr, StringUtils.GB2312_CHARSET));
    }

    private static void decodeKanjiSegment(BitSource bitSource, StringBuilder sb, int i) throws FormatException {
        if (StringUtils.SHIFT_JIS_CHARSET == null) {
            throw FormatException.getFormatInstance();
        }
        if (i * 13 > bitSource.available()) {
            throw FormatException.getFormatInstance();
        }
        byte[] bArr = new byte[i * 2];
        int i2 = 0;
        while (i > 0) {
            int bits = bitSource.readBits(13);
            int i3 = (bits % 192) | ((bits / 192) << 8);
            int i4 = i3 + (i3 < 7936 ? 33088 : 49472);
            bArr[i2] = (byte) (i4 >> 8);
            bArr[i2 + 1] = (byte) i4;
            i2 += 2;
            i--;
        }
        sb.append(new String(bArr, StringUtils.SHIFT_JIS_CHARSET));
    }

    private static void decodeByteSegment(BitSource bitSource, StringBuilder sb, int i, CharacterSetECI characterSetECI, Collection<byte[]> collection, Map<DecodeHintType, ?> map) throws FormatException {
        Charset charset;
        if (i * 8 > bitSource.available()) {
            throw FormatException.getFormatInstance();
        }
        byte[] bArr = new byte[i];
        for (int i2 = 0; i2 < i; i2++) {
            bArr[i2] = (byte) bitSource.readBits(8);
        }
        if (characterSetECI == null) {
            charset = StringUtils.guessCharset(bArr, map);
        } else {
            charset = characterSetECI.getCharset();
        }
        sb.append(new String(bArr, charset));
        collection.add(bArr);
    }

    private static char toAlphaNumericChar(int i) throws FormatException {
        char[] cArr = ALPHANUMERIC_CHARS;
        if (i >= cArr.length) {
            throw FormatException.getFormatInstance();
        }
        return cArr[i];
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x006a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static void decodeAlphanumericSegment(BitSource bitSource, StringBuilder sb, int i, boolean z) throws FormatException {
        while (i > 1) {
            if (bitSource.available() < 11) {
                throw FormatException.getFormatInstance();
            }
            int bits = bitSource.readBits(11);
            sb.append(toAlphaNumericChar(bits / 45));
            sb.append(toAlphaNumericChar(bits % 45));
            i -= 2;
        }
        if (i == 1) {
            if (bitSource.available() < 6) {
                throw FormatException.getFormatInstance();
            }
            sb.append(toAlphaNumericChar(bitSource.readBits(6)));
        }
        if (z) {
            for (int length = sb.length(); length < sb.length(); length++) {
                if (sb.charAt(length) == '%') {
                    if (length < sb.length() - 1) {
                        int i2 = length + 1;
                        if (sb.charAt(i2) == '%') {
                            sb.deleteCharAt(i2);
                        } else {
                            sb.setCharAt(length, (char) 29);
                        }
                    }
                }
            }
        }
    }

    private static void decodeNumericSegment(BitSource bitSource, StringBuilder sb, int i) throws FormatException {
        while (i >= 3) {
            if (bitSource.available() < 10) {
                throw FormatException.getFormatInstance();
            }
            int bits = bitSource.readBits(10);
            if (bits >= 1000) {
                throw FormatException.getFormatInstance();
            }
            sb.append(toAlphaNumericChar(bits / 100));
            sb.append(toAlphaNumericChar((bits / 10) % 10));
            sb.append(toAlphaNumericChar(bits % 10));
            i -= 3;
        }
        if (i == 2) {
            if (bitSource.available() < 7) {
                throw FormatException.getFormatInstance();
            }
            int bits2 = bitSource.readBits(7);
            if (bits2 >= 100) {
                throw FormatException.getFormatInstance();
            }
            sb.append(toAlphaNumericChar(bits2 / 10));
            sb.append(toAlphaNumericChar(bits2 % 10));
            return;
        }
        if (i == 1) {
            if (bitSource.available() < 4) {
                throw FormatException.getFormatInstance();
            }
            int bits3 = bitSource.readBits(4);
            if (bits3 >= 10) {
                throw FormatException.getFormatInstance();
            }
            sb.append(toAlphaNumericChar(bits3));
        }
    }

    private static int parseECIValue(BitSource bitSource) throws FormatException {
        int bits = bitSource.readBits(8);
        if ((bits & 128) == 0) {
            return bits & 127;
        }
        if ((bits & 192) == 128) {
            return bitSource.readBits(8) | ((bits & 63) << 8);
        }
        if ((bits & Opcodes.SHL_INT_LIT8) == 192) {
            return bitSource.readBits(16) | ((bits & 31) << 16);
        }
        throw FormatException.getFormatInstance();
    }
}
