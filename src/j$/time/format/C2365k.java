package j$.time.format;

import java.text.ParsePosition;
import kotlin.jvm.internal.CharCompanionObject;

/* JADX INFO: renamed from: j$.time.format.k */
/* JADX INFO: compiled from: r8-map-id-4910828a8dc56cbd751d74065856ac3a183dfd4d6dbda867057afff82c304930 */
/* JADX INFO: loaded from: classes2.dex */
public class C2365k {

    /* JADX INFO: renamed from: a */
    public String f757a;

    /* JADX INFO: renamed from: b */
    public String f758b;

    /* JADX INFO: renamed from: c */
    public final char f759c;

    /* JADX INFO: renamed from: d */
    public C2365k f760d;

    /* JADX INFO: renamed from: e */
    public C2365k f761e;

    public C2365k(String str, String str2, C2365k c2365k) {
        this.f757a = str;
        this.f758b = str2;
        this.f760d = c2365k;
        if (str.isEmpty()) {
            this.f759c = CharCompanionObject.MAX_VALUE;
        } else {
            this.f759c = this.f757a.charAt(0);
        }
    }

    /* JADX INFO: renamed from: a */
    public final boolean m831a(String str, String str2) {
        int i = 0;
        while (i < str.length() && i < this.f757a.length() && mo828b(str.charAt(i), this.f757a.charAt(i))) {
            i++;
        }
        if (i != this.f757a.length()) {
            C2365k c2365kMo829d = mo829d(this.f757a.substring(i), this.f758b, this.f760d);
            this.f757a = str.substring(0, i);
            this.f760d = c2365kMo829d;
            if (i >= str.length()) {
                this.f758b = str2;
                return true;
            }
            this.f760d.f761e = mo829d(str.substring(i), str2, null);
            this.f758b = null;
            return true;
        }
        if (i >= str.length()) {
            this.f758b = str2;
            return true;
        }
        String strSubstring = str.substring(i);
        for (C2365k c2365k = this.f760d; c2365k != null; c2365k = c2365k.f761e) {
            if (mo828b(c2365k.f759c, strSubstring.charAt(0))) {
                return c2365k.m831a(strSubstring, str2);
            }
        }
        C2365k c2365kMo829d2 = mo829d(strSubstring, str2, null);
        c2365kMo829d2.f761e = this.f760d;
        this.f760d = c2365kMo829d2;
        return true;
    }

    /* JADX INFO: renamed from: b */
    public boolean mo828b(char c2, char c3) {
        return c2 == c3;
    }

    /* JADX INFO: renamed from: c */
    public final String m832c(CharSequence charSequence, ParsePosition parsePosition) {
        int index = parsePosition.getIndex();
        int length = charSequence.length();
        if (!mo830e(charSequence, index, length)) {
            return null;
        }
        int length2 = this.f757a.length() + index;
        C2365k c2365k = this.f760d;
        if (c2365k != null && length2 != length) {
            while (true) {
                if (mo828b(c2365k.f759c, charSequence.charAt(length2))) {
                    parsePosition.setIndex(length2);
                    String strM832c = c2365k.m832c(charSequence, parsePosition);
                    if (strM832c != null) {
                        return strM832c;
                    }
                } else {
                    c2365k = c2365k.f761e;
                    if (c2365k == null) {
                        break;
                    }
                }
            }
        }
        parsePosition.setIndex(length2);
        return this.f758b;
    }

    /* JADX INFO: renamed from: d */
    public C2365k mo829d(String str, String str2, C2365k c2365k) {
        return new C2365k(str, str2, c2365k);
    }

    /* JADX INFO: renamed from: e */
    public boolean mo830e(CharSequence charSequence, int i, int i2) {
        boolean z = charSequence instanceof String;
        String str = this.f757a;
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
            if (!mo828b(this.f757a.charAt(i3), charSequence.charAt(i))) {
                return false;
            }
            i = i6;
            length = i4;
            i3 = i5;
        }
    }
}
