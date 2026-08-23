package p022j$.util;

import java.util.Arrays;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: renamed from: j$.util.r0 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2308r0 {

    /* JADX INFO: renamed from: a */
    public final String f1086a;

    /* JADX INFO: renamed from: b */
    public final String f1087b;

    /* JADX INFO: renamed from: c */
    public final String f1088c;

    /* JADX INFO: renamed from: d */
    public String[] f1089d;

    /* JADX INFO: renamed from: e */
    public int f1090e;

    /* JADX INFO: renamed from: f */
    public int f1091f;

    public C2308r0(CharSequence charSequence) {
        Objects.requireNonNull(_UrlKt.FRAGMENT_ENCODE_SET, "The prefix must not be null");
        Objects.requireNonNull(charSequence, "The delimiter must not be null");
        Objects.requireNonNull(_UrlKt.FRAGMENT_ENCODE_SET, "The suffix must not be null");
        this.f1086a = _UrlKt.FRAGMENT_ENCODE_SET;
        this.f1087b = charSequence.toString();
        this.f1088c = _UrlKt.FRAGMENT_ENCODE_SET;
    }

    /* JADX INFO: renamed from: c */
    public static int m869c(String str, char[] cArr, int i) {
        int length = str.length();
        str.getChars(0, length, cArr, i);
        return length;
    }

    public final String toString() {
        String[] strArr = this.f1089d;
        int i = this.f1090e;
        String str = this.f1086a;
        int length = str.length();
        String str2 = this.f1088c;
        int length2 = str2.length() + length;
        if (length2 == 0) {
            m871b();
            return i == 0 ? _UrlKt.FRAGMENT_ENCODE_SET : strArr[0];
        }
        char[] cArr = new char[this.f1091f + length2];
        int iM869c = m869c(str, cArr, 0);
        if (i > 0) {
            int iM869c2 = m869c(strArr[0], cArr, iM869c) + iM869c;
            for (int i2 = 1; i2 < i; i2++) {
                int iM869c3 = m869c(this.f1087b, cArr, iM869c2) + iM869c2;
                iM869c2 = m869c(strArr[i2], cArr, iM869c3) + iM869c3;
            }
            iM869c = iM869c2;
        }
        m869c(str2, cArr, iM869c);
        return new String(cArr);
    }

    /* JADX INFO: renamed from: a */
    public final void m870a(CharSequence charSequence) {
        String strValueOf = String.valueOf(charSequence);
        String[] strArr = this.f1089d;
        if (strArr == null) {
            this.f1089d = new String[8];
        } else {
            int i = this.f1090e;
            if (i == strArr.length) {
                this.f1089d = (String[]) Arrays.copyOf(strArr, i * 2);
            }
            this.f1091f = this.f1087b.length() + this.f1091f;
        }
        this.f1091f = strValueOf.length() + this.f1091f;
        String[] strArr2 = this.f1089d;
        int i2 = this.f1090e;
        this.f1090e = i2 + 1;
        strArr2[i2] = strValueOf;
    }

    /* JADX INFO: renamed from: b */
    public final void m871b() {
        String[] strArr;
        if (this.f1090e > 1) {
            char[] cArr = new char[this.f1091f];
            int iM869c = m869c(this.f1089d[0], cArr, 0);
            int i = 1;
            do {
                int iM869c2 = m869c(this.f1087b, cArr, iM869c) + iM869c;
                iM869c = m869c(this.f1089d[i], cArr, iM869c2) + iM869c2;
                strArr = this.f1089d;
                strArr[i] = null;
                i++;
            } while (i < this.f1090e);
            this.f1090e = 1;
            strArr[0] = new String(cArr);
        }
    }
}
