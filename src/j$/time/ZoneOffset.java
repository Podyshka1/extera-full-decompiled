package j$.time;

import j$.time.temporal.AbstractC2189q;
import j$.time.temporal.C2191s;
import j$.time.temporal.EnumC2173a;
import j$.time.temporal.InterfaceC2184l;
import j$.time.temporal.InterfaceC2185m;
import j$.time.temporal.InterfaceC2188p;
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

/* JADX INFO: compiled from: r8-map-id-aec3840a64bd99e9b6e79ef11e6742e52cf8ea8118315f6a864397976aaae532 */
/* JADX INFO: loaded from: classes2.dex */
public final class ZoneOffset extends ZoneId implements InterfaceC2184l, InterfaceC2185m, Comparable<ZoneOffset>, Serializable {
    private static final long serialVersionUID = 2357656521762053153L;

    /* JADX INFO: renamed from: b */
    public final int f493b;

    /* JADX INFO: renamed from: c */
    public final transient String f494c;

    /* JADX INFO: renamed from: d */
    public static final ConcurrentMap f489d = new ConcurrentHashMap(16, 0.75f, 4);

    /* JADX INFO: renamed from: e */
    public static final ConcurrentMap f490e = new ConcurrentHashMap(16, 0.75f, 4);
    public static final ZoneOffset UTC = m549Z(0);

    /* JADX INFO: renamed from: f */
    public static final ZoneOffset f491f = m549Z(-64800);

    /* JADX INFO: renamed from: g */
    public static final ZoneOffset f492g = m549Z(64800);

    public ZoneOffset(int i) {
        String string;
        this.f493b = i;
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
        this.f494c = string;
    }

    /* JADX INFO: renamed from: V */
    public static ZoneOffset m546V(Temporal temporal) {
        Objects.requireNonNull(temporal, "temporal");
        ZoneOffset zoneOffset = (ZoneOffset) temporal.mo482d(AbstractC2189q.f700d);
        if (zoneOffset != null) {
            return zoneOffset;
        }
        C2159g.m689f("Unable to obtain ZoneOffset from TemporalAccessor: ", temporal, " of type ", temporal.getClass().getName());
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x009f  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00a7  */
    /* JADX INFO: renamed from: X */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static ZoneOffset m547X(String str) {
        int iA0;
        int iA02;
        int iA03;
        char cCharAt;
        Objects.requireNonNull(str, "offsetId");
        ZoneOffset zoneOffset = (ZoneOffset) ((ConcurrentHashMap) f490e).get(str);
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
                        C2159g.m684a("Invalid ID for ZoneOffset, invalid format: ".concat(str));
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
                return cCharAt != '-' ? m548Y(-iA0, -iA02, -iA03) : m548Y(iA0, iA02, iA03);
            }
            C2159g.m684a("Invalid ID for ZoneOffset, plus/minus not found when expected: ".concat(str));
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

    /* JADX INFO: renamed from: Y */
    public static ZoneOffset m548Y(int i, int i2, int i3) {
        if (i < -18 || i > 18) {
            C2159g.m686c("Zone offset hours not in valid range: value ", i, " is not in the range -18 to 18");
            return null;
        }
        if (i > 0) {
            if (i2 < 0 || i3 < 0) {
                C2159g.m684a("Zone offset minutes and seconds must be positive because hours is positive");
                return null;
            }
        } else if (i < 0) {
            if (i2 > 0 || i3 > 0) {
                C2159g.m684a("Zone offset minutes and seconds must be negative because hours is negative");
                return null;
            }
        } else if ((i2 > 0 && i3 < 0) || (i2 < 0 && i3 > 0)) {
            C2159g.m684a("Zone offset minutes and seconds must have the same sign");
            return null;
        }
        if (i2 < -59 || i2 > 59) {
            C2159g.m686c("Zone offset minutes not in valid range: value ", i2, " is not in the range -59 to 59");
            return null;
        }
        if (i3 < -59 || i3 > 59) {
            C2159g.m686c("Zone offset seconds not in valid range: value ", i3, " is not in the range -59 to 59");
            return null;
        }
        if (Math.abs(i) != 18 || (i2 | i3) == 0) {
            return m549Z((i2 * 60) + (i * 3600) + i3);
        }
        C2159g.m684a("Zone offset not in valid range: -18:00 to +18:00");
        return null;
    }

    /* JADX INFO: renamed from: Z */
    public static ZoneOffset m549Z(int i) {
        if (i < -64800 || i > 64800) {
            C2159g.m684a("Zone offset not in valid range: -18:00 to +18:00");
            return null;
        }
        if (i % 900 != 0) {
            return new ZoneOffset(i);
        }
        Integer numValueOf = Integer.valueOf(i);
        ConcurrentMap concurrentMap = f489d;
        ZoneOffset zoneOffset = (ZoneOffset) concurrentMap.get(numValueOf);
        if (zoneOffset != null) {
            return zoneOffset;
        }
        concurrentMap.putIfAbsent(numValueOf, new ZoneOffset(i));
        ZoneOffset zoneOffset2 = (ZoneOffset) concurrentMap.get(numValueOf);
        f490e.putIfAbsent(zoneOffset2.f494c, zoneOffset2);
        return zoneOffset2;
    }

    public static int a0(CharSequence charSequence, int i, boolean z) {
        if (z) {
            String str = (String) charSequence;
            if (str.charAt(i - 1) != ':') {
                C2159g.m692i("Invalid ID for ZoneOffset, colon not found when expected: ", str);
                return 0;
            }
        }
        String str2 = (String) charSequence;
        char cCharAt = str2.charAt(i);
        char cCharAt2 = str2.charAt(i + 1);
        if (cCharAt < '0' || cCharAt > '9' || cCharAt2 < '0' || cCharAt2 > '9') {
            C2159g.m692i("Invalid ID for ZoneOffset, non numeric characters found: ", str2);
            return 0;
        }
        return (cCharAt2 - '0') + ((cCharAt - '0') * 10);
    }

    public static ZoneOffset b0(DataInput dataInput) {
        byte b2 = dataInput.readByte();
        return b2 == 127 ? m549Z(dataInput.readInt()) : m549Z(b2 * 900);
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private Object writeReplace() {
        return new C2170r((byte) 8, this);
    }

    @Override // j$.time.ZoneId
    /* JADX INFO: renamed from: P */
    public final void mo545P(DataOutput dataOutput) throws IOException {
        dataOutput.writeByte(8);
        c0(dataOutput);
    }

    public final void c0(DataOutput dataOutput) {
        int i = this.f493b;
        int i2 = i % 900 == 0 ? i / 900 : 127;
        dataOutput.writeByte(i2);
        if (i2 == 127) {
            dataOutput.writeInt(i);
        }
    }

    @Override // java.lang.Comparable
    public final int compareTo(ZoneOffset zoneOffset) {
        return zoneOffset.f493b - this.f493b;
    }

    @Override // j$.time.temporal.InterfaceC2184l
    /* JADX INFO: renamed from: d */
    public final Object mo482d(C2196x c2196x) {
        return (c2196x == AbstractC2189q.f700d || c2196x == AbstractC2189q.f701e) ? this : super.mo482d(c2196x);
    }

    @Override // j$.time.temporal.InterfaceC2185m
    /* JADX INFO: renamed from: e */
    public final Temporal mo483e(Temporal temporal) {
        return temporal.mo496a(this.f493b, EnumC2173a.OFFSET_SECONDS);
    }

    @Override // j$.time.ZoneId
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof ZoneOffset) && this.f493b == ((ZoneOffset) obj).f493b;
    }

