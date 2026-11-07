package j$.time;

import j$.nio.file.C2288b;
import j$.time.temporal.AbstractC2409q;
import j$.time.temporal.C2410r;
import j$.time.temporal.EnumC2393a;
import j$.time.temporal.InterfaceC2404l;
import j$.time.temporal.InterfaceC2405m;
import j$.time.temporal.InterfaceC2408p;
import j$.time.temporal.Temporal;
import j$.time.zone.ZoneRules;
import java.io.DataInput;
import java.io.DataOutput;
import java.io.IOException;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.Objects;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import okhttp3.internal.url._UrlKt;
import org.mvel2.MVEL;

/* JADX INFO: compiled from: r8-map-id-4910828a8dc56cbd751d74065856ac3a183dfd4d6dbda867057afff82c304930 */
/* JADX INFO: loaded from: classes2.dex */
public final class ZoneOffset extends ZoneId implements InterfaceC2404l, InterfaceC2405m, Comparable<ZoneOffset>, Serializable {
    private static final long serialVersionUID = 2357656521762053153L;

    /* JADX INFO: renamed from: b */
    public final int f650b;

    /* JADX INFO: renamed from: c */
    public final transient String f651c;

    /* JADX INFO: renamed from: d */
    public static final ConcurrentMap f646d = new ConcurrentHashMap(16, 0.75f, 4);

    /* JADX INFO: renamed from: e */
    public static final ConcurrentMap f647e = new ConcurrentHashMap(16, 0.75f, 4);
    public static final ZoneOffset UTC = ofTotalSeconds(0);

    /* JADX INFO: renamed from: f */
    public static final ZoneOffset f648f = ofTotalSeconds(-64800);

    /* JADX INFO: renamed from: g */
    public static final ZoneOffset f649g = ofTotalSeconds(64800);

    public ZoneOffset(int i) {
        String string;
        this.f650b = i;
        if (i == 0) {
            string = "Z";
        } else {
            int iAbs = Math.abs(i);
            StringBuilder sb = new StringBuilder();
            int i2 = iAbs / 3600;
            int i3 = (iAbs / 60) % 60;
            sb.append(i < 0 ? "-" : "+");
            sb.append(i2 < 10 ? MVEL.VERSION_SUB : _UrlKt.FRAGMENT_ENCODE_SET);
            sb.append(i2);
            sb.append(i3 < 10 ? ":0" : ":");
            sb.append(i3);
            int i4 = iAbs % 60;
            if (i4 != 0) {
                sb.append(i4 < 10 ? ":0" : ":");
                sb.append(i4);
            }
            string = sb.toString();
        }
        this.f651c = string;
    }

