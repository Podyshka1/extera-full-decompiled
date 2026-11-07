package j$.time.format;

import java.text.ParsePosition;
import kotlin.jvm.internal.CharCompanionObject;

/* JADX INFO: renamed from: j$.time.format.k */
/* JADX INFO: compiled from: r8-map-id-d770cecce19e13e7204002895f1f3846e7cae954646f7ef2982ee0cbc1d920c0 */
/* JADX INFO: loaded from: classes2.dex */
public class C2225k {

    /* JADX INFO: renamed from: a */
    public String f753a;

    /* JADX INFO: renamed from: b */
    public String f754b;

    /* JADX INFO: renamed from: c */
    public final char f755c;

    /* JADX INFO: renamed from: d */
    public C2225k f756d;

    /* JADX INFO: renamed from: e */
    public C2225k f757e;

    public C2225k(String str, String str2, C2225k c2225k) {
        this.f753a = str;
        this.f754b = str2;
        this.f756d = c2225k;
        if (str.isEmpty()) {
            this.f755c = CharCompanionObject.MAX_VALUE;
        } else {
            this.f755c = this.f753a.charAt(0);
        }
    }

    /* JADX INFO: renamed from: a */
    public final boolean m787a(String str, String str2) {
        int i = 0;
        while (i < str.length() && i < this.f753a.length() && mo784b(str.charAt(i), this.f753a.charAt(i))) {
            i++;
        }
        if (i != this.f753a.length()) {
            C2225k c2225kMo785d = mo785d(this.f753a.substring(i), this.f754b, this.f756d);
            this.f753a = str.substring(0, i);
            this.f756d = c2225kMo785d;
            if (i >= str.length()) {
                this.f754b = str2;
                return true;
            }
            this.f756d.f757e = mo785d(str.substring(i), str2, null);
            this.f754b = null;
            return true;
        }
        if (i >= str.length()) {
            this.f754b = str2;
            return true;
        }
        String strSubstring = str.substring(i);
        for (C2225k c2225k = this.f756d; c2225k != null; c2225k = c2225k.f757e) {
            if (mo784b(c2225k.f755c, strSubstring.charAt(0))) {
                return c2225k.m787a(strSubstring, str2);
            }
        }
        C2225k c2225kMo785d2 = mo785d(strSubstring, str2, null);
        c2225kMo785d2.f757e = this.f756d;
        this.f756d = c2225kMo785d2;
        return true;
    }

    /* JADX INFO: renamed from: b */
    public boolean mo784b(char c2, char c3) {
        return c2 == c3;
    }

    /* JADX INFO: renamed from: c */
    public final String m788c(CharSequence charSequence, ParsePosition parsePosition) {
        int index = parsePosition.getIndex();
        int length = charSequence.length();
        if (!mo786e(charSequence, index, length)) {
            return null;
        }
        int length2 = this.f753a.length() + index;
        C2225k c2225k = this.f756d;
        if (c2225k != null && length2 != length) {
            while (true) {
                if (mo784b(c2225k.f755c, charSequence.charAt(length2))) {
                    parsePosition.setIndex(length2);
                    String strM788c = c2225k.m788c(charSequence, parsePosition);
                    if (strM788c != null) {
                        return strM788c;
                    }
                } else {
                    c2225k = c2225k.f757e;
                    if (c2225k == null) {
                        break;
                    }
                }
            }
        }
        parsePosition.setIndex(length2);
        return this.f754b;
    }

    /* JADX INFO: renamed from: d */
    public C2225k mo785d(String str, String str2, C2225k c2225k) {
        return new C2225k(str, str2, c2225k);
    }

    /* JADX INFO: renamed from: e */
    public boolean mo786e(CharSequence charSequence, int i, int i2) {
        boolean z = charSequence instanceof String;
        String str = this.f753a;
        if (z) {
            return ((String) charSequence).startsWith(str, i);
        }
        int length = str.length();
        if (length > i2 - i) {
            return false;
        }
        int i3 = 0;
        while (true) {
            int i4 = length - 1;
            if (length <= 0) {
                return true;
            }
            int i5 = i3 + 1;
            int i6 = i + 1;
            if (!mo784b(this.f753a.charAt(i3), charSequence.charAt(i))) {
                return false;
            }
            i = i6;
            length = i4;
            i3 = i5;
        }
    }
}
