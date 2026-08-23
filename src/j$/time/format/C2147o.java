package j$.time.format;

import j$.time.C2103c;
import j$.time.C2196x;
import j$.time.ZoneId;
import j$.time.ZoneOffset;
import j$.time.temporal.EnumC2173a;
import j$.time.zone.C2205h;
import java.text.ParsePosition;
import java.util.AbstractMap;
import java.util.Map;
import java.util.Set;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: renamed from: j$.time.format.o */
/* JADX INFO: compiled from: r8-map-id-aec3840a64bd99e9b6e79ef11e6742e52cf8ea8118315f6a864397976aaae532 */
/* JADX INFO: loaded from: classes2.dex */
public class C2147o implements InterfaceC2137e {

    /* JADX INFO: renamed from: c */
    public static volatile Map.Entry f608c;

    /* JADX INFO: renamed from: d */
    public static volatile Map.Entry f609d;

    /* JADX INFO: renamed from: a */
    public final C2196x f610a;

    /* JADX INFO: renamed from: b */
    public final String f611b;

    public C2147o(C2196x c2196x, String str) {
        this.f610a = c2196x;
        this.f611b = str;
    }

    /* JADX INFO: renamed from: b */
    public static int m651b(C2150r c2150r, CharSequence charSequence, int i, int i2, C2141i c2141i) {
        String upperCase = charSequence.subSequence(i, i2).toString().toUpperCase();
        if (i2 >= charSequence.length()) {
            c2150r.m669e(ZoneId.of(upperCase));
            return i2;
        }
        if (charSequence.charAt(i2) == '0' || c2150r.m666a(charSequence.charAt(i2), 'Z')) {
            c2150r.m669e(ZoneId.of(upperCase));
            return i2;
        }
        C2150r c2150r2 = new C2150r(c2150r.f622a);
        c2150r2.f623b = c2150r.f623b;
        c2150r2.f624c = c2150r.f624c;
        int iMo636B = c2141i.mo636B(c2150r2, charSequence, i2);
        try {
            if (iMo636B >= 0) {
                c2150r.m669e(ZoneId.m542G(upperCase, ZoneOffset.m549Z((int) c2150r2.m668d(EnumC2173a.OFFSET_SECONDS).longValue())));
                return iMo636B;
            }
            if (c2141i == C2141i.f592e) {
                return ~i;
            }
            c2150r.m669e(ZoneId.of(upperCase));
            return i2;
        } catch (C2103c unused) {
            return ~i;
        }
    }

    @Override // j$.time.format.InterfaceC2137e
    /* JADX INFO: renamed from: B */
    public final int mo636B(C2150r c2150r, CharSequence charSequence, int i) {
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
            return m651b(c2150r, charSequence, i, i, C2141i.f592e);
        }
        int i3 = i + 2;
        if (length >= i3) {
            char cCharAt2 = charSequence.charAt(i + 1);
            if (c2150r.m666a(cCharAt, 'U') && c2150r.m666a(cCharAt2, 'T')) {
                int i4 = i + 3;
                return (length < i4 || !c2150r.m666a(charSequence.charAt(i3), 'C')) ? m651b(c2150r, charSequence, i, i3, C2141i.f593f) : m651b(c2150r, charSequence, i, i4, C2141i.f593f);
            }
            if (c2150r.m666a(cCharAt, 'G') && length >= (i2 = i + 3) && c2150r.m666a(cCharAt2, 'M') && c2150r.m666a(charSequence.charAt(i3), 'T')) {
                int i5 = i + 4;
                if (length < i5 || !c2150r.m666a(charSequence.charAt(i2), '0')) {
                    return m651b(c2150r, charSequence, i, i2, C2141i.f593f);
                }
                c2150r.m669e(ZoneId.of("GMT0"));
                return i5;
            }
        }
        C2143k c2143kMo652a = mo652a(c2150r);
        ParsePosition parsePosition = new ParsePosition(i);
        String strM650c = c2143kMo652a.m650c(charSequence, parsePosition);
        if (strM650c != null) {
            c2150r.m669e(ZoneId.of(strM650c));
            return parsePosition.getIndex();
        }
        if (!c2150r.m666a(cCharAt, 'Z')) {
            return ~i;
        }
        c2150r.m669e(ZoneOffset.UTC);
        return i + 1;
    }

    /* JADX INFO: renamed from: a */
    public C2143k mo652a(C2150r c2150r) {
        Set<String> set = C2205h.f749d;
        int size = set.size();
        Map.Entry simpleImmutableEntry = c2150r.f623b ? f608c : f609d;
        if (simpleImmutableEntry == null || ((Integer) simpleImmutableEntry.getKey()).intValue() != size) {
            synchronized (this) {
                try {
                    simpleImmutableEntry = c2150r.f623b ? f608c : f609d;
                    if (simpleImmutableEntry == null || ((Integer) simpleImmutableEntry.getKey()).intValue() != size) {
                        Integer numValueOf = Integer.valueOf(size);
                        C2143k c2143k = c2150r.f623b ? new C2143k(_UrlKt.FRAGMENT_ENCODE_SET, null, null) : new C2142j(_UrlKt.FRAGMENT_ENCODE_SET, null, null);
                        for (String str : set) {
                            c2143k.m649a(str, str);
                        }
                        simpleImmutableEntry = new AbstractMap.SimpleImmutableEntry(numValueOf, c2143k);
                        if (c2150r.f623b) {
                            f608c = simpleImmutableEntry;
                        } else {
                            f609d = simpleImmutableEntry;
                        }
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return (C2143k) simpleImmutableEntry.getValue();
    }

    @Override // j$.time.format.InterfaceC2137e
    /* JADX INFO: renamed from: t */
    public boolean mo637t(C2152t c2152t, StringBuilder sb) {
        ZoneId zoneId = (ZoneId) c2152t.m673b(this.f610a);
        if (zoneId == null) {
            return false;
        }
        sb.append(zoneId.getId());
        return true;
    }

    public final String toString() {
        return this.f611b;
    }
}
