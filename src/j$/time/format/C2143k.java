package j$.time.format;

import java.text.ParsePosition;
import kotlin.jvm.internal.CharCompanionObject;

/* JADX INFO: renamed from: j$.time.format.k */
/* JADX INFO: compiled from: r8-map-id-aec3840a64bd99e9b6e79ef11e6742e52cf8ea8118315f6a864397976aaae532 */
/* JADX INFO: loaded from: classes2.dex */
public class C2143k {

    /* JADX INFO: renamed from: a */
    public String f597a;

    /* JADX INFO: renamed from: b */
    public String f598b;

    /* JADX INFO: renamed from: c */
    public final char f599c;

    /* JADX INFO: renamed from: d */
    public C2143k f600d;

    /* JADX INFO: renamed from: e */
    public C2143k f601e;

    public C2143k(String str, String str2, C2143k c2143k) {
        this.f597a = str;
        this.f598b = str2;
        this.f600d = c2143k;
        if (str.isEmpty()) {
            this.f599c = CharCompanionObject.MAX_VALUE;
        } else {
            this.f599c = this.f597a.charAt(0);
        }
    }

    /* JADX INFO: renamed from: a */
    public final boolean m649a(String str, String str2) {
        int i = 0;
        while (i < str.length() && i < this.f597a.length() && mo646b(str.charAt(i), this.f597a.charAt(i))) {
            i++;
        }
        if (i != this.f597a.length()) {
            C2143k c2143kMo647d = mo647d(this.f597a.substring(i), this.f598b, this.f600d);
            this.f597a = str.substring(0, i);
            this.f600d = c2143kMo647d;
            if (i >= str.length()) {
                this.f598b = str2;
                return true;
            }
            this.f600d.f601e = mo647d(str.substring(i), str2, null);
            this.f598b = null;
            return true;
        }
        if (i >= str.length()) {
            this.f598b = str2;
            return true;
        }
        String strSubstring = str.substring(i);
        for (C2143k c2143k = this.f600d; c2143k != null; c2143k = c2143k.f601e) {
            if (mo646b(c2143k.f599c, strSubstring.charAt(0))) {
                return c2143k.m649a(strSubstring, str2);
            }
        }
        C2143k c2143kMo647d2 = mo647d(strSubstring, str2, null);
        c2143kMo647d2.f601e = this.f600d;
        this.f600d = c2143kMo647d2;
        return true;
    }

    /* JADX INFO: renamed from: b */
    public boolean mo646b(char c2, char c3) {
        return c2 == c3;
    }

    /* JADX INFO: renamed from: c */
    public final String m650c(CharSequence charSequence, ParsePosition parsePosition) {
        int index = parsePosition.getIndex();
        int length = charSequence.length();
        if (!mo648e(charSequence, index, length)) {
            return null;
        }
        int length2 = this.f597a.length() + index;
        C2143k c2143k = this.f600d;
        if (c2143k != null && length2 != length) {
            while (true) {
                if (mo646b(c2143k.f599c, charSequence.charAt(length2))) {
                    parsePosition.setIndex(length2);
                    String strM650c = c2143k.m650c(charSequence, parsePosition);
                    if (strM650c != null) {
                        return strM650c;
                    }
                } else {
                    c2143k = c2143k.f601e;
                    if (c2143k == null) {
                        break;
                    }
                }
            }
        }
        parsePosition.setIndex(length2);
        return this.f598b;
    }

    /* JADX INFO: renamed from: d */
    public C2143k mo647d(String str, String str2, C2143k c2143k) {
        return new C2143k(str, str2, c2143k);
    }

    /* JADX INFO: renamed from: e */
    public boolean mo648e(CharSequence charSequence, int i, int i2) {
        boolean z = charSequence instanceof String;
        String str = this.f597a;
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
            if (!mo646b(this.f597a.charAt(i3), charSequence.charAt(i))) {
                return false;
            }
            i = i6;
            length = i4;
            i3 = i5;
        }
    }
}
