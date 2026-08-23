package com.android.p003dx.rop.cst;

import com.android.p003dx.p006io.Opcodes;
import com.android.p003dx.rop.type.Type;
import com.android.p003dx.util.ByteArray;
import com.android.p003dx.util.Hex;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes4.dex */
public final class CstString extends TypedConstant {
    public static final CstString EMPTY_STRING = new CstString(_UrlKt.FRAGMENT_ENCODE_SET);
    private final ByteArray bytes;
    private final String string;

    @Override // com.android.p003dx.rop.cst.Constant
    public boolean isCategory2() {
        return false;
    }

    public static byte[] stringToUtf8Bytes(String str) {
        int length = str.length();
        byte[] bArr = new byte[length * 3];
        int i = 0;
        for (int i2 = 0; i2 < length; i2++) {
            char cCharAt = str.charAt(i2);
            if (cCharAt != 0 && cCharAt < 128) {
                bArr[i] = (byte) cCharAt;
                i++;
            } else if (cCharAt < 2048) {
                bArr[i] = (byte) (((cCharAt >> 6) & 31) | 192);
                bArr[i + 1] = (byte) ((cCharAt & '?') | 128);
                i += 2;
            } else {
                bArr[i] = (byte) (((cCharAt >> '\f') & 15) | Opcodes.SHL_INT_LIT8);
                bArr[i + 1] = (byte) (((cCharAt >> 6) & 63) | 128);
                bArr[i + 2] = (byte) ((cCharAt & '?') | 128);
                i += 3;
            }
        }
        byte[] bArr2 = new byte[i];
        System.arraycopy(bArr, 0, bArr2, 0, i);
        return bArr2;
    }

    public static String utf8BytesToString(ByteArray byteArray) {
        char c;
        int size = byteArray.size();
        char[] cArr = new char[size];
        int i = 0;
        int i2 = 0;
        while (size > 0) {
            int unsignedByte = byteArray.getUnsignedByte(i2);
            switch (unsignedByte >> 4) {
                case 0:
                case 1:
                case 2:
                case 3:
                case 4:
                case 5:
                case 6:
                case 7:
                    size--;
                    if (unsignedByte == 0) {
                        return throwBadUtf8(unsignedByte, i2);
                    }
                    c = (char) unsignedByte;
                    i2++;
                    break;
                case 8:
                case 9:
                case 10:
                case 11:
                default:
                    return throwBadUtf8(unsignedByte, i2);
                case 12:
                case 13:
                    size -= 2;
                    if (size < 0) {
                        return throwBadUtf8(unsignedByte, i2);
                    }
                    int i3 = i2 + 1;
                    int unsignedByte2 = byteArray.getUnsignedByte(i3);
                    if ((unsignedByte2 & 192) != 128) {
                        return throwBadUtf8(unsignedByte2, i3);
                    }
                    int i4 = ((unsignedByte & 31) << 6) | (unsignedByte2 & 63);
                    if (i4 != 0 && i4 < 128) {
                        return throwBadUtf8(unsignedByte2, i3);
                    }
                    c = (char) i4;
                    i2 += 2;
                    break;
                    break;
                case 14:
                    size -= 3;
                    if (size < 0) {
                        return throwBadUtf8(unsignedByte, i2);
                    }
                    int i5 = i2 + 1;
                    int unsignedByte3 = byteArray.getUnsignedByte(i5);
                    int i6 = unsignedByte3 & 192;
                    if (i6 != 128) {
                        return throwBadUtf8(unsignedByte3, i5);
                    }
                    int i7 = i2 + 2;
                    int unsignedByte4 = byteArray.getUnsignedByte(i7);
                    if (i6 != 128) {
                        return throwBadUtf8(unsignedByte4, i7);
                    }
                    int i8 = ((unsignedByte & 15) << 12) | ((unsignedByte3 & 63) << 6) | (unsignedByte4 & 63);
                    if (i8 < 2048) {
                        return throwBadUtf8(unsignedByte4, i7);
                    }
                    c = (char) i8;
                    i2 += 3;
                    break;
                    break;
            }
            cArr[i] = c;
            i++;
        }
        return new String(cArr, 0, i);
    }

