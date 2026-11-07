package j$.time.chrono;

import j$.desugar.sun.nio.fs.AbstractC2248g;
import j$.nio.file.C2288b;
import j$.time.temporal.AbstractC2409q;
import j$.time.temporal.C2411s;
import j$.time.temporal.ChronoUnit;
import j$.time.temporal.EnumC2393a;
import j$.time.temporal.InterfaceC2407o;
import j$.time.temporal.Temporal;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;

/* JADX INFO: renamed from: j$.time.chrono.g */
/* JADX INFO: compiled from: r8-map-id-4910828a8dc56cbd751d74065856ac3a183dfd4d6dbda867057afff82c304930 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2332g implements InterfaceC2407o, Serializable {

    /* JADX INFO: renamed from: e */
    public static final /* synthetic */ int f671e = 0;
    private static final long serialVersionUID = 57387258289L;

    /* JADX INFO: renamed from: a */
    public final InterfaceC2336k f672a;

    /* JADX INFO: renamed from: b */
    public final int f673b;

    /* JADX INFO: renamed from: c */
    public final int f674c;

    /* JADX INFO: renamed from: d */
    public final int f675d;

    static {
        AbstractC2248g.m543p(new Object[]{ChronoUnit.YEARS, ChronoUnit.MONTHS, ChronoUnit.DAYS});
    }

    public C2332g(InterfaceC2336k interfaceC2336k, int i, int i2, int i3) {
        this.f672a = interfaceC2336k;
        this.f673b = i;
        this.f674c = i2;
        this.f675d = i3;
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof C2332g) {
            C2332g c2332g = (C2332g) obj;
            if (this.f673b == c2332g.f673b && this.f674c == c2332g.f674c && this.f675d == c2332g.f675d && this.f672a.equals(c2332g.f672a)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return this.f672a.hashCode() ^ (Integer.rotateLeft(this.f675d, 16) + (Integer.rotateLeft(this.f674c, 8) + this.f673b));
    }

    @Override // j$.time.temporal.InterfaceC2407o
    /* JADX INFO: renamed from: s */
    public final Temporal mo670s(Temporal temporal) {
        InterfaceC2336k interfaceC2336k = (InterfaceC2336k) temporal.mo554d(AbstractC2409q.f850b);
        if (interfaceC2336k != null && !this.f672a.equals(interfaceC2336k)) {
            C2288b.m637f("Chronology mismatch, expected: ", this.f672a.getId(), ", actual: ", interfaceC2336k.getId());
            return null;
        }
        if (this.f674c == 0) {
            int i = this.f673b;
            if (i != 0) {
                temporal = temporal.mo677b(i, ChronoUnit.YEARS);
            }
        } else {
            C2411s c2411sMo778B = this.f672a.mo778B(EnumC2393a.MONTH_OF_YEAR);
            long j = (c2411sMo778B.f856a == c2411sMo778B.f857b && c2411sMo778B.f858c == c2411sMo778B.f859d && c2411sMo778B.m888d()) ? (c2411sMo778B.f859d - c2411sMo778B.f856a) + 1 : -1L;
            int i2 = this.f673b;
            if (j > 0) {
                temporal = temporal.mo677b((((long) i2) * j) + ((long) this.f674c), ChronoUnit.MONTHS);
            } else {
                if (i2 != 0) {
                    temporal = temporal.mo677b(i2, ChronoUnit.YEARS);
                }
                temporal = temporal.mo677b(this.f674c, ChronoUnit.MONTHS);
            }
        }
        int i3 = this.f675d;
        return i3 != 0 ? temporal.mo677b(i3, ChronoUnit.DAYS) : temporal;
    }

    public final String toString() {
        if (this.f673b == 0 && this.f674c == 0 && this.f675d == 0) {
            return this.f672a.toString() + " P0D";
        }
        StringBuilder sb = new StringBuilder();
        sb.append(this.f672a.toString());
        sb.append(" P");
        int i = this.f673b;
        if (i != 0) {
            sb.append(i);
            sb.append('Y');
        }
        int i2 = this.f674c;
        if (i2 != 0) {
            sb.append(i2);
            sb.append('M');
        }
        int i3 = this.f675d;
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
