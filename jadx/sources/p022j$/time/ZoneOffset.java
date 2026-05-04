package p022j$.time;

import java.io.DataInput;
import java.io.DataOutput;
import java.io.IOException;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import okhttp3.internal.url._UrlKt;
import org.mvel2.MVEL;
import p022j$.time.format.C2148a;
import p022j$.time.temporal.AbstractC2203r;
import p022j$.time.temporal.C2205t;
import p022j$.time.temporal.C2206u;
import p022j$.time.temporal.EnumC2186a;
import p022j$.time.temporal.InterfaceC2198m;
import p022j$.time.temporal.InterfaceC2199n;
import p022j$.time.temporal.InterfaceC2200o;
import p022j$.time.temporal.InterfaceC2202q;
import p022j$.time.zone.ZoneRules;
import p022j$.util.Objects;
import p022j$.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes2.dex */
public final class ZoneOffset extends ZoneId implements InterfaceC2199n, InterfaceC2200o, Comparable<ZoneOffset>, Serializable {
    private static final long serialVersionUID = 2357656521762053153L;

    /* JADX INFO: renamed from: b */
    public final int f662b;

    /* JADX INFO: renamed from: c */
    public final transient String f663c;

    /* JADX INFO: renamed from: d */
    public static final ConcurrentHashMap f658d = new ConcurrentHashMap(16, 0.75f, 4);

    /* JADX INFO: renamed from: e */
    public static final ConcurrentHashMap f659e = new ConcurrentHashMap(16, 0.75f, 4);
    public static final ZoneOffset UTC = m647H(0);

    /* JADX INFO: renamed from: f */
    public static final ZoneOffset f660f = m647H(-64800);

    /* JADX INFO: renamed from: g */
    public static final ZoneOffset f661g = m647H(64800);

