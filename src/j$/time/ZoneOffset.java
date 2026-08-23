package j$.time;

import j$.time.format.C2009a;
import j$.time.temporal.AbstractC2064r;
import j$.time.temporal.C2066t;
import j$.time.temporal.C2067u;
import j$.time.temporal.EnumC2047a;
import j$.time.temporal.InterfaceC2059m;
import j$.time.temporal.InterfaceC2060n;
import j$.time.temporal.InterfaceC2061o;
import j$.time.temporal.InterfaceC2063q;
import j$.time.zone.ZoneRules;
import j$.util.Objects;
import j$.util.concurrent.ConcurrentHashMap;
import java.io.DataInput;
import java.io.DataOutput;
import java.io.IOException;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import okhttp3.internal.url._UrlKt;
import org.mvel2.MVEL;

/* JADX INFO: loaded from: classes2.dex */
public final class ZoneOffset extends ZoneId implements InterfaceC2060n, InterfaceC2061o, Comparable<ZoneOffset>, Serializable {
    private static final long serialVersionUID = 2357656521762053153L;

    /* JADX INFO: renamed from: b */
    public final int f430b;

    /* JADX INFO: renamed from: c */
    public final transient String f431c;

    /* JADX INFO: renamed from: d */
    public static final ConcurrentHashMap f426d = new ConcurrentHashMap(16, 0.75f, 4);

    /* JADX INFO: renamed from: e */
    public static final ConcurrentHashMap f427e = new ConcurrentHashMap(16, 0.75f, 4);
    public static final ZoneOffset UTC = m524H(0);

    /* JADX INFO: renamed from: f */
    public static final ZoneOffset f428f = m524H(-64800);

    /* JADX INFO: renamed from: g */
    public static final ZoneOffset f429g = m524H(64800);

