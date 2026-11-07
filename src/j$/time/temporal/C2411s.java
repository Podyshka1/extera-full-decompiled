package j$.time.temporal;

import j$.nio.file.C2288b;
import java.io.IOException;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;

/* JADX INFO: renamed from: j$.time.temporal.s */
/* JADX INFO: compiled from: r8-map-id-4910828a8dc56cbd751d74065856ac3a183dfd4d6dbda867057afff82c304930 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2411s implements Serializable {
    private static final long serialVersionUID = -7317881728594519368L;

    /* JADX INFO: renamed from: a */
    public final long f856a;

    /* JADX INFO: renamed from: b */
    public final long f857b;

    /* JADX INFO: renamed from: c */
    public final long f858c;

    /* JADX INFO: renamed from: d */
    public final long f859d;

    public C2411s(long j, long j2, long j3, long j4) {
        this.f856a = j;
        this.f857b = j2;
        this.f858c = j3;
        this.f859d = j4;
    }

    /* JADX INFO: renamed from: f */
    public static C2411s m883f(long j, long j2) {
        if (j <= j2) {
            return new C2411s(j, j, j2, j2);
        }
        C2288b.m632a("Minimum value must be less than maximum value");
        return null;
    }

    /* JADX INFO: renamed from: g */
    public static C2411s m884g(long j, long j2) {
        if (j > j2) {
            C2288b.m632a("Smallest maximum value must be less than largest maximum value");
            return null;
        }
        if (1 <= j2) {
            return new C2411s(1L, 1L, j, j2);
        }
        C2288b.m632a("Minimum value must be less than maximum value");
        return null;
    }

    private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
        objectInputStream.defaultReadObject();
        long j = this.f856a;
        long j2 = this.f857b;
        if (j > j2) {
            throw new InvalidObjectException("Smallest minimum value must be less than largest minimum value");
        }
        long j3 = this.f858c;
        long j4 = this.f859d;
        if (j3 > j4) {
            throw new InvalidObjectException("Smallest maximum value must be less than largest maximum value");
        }
        if (j2 > j4) {
            throw new InvalidObjectException("Minimum value must be less than maximum value");
        }
    }

    /* JADX INFO: renamed from: a */
    public final int m885a(long j, InterfaceC2408p interfaceC2408p) {
        if (m888d() && m889e(j)) {
            return (int) j;
        }
        C2288b.m639h(m887c(j, interfaceC2408p));
        return 0;
    }

    /* JADX INFO: renamed from: b */
    public final void m886b(long j, InterfaceC2408p interfaceC2408p) {
        if (m889e(j)) {
            return;
        }
        C2288b.m639h(m887c(j, interfaceC2408p));
    }

    /* JADX INFO: renamed from: c */
    public final String m887c(long j, InterfaceC2408p interfaceC2408p) {
        if (interfaceC2408p == null) {
            return "Invalid value (valid values " + this + "): " + j;
        }
        return "Invalid value for " + interfaceC2408p + " (valid values " + this + "): " + j;
    }

    /* JADX INFO: renamed from: d */
    public final boolean m888d() {
        return this.f856a >= -2147483648L && this.f859d <= 2147483647L;
    }

    /* JADX INFO: renamed from: e */
    public final boolean m889e(long j) {
        return j >= this.f856a && j <= this.f859d;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof C2411s) {
            C2411s c2411s = (C2411s) obj;
            if (this.f856a == c2411s.f856a && this.f857b == c2411s.f857b && this.f858c == c2411s.f858c && this.f859d == c2411s.f859d) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        long j = this.f856a;
        long j2 = this.f857b;
        long j3 = j + (j2 << 16) + (j2 >> 48);
        long j4 = this.f858c;
        long j5 = j3 + (j4 << 32) + (j4 >> 32);
        long j6 = this.f859d;
        long j7 = j5 + (j6 << 48) + (j6 >> 16);
        return (int) (j7 ^ (j7 >>> 32));
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.f856a);
        if (this.f856a != this.f857b) {
            sb.append('/');
            sb.append(this.f857b);
        }
        sb.append(" - ");
        sb.append(this.f858c);
        if (this.f858c != this.f859d) {
            sb.append('/');
            sb.append(this.f859d);
        }
        return sb.toString();
    }
}
