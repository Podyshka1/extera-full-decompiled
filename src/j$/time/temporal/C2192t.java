package j$.time.temporal;

import j$.time.C2159g;
import java.io.IOException;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;

/* JADX INFO: renamed from: j$.time.temporal.t */
/* JADX INFO: compiled from: r8-map-id-aec3840a64bd99e9b6e79ef11e6742e52cf8ea8118315f6a864397976aaae532 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2192t implements Serializable {
    private static final long serialVersionUID = -7317881728594519368L;

    /* JADX INFO: renamed from: a */
    public final long f704a;

    /* JADX INFO: renamed from: b */
    public final long f705b;

    /* JADX INFO: renamed from: c */
    public final long f706c;

    /* JADX INFO: renamed from: d */
    public final long f707d;

    public C2192t(long j, long j2, long j3, long j4) {
        this.f704a = j;
        this.f705b = j2;
        this.f706c = j3;
        this.f707d = j4;
    }

    /* JADX INFO: renamed from: f */
    public static C2192t m726f(long j, long j2) {
        if (j <= j2) {
            return new C2192t(j, j, j2, j2);
        }
        throw new IllegalArgumentException("Minimum value must be less than maximum value");
    }

    /* JADX INFO: renamed from: g */
    public static C2192t m727g(long j, long j2) {
        if (j > j2) {
            throw new IllegalArgumentException("Smallest maximum value must be less than largest maximum value");
        }
        if (1 <= j2) {
            return new C2192t(1L, 1L, j, j2);
        }
        throw new IllegalArgumentException("Minimum value must be less than maximum value");
    }

    private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
        objectInputStream.defaultReadObject();
        long j = this.f704a;
        long j2 = this.f705b;
        if (j > j2) {
            throw new InvalidObjectException("Smallest minimum value must be less than largest minimum value");
        }
        long j3 = this.f706c;
        long j4 = this.f707d;
        if (j3 > j4) {
            throw new InvalidObjectException("Smallest maximum value must be less than largest maximum value");
        }
        if (j2 > j4) {
            throw new InvalidObjectException("Minimum value must be less than maximum value");
        }
    }

    /* JADX INFO: renamed from: a */
    public final int m728a(long j, InterfaceC2188p interfaceC2188p) {
        if (m731d() && m732e(j)) {
            return (int) j;
        }
        C2159g.m684a(m730c(j, interfaceC2188p));
        return 0;
    }

    /* JADX INFO: renamed from: b */
    public final void m729b(long j, InterfaceC2188p interfaceC2188p) {
        if (m732e(j)) {
            return;
        }
        C2159g.m684a(m730c(j, interfaceC2188p));
    }

    /* JADX INFO: renamed from: c */
    public final String m730c(long j, InterfaceC2188p interfaceC2188p) {
        if (interfaceC2188p == null) {
            return "Invalid value (valid values " + this + "): " + j;
        }
        return "Invalid value for " + interfaceC2188p + " (valid values " + this + "): " + j;
    }

    /* JADX INFO: renamed from: d */
    public final boolean m731d() {
        return this.f704a >= -2147483648L && this.f707d <= 2147483647L;
    }

    /* JADX INFO: renamed from: e */
    public final boolean m732e(long j) {
        return j >= this.f704a && j <= this.f707d;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof C2192t) {
            C2192t c2192t = (C2192t) obj;
            if (this.f704a == c2192t.f704a && this.f705b == c2192t.f705b && this.f706c == c2192t.f706c && this.f707d == c2192t.f707d) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        long j = this.f704a;
        long j2 = this.f705b;
        long j3 = j + (j2 << 16) + (j2 >> 48);
        long j4 = this.f706c;
        long j5 = j3 + (j4 << 32) + (j4 >> 32);
        long j6 = this.f707d;
        long j7 = j5 + (j6 << 48) + (j6 >> 16);
        return (int) (j7 ^ (j7 >>> 32));
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.f704a);
        if (this.f704a != this.f705b) {
            sb.append('/');
            sb.append(this.f705b);
        }
        sb.append(" - ");
        sb.append(this.f706c);
        if (this.f706c != this.f707d) {
            sb.append('/');
            sb.append(this.f707d);
        }
        return sb.toString();
    }
}
