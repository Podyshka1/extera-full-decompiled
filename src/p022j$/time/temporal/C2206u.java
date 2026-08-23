package p022j$.time.temporal;

import java.io.IOException;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import p022j$.time.C2108b;

/* JADX INFO: renamed from: j$.time.temporal.u */
/* JADX INFO: loaded from: classes2.dex */
public final class C2206u implements Serializable {
    private static final long serialVersionUID = -7317881728594519368L;

    /* JADX INFO: renamed from: a */
    public final long f852a;

    /* JADX INFO: renamed from: b */
    public final long f853b;

    /* JADX INFO: renamed from: c */
    public final long f854c;

    /* JADX INFO: renamed from: d */
    public final long f855d;

    /* JADX INFO: renamed from: e */
    public static C2206u m784e(long j, long j2) {
        if (j > j2) {
            throw new IllegalArgumentException("Minimum value must be less than maximum value");
        }
        return new C2206u(j, j, j2, j2);
    }

    /* JADX INFO: renamed from: f */
    public static C2206u m785f(long j, long j2) {
        if (j > j2) {
            throw new IllegalArgumentException("Smallest maximum value must be less than largest maximum value");
        }
        if (1 > j2) {
            throw new IllegalArgumentException("Minimum value must be less than maximum value");
        }
        return new C2206u(1L, 1L, j, j2);
    }

    public C2206u(long j, long j2, long j3, long j4) {
        this.f852a = j;
        this.f853b = j2;
        this.f854c = j3;
        this.f855d = j4;
    }

    /* JADX INFO: renamed from: a */
    public final int m786a(long j, InterfaceC2202q interfaceC2202q) {
        if (this.f852a < -2147483648L || this.f855d > 2147483647L || !m789d(j)) {
            throw new C2108b(m788c(j, interfaceC2202q));
        }
        return (int) j;
    }

    /* JADX INFO: renamed from: d */
    public final boolean m789d(long j) {
        return j >= this.f852a && j <= this.f855d;
    }

    /* JADX INFO: renamed from: b */
    public final void m787b(long j, InterfaceC2202q interfaceC2202q) {
        if (!m789d(j)) {
            throw new C2108b(m788c(j, interfaceC2202q));
        }
    }

    /* JADX INFO: renamed from: c */
    public final String m788c(long j, InterfaceC2202q interfaceC2202q) {
        if (interfaceC2202q != null) {
            return "Invalid value for " + interfaceC2202q + " (valid values " + this + "): " + j;
        }
        return "Invalid value (valid values " + this + "): " + j;
    }

    private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
        objectInputStream.defaultReadObject();
        long j = this.f852a;
        long j2 = this.f853b;
        if (j > j2) {
            throw new InvalidObjectException("Smallest minimum value must be less than largest minimum value");
        }
        long j3 = this.f854c;
        long j4 = this.f855d;
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
        if (obj instanceof C2206u) {
            C2206u c2206u = (C2206u) obj;
            if (this.f852a == c2206u.f852a && this.f853b == c2206u.f853b && this.f854c == c2206u.f854c && this.f855d == c2206u.f855d) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        long j = this.f852a;
        long j2 = this.f853b;
        long j3 = j + (j2 << 16) + (j2 >> 48);
        long j4 = this.f854c;
        long j5 = j3 + (j4 << 32) + (j4 >> 32);
        long j6 = this.f855d;
        long j7 = j5 + (j6 << 48) + (j6 >> 16);
        return (int) (j7 ^ (j7 >>> 32));
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.f852a);
        if (this.f852a != this.f853b) {
            sb.append('/');
            sb.append(this.f853b);
        }
        sb.append(" - ");
        sb.append(this.f854c);
        if (this.f854c != this.f855d) {
            sb.append('/');
            sb.append(this.f855d);
        }
        return sb.toString();
    }
}
