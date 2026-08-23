package j$.time;

import j$.time.chrono.C2121r;
import j$.time.chrono.InterfaceC2114k;
import j$.time.temporal.AbstractC2189q;
import j$.time.temporal.ChronoUnit;
import j$.time.temporal.InterfaceC2187o;
import j$.time.temporal.Temporal;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.regex.Pattern;

/* JADX INFO: compiled from: r8-map-id-aec3840a64bd99e9b6e79ef11e6742e52cf8ea8118315f6a864397976aaae532 */
/* JADX INFO: loaded from: classes2.dex */
public final class Period implements InterfaceC2187o, Serializable {

    /* JADX INFO: renamed from: d */
    public static final Period f481d = new Period(0, 0, 0);
    private static final long serialVersionUID = -3587258372562876L;

    /* JADX INFO: renamed from: a */
    public final int f482a;

    /* JADX INFO: renamed from: b */
    public final int f483b;

    /* JADX INFO: renamed from: c */
    public final int f484c;

    static {
        Pattern.compile("([-+]?)P(?:([-+]?[0-9]+)Y)?(?:([-+]?[0-9]+)M)?(?:([-+]?[0-9]+)W)?(?:([-+]?[0-9]+)D)?", 2);
        AbstractC2102b.m567c(new Object[]{ChronoUnit.YEARS, ChronoUnit.MONTHS, ChronoUnit.DAYS});
    }

    public Period(int i, int i2, int i3) {
        this.f482a = i;
        this.f483b = i2;
        this.f484c = i3;
    }

    /* JADX INFO: renamed from: a */
    public static Period m534a(int i, int i2, int i3) {
        return ((i | i2) | i3) == 0 ? f481d : new Period(i, i2, i3);
    }

    public static Period between(LocalDate localDate, LocalDate localDate2) {
        localDate.getClass();
        LocalDate localDateM502G = LocalDate.m502G(localDate2);
        long jM511X = localDateM502G.m511X() - localDate.m511X();
        int iA0 = localDateM502G.f473c - localDate.f473c;
        if (jM511X > 0 && iA0 < 0) {
            jM511X--;
            iA0 = (int) (localDateM502G.mo504J() - localDate.g0(jM511X).mo504J());
        } else if (jM511X < 0 && iA0 > 0) {
            jM511X++;
            iA0 -= localDateM502G.a0();
        }
        return m534a(Math.toIntExact(jM511X / 12), (int) (jM511X % 12), iA0);
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private Object writeReplace() {
        return new C2170r((byte) 14, this);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof Period) {
            Period period = (Period) obj;
            if (this.f482a == period.f482a && this.f483b == period.f483b && this.f484c == period.f484c) {
                return true;
            }
        }
        return false;
    }

    public int getYears() {
        return this.f482a;
    }

    public final int hashCode() {
        return Integer.rotateLeft(this.f484c, 16) + Integer.rotateLeft(this.f483b, 8) + this.f482a;
    }

    @Override // j$.time.temporal.InterfaceC2187o
    /* JADX INFO: renamed from: t */
    public final Temporal mo490t(Temporal temporal) {
        InterfaceC2114k interfaceC2114k = (InterfaceC2114k) temporal.mo482d(AbstractC2189q.f698b);
        if (interfaceC2114k != null && !C2121r.f543c.equals(interfaceC2114k)) {
            throw new C2103c("Chronology mismatch, expected: ISO, actual: " + interfaceC2114k.getId());
        }
        int i = this.f483b;
        int i2 = this.f482a;
        if (i != 0) {
            long j = (((long) i2) * 12) + ((long) i);
            if (j != 0) {
                temporal = temporal.mo497b(j, ChronoUnit.MONTHS);
            }
        } else if (i2 != 0) {
            temporal = temporal.mo497b(i2, ChronoUnit.YEARS);
        }
        int i3 = this.f484c;
        return i3 != 0 ? temporal.mo497b(i3, ChronoUnit.DAYS) : temporal;
    }

    public final String toString() {
        if (this == f481d) {
            return "P0D";
        }
        StringBuilder sb = new StringBuilder("P");
        int i = this.f482a;
        if (i != 0) {
            sb.append(i);
            sb.append('Y');
        }
        int i2 = this.f483b;
        if (i2 != 0) {
            sb.append(i2);
            sb.append('M');
        }
        int i3 = this.f484c;
        if (i3 != 0) {
            sb.append(i3);
            sb.append('D');
        }
        return sb.toString();
    }
}
