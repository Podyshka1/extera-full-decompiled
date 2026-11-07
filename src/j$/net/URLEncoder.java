package j$.net;

import j$.sun.security.action.C2322a;
import java.io.CharArrayWriter;
import java.io.UnsupportedEncodingException;
import java.nio.charset.Charset;
import java.nio.charset.IllegalCharsetNameException;
import java.nio.charset.UnsupportedCharsetException;
import java.security.AccessController;
import java.util.BitSet;
import java.util.Objects;
import org.mvel2.asm.signature.SignatureVisitor;

/* JADX INFO: compiled from: r8-map-id-4910828a8dc56cbd751d74065856ac3a183dfd4d6dbda867057afff82c304930 */
/* JADX INFO: loaded from: classes2.dex */
public class URLEncoder {

    /* JADX INFO: renamed from: a */
    public static final BitSet f485a = new BitSet(256);

    /* JADX INFO: renamed from: b */
    public static final String f486b;

    static {
        String property;
        for (int i = 97; i <= 122; i++) {
            f485a.set(i);
        }
        for (int i2 = 65; i2 <= 90; i2++) {
            f485a.set(i2);
        }
        for (int i3 = 48; i3 <= 57; i3++) {
            f485a.set(i3);
        }
        BitSet bitSet = f485a;
        bitSet.set(32);
        bitSet.set(45);
        bitSet.set(95);
        bitSet.set(46);
        bitSet.set(42);
        if (System.getSecurityManager() == null) {
            property = System.getProperty("file.encoding");
        } else {
            C2322a c2322a = new C2322a();
            c2322a.f599b = "file.encoding";
            property = (String) AccessController.doPrivileged(c2322a);
        }
        f486b = property;
    }

    /* JADX INFO: renamed from: a */
    public static String m608a(String str, Charset charset) {
        BitSet bitSet;
        int i;
        char cCharAt;
        Objects.requireNonNull(charset, "charset");
        StringBuilder sb = new StringBuilder(str.length());
        CharArrayWriter charArrayWriter = new CharArrayWriter();
        int i2 = 0;
        boolean z = false;
        while (i2 < str.length()) {
            char cCharAt2 = str.charAt(i2);
            if (f485a.get(cCharAt2)) {
                if (cCharAt2 == ' ') {
                    cCharAt2 = SignatureVisitor.EXTENDS;
                    z = true;
                }
                sb.append(cCharAt2);
                i2++;
            } else {
                do {
                    charArrayWriter.write(cCharAt2);
                    if (cCharAt2 >= 55296 && cCharAt2 <= 56319 && (i = i2 + 1) < str.length() && (cCharAt = str.charAt(i)) >= 56320 && cCharAt <= 57343) {
                        charArrayWriter.write(cCharAt);
                        i2 = i;
                    }
                    i2++;
                    if (i2 >= str.length()) {
                        break;
                    }
                    bitSet = f485a;
                    cCharAt2 = str.charAt(i2);
                } while (!bitSet.get(cCharAt2));
                charArrayWriter.flush();
                byte[] bytes = new String(charArrayWriter.toCharArray()).getBytes(charset);
                for (int i3 = 0; i3 < bytes.length; i3++) {
                    sb.append('%');
                    char cForDigit = Character.forDigit((bytes[i3] >> 4) & 15, 16);
                    if (Character.isLetter(cForDigit)) {
                        cForDigit = (char) (cForDigit - ' ');
                    }
                    sb.append(cForDigit);
                    char cForDigit2 = Character.forDigit(bytes[i3] & 15, 16);
                    if (Character.isLetter(cForDigit2)) {
                        cForDigit2 = (char) (cForDigit2 - ' ');
                    }
                    sb.append(cForDigit2);
                }
                charArrayWriter.reset();
                z = true;
            }
        }
        return z ? sb.toString() : str;
    }

    public static String encode(String str, String str2) throws UnsupportedEncodingException {
        if (str2 == null) {
            throw new NullPointerException("charsetName");
        }
        try {
            return m608a(str, Charset.forName(str2));
        } catch (IllegalCharsetNameException | UnsupportedCharsetException unused) {
            throw new UnsupportedEncodingException(str2);
        }
    }

    public static String encode(String str) {
        try {
            return encode(str, f486b);
        } catch (UnsupportedEncodingException unused) {
            return null;
        }
    }
}
