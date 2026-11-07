package j$.desugar.sun.nio.fs;

import j$.nio.file.C2288b;
import j$.nio.file.FileSystem;
import j$.nio.file.Path;
import j$.nio.file.attribute.C2286y;
import j$.nio.file.g0;
import j$.nio.file.q0;
import j$.nio.file.spi.AbstractC2309d;
import java.util.Set;
import java.util.regex.Pattern;
import java.util.regex.PatternSyntaxException;
import kotlin.text.Typography;
import okhttp3.internal.url._UrlKt;
import org.mvel2.asm.signature.SignatureVisitor;

/* JADX INFO: renamed from: j$.desugar.sun.nio.fs.i */
/* JADX INFO: compiled from: r8-map-id-4910828a8dc56cbd751d74065856ac3a183dfd4d6dbda867057afff82c304930 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2250i extends FileSystem {

    /* JADX INFO: renamed from: a */
    public final String f461a;

    /* JADX INFO: renamed from: b */
    public final String f462b;

    /* JADX INFO: renamed from: c */
    public final C2254m f463c;

    public C2250i(C2254m c2254m, String str, String str2) {
        this.f463c = c2254m;
        this.f461a = str;
        this.f462b = str2;
    }

    @Override // j$.nio.file.FileSystem
    /* JADX INFO: renamed from: a */
    public final Iterable mo558a() {
        throw new UnsupportedOperationException(_UrlKt.FRAGMENT_ENCODE_SET);
    }

    /* JADX WARN: Code restructure failed: missing block: B:80:0x0120, code lost:
    
        r3 = r6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:87:0x013b, code lost:
    
        if (r7 != ']') goto L130;
     */
    /* JADX WARN: Code restructure failed: missing block: B:88:0x013d, code lost:
    
        r1.append("]]");
     */
    /* JADX WARN: Code restructure failed: missing block: B:90:0x014d, code lost:
    
        throw new java.util.regex.PatternSyntaxException("Missing ']", r0, r3 - 1);
     */
    /* JADX WARN: Removed duplicated region for block: B:136:0x0128 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:141:0x00fe A[SYNTHETIC] */
    @Override // j$.nio.file.FileSystem
    /* JADX INFO: renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final g0 mo559b(String str) {
        boolean z;
        int iIndexOf = str.indexOf(58);
        if (iIndexOf <= 0 || iIndexOf == str.length()) {
            throw new IllegalArgumentException(String.format("Requested <syntax>:<pattern> spliterator(':') position(%d) is out of bound in %s", Integer.valueOf(iIndexOf), str));
        }
        int i = 0;
        String strSubstring = str.substring(0, iIndexOf);
        boolean z2 = true;
        String strSubstring2 = str.substring(iIndexOf + 1);
        if (strSubstring.equalsIgnoreCase("glob")) {
            StringBuilder sb = new StringBuilder("^");
            int i2 = 0;
            boolean z3 = false;
            while (i2 < strSubstring2.length()) {
                int i3 = i2 + 1;
                char cCharAt = strSubstring2.charAt(i2);
                if (cCharAt != '*') {
                    if (cCharAt != ',') {
                        char c2 = '/';
                        if (cCharAt == '/') {
                            z = z2;
                            sb.append(cCharAt);
                        } else if (cCharAt == '?') {
                            z = z2;
                            sb.append("[^/]");
                        } else if (cCharAt == '{') {
                            z = z2;
                            if (z3) {
                                throw new PatternSyntaxException("Cannot nest groups", strSubstring2, i2);
                            }
                            sb.append("(?:(?:");
                            z3 = z;
                        } else if (cCharAt == '}') {
                            z = z2;
                            if (z3) {
                                sb.append("))");
                                z3 = false;
                            } else {
                                sb.append('}');
                            }
                        } else if (cCharAt == '[') {
                            sb.append("[[^/]&&[");
                            if (AbstractC2248g.m552y(strSubstring2, i3) == '^') {
                                sb.append("\\^");
                                i2 += 2;
                            } else {
                                if (AbstractC2248g.m552y(strSubstring2, i3) == '!') {
                                    sb.append('^');
                                    i3 = i2 + 2;
                                }
                                if (AbstractC2248g.m552y(strSubstring2, i3) == '-') {
                                    sb.append(SignatureVisitor.SUPER);
                                    i2 = i3 + 1;
                                } else {
                                    i2 = i3;
                                }
                            }
                            boolean z4 = false;
                            char c3 = 0;
                            while (true) {
                                if (i2 >= strSubstring2.length()) {
                                    z = z2;
                                    break;
                                }
                                int i4 = i2 + 1;
                                char cCharAt2 = strSubstring2.charAt(i2);
                                if (cCharAt2 == ']') {
                                    z = z2;
                                    i2 = i4;
                                    cCharAt = cCharAt2;
                                    break;
                                }
                                if (cCharAt2 == c2) {
                                    throw new PatternSyntaxException("Explicit 'name separator' in class", strSubstring2, i2);
                                }
                                if (cCharAt2 == '\\' || cCharAt2 == '[') {
                                    z = z2;
                                } else {
                                    z = z2;
                                    if (cCharAt2 == '&' && AbstractC2248g.m552y(strSubstring2, i4) == '&') {
                                    }
                                    sb.append(cCharAt2);
                                    if (cCharAt2 == '-') {
                                        c2 = '/';
                                        z2 = z;
                                        z4 = z2;
                                        i2 = i4;
                                        cCharAt = cCharAt2;
                                        c3 = cCharAt;
                                    } else {
                                        if (!z4) {
                                            throw new PatternSyntaxException("Invalid range", strSubstring2, i2);
                                        }
                                        int i5 = i2 + 2;
                                        cCharAt = AbstractC2248g.m552y(strSubstring2, i4);
                                        if (cCharAt == 0 || cCharAt == ']') {
                                            break;
                                        }
                                        if (cCharAt < c3) {
                                            throw new PatternSyntaxException("Invalid range", strSubstring2, i2 - 1);
                                        }
                                        sb.append(cCharAt);
                                        c2 = '/';
                                        z2 = z;
                                        i2 = i5;
                                        z4 = false;
                                    }
                                }
                                sb.append('\\');
                                sb.append(cCharAt2);
                                if (cCharAt2 == '-') {
                                }
                            }
                        } else if (cCharAt != '\\') {
                            if (".^$+{[]|()".indexOf(cCharAt) != -1) {
                                sb.append('\\');
                            }
                            sb.append(cCharAt);
                            z = z2;
                        } else {
                            if (i3 == strSubstring2.length()) {
                                throw new PatternSyntaxException("No character to escape", strSubstring2, i2);
                            }
                            i2 += 2;
                            char cCharAt3 = strSubstring2.charAt(i3);
                            if ("\\*?[{".indexOf(cCharAt3) != -1 || ".^$+{[]|()".indexOf(cCharAt3) != -1) {
                                sb.append('\\');
                            }
                            sb.append(cCharAt3);
                            z = z2;
                        }
                    } else {
                        z = z2;
                        if (z3) {
                            sb.append(")|(?:");
                        } else {
                            sb.append(',');
                        }
                    }
                    i2 = i3;
                } else {
                    z = z2;
                    if (AbstractC2248g.m552y(strSubstring2, i3) == '*') {
                        sb.append(".*");
                        i2 += 2;
                    } else {
                        sb.append("[^/]*");
                        i2 = i3;
                    }
                }
                z2 = z;
            }
            if (z3) {
                throw new PatternSyntaxException("Missing '}", strSubstring2, i2 - 1);
            }
            sb.append(Typography.dollar);
            strSubstring2 = sb.toString();
        } else if (!strSubstring.equalsIgnoreCase("regex")) {
            C2288b.m636e("Syntax '", strSubstring, "' not recognized");
            return null;
        }
        return new C2249h(Pattern.compile(strSubstring2), i);
    }

    @Override // j$.nio.file.FileSystem
    /* JADX INFO: renamed from: c */
    public final Iterable mo560c() {
        return AbstractC2248g.m543p(new Object[]{new C2256o(this, "/", this.f461a, this.f462b)});
    }

    @Override // j$.nio.file.FileSystem, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        throw new UnsupportedOperationException();
    }

    @Override // j$.nio.file.FileSystem
    /* JADX INFO: renamed from: d */
    public final C2286y mo561d() {
        throw new UnsupportedOperationException();
    }

    @Override // j$.nio.file.FileSystem
    /* JADX INFO: renamed from: e */
    public final boolean mo562e() {
        return false;
    }

    @Override // j$.nio.file.FileSystem
    /* JADX INFO: renamed from: f */
    public final q0 mo563f() {
        throw new UnsupportedOperationException();
    }

    @Override // j$.nio.file.FileSystem
    /* JADX INFO: renamed from: g */
    public final AbstractC2309d mo564g() {
        return this.f463c;
    }

    @Override // j$.nio.file.FileSystem
    public final Path getPath(String str, String[] strArr) {
        if (strArr.length != 0) {
            StringBuilder sb = new StringBuilder();
            sb.append(str);
            for (String str2 : strArr) {
                if (!str2.isEmpty()) {
                    if (sb.length() > 0) {
                        sb.append('/');
                    }
                    sb.append(str2);
                }
            }
            str = sb.toString();
        }
        return new C2256o(this, str, this.f461a, this.f462b);
    }

    @Override // j$.nio.file.FileSystem
    public final String getSeparator() {
        return "/";
    }

    @Override // j$.nio.file.FileSystem
    /* JADX INFO: renamed from: h */
    public final Set mo565h() {
        return AbstractC2248g.m544q(new Object[]{"basic"});
    }

    @Override // j$.nio.file.FileSystem
    public final boolean isOpen() {
        return true;
    }
}
