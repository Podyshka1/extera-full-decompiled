package j$.time.temporal;

import j$.nio.file.C2148b;
import java.io.IOException;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;

/* JADX INFO: renamed from: j$.time.temporal.s */
/* JADX INFO: compiled from: r8-map-id-d770cecce19e13e7204002895f1f3846e7cae954646f7ef2982ee0cbc1d920c0 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2272s implements Serializable {
    private static final long serialVersionUID = -7317881728594519368L;

    /* JADX INFO: renamed from: a */
    public final long f854a;

    /* JADX INFO: renamed from: b */
    public final long f855b;

    /* JADX INFO: renamed from: c */
    public final long f856c;

    /* JADX INFO: renamed from: d */
    public final long f857d;

    public C2272s(long j, long j2, long j3, long j4) {
        this.f854a = j;
        this.f855b = j2;
        this.f856c = j3;
        this.f857d = j4;
    }

    /* JADX INFO: renamed from: f */
    public static C2272s m835f(long j, long j2) {
        if (j <= j2) {
            return new C2272s(j, j, j2, j2);
        }
        C2148b.m608a("Minimum value must be less than maximum value");
        return null;
    }

    /* JADX INFO: renamed from: g */
    public static C2272s m836g(long j, long j2) {
        if (j > j2) {
            C2148b.m608a("Smallest maximum value must be less than largest maximum value");
            return null;
        }
        if (1 <= j2) {
            return new C2272s(1L, 1L, j, j2);
        }
        C2148b.m608a("Minimum value must be less than maximum value");
        return null;
    }

    private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
        objectInputStream.defaultReadObject();
        long j = this.f854a;
        long j2 = this.f855b;
        if (j > j2) {
            throw new InvalidObjectException("Smallest minimum value must be less than largest minimum value");
        }
        long j3 = this.f856c;
        long j4 = this.f857d;
        if (j3 > j4) {
            throw new InvalidObjectException("Smallest maximum value must be less than largest maximum value");
        }
        if (j2 > j4) {
            throw new InvalidObjectException("Minimum value must be less than maximum value");
        }
    }

    /* JADX INFO: renamed from: a */
    public final int m837a(long j, InterfaceC2269p interfaceC2269p) {
        if (m840d() && m841e(j)) {
            return (int) j;
        }
        C2148b.m615h(m839c(j, interfaceC2269p));
        return 0;
    }

    /* JADX INFO: renamed from: b */
    public final void m838b(long j, InterfaceC2269p interfaceC2269p) {
        if (m841e(j)) {
            return;
        }
        C2148b.m615h(m839c(j, interfaceC2269p));
    }

    /* JADX INFO: renamed from: c */
    public final String m839c(long j, InterfaceC2269p interfaceC2269p) {
        if (interfaceC2269p == null) {
            return "Invalid value (valid values " + this + "): " + j;
        }
        return "Invalid value for " + interfaceC2269p + " (valid values " + this + "): " + j;
    }

    /* JADX INFO: renamed from: d */
    public final boolean m840d() {
        return this.f854a >= -2147483648L && this.f857d <= 2147483647L;
    }

    /* JADX INFO: renamed from: e */
    public final boolean m841e(long j) {
        return j >= this.f854a && j <= this.f857d;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof C2272s) {
            C2272s c2272s = (C2272s) obj;
            if (this.f854a == c2272s.f854a && this.f855b == c2272s.f855b && this.f856c == c2272s.f856c && this.f857d == c2272s.f857d) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        long j = this.f854a;
        long j2 = this.f855b;
        long j3 = j + (j2 << 16) + (j2 >> 48);
        long j4 = this.f856c;
        long j5 = j3 + (j4 << 32) + (j4 >> 32);
        long j6 = this.f857d;
        long j7 = j5 + (j6 << 48) + (j6 >> 16);
        return (int) (j7 ^ (j7 >>> 32));
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.f854a);
        if (this.f854a != this.f855b) {
            sb.append('/');
            sb.append(this.f855b);
        }
        sb.append(" - ");
        sb.append(this.f856c);
        if (this.f856c != this.f857d) {
            sb.append('/');
            sb.append(this.f857d);
        }
        return sb.toString();
    }
}
