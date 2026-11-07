package j$.time.format;

import j$.time.C2352d;
import j$.time.DateTimeException;
import j$.time.ZoneId;
import j$.time.ZoneOffset;
import j$.time.temporal.EnumC2393a;
import j$.time.zone.C2418g;
import java.text.ParsePosition;
import java.util.AbstractMap;
import java.util.Map;
import java.util.Set;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: renamed from: j$.time.format.o */
/* JADX INFO: compiled from: r8-map-id-4910828a8dc56cbd751d74065856ac3a183dfd4d6dbda867057afff82c304930 */
/* JADX INFO: loaded from: classes2.dex */
public class C2369o implements InterfaceC2359e {

    /* JADX INFO: renamed from: c */
    public static volatile Map.Entry f768c;

    /* JADX INFO: renamed from: d */
    public static volatile Map.Entry f769d;

    /* JADX INFO: renamed from: a */
    public final C2352d f770a;

    /* JADX INFO: renamed from: b */
    public final String f771b;

    public C2369o(C2352d c2352d, String str) {
        this.f770a = c2352d;
        this.f771b = str;
    }

    /* JADX INFO: renamed from: b */
    public static int m833b(C2372r c2372r, CharSequence charSequence, int i, int i2, C2363i c2363i) {
        String upperCase = charSequence.subSequence(i, i2).toString().toUpperCase();
        if (i2 >= charSequence.length()) {
            c2372r.m851e(ZoneId.of(upperCase));
            return i2;
        }
        if (charSequence.charAt(i2) == '0' || c2372r.m848a(charSequence.charAt(i2), 'Z')) {
            c2372r.m851e(ZoneId.of(upperCase));
            return i2;
        }
        C2372r c2372r2 = new C2372r(c2372r.f782a);
        c2372r2.f783b = c2372r.f783b;
        c2372r2.f784c = c2372r.f784c;
        int iMo818D = c2363i.mo818D(c2372r2, charSequence, i2);
        try {
            if (iMo818D >= 0) {
                c2372r.m851e(ZoneId.m733I(upperCase, ZoneOffset.ofTotalSeconds((int) c2372r2.m850d(EnumC2393a.OFFSET_SECONDS).longValue())));
                return iMo818D;
            }
            if (c2363i == C2363i.f752e) {
                return ~i;
            }
            c2372r.m851e(ZoneId.of(upperCase));
            return i2;
        } catch (DateTimeException unused) {
            return ~i;
        }
    }

    @Override // j$.time.format.InterfaceC2359e
    /* JADX INFO: renamed from: D */
    public final int mo818D(C2372r c2372r, CharSequence charSequence, int i) {
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
            return m833b(c2372r, charSequence, i, i, C2363i.f752e);
        }
        int i3 = i + 2;
        if (length >= i3) {
            char cCharAt2 = charSequence.charAt(i + 1);
            if (c2372r.m848a(cCharAt, 'U') && c2372r.m848a(cCharAt2, 'T')) {
                int i4 = i + 3;
                return (length < i4 || !c2372r.m848a(charSequence.charAt(i3), 'C')) ? m833b(c2372r, charSequence, i, i3, C2363i.f753f) : m833b(c2372r, charSequence, i, i4, C2363i.f753f);
            }
            if (c2372r.m848a(cCharAt, 'G') && length >= (i2 = i + 3) && c2372r.m848a(cCharAt2, 'M') && c2372r.m848a(charSequence.charAt(i3), 'T')) {
                int i5 = i + 4;
                if (length < i5 || !c2372r.m848a(charSequence.charAt(i2), '0')) {
                    return m833b(c2372r, charSequence, i, i2, C2363i.f753f);
                }
                c2372r.m851e(ZoneId.of("GMT0"));
                return i5;
            }
        }
        C2365k c2365kMo834a = mo834a(c2372r);
        ParsePosition parsePosition = new ParsePosition(i);
        String strM832c = c2365kMo834a.m832c(charSequence, parsePosition);
        if (strM832c != null) {
            c2372r.m851e(ZoneId.of(strM832c));
            return parsePosition.getIndex();
        }
        if (!c2372r.m848a(cCharAt, 'Z')) {
            return ~i;
        }
        c2372r.m851e(ZoneOffset.UTC);
        return i + 1;
    }

    /* JADX INFO: renamed from: a */
    public C2365k mo834a(C2372r c2372r) {
        Set<String> set = C2418g.f892d;
        int size = set.size();
        Map.Entry simpleImmutableEntry = c2372r.f783b ? f768c : f769d;
        if (simpleImmutableEntry == null || ((Integer) simpleImmutableEntry.getKey()).intValue() != size) {
            synchronized (this) {
                try {
                    simpleImmutableEntry = c2372r.f783b ? f768c : f769d;
                    if (simpleImmutableEntry == null || ((Integer) simpleImmutableEntry.getKey()).intValue() != size) {
                        Integer numValueOf = Integer.valueOf(size);
                        C2365k c2365k = c2372r.f783b ? new C2365k(_UrlKt.FRAGMENT_ENCODE_SET, null, null) : new C2364j(_UrlKt.FRAGMENT_ENCODE_SET, null, null);
                        for (String str : set) {
                            c2365k.m831a(str, str);
                        }
                        simpleImmutableEntry = new AbstractMap.SimpleImmutableEntry(numValueOf, c2365k);
                        if (c2372r.f783b) {
                            f768c = simpleImmutableEntry;
                        } else {
                            f769d = simpleImmutableEntry;
                        }
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return (C2365k) simpleImmutableEntry.getValue();
    }

    @Override // j$.time.format.InterfaceC2359e
    /* JADX INFO: renamed from: s */
    public boolean mo819s(C2374t c2374t, StringBuilder sb) {
        ZoneId zoneId = (ZoneId) c2374t.m855b(this.f770a);
        if (zoneId == null) {
            return false;
        }
        sb.append(zoneId.getId());
        return true;
    }

    public final String toString() {
        return this.f771b;
    }
}
