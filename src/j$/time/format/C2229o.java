package j$.time.format;

import j$.time.C2184b;
import j$.time.C2213e;
import j$.time.ZoneId;
import j$.time.ZoneOffset;
import j$.time.temporal.EnumC2254a;
import j$.time.zone.C2279g;
import java.text.ParsePosition;
import java.util.AbstractMap;
import java.util.Map;
import java.util.Set;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: renamed from: j$.time.format.o */
/* JADX INFO: compiled from: r8-map-id-d770cecce19e13e7204002895f1f3846e7cae954646f7ef2982ee0cbc1d920c0 */
/* JADX INFO: loaded from: classes2.dex */
public class C2229o implements InterfaceC2219e {

    /* JADX INFO: renamed from: c */
    public static volatile Map.Entry f764c;

    /* JADX INFO: renamed from: d */
    public static volatile Map.Entry f765d;

    /* JADX INFO: renamed from: a */
    public final C2213e f766a;

    /* JADX INFO: renamed from: b */
    public final String f767b;

    public C2229o(C2213e c2213e, String str) {
        this.f766a = c2213e;
        this.f767b = str;
    }

    /* JADX INFO: renamed from: b */
    public static int m789b(C2232r c2232r, CharSequence charSequence, int i, int i2, C2223i c2223i) {
        String upperCase = charSequence.subSequence(i, i2).toString().toUpperCase();
        if (i2 >= charSequence.length()) {
            c2232r.m807e(ZoneId.of(upperCase));
            return i2;
        }
        if (charSequence.charAt(i2) == '0' || c2232r.m804a(charSequence.charAt(i2), 'Z')) {
            c2232r.m807e(ZoneId.of(upperCase));
            return i2;
        }
        C2232r c2232r2 = new C2232r(c2232r.f778a);
        c2232r2.f779b = c2232r.f779b;
        c2232r2.f780c = c2232r.f780c;
        int iMo774D = c2223i.mo774D(c2232r2, charSequence, i2);
        try {
            if (iMo774D >= 0) {
                c2232r.m807e(ZoneId.m703I(upperCase, ZoneOffset.ofTotalSeconds((int) c2232r2.m806d(EnumC2254a.OFFSET_SECONDS).longValue())));
                return iMo774D;
            }
            if (c2223i == C2223i.f748e) {
                return ~i;
            }
            c2232r.m807e(ZoneId.of(upperCase));
            return i2;
        } catch (C2184b unused) {
            return ~i;
        }
    }

    @Override // j$.time.format.InterfaceC2219e
    /* JADX INFO: renamed from: D */
    public final int mo774D(C2232r c2232r, CharSequence charSequence, int i) {
        int i2;
        int length = charSequence.length();
        if (i > length) {
            throw new IndexOutOfBoundsException();
        }
        if (i == length) {
            return ~i;
        }
        char cCharAt = charSequence.charAt(i);
        if (cCharAt == '+' || cCharAt == '-') {
            return m789b(c2232r, charSequence, i, i, C2223i.f748e);
        }
        int i3 = i + 2;
        if (length >= i3) {
            char cCharAt2 = charSequence.charAt(i + 1);
            if (c2232r.m804a(cCharAt, 'U') && c2232r.m804a(cCharAt2, 'T')) {
                int i4 = i + 3;
                return (length < i4 || !c2232r.m804a(charSequence.charAt(i3), 'C')) ? m789b(c2232r, charSequence, i, i3, C2223i.f749f) : m789b(c2232r, charSequence, i, i4, C2223i.f749f);
            }
            if (c2232r.m804a(cCharAt, 'G') && length >= (i2 = i + 3) && c2232r.m804a(cCharAt2, 'M') && c2232r.m804a(charSequence.charAt(i3), 'T')) {
                int i5 = i + 4;
                if (length < i5 || !c2232r.m804a(charSequence.charAt(i2), '0')) {
                    return m789b(c2232r, charSequence, i, i2, C2223i.f749f);
                }
                c2232r.m807e(ZoneId.of("GMT0"));
                return i5;
            }
        }
        C2225k c2225kMo790a = mo790a(c2232r);
        ParsePosition parsePosition = new ParsePosition(i);
        String strM788c = c2225kMo790a.m788c(charSequence, parsePosition);
        if (strM788c != null) {
            c2232r.m807e(ZoneId.of(strM788c));
            return parsePosition.getIndex();
        }
        if (!c2232r.m804a(cCharAt, 'Z')) {
            return ~i;
        }
        c2232r.m807e(ZoneOffset.UTC);
        return i + 1;
    }

    /* JADX INFO: renamed from: a */
    public C2225k mo790a(C2232r c2232r) {
        Set<String> set = C2279g.f890d;
        int size = set.size();
        Map.Entry simpleImmutableEntry = c2232r.f779b ? f764c : f765d;
        if (simpleImmutableEntry == null || ((Integer) simpleImmutableEntry.getKey()).intValue() != size) {
            synchronized (this) {
                try {
                    simpleImmutableEntry = c2232r.f779b ? f764c : f765d;
                    if (simpleImmutableEntry == null || ((Integer) simpleImmutableEntry.getKey()).intValue() != size) {
                        Integer numValueOf = Integer.valueOf(size);
                        C2225k c2225k = c2232r.f779b ? new C2225k(_UrlKt.FRAGMENT_ENCODE_SET, null, null) : new C2224j(_UrlKt.FRAGMENT_ENCODE_SET, null, null);
                        for (String str : set) {
                            c2225k.m787a(str, str);
                        }
                        simpleImmutableEntry = new AbstractMap.SimpleImmutableEntry(numValueOf, c2225k);
                        if (c2232r.f779b) {
                            f764c = simpleImmutableEntry;
                        } else {
                            f765d = simpleImmutableEntry;
                        }
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return (C2225k) simpleImmutableEntry.getValue();
    }

    @Override // j$.time.format.InterfaceC2219e
    /* JADX INFO: renamed from: s */
    public boolean mo775s(C2234t c2234t, StringBuilder sb) {
        ZoneId zoneId = (ZoneId) c2234t.m811b(this.f766a);
        if (zoneId == null) {
            return false;
        }
        sb.append(zoneId.getId());
        return true;
    }

    public final String toString() {
        return this.f767b;
    }
}
