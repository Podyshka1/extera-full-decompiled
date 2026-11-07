package com.neovisionaries.ws.client;

import com.android.dx.dex.code.CstInsn$$ExternalSyntheticBUOutline0;
import javax.security.auth.x500.X500Principal;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes5.dex */
final class DistinguishedNameParser {
    private int beg;
    private char[] chars;
    private int cur;
    private final String dn;
    private int end;
    private final int length;
    private int pos;

    public DistinguishedNameParser(X500Principal x500Principal) {
        String name = x500Principal.getName("RFC2253");
        this.dn = name;
        this.length = name.length();
    }

    private String nextAT() {
        int i;
        int i2;
        int i3;
        int i4;
        char c2;
        int i5;
        int i6;
        char c3;
        char c4;
        while (true) {
            i = this.pos;
            i2 = this.length;
            if (i >= i2 || this.chars[i] != ' ') {
                break;
            }
            this.pos = i + 1;
        }
        if (i == i2) {
            return null;
        }
        this.beg = i;
        this.pos = i + 1;
        while (true) {
            i3 = this.pos;
            i4 = this.length;
            if (i3 >= i4 || (c4 = this.chars[i3]) == '=' || c4 == ' ') {
                break;
            }
            this.pos = i3 + 1;
        }
        if (i3 >= i4) {
            CstInsn$$ExternalSyntheticBUOutline0.m225m("Unexpected end of DN: ", this.dn);
            return null;
        }
        this.end = i3;
        if (this.chars[i3] == ' ') {
            while (true) {
                i5 = this.pos;
                i6 = this.length;
                if (i5 >= i6 || (c3 = this.chars[i5]) == '=' || c3 != ' ') {
                    break;
                }
                this.pos = i5 + 1;
            }
            if (this.chars[i5] != '=' || i5 == i6) {
                CstInsn$$ExternalSyntheticBUOutline0.m225m("Unexpected end of DN: ", this.dn);
                return null;
            }
        }
        this.pos++;
        while (true) {
            int i7 = this.pos;
            if (i7 >= this.length || this.chars[i7] != ' ') {
                break;
            }
            this.pos = i7 + 1;
        }
        int i8 = this.end;
        int i9 = this.beg;
        if (i8 - i9 > 4) {
            char[] cArr = this.chars;
            if (cArr[i9 + 3] == '.' && (((c2 = cArr[i9]) == 'O' || c2 == 'o') && ((cArr[i9 + 1] == 'I' || cArr[i9 + 1] == 'i') && (cArr[i9 + 2] == 'D' || cArr[i9 + 2] == 'd')))) {
                this.beg = i9 + 4;
            }
        }
        char[] cArr2 = this.chars;
        int i10 = this.beg;
        return new String(cArr2, i10, i8 - i10);
    }