    @Override // java.lang.Comparable
    public final int compareTo(ZoneOffset zoneOffset) {
        return zoneOffset.f662b - this.f662b;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00a0  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00a8  */
    /* JADX INFO: renamed from: F */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static ZoneOffset m645F(String str) {
        int iM648I;
        int iM648I2;
        int iM648I3;
        char cCharAt;
        Objects.requireNonNull(str, "offsetId");
        ZoneOffset zoneOffset = (ZoneOffset) f659e.get(str);
        if (zoneOffset != null) {
            return zoneOffset;
        }
        int length = str.length();
        if (length == 2) {
            str = str.charAt(0) + MVEL.VERSION_SUB + str.charAt(1);
        } else {
            if (length != 3) {
                if (length == 5) {
                    iM648I = m648I(str, 1, false);
                    iM648I2 = m648I(str, 3, false);
                } else if (length == 6) {
                    iM648I = m648I(str, 1, false);
                    iM648I2 = m648I(str, 4, true);
                } else if (length == 7) {
                    iM648I = m648I(str, 1, false);
                    iM648I2 = m648I(str, 3, false);
                    iM648I3 = m648I(str, 5, false);
                } else if (length == 9) {
                    iM648I = m648I(str, 1, false);
                    iM648I2 = m648I(str, 4, true);
                    iM648I3 = m648I(str, 7, true);
                } else {
                    throw new C2108b("Invalid ID for ZoneOffset, invalid format: ".concat(str));
                }
                iM648I3 = 0;
            }
            cCharAt = str.charAt(0);
            if (cCharAt == '+' && cCharAt != '-') {
                throw new C2108b("Invalid ID for ZoneOffset, plus/minus not found when expected: ".concat(str));
            }
            if (cCharAt != '-') {
                return m646G(-iM648I, -iM648I2, -iM648I3);
            }
            return m646G(iM648I, iM648I2, iM648I3);
        }
        iM648I = m648I(str, 1, false);
        iM648I2 = 0;
        iM648I3 = 0;
        cCharAt = str.charAt(0);
        if (cCharAt == '+') {
        }
        if (cCharAt != '-') {
        }
    }

    @Override // p022j$.time.ZoneId
    public final ZoneRules getRules() {
        Objects.requireNonNull(this, "offset");
        return new ZoneRules(this);
    }

    /* JADX INFO: renamed from: I */
    public static int m648I(CharSequence charSequence, int i, boolean z) {
        if (z) {
            String str = (String) charSequence;
            if (str.charAt(i - 1) != ':') {
                throw new C2108b("Invalid ID for ZoneOffset, colon not found when expected: " + ((Object) str));
            }
        }
        String str2 = (String) charSequence;
        char cCharAt = str2.charAt(i);
        char cCharAt2 = str2.charAt(i + 1);
        if (cCharAt >= '0' && cCharAt <= '9' && cCharAt2 >= '0' && cCharAt2 <= '9') {
            return (cCharAt2 - '0') + ((cCharAt - '0') * 10);
        }
        throw new C2108b("Invalid ID for ZoneOffset, non numeric characters found: " + ((Object) str2));
    }

    /* JADX INFO: renamed from: G */
    public static ZoneOffset m646G(int i, int i2, int i3) {
        if (i < -18 || i > 18) {
            throw new C2108b("Zone offset hours not in valid range: value " + i + " is not in the range -18 to 18");
        }
        if (i > 0) {
            if (i2 < 0 || i3 < 0) {
                throw new C2108b("Zone offset minutes and seconds must be positive because hours is positive");
            }
        } else if (i < 0) {
            if (i2 > 0 || i3 > 0) {
                throw new C2108b("Zone offset minutes and seconds must be negative because hours is negative");
            }
        } else if ((i2 > 0 && i3 < 0) || (i2 < 0 && i3 > 0)) {
            throw new C2108b("Zone offset minutes and seconds must have the same sign");
        }
        if (i2 < -59 || i2 > 59) {
            throw new C2108b("Zone offset minutes not in valid range: value " + i2 + " is not in the range -59 to 59");
        }
        if (i3 < -59 || i3 > 59) {
            throw new C2108b("Zone offset seconds not in valid range: value " + i3 + " is not in the range -59 to 59");
        }
        if (Math.abs(i) == 18 && (i2 | i3) != 0) {
            throw new C2108b("Zone offset not in valid range: -18:00 to +18:00");
        }
        return m647H((i2 * 60) + (i * 3600) + i3);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX INFO: renamed from: H */
    public static ZoneOffset m647H(int i) {
        if (i < -64800 || i > 64800) {
            throw new C2108b("Zone offset not in valid range: -18:00 to +18:00");
        }
        if (i % 900 == 0) {
            Integer numValueOf = Integer.valueOf(i);
            ConcurrentHashMap concurrentHashMap = f658d;
            ZoneOffset zoneOffset = (ZoneOffset) concurrentHashMap.get(numValueOf);
            if (zoneOffset != null) {
                return zoneOffset;
            }
            concurrentHashMap.putIfAbsent(numValueOf, new ZoneOffset(i));
            ZoneOffset zoneOffset2 = (ZoneOffset) concurrentHashMap.get(numValueOf);
            f659e.putIfAbsent(zoneOffset2.f663c, zoneOffset2);
            return zoneOffset2;
        }
        return new ZoneOffset(i);
    }

    public ZoneOffset(int i) {
        String string;
        this.f662b = i;
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
        this.f663c = string;
    }

    public int getTotalSeconds() {
        return this.f662b;
    }

    @Override // p022j$.time.ZoneId
    public final String getId() {
        return this.f663c;
    }

    @Override // p022j$.time.temporal.InterfaceC2199n
    /* JADX INFO: renamed from: e */
    public final boolean mo575e(InterfaceC2202q interfaceC2202q) {
        return interfaceC2202q instanceof EnumC2186a ? interfaceC2202q == EnumC2186a.OFFSET_SECONDS : interfaceC2202q != null && interfaceC2202q.mo769h(this);
    }

    @Override // p022j$.time.temporal.InterfaceC2199n
    /* JADX INFO: renamed from: j */
    public final C2206u mo577j(InterfaceC2202q interfaceC2202q) {
        return AbstractC2203r.m783d(this, interfaceC2202q);
    }

    @Override // p022j$.time.temporal.InterfaceC2199n
    /* JADX INFO: renamed from: h */
    public final int mo576h(InterfaceC2202q interfaceC2202q) {
        if (interfaceC2202q == EnumC2186a.OFFSET_SECONDS) {
            return this.f662b;
        }
        if (AbstractC2109c.m665b(interfaceC2202q)) {
            throw new C2205t(AbstractC2109c.m664a("Unsupported field: ", interfaceC2202q));
        }
        return AbstractC2203r.m783d(this, interfaceC2202q).m786a(mo580w(interfaceC2202q), interfaceC2202q);
    }

    @Override // p022j$.time.temporal.InterfaceC2199n
    /* JADX INFO: renamed from: w */
    public final long mo580w(InterfaceC2202q interfaceC2202q) {
        if (interfaceC2202q == EnumC2186a.OFFSET_SECONDS) {
            return this.f662b;
        }
        if (interfaceC2202q instanceof EnumC2186a) {
            throw new C2205t(AbstractC2109c.m664a("Unsupported field: ", interfaceC2202q));
        }
        return interfaceC2202q.mo772k(this);
    }

    @Override // p022j$.time.temporal.InterfaceC2199n
    /* JADX INFO: renamed from: k */
    public final Object mo578k(C2148a c2148a) {
        return (c2148a == AbstractC2203r.f848d || c2148a == AbstractC2203r.f849e) ? this : AbstractC2203r.m782c(this, c2148a);
    }

    @Override // p022j$.time.temporal.InterfaceC2200o
    /* JADX INFO: renamed from: n */
    public final InterfaceC2198m mo579n(InterfaceC2198m interfaceC2198m) {
        return interfaceC2198m.mo588c(this.f662b, EnumC2186a.OFFSET_SECONDS);
    }

    @Override // p022j$.time.ZoneId
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof ZoneOffset) && this.f662b == ((ZoneOffset) obj).f662b;
    }

    @Override // p022j$.time.ZoneId
    public final int hashCode() {
        return this.f662b;
    }

    @Override // p022j$.time.ZoneId
    public final String toString() {
        return this.f663c;
    }

    private Object writeReplace() {
        return new C2180o((byte) 8, this);
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    @Override // p022j$.time.ZoneId
    /* JADX INFO: renamed from: E */
    public final void mo644E(DataOutput dataOutput) throws IOException {
        dataOutput.writeByte(8);
        m650K(dataOutput);
    }

    /* JADX INFO: renamed from: K */
    public final void m650K(DataOutput dataOutput) throws IOException {
        int i = this.f662b;
        int i2 = i % 900 == 0 ? i / 900 : 127;
        dataOutput.writeByte(i2);
        if (i2 == 127) {
            dataOutput.writeInt(i);
        }
    }

    /* JADX INFO: renamed from: J */
    public static ZoneOffset m649J(DataInput dataInput) throws IOException {
        byte b = dataInput.readByte();
        return b == 127 ? m647H(dataInput.readInt()) : m647H(b * 900);
    }
}