    /* JADX INFO: renamed from: X */
    public static ZoneOffset m737X(InterfaceC2404l interfaceC2404l) {
        Objects.requireNonNull(interfaceC2404l, "temporal");
        ZoneOffset zoneOffset = (ZoneOffset) interfaceC2404l.mo554d(AbstractC2409q.f852d);
        if (zoneOffset != null) {
            return zoneOffset;
        }
        C2288b.m637f("Unable to obtain ZoneOffset from TemporalAccessor: ", interfaceC2404l, " of type ", interfaceC2404l.getClass().getName());
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x009f  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00a7  */
    /* JADX INFO: renamed from: Y */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static ZoneOffset m738Y(String str) {
        int iA0;
        int iA02;
        int iA03;
        char cCharAt;
        Objects.requireNonNull(str, "offsetId");
        ZoneOffset zoneOffset = (ZoneOffset) ((ConcurrentHashMap) f647e).get(str);
        if (zoneOffset != null) {
            return zoneOffset;
        }
        int length = str.length();
        if (length != 2) {
            if (length != 3) {
                if (length == 5) {
                    iA0 = a0(str, 1, false);
                    iA02 = a0(str, 3, false);
                } else if (length == 6) {
                    iA0 = a0(str, 1, false);
                    iA02 = a0(str, 4, true);
                } else if (length == 7) {
                    iA0 = a0(str, 1, false);
                    iA02 = a0(str, 3, false);
                    iA03 = a0(str, 5, false);
                } else {
                    if (length != 9) {
                        C2288b.m639h("Invalid ID for ZoneOffset, invalid format: ".concat(str));
                        return null;
                    }
                    iA0 = a0(str, 1, false);
                    iA02 = a0(str, 4, true);
                    iA03 = a0(str, 7, true);
                }
                iA03 = 0;
            }
            cCharAt = str.charAt(0);
            if (cCharAt != '+' || cCharAt == '-') {
                return cCharAt != '-' ? m739Z(-iA0, -iA02, -iA03) : m739Z(iA0, iA02, iA03);
            }
            C2288b.m639h("Invalid ID for ZoneOffset, plus/minus not found when expected: ".concat(str));
            return null;
        }
        str = str.charAt(0) + MVEL.VERSION_SUB + str.charAt(1);
        iA0 = a0(str, 1, false);
        iA02 = 0;
        iA03 = 0;
        cCharAt = str.charAt(0);
        if (cCharAt != '+') {
        }
        if (cCharAt != '-') {
        }
    }

    /* JADX INFO: renamed from: Z */
    public static ZoneOffset m739Z(int i, int i2, int i3) {
        if (i < -18 || i > 18) {
            C2288b.m634c("Zone offset hours not in valid range: value ", i, " is not in the range -18 to 18");
            return null;
        }
        if (i > 0) {
            if (i2 < 0 || i3 < 0) {
                C2288b.m639h("Zone offset minutes and seconds must be positive because hours is positive");
                return null;
            }
        } else if (i < 0) {
            if (i2 > 0 || i3 > 0) {
                C2288b.m639h("Zone offset minutes and seconds must be negative because hours is negative");
                return null;
            }
        } else if ((i2 > 0 && i3 < 0) || (i2 < 0 && i3 > 0)) {
            C2288b.m639h("Zone offset minutes and seconds must have the same sign");
            return null;
        }
        if (i2 < -59 || i2 > 59) {
            C2288b.m634c("Zone offset minutes not in valid range: value ", i2, " is not in the range -59 to 59");
            return null;
        }
        if (i3 < -59 || i3 > 59) {
            C2288b.m634c("Zone offset seconds not in valid range: value ", i3, " is not in the range -59 to 59");
            return null;
        }
        if (Math.abs(i) != 18 || (i2 | i3) == 0) {
            return ofTotalSeconds((i2 * 60) + (i * 3600) + i3);
        }
        C2288b.m639h("Zone offset not in valid range: -18:00 to +18:00");
        return null;
    }

    public static int a0(CharSequence charSequence, int i, boolean z) {
        if (z) {
            String str = (String) charSequence;
            if (str.charAt(i - 1) != ':') {
                C2288b.m641j("Invalid ID for ZoneOffset, colon not found when expected: ", str);
                return 0;
            }
        }
        String str2 = (String) charSequence;
        char cCharAt = str2.charAt(i);
        char cCharAt2 = str2.charAt(i + 1);
        if (cCharAt < '0' || cCharAt > '9' || cCharAt2 < '0' || cCharAt2 > '9') {
            C2288b.m641j("Invalid ID for ZoneOffset, non numeric characters found: ", str2);
            return 0;
        }
        return (cCharAt2 - '0') + ((cCharAt - '0') * 10);
    }

    public static ZoneOffset b0(DataInput dataInput) {
        byte b2 = dataInput.readByte();
        return b2 == 127 ? ofTotalSeconds(dataInput.readInt()) : ofTotalSeconds(b2 * 900);
    }

    public static ZoneOffset ofTotalSeconds(int i) {
        if (i < -64800 || i > 64800) {
            C2288b.m639h("Zone offset not in valid range: -18:00 to +18:00");
            return null;
        }
        if (i % 900 != 0) {
            return new ZoneOffset(i);
        }
        Integer numValueOf = Integer.valueOf(i);
        ConcurrentMap concurrentMap = f646d;
        ZoneOffset zoneOffset = (ZoneOffset) ((ConcurrentHashMap) concurrentMap).get(numValueOf);
        if (zoneOffset != null) {
            return zoneOffset;
        }
        ((ConcurrentHashMap) concurrentMap).putIfAbsent(numValueOf, new ZoneOffset(i));
        ZoneOffset zoneOffset2 = (ZoneOffset) ((ConcurrentHashMap) concurrentMap).get(numValueOf);
        ((ConcurrentHashMap) f647e).putIfAbsent(zoneOffset2.f651c, zoneOffset2);
        return zoneOffset2;
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private Object writeReplace() {
        return new C2388n((byte) 8, this);
    }

    @Override // j$.time.ZoneId
    /* JADX INFO: renamed from: R */
    public final void mo736R(DataOutput dataOutput) throws IOException {
        dataOutput.writeByte(8);
        c0(dataOutput);
    }

    public final void c0(DataOutput dataOutput) {
        int i = this.f650b;
        int i2 = i % 900 == 0 ? i / 900 : 127;
        dataOutput.writeByte(i2);
        if (i2 == 127) {
            dataOutput.writeInt(i);
        }
    }

    @Override // java.lang.Comparable
    public final int compareTo(ZoneOffset zoneOffset) {
        return zoneOffset.f650b - this.f650b;
    }

    @Override // j$.time.temporal.InterfaceC2404l
    /* JADX INFO: renamed from: d */
    public final Object mo554d(C2352d c2352d) {
        return (c2352d == AbstractC2409q.f852d || c2352d == AbstractC2409q.f853e) ? this : super.mo554d(c2352d);
    }

    @Override // j$.time.temporal.InterfaceC2405m
    /* JADX INFO: renamed from: e */
    public final Temporal mo665e(Temporal temporal) {
        return temporal.mo676a(this.f650b, EnumC2393a.OFFSET_SECONDS);
    }

    @Override // j$.time.ZoneId
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof ZoneOffset) && this.f650b == ((ZoneOffset) obj).f650b;
    }