    private static String throwBadUtf8(int i, int i2) {
        throw new IllegalArgumentException("bad utf-8 byte " + Hex.m211u1(i) + " at offset " + Hex.m214u4(i2));
    }

    public CstString(String str) {
        if (str == null) {
            throw new NullPointerException("string == null");
        }
        this.string = str.intern();
        this.bytes = new ByteArray(stringToUtf8Bytes(str));
    }

    public CstString(ByteArray byteArray) {
        if (byteArray == null) {
            throw new NullPointerException("bytes == null");
        }
        this.bytes = byteArray;
        this.string = utf8BytesToString(byteArray).intern();
    }

    public boolean equals(Object obj) {
        if (obj instanceof CstString) {
            return this.string.equals(((CstString) obj).string);
        }
        return false;
    }

    public int hashCode() {
        return this.string.hashCode();
    }

    @Override // com.android.p003dx.rop.cst.Constant
    protected int compareTo0(Constant constant) {
        return this.string.compareTo(((CstString) constant).string);
    }

    public String toString() {
        return "string{\"" + toHuman() + "\"}";
    }

    @Override // com.android.p003dx.rop.cst.Constant
    public String typeName() {
        return "utf8";
    }

    @Override // com.android.p003dx.util.ToHuman
    public String toHuman() {
        int length = this.string.length();
        StringBuilder sb = new StringBuilder((length * 3) / 2);
        int i = 0;
        while (i < length) {
            char cCharAt = this.string.charAt(i);
            if (cCharAt >= ' ' && cCharAt < 127) {
                if (cCharAt == '\'' || cCharAt == '\"' || cCharAt == '\\') {
                    sb.append('\\');
                }
                sb.append(cCharAt);
            } else if (cCharAt > 127) {
                sb.append("\\u");
                sb.append(Character.forDigit(cCharAt >> '\f', 16));
                sb.append(Character.forDigit((cCharAt >> '\b') & 15, 16));
                sb.append(Character.forDigit((cCharAt >> 4) & 15, 16));
                sb.append(Character.forDigit(cCharAt & 15, 16));
            } else if (cCharAt == '\t') {
                sb.append("\\t");
            } else if (cCharAt == '\n') {
                sb.append("\\n");
            } else if (cCharAt == '\r') {
                sb.append("\\r");
            } else {
                char cCharAt2 = i < length + (-1) ? this.string.charAt(i + 1) : (char) 0;
                boolean z = cCharAt2 >= '0' && cCharAt2 <= '7';
                sb.append('\\');
                for (int i2 = 6; i2 >= 0; i2 -= 3) {
                    char c = (char) (((cCharAt >> i2) & 7) + 48);
                    if (c != '0' || z) {
                        sb.append(c);
                        z = true;
                    }
                }
                if (!z) {
                    sb.append('0');
                }
            }
            i++;
        }
        return sb.toString();
    }

    public String toQuoted() {
        return '\"' + toHuman() + '\"';
    }

    public String toQuoted(int i) {
        String str;
        String human = toHuman();
        if (human.length() <= i - 2) {
            str = _UrlKt.FRAGMENT_ENCODE_SET;
        } else {
            human = human.substring(0, i - 5);
            str = "...";
        }
        return '\"' + human + str + '\"';
    }

    public String getString() {
        return this.string;
    }

    public ByteArray getBytes() {
        return this.bytes;
    }

    public int getUtf8Size() {
        return this.bytes.size();
    }

    public int getUtf16Size() {
        return this.string.length();
    }

    @Override // com.android.p003dx.rop.type.TypeBearer
    public Type getType() {
        return Type.STRING;
    }
}