    @Override // java.lang.Comparable
    public final int compareTo(ZoneOffset zoneOffset) {
        return zoneOffset.f430b - this.f430b;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00a0  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00a8  */
    /* JADX INFO: renamed from: F */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static ZoneOffset m522F(String str) {
        int iM525I;
        int iM525I2;
        int iM525I3;
        char cCharAt;
        Objects.requireNonNull(str, "offsetId");
        ZoneOffset zoneOffset = (ZoneOffset) f427e.get(str);
        if (zoneOffset != null) {
            return zoneOffset;
        }
        int length = str.length();
        if (length == 2) {
            str = str.charAt(0) + MVEL.VERSION_SUB + str.charAt(1);
        } else {
            if (length != 3) {
                if (length == 5) {
                    iM525I = m525I(str, 1, false);
                    iM525I2 = m525I(str, 3, false);
                } else if (length == 6) {
                    iM525I = m525I(str, 1, false);
                    iM525I2 = m525I(str, 4, true);
                } else if (length == 7) {
                    iM525I = m525I(str, 1, false);
                    iM525I2 = m525I(str, 3, false);
                    iM525I3 = m525I(str, 5, false);
                } else if (length == 9) {
                    iM525I = m525I(str, 1, false);
                    iM525I2 = m525I(str, 4, true);
                    iM525I3 = m525I(str, 7, true);
                } else {
                    throw new C1969b("Invalid ID for ZoneOffset, invalid format: ".concat(str));
                }
                iM525I3 = 0;
            }
            cCharAt = str.charAt(0);
            if (cCharAt == '+' && cCharAt != '-') {
                throw new C1969b("Invalid ID for ZoneOffset, plus/minus not found when expected: ".concat(str));
            }
            if (cCharAt != '-') {
                return m523G(-iM525I, -iM525I2, -iM525I3);
            }
            return m523G(iM525I, iM525I2, iM525I3);
        }
        iM525I = m525I(str, 1, false);
        iM525I2 = 0;
        iM525I3 = 0;
        cCharAt = str.charAt(0);
        if (cCharAt == '+') {
        }
        if (cCharAt != '-') {
        }
    }

    @Override // j$.time.ZoneId
    public final ZoneRules getRules() {
        Objects.requireNonNull(this, "offset");
        return new ZoneRules(this);
    }

    /* JADX INFO: renamed from: I */
    public static int m525I(CharSequence charSequence, int i, boolean z) {
        if (z) {
            String str = (String) charSequence;
            if (str.charAt(i - 1) != ':') {
                throw new C1969b("Invalid ID for ZoneOffset, colon not found when expected: " + ((Object) str));
            }
        }
        String str2 = (String) charSequence;
        char cCharAt = str2.charAt(i);
        char cCharAt2 = str2.charAt(i + 1);
        if (cCharAt >= '0' && cCharAt <= '9' && cCharAt2 >= '0' && cCharAt2 <= '9') {
            return (cCharAt2 - '0') + ((cCharAt - '0') * 10);
        }
        throw new C1969b("Invalid ID for ZoneOffset, non numeric characters found: " + ((Object) str2));
    }

    /* JADX INFO: renamed from: G */
    public static ZoneOffset m523G(int i, int i2, int i3) {
        if (i < -18 || i > 18) {
            throw new C1969b("Zone offset hours not in valid range: value " + i + " is not in the range -18 to 18");
        }
        if (i > 0) {
            if (i2 < 0 || i3 < 0) {
                throw new C1969b("Zone offset minutes and seconds must be positive because hours is positive");
            }
        } else if (i < 0) {
            if (i2 > 0 || i3 > 0) {
                throw new C1969b("Zone offset minutes and seconds must be negative because hours is negative");
            }
        } else if ((i2 > 0 && i3 < 0) || (i2 < 0 && i3 > 0)) {
            throw new C1969b("Zone offset minutes and seconds must have the same sign");
        }
        if (i2 < -59 || i2 > 59) {
            throw new C1969b("Zone offset minutes not in valid range: value " + i2 + " is not in the range -59 to 59");
        }
        if (i3 < -59 || i3 > 59) {
            throw new C1969b("Zone offset seconds not in valid range: value " + i3 + " is not in the range -59 to 59");
        }
        if (Math.abs(i) == 18 && (i2 | i3) != 0) {
            throw new C1969b("Zone offset not in valid range: -18:00 to +18:00");
        }
        return m524H((i2 * 60) + (i * 3600) + i3);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX INFO: renamed from: H */
    public static ZoneOffset m524H(int i) {
        if (i < -64800 || i > 64800) {
            throw new C1969b("Zone offset not in valid range: -18:00 to +18:00");
        }
        if (i % 900 == 0) {
            Integer numValueOf = Integer.valueOf(i);
            ConcurrentHashMap concurrentHashMap = f426d;
            ZoneOffset zoneOffset = (ZoneOffset) concurrentHashMap.get(numValueOf);
            if (zoneOffset != null) {
                return zoneOffset;
            }
            concurrentHashMap.putIfAbsent(numValueOf, new ZoneOffset(i));
            ZoneOffset zoneOffset2 = (ZoneOffset) concurrentHashMap.get(numValueOf);
            f427e.putIfAbsent(zoneOffset2.f431c, zoneOffset2);
            return zoneOffset2;
        }
        return new ZoneOffset(i);
    }

    public ZoneOffset(int i) {
        String string;
        this.f430b = i;
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
        this.f431c = string;
    }

    public int getTotalSeconds() {
        return this.f430b;
    }

    @Override // j$.time.ZoneId
    public final String getId() {
        return this.f431c;
    }

    @Override // j$.time.temporal.InterfaceC2060n
    /* JADX INFO: renamed from: e */
    public final boolean mo455e(InterfaceC2063q interfaceC2063q) {
        return interfaceC2063q instanceof EnumC2047a ? interfaceC2063q == EnumC2047a.OFFSET_SECONDS : interfaceC2063q != null && interfaceC2063q.mo644h(this);
    }

    @Override // j$.time.temporal.InterfaceC2060n
    /* JADX INFO: renamed from: j */
    public final C2067u mo457j(InterfaceC2063q interfaceC2063q) {
        return AbstractC2064r.m658d(this, interfaceC2063q);
    }

    @Override // j$.time.temporal.InterfaceC2060n
    /* JADX INFO: renamed from: h */
    public final int mo456h(InterfaceC2063q interfaceC2063q) {
        if (interfaceC2063q == EnumC2047a.OFFSET_SECONDS) {
            return this.f430b;
        }
        if (AbstractC1970c.m542b(interfaceC2063q)) {
            throw new C2066t(AbstractC1970c.m541a("Unsupported field: ", interfaceC2063q));
        }
        return AbstractC2064r.m658d(this, interfaceC2063q).m661a(mo460w(interfaceC2063q), interfaceC2063q);
    }

    @Override // j$.time.temporal.InterfaceC2060n
    /* JADX INFO: renamed from: w */
    public final long mo460w(InterfaceC2063q interfaceC2063q) {
        if (interfaceC2063q == EnumC2047a.OFFSET_SECONDS) {
            return this.f430b;
        }
        if (interfaceC2063q instanceof EnumC2047a) {
            throw new C2066t(AbstractC1970c.m541a("Unsupported field: ", interfaceC2063q));
        }
        return interfaceC2063q.mo647k(this);
    }

    @Override // j$.time.temporal.InterfaceC2060n
    /* JADX INFO: renamed from: k */
    public final Object mo458k(C2009a c2009a) {
        return (c2009a == AbstractC2064r.f613d || c2009a == AbstractC2064r.f614e) ? this : AbstractC2064r.m657c(this, c2009a);
    }

    @Override // j$.time.temporal.InterfaceC2061o
    /* JADX INFO: renamed from: n */
    public final InterfaceC2059m mo459n(InterfaceC2059m interfaceC2059m) {
        return interfaceC2059m.mo468c(this.f430b, EnumC2047a.OFFSET_SECONDS);
    }

    @Override // j$.time.ZoneId
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof ZoneOffset) && this.f430b == ((ZoneOffset) obj).f430b;
    }

    @Override // j$.time.ZoneId
    public final int hashCode() {
        return this.f430b;
    }

    @Override // j$.time.ZoneId
    public final String toString() {
        return this.f431c;
    }

    private Object writeReplace() {
        return new C2041o((byte) 8, this);
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    @Override // j$.time.ZoneId
    /* JADX INFO: renamed from: E */
    public final void mo521E(DataOutput dataOutput) throws IOException {
        dataOutput.writeByte(8);
        m527K(dataOutput);
    }

    /* JADX INFO: renamed from: K */
    public final void m527K(DataOutput dataOutput) throws IOException {
        int i = this.f430b;
        int i2 = i % 900 == 0 ? i / 900 : 127;
        dataOutput.writeByte(i2);
        if (i2 == 127) {
            dataOutput.writeInt(i);
        }
    }

    /* JADX INFO: renamed from: J */
    public static ZoneOffset m526J(DataInput dataInput) throws IOException {
        byte b = dataInput.readByte();
        return b == 127 ? m524H(dataInput.readInt()) : m524H(b * 900);
    }
}