    private String quotedAV() {
        int i = this.pos + 1;
        this.pos = i;
        this.beg = i;
        this.end = i;
        while (true) {
            int i2 = this.pos;
            if (i2 == this.length) {
                CstInsn$$ExternalSyntheticBUOutline0.m225m("Unexpected end of DN: ", this.dn);
                return null;
            }
            char[] cArr = this.chars;
            char c2 = cArr[i2];
            if (c2 == '\"') {
                this.pos = i2 + 1;
                while (true) {
                    int i3 = this.pos;
                    if (i3 >= this.length || this.chars[i3] != ' ') {
                        break;
                    }
                    this.pos = i3 + 1;
                }
                char[] cArr2 = this.chars;
                int i4 = this.beg;
                return new String(cArr2, i4, this.end - i4);
            }
            int i5 = this.end;
            if (c2 == '\\') {
                cArr[i5] = getEscaped();
            } else {
                cArr[i5] = c2;
            }
            this.pos++;
            this.end++;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:28:0x0055, code lost:
    
        r6.end = r0;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private String hexAV() {
        char[] cArr;
        char c2;
        int i = this.pos;
        if (i + 4 >= this.length) {
            CstInsn$$ExternalSyntheticBUOutline0.m225m("Unexpected end of DN: ", this.dn);
            return null;
        }
        this.beg = i;
        this.pos = i + 1;
        while (true) {
            int i2 = this.pos;
            if (i2 == this.length || (c2 = (cArr = this.chars)[i2]) == '+' || c2 == ',' || c2 == ';') {
                break;
            }
            if (c2 == ' ') {
                this.end = i2;
                this.pos = i2 + 1;
                while (true) {
                    int i3 = this.pos;
                    if (i3 >= this.length || this.chars[i3] != ' ') {
                        break;
                    }
                    this.pos = i3 + 1;
                }
            } else {
                if (c2 >= 'A' && c2 <= 'F') {
                    cArr[i2] = (char) (c2 + ' ');
                }
                this.pos = i2 + 1;
            }
        }
        int i4 = this.end;
        int i5 = this.beg;
        int i6 = i4 - i5;
        if (i6 < 5 || (i6 & 1) == 0) {
            CstInsn$$ExternalSyntheticBUOutline0.m225m("Unexpected end of DN: ", this.dn);
            return null;
        }
        int i7 = i6 / 2;
        byte[] bArr = new byte[i7];
        int i8 = i5 + 1;
        for (int i9 = 0; i9 < i7; i9++) {
            bArr[i9] = (byte) getByte(i8);
            i8 += 2;
        }
        return new String(this.chars, this.beg, i6);
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x004f, code lost:
    
        r1 = r8.beg;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0059, code lost:
    
        return new java.lang.String(r2, r1, r8.end - r1);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private String escapedAV() {
        int i;
        int i2;
        char c2;
        int i3 = this.pos;
        this.beg = i3;
        this.end = i3;
        while (true) {
            int i4 = this.pos;
            int i5 = this.length;
            char[] cArr = this.chars;
            if (i4 >= i5) {
                int i6 = this.beg;
                return new String(cArr, i6, this.end - i6);
            }
            char c3 = cArr[i4];
            if (c3 == ' ') {
                int i7 = this.end;
                this.cur = i7;
                this.pos = i4 + 1;
                this.end = i7 + 1;
                cArr[i7] = ' ';
                while (true) {
                    i = this.pos;
                    i2 = this.length;
                    if (i >= i2) {
                        break;
                    }
                    char[] cArr2 = this.chars;
                    if (cArr2[i] != ' ') {
                        break;
                    }
                    int i8 = this.end;
                    this.end = i8 + 1;
                    cArr2[i8] = ' ';
                    this.pos = i + 1;
                }
                if (i == i2 || (c2 = this.chars[i]) == ',' || c2 == '+' || c2 == ';') {
                    break;
                }
            } else {
                if (c3 == ';') {
                    break;
                }
                if (c3 == '\\') {
                    int i9 = this.end;
                    this.end = i9 + 1;
                    cArr[i9] = getEscaped();
                    this.pos++;
                } else {
                    if (c3 == '+' || c3 == ',') {
                        break;
                    }
                    int i10 = this.end;
                    this.end = i10 + 1;
                    cArr[i10] = c3;
                    this.pos = i4 + 1;
                }
            }
        }
        char[] cArr3 = this.chars;
        int i11 = this.beg;
        return new String(cArr3, i11, this.cur - i11);
    }

    private char getEscaped() {
        int i = this.pos + 1;
        this.pos = i;
        if (i == this.length) {
            CstInsn$$ExternalSyntheticBUOutline0.m225m("Unexpected end of DN: ", this.dn);
            return (char) 0;
        }
        char c2 = this.chars[i];
        if (c2 != ' ' && c2 != '%' && c2 != '\\' && c2 != '_' && c2 != '\"' && c2 != '#') {
            switch (c2) {
                default:
                    switch (c2) {
                        case ';':
                        case '<':
                        case '=':
                        case '>':
                            break;
                        default:
                            return getUTF8();
                    }
                case '*':
                case '+':
                case ',':
                    return c2;
            }
        }
        return c2;
    }

    private char getUTF8() {
        int i;
        int i2;
        int i3 = getByte(this.pos);
        this.pos++;
        if (i3 < 128) {
            return (char) i3;
        }
        if (i3 < 192 || i3 > 247) {
            return '?';
        }
        if (i3 <= 223) {
            i = i3 & 31;
            i2 = 1;
        } else if (i3 <= 239) {
            i = i3 & 15;
            i2 = 2;
        } else {
            i = i3 & 7;
            i2 = 3;
        }
        for (int i4 = 0; i4 < i2; i4++) {
            int i5 = this.pos;
            int i6 = i5 + 1;
            this.pos = i6;
            if (i6 == this.length || this.chars[i6] != '\\') {
                return '?';
            }
            int i7 = i5 + 2;
            this.pos = i7;
            int i8 = getByte(i7);
            this.pos++;
            if ((i8 & 192) != 128) {
                return '?';
            }
            i = (i << 6) + (i8 & 63);
        }
        return (char) i;
    }

    private int getByte(int i) {
        int i2;
        int i3;
        int i4 = i + 1;
        if (i4 >= this.length) {
            CstInsn$$ExternalSyntheticBUOutline0.m225m("Malformed DN: ", this.dn);
            return 0;
        }
        char[] cArr = this.chars;
        char c2 = cArr[i];
        if (c2 >= '0' && c2 <= '9') {
            i2 = c2 - '0';
        } else if (c2 >= 'a' && c2 <= 'f') {
            i2 = c2 - 'W';
        } else {
            if (c2 < 'A' || c2 > 'F') {
                CstInsn$$ExternalSyntheticBUOutline0.m225m("Malformed DN: ", this.dn);
                return 0;
            }
            i2 = c2 - '7';
        }
        char c3 = cArr[i4];
        if (c3 >= '0' && c3 <= '9') {
            i3 = c3 - '0';
        } else if (c3 >= 'a' && c3 <= 'f') {
            i3 = c3 - 'W';
        } else {
            if (c3 < 'A' || c3 > 'F') {
                CstInsn$$ExternalSyntheticBUOutline0.m225m("Malformed DN: ", this.dn);
                return 0;
            }
            i3 = c3 - '7';
        }
        return (i2 << 4) + i3;
    }

    public String findMostSpecific(String str) {
        String strQuotedAV;
        this.pos = 0;
        this.beg = 0;
        this.end = 0;
        this.cur = 0;
        this.chars = this.dn.toCharArray();
        String strNextAT = nextAT();
        if (strNextAT == null) {
            return null;
        }
        do {
            int i = this.pos;
            if (i == this.length) {
                return null;
            }
            char c2 = this.chars[i];
            if (c2 == '\"') {
                strQuotedAV = quotedAV();
            } else if (c2 == '#') {
                strQuotedAV = hexAV();
            } else if (c2 == '+' || c2 == ',' || c2 == ';') {
                strQuotedAV = _UrlKt.FRAGMENT_ENCODE_SET;
            } else {
                strQuotedAV = escapedAV();
            }
            if (str.equalsIgnoreCase(strNextAT)) {
                return strQuotedAV;
            }
            int i2 = this.pos;
            if (i2 >= this.length) {
                return null;
            }
            char c3 = this.chars[i2];
            if (c3 != ',' && c3 != ';' && c3 != '+') {
                CstInsn$$ExternalSyntheticBUOutline0.m225m("Malformed DN: ", this.dn);
                return null;
            }
            this.pos = i2 + 1;
            strNextAT = nextAT();
        } while (strNextAT != null);
        CstInsn$$ExternalSyntheticBUOutline0.m225m("Malformed DN: ", this.dn);
        return null;
    }
}
