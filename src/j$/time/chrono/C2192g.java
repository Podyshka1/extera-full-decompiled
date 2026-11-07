package j$.time.chrono;

import j$.desugar.sun.nio.fs.AbstractC2108g;
import j$.nio.file.C2148b;
import j$.time.temporal.AbstractC2270q;
import j$.time.temporal.C2272s;
import j$.time.temporal.ChronoUnit;
import j$.time.temporal.EnumC2254a;
import j$.time.temporal.InterfaceC2268o;
import j$.time.temporal.Temporal;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;

/* JADX INFO: renamed from: j$.time.chrono.g */
/* JADX INFO: compiled from: r8-map-id-d770cecce19e13e7204002895f1f3846e7cae954646f7ef2982ee0cbc1d920c0 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2192g implements InterfaceC2268o, Serializable {

    /* JADX INFO: renamed from: e */
    public static final /* synthetic */ int f669e = 0;
    private static final long serialVersionUID = 57387258289L;

    /* JADX INFO: renamed from: a */
    public final InterfaceC2196k f670a;

    /* JADX INFO: renamed from: b */
    public final int f671b;

    /* JADX INFO: renamed from: c */
    public final int f672c;

    /* JADX INFO: renamed from: d */
    public final int f673d;

    static {
        AbstractC2108g.m519p(new Object[]{ChronoUnit.YEARS, ChronoUnit.MONTHS, ChronoUnit.DAYS});
    }

    public C2192g(InterfaceC2196k interfaceC2196k, int i, int i2, int i3) {
        this.f670a = interfaceC2196k;
        this.f671b = i;
        this.f672c = i2;
        this.f673d = i3;
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof C2192g) {
            C2192g c2192g = (C2192g) obj;
            if (this.f671b == c2192g.f671b && this.f672c == c2192g.f672c && this.f673d == c2192g.f673d && this.f670a.equals(c2192g.f670a)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return this.f670a.hashCode() ^ (Integer.rotateLeft(this.f673d, 16) + (Integer.rotateLeft(this.f672c, 8) + this.f671b));
    }

    @Override // j$.time.temporal.InterfaceC2268o
    /* JADX INFO: renamed from: s */
    public final Temporal mo646s(Temporal temporal) {
        InterfaceC2196k interfaceC2196k = (InterfaceC2196k) temporal.mo530d(AbstractC2270q.f848b);
        if (interfaceC2196k != null && !this.f670a.equals(interfaceC2196k)) {
            C2148b.m613f("Chronology mismatch, expected: ", this.f670a.getId(), ", actual: ", interfaceC2196k.getId());
            return null;
        }
        if (this.f672c == 0) {
            int i = this.f671b;
            if (i != 0) {
                temporal = temporal.mo653b(i, ChronoUnit.YEARS);
            }
        } else {
            C2272s c2272sMo743B = this.f670a.mo743B(EnumC2254a.MONTH_OF_YEAR);
            long j = (c2272sMo743B.f854a == c2272sMo743B.f855b && c2272sMo743B.f856c == c2272sMo743B.f857d && c2272sMo743B.m840d()) ? (c2272sMo743B.f857d - c2272sMo743B.f854a) + 1 : -1L;
            int i2 = this.f671b;
            if (j > 0) {
                temporal = temporal.mo653b((((long) i2) * j) + ((long) this.f672c), ChronoUnit.MONTHS);
            } else {
                if (i2 != 0) {
                    temporal = temporal.mo653b(i2, ChronoUnit.YEARS);
                }
                temporal = temporal.mo653b(this.f672c, ChronoUnit.MONTHS);
            }
        }
        int i3 = this.f673d;
        return i3 != 0 ? temporal.mo653b(i3, ChronoUnit.DAYS) : temporal;
    }

    public final String toString() {
        if (this.f671b == 0 && this.f672c == 0 && this.f673d == 0) {
            return this.f670a.toString() + " P0D";
        }
        StringBuilder sb = new StringBuilder();
        sb.append(this.f670a.toString());
        sb.append(" P");
        int i = this.f671b;
        if (i != 0) {
            sb.append(i);
            sb.append('Y');
        }
        int i2 = this.f672c;
        if (i2 != 0) {
            sb.append(i2);
            sb.append('M');
        }
        int i3 = this.f673d;
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
