package j$.time;

import j$.time.temporal.ChronoUnit;
import j$.time.temporal.InterfaceC2187o;
import j$.time.temporal.Temporal;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.math.BigInteger;

/* JADX INFO: compiled from: r8-map-id-aec3840a64bd99e9b6e79ef11e6742e52cf8ea8118315f6a864397976aaae532 */
/* JADX INFO: loaded from: classes2.dex */
public final class Duration implements InterfaceC2187o, Comparable<Duration>, Serializable {

    /* JADX INFO: renamed from: c */
    public static final Duration f463c = new Duration(0, 0);
    private static final long serialVersionUID = 3078945930695997490L;

    /* JADX INFO: renamed from: a */
    public final long f464a;

    /* JADX INFO: renamed from: b */
    public final int f465b;

    static {
        BigInteger.valueOf(1000000000L);
    }

    public Duration(long j, int i) {
        this.f464a = j;
        this.f465b = i;
    }

    /* JADX INFO: renamed from: B */
    public static Duration m488B(long j, int i) {
        return (((long) i) | j) == 0 ? f463c : new Duration(j, i);
    }

    /* JADX INFO: renamed from: G */
    public static Duration m489G(long j) {
        long j2 = j / 1000000000;
        int i = (int) (j % 1000000000);
        if (i < 0) {
            i = (int) (((long) i) + 1000000000);
            j2--;
        }
        return m488B(j2, i);
    }

    public static Duration ofMinutes(long j) {
        return m488B(Math.multiplyExact(j, 60L), 0);
    }

    public static Duration ofSeconds(long j, long j2) {
        return m488B(Math.addExact(j, Math.floorDiv(j2, 1000000000L)), (int) Math.floorMod(j2, 1000000000L));
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private Object writeReplace() {
        return new C2170r((byte) 1, this);
    }

    @Override // java.lang.Comparable
    public final int compareTo(Duration duration) {
        Duration duration2 = duration;
        int iCompare = Long.compare(this.f464a, duration2.f464a);
        return iCompare != 0 ? iCompare : this.f465b - duration2.f465b;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof Duration) {
            Duration duration = (Duration) obj;
            if (this.f464a == duration.f464a && this.f465b == duration.f465b) {
                return true;
            }
        }
        return false;
    }

    public int getNano() {
        return this.f465b;
    }

    public long getSeconds() {
        return this.f464a;
    }

    public final int hashCode() {
        long j = this.f464a;
        return (this.f465b * 51) + ((int) (j ^ (j >>> 32)));
    }

    @Override // j$.time.temporal.InterfaceC2187o
    /* JADX INFO: renamed from: t */
    public final Temporal mo490t(Temporal temporal) {
        long j = this.f464a;
        if (j != 0) {
            temporal = temporal.mo497b(j, ChronoUnit.SECONDS);
        }
        int i = this.f465b;
        return i != 0 ? temporal.mo497b(i, ChronoUnit.NANOS) : temporal;
    }

    public long toMillis() {
        long j = this.f464a;
        long j2 = this.f465b;
        if (j < 0) {
            j++;
            j2 -= 1000000000;
        }
        return Math.addExact(Math.multiplyExact(j, 1000L), j2 / 1000000);
    }

    public final String toString() {
        if (this == f463c) {
            return "PT0S";
        }
        long j = this.f464a;
        if (j < 0 && this.f465b > 0) {
            j++;
        }
        long j2 = j / 3600;
        int i = (int) ((j % 3600) / 60);
        int i2 = (int) (j % 60);
        StringBuilder sb = new StringBuilder(24);
        sb.append("PT");
        if (j2 != 0) {
            sb.append(j2);
            sb.append('H');
        }
        if (i != 0) {
            sb.append(i);
            sb.append('M');
        }
        if (i2 == 0 && this.f465b == 0 && sb.length() > 2) {
            return sb.toString();
        }
        if (this.f464a >= 0 || this.f465b <= 0 || i2 != 0) {
            sb.append(i2);
        } else {
            sb.append("-0");
        }
        if (this.f465b > 0) {
            int length = sb.length();
            long j3 = this.f464a;
            int i3 = this.f465b;
            if (j3 < 0) {
                sb.append(2000000000 - ((long) i3));
            } else {
                sb.append(((long) i3) + 1000000000);
            }
            while (sb.charAt(sb.length() - 1) == '0') {
                sb.setLength(sb.length() - 1);
            }
            sb.setCharAt(length, '.');
        }
        sb.append('S');
        return sb.toString();
    }

    public static Duration ofSeconds(long j) {
        return m488B(j, 0);
    }
}
