package j$.time;

import j$.nio.file.C2148b;
import j$.time.temporal.AbstractC2270q;
import j$.time.temporal.C2271r;
import j$.time.temporal.EnumC2254a;
import j$.time.temporal.InterfaceC2265l;
import j$.time.temporal.InterfaceC2266m;
import j$.time.temporal.InterfaceC2269p;
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

/* JADX INFO: compiled from: r8-map-id-d770cecce19e13e7204002895f1f3846e7cae954646f7ef2982ee0cbc1d920c0 */
/* JADX INFO: loaded from: classes2.dex */
public final class ZoneOffset extends ZoneId implements InterfaceC2265l, InterfaceC2266m, Comparable<ZoneOffset>, Serializable {
    private static final long serialVersionUID = 2357656521762053153L;

    /* JADX INFO: renamed from: b */
    public final int f649b;

    /* JADX INFO: renamed from: c */
    public final transient String f650c;

    /* JADX INFO: renamed from: d */
    public static final ConcurrentMap f645d = new ConcurrentHashMap(16, 0.75f, 4);

    /* JADX INFO: renamed from: e */
    public static final ConcurrentMap f646e = new ConcurrentHashMap(16, 0.75f, 4);
    public static final ZoneOffset UTC = ofTotalSeconds(0);

    /* JADX INFO: renamed from: f */
    public static final ZoneOffset f647f = ofTotalSeconds(-64800);

    /* JADX INFO: renamed from: g */
    public static final ZoneOffset f648g = ofTotalSeconds(64800);

    public ZoneOffset(int i) {
        String string;
        this.f649b = i;
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
        this.f650c = string;
    }

    /* JADX INFO: renamed from: Y */
    public static ZoneOffset m707Y(Temporal temporal) {
        Objects.requireNonNull(temporal, "temporal");
        ZoneOffset zoneOffset = (ZoneOffset) temporal.mo530d(AbstractC2270q.f850d);
        if (zoneOffset != null) {
            return zoneOffset;
        }
        C2148b.m613f("Unable to obtain ZoneOffset from TemporalAccessor: ", temporal, " of type ", temporal.getClass().getName());
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x009f  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00a7  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static ZoneOffset a0(String str) {
        int iC0;
        int iC02;
        int iC03;
        char cCharAt;
        Objects.requireNonNull(str, "offsetId");
        ZoneOffset zoneOffset = (ZoneOffset) ((ConcurrentHashMap) f646e).get(str);
        if (zoneOffset != null) {
            return zoneOffset;
        }
        int length = str.length();
        if (length != 2) {
            if (length != 3) {
                if (length == 5) {
                    iC0 = c0(str, 1, false);
                    iC02 = c0(str, 3, false);
                } else if (length == 6) {
                    iC0 = c0(str, 1, false);
                    iC02 = c0(str, 4, true);
                } else if (length == 7) {
                    iC0 = c0(str, 1, false);
                    iC02 = c0(str, 3, false);
                    iC03 = c0(str, 5, false);
                } else {
                    if (length != 9) {
                        C2148b.m615h("Invalid ID for ZoneOffset, invalid format: ".concat(str));
                        return null;
                    }
                    iC0 = c0(str, 1, false);
                    iC02 = c0(str, 4, true);
                    iC03 = c0(str, 7, true);
                }
                iC03 = 0;
            }
            cCharAt = str.charAt(0);
            if (cCharAt != '+' || cCharAt == '-') {
                return cCharAt != '-' ? b0(-iC0, -iC02, -iC03) : b0(iC0, iC02, iC03);
            }
            C2148b.m615h("Invalid ID for ZoneOffset, plus/minus not found when expected: ".concat(str));
            return null;
        }
        str = str.charAt(0) + MVEL.VERSION_SUB + str.charAt(1);
        iC0 = c0(str, 1, false);
        iC02 = 0;
        iC03 = 0;
        cCharAt = str.charAt(0);
        if (cCharAt != '+') {
        }
        if (cCharAt != '-') {
        }
    }

    public static ZoneOffset b0(int i, int i2, int i3) {
        if (i < -18 || i > 18) {
            C2148b.m610c("Zone offset hours not in valid range: value ", i, " is not in the range -18 to 18");
            return null;
        }
        if (i > 0) {
            if (i2 < 0 || i3 < 0) {
                C2148b.m615h("Zone offset minutes and seconds must be positive because hours is positive");
                return null;
            }
        } else if (i < 0) {
            if (i2 > 0 || i3 > 0) {
                C2148b.m615h("Zone offset minutes and seconds must be negative because hours is negative");
                return null;
            }
        } else if ((i2 > 0 && i3 < 0) || (i2 < 0 && i3 > 0)) {
            C2148b.m615h("Zone offset minutes and seconds must have the same sign");
            return null;
        }
        if (i2 < -59 || i2 > 59) {
            C2148b.m610c("Zone offset minutes not in valid range: value ", i2, " is not in the range -59 to 59");
            return null;
        }
        if (i3 < -59 || i3 > 59) {
            C2148b.m610c("Zone offset seconds not in valid range: value ", i3, " is not in the range -59 to 59");
            return null;
        }
        if (Math.abs(i) != 18 || (i2 | i3) == 0) {
            return ofTotalSeconds((i2 * 60) + (i * 3600) + i3);
        }
        C2148b.m615h("Zone offset not in valid range: -18:00 to +18:00");
        return null;
    }

    public static int c0(CharSequence charSequence, int i, boolean z) {
        if (z) {
            String str = (String) charSequence;
            if (str.charAt(i - 1) != ':') {
                C2148b.m617j("Invalid ID for ZoneOffset, colon not found when expected: ", str);
                return 0;
            }
        }
        String str2 = (String) charSequence;
        char cCharAt = str2.charAt(i);
        char cCharAt2 = str2.charAt(i + 1);
        if (cCharAt < '0' || cCharAt > '9' || cCharAt2 < '0' || cCharAt2 > '9') {
            C2148b.m617j("Invalid ID for ZoneOffset, non numeric characters found: ", str2);
            return 0;
        }
        return (cCharAt2 - '0') + ((cCharAt - '0') * 10);
    }

    public static ZoneOffset d0(DataInput dataInput) {
        byte b2 = dataInput.readByte();
        return b2 == 127 ? ofTotalSeconds(dataInput.readInt()) : ofTotalSeconds(b2 * 900);
    }

    public static ZoneOffset ofTotalSeconds(int i) {
        if (i < -64800 || i > 64800) {
            C2148b.m615h("Zone offset not in valid range: -18:00 to +18:00");
            return null;
        }
        if (i % 900 != 0) {
            return new ZoneOffset(i);
        }
        Integer numValueOf = Integer.valueOf(i);
        ConcurrentMap concurrentMap = f645d;
        ZoneOffset zoneOffset = (ZoneOffset) ((ConcurrentHashMap) concurrentMap).get(numValueOf);
        if (zoneOffset != null) {
            return zoneOffset;
        }
        ((ConcurrentHashMap) concurrentMap).putIfAbsent(numValueOf, new ZoneOffset(i));
        ZoneOffset zoneOffset2 = (ZoneOffset) ((ConcurrentHashMap) concurrentMap).get(numValueOf);
        ((ConcurrentHashMap) f646e).putIfAbsent(zoneOffset2.f650c, zoneOffset2);
        return zoneOffset2;
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private Object writeReplace() {
        return new C2249o((byte) 8, this);
    }

    @Override // j$.time.ZoneId
    /* JADX INFO: renamed from: S */
    public final void mo706S(DataOutput dataOutput) throws IOException {
        dataOutput.writeByte(8);
        e0(dataOutput);
    }

    @Override // java.lang.Comparable
    public final int compareTo(ZoneOffset zoneOffset) {
        return zoneOffset.f649b - this.f649b;
    }

    @Override // j$.time.temporal.InterfaceC2265l
    /* JADX INFO: renamed from: d */
    public final Object mo530d(C2213e c2213e) {
        return (c2213e == AbstractC2270q.f850d || c2213e == AbstractC2270q.f851e) ? this : super.mo530d(c2213e);
    }

    @Override // j$.time.temporal.InterfaceC2266m
    /* JADX INFO: renamed from: e */
    public final Temporal mo641e(Temporal temporal) {
        return temporal.mo652a(this.f649b, EnumC2254a.OFFSET_SECONDS);
    }

    public final void e0(DataOutput dataOutput) {
        int i = this.f649b;
        int i2 = i % 900 == 0 ? i / 900 : 127;
        dataOutput.writeByte(i2);
        if (i2 == 127) {
            dataOutput.writeInt(i);
        }
    }

    @Override // j$.time.ZoneId
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof ZoneOffset) && this.f649b == ((ZoneOffset) obj).f649b;
    }

