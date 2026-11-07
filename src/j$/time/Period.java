package j$.time;

import j$.desugar.sun.nio.fs.AbstractC2248g;
import j$.time.chrono.C2343r;
import j$.time.chrono.InterfaceC2336k;
import j$.time.temporal.AbstractC2409q;
import j$.time.temporal.ChronoUnit;
import j$.time.temporal.InterfaceC2407o;
import j$.time.temporal.Temporal;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.regex.Pattern;

/* JADX INFO: compiled from: r8-map-id-4910828a8dc56cbd751d74065856ac3a183dfd4d6dbda867057afff82c304930 */
/* JADX INFO: loaded from: classes2.dex */
public final class Period implements InterfaceC2407o, Serializable {

    /* JADX INFO: renamed from: d */
    public static final Period f636d = new Period(0, 0, 0);
    private static final long serialVersionUID = -3587258372562876L;

    /* JADX INFO: renamed from: a */
    public final int f637a;

    /* JADX INFO: renamed from: b */
    public final int f638b;

    /* JADX INFO: renamed from: c */
    public final int f639c;

    static {
        Pattern.compile("([-+]?)P(?:([-+]?[0-9]+)Y)?(?:([-+]?[0-9]+)M)?(?:([-+]?[0-9]+)W)?(?:([-+]?[0-9]+)D)?", 2);
        AbstractC2248g.m543p(new Object[]{ChronoUnit.YEARS, ChronoUnit.MONTHS, ChronoUnit.DAYS});
    }

    public Period(int i, int i2, int i3) {
        this.f637a = i;
        this.f638b = i2;
        this.f639c = i3;
    }

    /* JADX INFO: renamed from: a */
    public static Period m722a(int i, int i2, int i3) {
        return ((i | i2) | i3) == 0 ? f636d : new Period(i, i2, i3);
    }

    public static Period between(LocalDate localDate, LocalDate localDate2) {
        localDate.getClass();
        LocalDate localDateM682I = LocalDate.m682I(localDate2);
        long jM690Y = localDateM682I.m690Y() - localDate.m690Y();
        int iB0 = localDateM682I.f614c - localDate.f614c;
        if (jM690Y > 0 && iB0 < 0) {
            jM690Y--;
            iB0 = (int) (localDateM682I.toEpochDay() - localDate.h0(jM690Y).toEpochDay());
        } else if (jM690Y < 0 && iB0 > 0) {
            jM690Y++;
            iB0 -= localDateM682I.b0();
        }
        return of(Math.toIntExact(jM690Y / 12), (int) (jM690Y % 12), iB0);
    }

    public static Period of(int i, int i2, int i3) {
        return m722a(i, i2, i3);
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private Object writeReplace() {
        return new C2388n((byte) 14, this);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof Period) {
            Period period = (Period) obj;
            if (this.f637a == period.f637a && this.f638b == period.f638b && this.f639c == period.f639c) {
                return true;
            }
        }
        return false;
    }

    public int getDays() {
        return this.f639c;
    }

    public int getMonths() {
        return this.f638b;
    }

    public int getYears() {
        return this.f637a;
    }

    public final int hashCode() {
        return Integer.rotateLeft(this.f639c, 16) + Integer.rotateLeft(this.f638b, 8) + this.f637a;
    }

    @Override // j$.time.temporal.InterfaceC2407o
    /* JADX INFO: renamed from: s */
    public final Temporal mo670s(Temporal temporal) {
        InterfaceC2336k interfaceC2336k = (InterfaceC2336k) temporal.mo554d(AbstractC2409q.f850b);
        if (interfaceC2336k != null && !C2343r.f701c.equals(interfaceC2336k)) {
            throw new DateTimeException("Chronology mismatch, expected: ISO, actual: " + interfaceC2336k.getId());
        }
        int i = this.f638b;
        int i2 = this.f637a;
        if (i != 0) {
            long j = (((long) i2) * 12) + ((long) i);
            if (j != 0) {
                temporal = temporal.mo677b(j, ChronoUnit.MONTHS);
            }
        } else if (i2 != 0) {
            temporal = temporal.mo677b(i2, ChronoUnit.YEARS);
        }
        int i3 = this.f639c;
        return i3 != 0 ? temporal.mo677b(i3, ChronoUnit.DAYS) : temporal;
    }

    public final String toString() {
        if (this == f636d) {
            return "P0D";
        }
        StringBuilder sb = new StringBuilder("P");
        int i = this.f637a;
        if (i != 0) {
            sb.append(i);
            sb.append('Y');
        }
        int i2 = this.f638b;
        if (i2 != 0) {
            sb.append(i2);
            sb.append('M');
        }
        int i3 = this.f639c;
        if (i3 != 0) {
            sb.append(i3);
            sb.append('D');
        }
        return sb.toString();
    }
}
