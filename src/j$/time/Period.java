package j$.time;

import j$.desugar.sun.nio.fs.AbstractC2108g;
import j$.time.chrono.C2203r;
import j$.time.chrono.InterfaceC2196k;
import j$.time.temporal.AbstractC2270q;
import j$.time.temporal.ChronoUnit;
import j$.time.temporal.InterfaceC2268o;
import j$.time.temporal.Temporal;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.regex.Pattern;

/* JADX INFO: compiled from: r8-map-id-d770cecce19e13e7204002895f1f3846e7cae954646f7ef2982ee0cbc1d920c0 */
/* JADX INFO: loaded from: classes2.dex */
public final class Period implements InterfaceC2268o, Serializable {

    /* JADX INFO: renamed from: d */
    public static final Period f635d = new Period(0, 0, 0);
    private static final long serialVersionUID = -3587258372562876L;

    /* JADX INFO: renamed from: a */
    public final int f636a;

    /* JADX INFO: renamed from: b */
    public final int f637b;

    /* JADX INFO: renamed from: c */
    public final int f638c;

    static {
        Pattern.compile("([-+]?)P(?:([-+]?[0-9]+)Y)?(?:([-+]?[0-9]+)M)?(?:([-+]?[0-9]+)W)?(?:([-+]?[0-9]+)D)?", 2);
        AbstractC2108g.m519p(new Object[]{ChronoUnit.YEARS, ChronoUnit.MONTHS, ChronoUnit.DAYS});
    }

    public Period(int i, int i2, int i3) {
        this.f636a = i;
        this.f637b = i2;
        this.f638c = i3;
    }

    /* JADX INFO: renamed from: a */
    public static Period m692a(int i, int i2, int i3) {
        return ((i | i2) | i3) == 0 ? f635d : new Period(i, i2, i3);
    }

    public static Period between(LocalDate localDate, LocalDate localDate2) {
        localDate.getClass();
        LocalDate localDateM658I = LocalDate.m658I(localDate2);
        long jA0 = localDateM658I.a0() - localDate.a0();
        int iD0 = localDateM658I.f613c - localDate.f613c;
        if (jA0 > 0 && iD0 < 0) {
            jA0--;
            iD0 = (int) (localDateM658I.mo660L() - localDate.j0(jA0).mo660L());
        } else if (jA0 < 0 && iD0 > 0) {
            jA0++;
            iD0 -= localDateM658I.d0();
        }
        return of(Math.toIntExact(jA0 / 12), (int) (jA0 % 12), iD0);
    }

    public static Period of(int i, int i2, int i3) {
        return m692a(i, i2, i3);
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private Object writeReplace() {
        return new C2249o((byte) 14, this);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof Period) {
            Period period = (Period) obj;
            if (this.f636a == period.f636a && this.f637b == period.f637b && this.f638c == period.f638c) {
                return true;
            }
        }
        return false;
    }

    public int getDays() {
        return this.f638c;
    }

    public int getMonths() {
        return this.f637b;
    }

    public int getYears() {
        return this.f636a;
    }

    public final int hashCode() {
        return Integer.rotateLeft(this.f638c, 16) + Integer.rotateLeft(this.f637b, 8) + this.f636a;
    }

    @Override // j$.time.temporal.InterfaceC2268o
    /* JADX INFO: renamed from: s */
    public final Temporal mo646s(Temporal temporal) {
        InterfaceC2196k interfaceC2196k = (InterfaceC2196k) temporal.mo530d(AbstractC2270q.f848b);
        if (interfaceC2196k != null && !C2203r.f699c.equals(interfaceC2196k)) {
            throw new C2184b("Chronology mismatch, expected: ISO, actual: " + interfaceC2196k.getId());
        }
        int i = this.f637b;
        int i2 = this.f636a;
        if (i != 0) {
            long j = (((long) i2) * 12) + ((long) i);
            if (j != 0) {
                temporal = temporal.mo653b(j, ChronoUnit.MONTHS);
            }
        } else if (i2 != 0) {
            temporal = temporal.mo653b(i2, ChronoUnit.YEARS);
        }
        int i3 = this.f638c;
        return i3 != 0 ? temporal.mo653b(i3, ChronoUnit.DAYS) : temporal;
    }

    public final String toString() {
        if (this == f635d) {
            return "P0D";
        }
        StringBuilder sb = new StringBuilder("P");
        int i = this.f636a;
        if (i != 0) {
            sb.append(i);
            sb.append('Y');
        }
        int i2 = this.f637b;
        if (i2 != 0) {
            sb.append(i2);
            sb.append('M');
        }
        int i3 = this.f638c;
        if (i3 != 0) {
            sb.append(i3);
            sb.append('D');
        }
        return sb.toString();
    }
}