    @Override // j$.time.temporal.InterfaceC2404l
    /* JADX INFO: renamed from: g */
    public final int mo666g(InterfaceC2408p interfaceC2408p) {
        if (interfaceC2408p == EnumC2393a.OFFSET_SECONDS) {
            return this.f650b;
        }
        if (interfaceC2408p == null) {
            return super.mo667l(interfaceC2408p).m885a(mo556k(interfaceC2408p), interfaceC2408p);
        }
        throw new C2410r(AbstractC2324b.m753a("Unsupported field: ", interfaceC2408p));
    }

    @Override // j$.time.ZoneId
    public final String getId() {
        return this.f651c;
    }

    @Override // j$.time.ZoneId
    public final ZoneRules getRules() {
        return new ZoneRules(this);
    }

    public int getTotalSeconds() {
        return this.f650b;
    }

    @Override // j$.time.ZoneId
    public final int hashCode() {
        return this.f650b;
    }

    @Override // j$.time.temporal.InterfaceC2404l
    /* JADX INFO: renamed from: i */
    public final boolean mo555i(InterfaceC2408p interfaceC2408p) {
        return interfaceC2408p instanceof EnumC2393a ? interfaceC2408p == EnumC2393a.OFFSET_SECONDS : interfaceC2408p != null && interfaceC2408p.mo879s(this);
    }

    @Override // j$.time.temporal.InterfaceC2404l
    /* JADX INFO: renamed from: k */
    public final long mo556k(InterfaceC2408p interfaceC2408p) {
        if (interfaceC2408p == EnumC2393a.OFFSET_SECONDS) {
            return this.f650b;
        }
        if (interfaceC2408p instanceof EnumC2393a) {
            throw new C2410r(AbstractC2324b.m753a("Unsupported field: ", interfaceC2408p));
        }
        return interfaceC2408p.mo875R(this);
    }

    @Override // j$.time.ZoneId
    public final String toString() {
        return this.f651c;
    }
}
