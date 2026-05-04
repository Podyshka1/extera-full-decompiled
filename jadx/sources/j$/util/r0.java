package j$.util;

import java.util.Arrays;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes2.dex */
public final class r0 {

    /* JADX INFO: renamed from: a */
    public final String f851a;

    /* JADX INFO: renamed from: b */
    public final String f852b;

    /* JADX INFO: renamed from: c */
    public final String f853c;

    /* JADX INFO: renamed from: d */
    public String[] f854d;

    /* JADX INFO: renamed from: e */
    public int f855e;

    /* JADX INFO: renamed from: f */
    public int f856f;

    public r0(CharSequence charSequence) {
        Objects.requireNonNull(_UrlKt.FRAGMENT_ENCODE_SET, "The prefix must not be null");
        Objects.requireNonNull(charSequence, "The delimiter must not be null");
        Objects.requireNonNull(_UrlKt.FRAGMENT_ENCODE_SET, "The suffix must not be null");
        this.f851a = _UrlKt.FRAGMENT_ENCODE_SET;
        this.f852b = charSequence.toString();
        this.f853c = _UrlKt.FRAGMENT_ENCODE_SET;
    }

    /* JADX INFO: renamed from: c */
    public static int m741c(String str, char[] cArr, int i) {
        int length = str.length();
        str.getChars(0, length, cArr, i);
        return length;
    }

    public final String toString() {
        String[] strArr = this.f854d;
        int i = this.f855e;
        String str = this.f851a;
        int length = str.length();
        String str2 = this.f853c;
        int length2 = str2.length() + length;
        if (length2 == 0) {
            m743b();
            return i == 0 ? _UrlKt.FRAGMENT_ENCODE_SET : strArr[0];
        }
        char[] cArr = new char[this.f856f + length2];
        int iM741c = m741c(str, cArr, 0);
        if (i > 0) {
            int iM741c2 = m741c(strArr[0], cArr, iM741c) + iM741c;
            for (int i2 = 1; i2 < i; i2++) {
                int iM741c3 = m741c(this.f852b, cArr, iM741c2) + iM741c2;
                iM741c2 = m741c(strArr[i2], cArr, iM741c3) + iM741c3;
            }
            iM741c = iM741c2;
        }
        m741c(str2, cArr, iM741c);
        return new String(cArr);
    }

    /* JADX INFO: renamed from: a */
    public final void m742a(CharSequence charSequence) {
        String strValueOf = String.valueOf(charSequence);
        String[] strArr = this.f854d;
        if (strArr == null) {
            this.f854d = new String[8];
        } else {
            int i = this.f855e;
            if (i == strArr.length) {
                this.f854d = (String[]) Arrays.copyOf(strArr, i * 2);
            }
            this.f856f = this.f852b.length() + this.f856f;
        }
        this.f856f = strValueOf.length() + this.f856f;
        String[] strArr2 = this.f854d;
        int i2 = this.f855e;
        this.f855e = i2 + 1;
        strArr2[i2] = strValueOf;
    }

    /* JADX INFO: renamed from: b */
    public final void m743b() {
        String[] strArr;
        if (this.f855e > 1) {
            char[] cArr = new char[this.f856f];
            int iM741c = m741c(this.f854d[0], cArr, 0);
            int i = 1;
            do {
                int iM741c2 = m741c(this.f852b, cArr, iM741c) + iM741c;
                iM741c = m741c(this.f854d[i], cArr, iM741c2) + iM741c2;
                strArr = this.f854d;
                strArr[i] = null;
                i++;
            } while (i < this.f855e);
            this.f855e = 1;
            strArr[0] = new String(cArr);
        }
    }
}
