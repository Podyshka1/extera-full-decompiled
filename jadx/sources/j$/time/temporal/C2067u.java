package j$.time.temporal;

import j$.time.C1969b;
import java.io.IOException;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;

/* JADX INFO: renamed from: j$.time.temporal.u */
/* JADX INFO: loaded from: classes2.dex */
public final class C2067u implements Serializable {
    private static final long serialVersionUID = -7317881728594519368L;

    /* JADX INFO: renamed from: a */
    public final long f617a;

    /* JADX INFO: renamed from: b */
    public final long f618b;

    /* JADX INFO: renamed from: c */
    public final long f619c;

    /* JADX INFO: renamed from: d */
    public final long f620d;

    /* JADX INFO: renamed from: e */
    public static C2067u m659e(long j, long j2) {
        if (j > j2) {
            throw new IllegalArgumentException("Minimum value must be less than maximum value");
        }
        return new C2067u(j, j, j2, j2);
    }

    /* JADX INFO: renamed from: f */
    public static C2067u m660f(long j, long j2) {
        if (j > j2) {
            throw new IllegalArgumentException("Smallest maximum value must be less than largest maximum value");
        }
        if (1 > j2) {
            throw new IllegalArgumentException("Minimum value must be less than maximum value");
        }
        return new C2067u(1L, 1L, j, j2);
    }

    public C2067u(long j, long j2, long j3, long j4) {
        this.f617a = j;
        this.f618b = j2;
        this.f619c = j3;
        this.f620d = j4;
    }

    /* JADX INFO: renamed from: a */
    public final int m661a(long j, InterfaceC2063q interfaceC2063q) {
        if (this.f617a < -2147483648L || this.f620d > 2147483647L || !m664d(j)) {
            throw new C1969b(m663c(j, interfaceC2063q));
        }
        return (int) j;
    }

    /* JADX INFO: renamed from: d */
    public final boolean m664d(long j) {
        return j >= this.f617a && j <= this.f620d;
    }

    /* JADX INFO: renamed from: b */
    public final void m662b(long j, InterfaceC2063q interfaceC2063q) {
        if (!m664d(j)) {
            throw new C1969b(m663c(j, interfaceC2063q));
        }
    }

    /* JADX INFO: renamed from: c */
    public final String m663c(long j, InterfaceC2063q interfaceC2063q) {
        if (interfaceC2063q != null) {
            return "Invalid value for " + interfaceC2063q + " (valid values " + this + "): " + j;
        }
        return "Invalid value (valid values " + this + "): " + j;
    }

    private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
        objectInputStream.defaultReadObject();
        long j = this.f617a;
        long j2 = this.f618b;
        if (j > j2) {
            throw new InvalidObjectException("Smallest minimum value must be less than largest minimum value");
        }
        long j3 = this.f619c;
        long j4 = this.f620d;
        if (j3 > j4) {
            throw new InvalidObjectException("Smallest maximum value must be less than largest maximum value");
        }
        if (j2 > j4) {
            throw new InvalidObjectException("Minimum value must be less than maximum value");
        }
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof C2067u) {
            C2067u c2067u = (C2067u) obj;
            if (this.f617a == c2067u.f617a && this.f618b == c2067u.f618b && this.f619c == c2067u.f619c && this.f620d == c2067u.f620d) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        long j = this.f617a;
        long j2 = this.f618b;
        long j3 = j + (j2 << 16) + (j2 >> 48);
        long j4 = this.f619c;
        long j5 = j3 + (j4 << 32) + (j4 >> 32);
        long j6 = this.f620d;
        long j7 = j5 + (j6 << 48) + (j6 >> 16);
        return (int) (j7 ^ (j7 >>> 32));
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.f617a);
        if (this.f617a != this.f618b) {
            sb.append('/');
            sb.append(this.f618b);
        }
        sb.append(" - ");
        sb.append(this.f619c);
        if (this.f619c != this.f620d) {
            sb.append('/');
            sb.append(this.f620d);
        }
        return sb.toString();
    }
}