    @Override // j$.time.temporal.InterfaceC2184l
    /* JADX INFO: renamed from: g */
    public final int mo484g(InterfaceC2188p interfaceC2188p) {
        if (interfaceC2188p == EnumC2173a.OFFSET_SECONDS) {
            return this.f493b;
        }
        if (interfaceC2188p == null) {
            return super.mo487m(interfaceC2188p).m728a(mo486k(interfaceC2188p), interfaceC2188p);
        }
        throw new C2191s(AbstractC2130d.m629a("Unsupported field: ", interfaceC2188p));
    }

    @Override // j$.time.ZoneId
    public final String getId() {
        return this.f494c;
    }

    @Override // j$.time.ZoneId
    public final ZoneRules getRules() {
        return new ZoneRules(this);
    }

    public int getTotalSeconds() {
        return this.f493b;
    }

    @Override // j$.time.ZoneId
    public final int hashCode() {
        return this.f493b;
    }

    @Override // j$.time.temporal.InterfaceC2184l
    /* JADX INFO: renamed from: i */
    public final boolean mo485i(InterfaceC2188p interfaceC2188p) {
        return interfaceC2188p instanceof EnumC2173a ? interfaceC2188p == EnumC2173a.OFFSET_SECONDS : interfaceC2188p != null && interfaceC2188p.mo721t(this);
    }

    @Override // j$.time.temporal.InterfaceC2184l
    /* JADX INFO: renamed from: k */
    public final long mo486k(InterfaceC2188p interfaceC2188p) {
        if (interfaceC2188p == EnumC2173a.OFFSET_SECONDS) {
            return this.f493b;
        }
        if (interfaceC2188p instanceof EnumC2173a) {
            throw new C2191s(AbstractC2130d.m629a("Unsupported field: ", interfaceC2188p));
        }
        return interfaceC2188p.mo717P(this);
    }

    @Override // j$.time.ZoneId
    public final String toString() {
        return this.f494c;
    }
}