    @Override // j$.time.temporal.InterfaceC2265l
    /* JADX INFO: renamed from: g */
    public final int mo642g(InterfaceC2269p interfaceC2269p) {
        if (interfaceC2269p == EnumC2254a.OFFSET_SECONDS) {
            return this.f649b;
        }
        if (interfaceC2269p == null) {
            return super.mo643l(interfaceC2269p).m837a(mo532k(interfaceC2269p), interfaceC2269p);
        }
        throw new C2271r(AbstractC2185c.m719a("Unsupported field: ", interfaceC2269p));
    }

    @Override // j$.time.ZoneId
    public final String getId() {
        return this.f650c;
    }

    @Override // j$.time.ZoneId
    public final ZoneRules getRules() {
        return new ZoneRules(this);
    }

    public int getTotalSeconds() {
        return this.f649b;
    }

    @Override // j$.time.ZoneId
    public final int hashCode() {
        return this.f649b;
    }

    @Override // j$.time.temporal.InterfaceC2265l
    /* JADX INFO: renamed from: i */
    public final boolean mo531i(InterfaceC2269p interfaceC2269p) {
        return interfaceC2269p instanceof EnumC2254a ? interfaceC2269p == EnumC2254a.OFFSET_SECONDS : interfaceC2269p != null && interfaceC2269p.mo833s(this);
    }

    @Override // j$.time.temporal.InterfaceC2265l
    /* JADX INFO: renamed from: k */
    public final long mo532k(InterfaceC2269p interfaceC2269p) {
        if (interfaceC2269p == EnumC2254a.OFFSET_SECONDS) {
            return this.f649b;
        }
        if (interfaceC2269p instanceof EnumC2254a) {
            throw new C2271r(AbstractC2185c.m719a("Unsupported field: ", interfaceC2269p));
        }
        return interfaceC2269p.mo831S(this);
    }

    @Override // j$.time.ZoneId
    public final String toString() {
        return this.f650c;
    }
}
