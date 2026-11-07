package j$.net;

import java.io.UnsupportedEncodingException;
import java.nio.charset.Charset;
import java.nio.charset.IllegalCharsetNameException;
import java.nio.charset.UnsupportedCharsetException;
import java.util.BitSet;
import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-d770cecce19e13e7204002895f1f3846e7cae954646f7ef2982ee0cbc1d920c0 */
/* JADX INFO: loaded from: classes2.dex */
public class URLDecoder {
    static {
        BitSet bitSet = URLEncoder.f484a;
    }

    /* JADX WARN: Code restructure failed: missing block: B:35:0x00b5, code lost:
    
        throw new java.lang.IllegalArgumentException("URLDecoder: Illegal hex characters in escape (%) pattern : " + r12.substring(r4, r4 + 3));
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x00b6, code lost:
    
        if (r4 >= r0) goto L41;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x00b8, code lost:
    
        if (r6 == '%') goto L57;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x00c2, code lost:
    
        throw new java.lang.IllegalArgumentException("URLDecoder: Incomplete trailing escape (%) pattern");
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x00c3, code lost:
    
        r1.append(new java.lang.String(r3, 0, r5, r13));
     */
    /* JADX INFO: renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static String m582a(String str, Charset charset) {
        Objects.requireNonNull(charset, "Charset");
        int length = str.length();
        StringBuilder sb = new StringBuilder(length > 500 ? length / 2 : length);
        byte[] bArr = null;
        int i = 0;
        boolean z = false;
        loop0: while (i < length) {
            char cCharAt = str.charAt(i);
            if (cCharAt == '%') {
                if (bArr == null) {
                    try {
                        bArr = new byte[(length - i) / 3];
                    } catch (NumberFormatException e) {
                        throw new IllegalArgumentException("URLDecoder: Illegal hex characters in escape (%) pattern - " + e.getMessage());
                    }
                }
                int i2 = 0;
                while (true) {
                    int i3 = i + 2;
                    if (i3 >= length || cCharAt != '%') {
                        break;
                    }
                    int i4 = i + 1;
                    if (!m583b(str.charAt(i4)) || !m583b(str.charAt(i3))) {
                        break loop0;
                    }
                    int i5 = i + 3;
                    int i6 = Integer.parseInt(str.subSequence(i4, i5).toString(), 16);
                    if (i6 < 0) {
                        throw new IllegalArgumentException("URLDecoder: Illegal hex characters in escape (%) pattern - negative value : " + str.substring(i, i5));
                    }
                    int i7 = i2 + 1;
                    bArr[i2] = (byte) i6;
                    if (i5 < length) {
                        cCharAt = str.charAt(i5);
                    }
                    i2 = i7;
                    i = i5;
                }
            } else if (cCharAt != '+') {
                sb.append(cCharAt);
                i++;
            } else {
                sb.append(' ');
                i++;
            }
            z = true;
        }
        return z ? sb.toString() : str;
    }

    /* JADX INFO: renamed from: b */
    public static boolean m583b(char c2) {
        if ('0' <= c2 && c2 <= '9') {
            return true;
        }
        if ('a' > c2 || c2 > 'f') {
            return 'A' <= c2 && c2 <= 'F';
        }
        return true;
    }

    public static String decode(String str, String str2) {
        if (str2.isEmpty()) {
            throw new UnsupportedEncodingException("URLDecoder: empty string enc parameter");
        }
        try {
            return m582a(str, Charset.forName(str2));
        } catch (IllegalCharsetNameException | UnsupportedCharsetException unused) {
            throw new UnsupportedEncodingException(str2);
        }
    }
}
