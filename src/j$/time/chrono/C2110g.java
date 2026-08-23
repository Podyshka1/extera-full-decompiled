package j$.time.chrono;

import j$.time.AbstractC2102b;
import j$.time.C2159g;
import j$.time.temporal.AbstractC2189q;
import j$.time.temporal.C2192t;
import j$.time.temporal.ChronoUnit;
import j$.time.temporal.EnumC2173a;
import j$.time.temporal.InterfaceC2187o;
import j$.time.temporal.Temporal;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;

/* JADX INFO: renamed from: j$.time.chrono.g */
/* JADX INFO: compiled from: r8-map-id-aec3840a64bd99e9b6e79ef11e6742e52cf8ea8118315f6a864397976aaae532 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2110g implements InterfaceC2187o, Serializable {

    /* JADX INFO: renamed from: e */
    public static final /* synthetic */ int f513e = 0;
    private static final long serialVersionUID = 57387258289L;

    /* JADX INFO: renamed from: a */
    public final InterfaceC2114k f514a;

    /* JADX INFO: renamed from: b */
    public final int f515b;

    /* JADX INFO: renamed from: c */
    public final int f516c;

    /* JADX INFO: renamed from: d */
    public final int f517d;

    static {
        AbstractC2102b.m567c(new Object[]{ChronoUnit.YEARS, ChronoUnit.MONTHS, ChronoUnit.DAYS});
    }

    public C2110g(InterfaceC2114k interfaceC2114k, int i, int i2, int i3) {
        this.f514a = interfaceC2114k;
        this.f515b = i;
        this.f516c = i2;
        this.f517d = i3;
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof C2110g) {
            C2110g c2110g = (C2110g) obj;
            if (this.f515b == c2110g.f515b && this.f516c == c2110g.f516c && this.f517d == c2110g.f517d && this.f514a.equals(c2110g.f514a)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return this.f514a.hashCode() ^ (Integer.rotateLeft(this.f517d, 16) + (Integer.rotateLeft(this.f516c, 8) + this.f515b));
    }

    @Override // j$.time.temporal.InterfaceC2187o
    /* JADX INFO: renamed from: t */
    public final Temporal mo490t(Temporal temporal) {
        InterfaceC2114k interfaceC2114k = (InterfaceC2114k) temporal.mo482d(AbstractC2189q.f698b);
        if (interfaceC2114k != null && !this.f514a.equals(interfaceC2114k)) {
            C2159g.m689f("Chronology mismatch, expected: ", this.f514a.getId(), ", actual: ", interfaceC2114k.getId());
            return null;
        }
        if (this.f516c == 0) {
            int i = this.f515b;
            if (i != 0) {
                temporal = temporal.mo497b(i, ChronoUnit.YEARS);
            }
        } else {
            C2192t c2192tMo604z = this.f514a.mo604z(EnumC2173a.MONTH_OF_YEAR);
            long j = (c2192tMo604z.f704a == c2192tMo604z.f705b && c2192tMo604z.f706c == c2192tMo604z.f707d && c2192tMo604z.m731d()) ? (c2192tMo604z.f707d - c2192tMo604z.f704a) + 1 : -1L;
            int i2 = this.f515b;
            if (j > 0) {
                temporal = temporal.mo497b((((long) i2) * j) + ((long) this.f516c), ChronoUnit.MONTHS);
            } else {
                if (i2 != 0) {
                    temporal = temporal.mo497b(i2, ChronoUnit.YEARS);
                }
                temporal = temporal.mo497b(this.f516c, ChronoUnit.MONTHS);
            }
        }
        int i3 = this.f517d;
        return i3 != 0 ? temporal.mo497b(i3, ChronoUnit.DAYS) : temporal;
    }

    public final String toString() {
        if (this.f515b == 0 && this.f516c == 0 && this.f517d == 0) {
            return this.f514a.toString() + " P0D";
        }
        StringBuilder sb = new StringBuilder();
        sb.append(this.f514a.toString());
        sb.append(" P");
        int i = this.f515b;
        if (i != 0) {
            sb.append(i);
            sb.append('Y');
        }
        int i2 = this.f516c;
        if (i2 != 0) {
            sb.append(i2);
            sb.append('M');
        }
        int i3 = this.f517d;
        if (i3 != 0) {
            sb.append(i3);
            sb.append('D');
        }
        return sb.toString();
    }

    public Object writeReplace() {
        return new d0((byte) 9, this);
    }
}
