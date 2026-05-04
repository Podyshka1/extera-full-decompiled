package j$.time;

import j$.com.android.tools.r8.AbstractC1965a;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.math.BigInteger;
import org.telegram.messenger.MediaDataController;

/* JADX INFO: loaded from: classes2.dex */
public final class Duration implements Comparable<Duration>, Serializable {

    /* JADX INFO: renamed from: c */
    public static final Duration f400c = new Duration(0, 0);
    private static final long serialVersionUID = 3078945930695997490L;

    /* JADX INFO: renamed from: a */
    public final long f401a;

    /* JADX INFO: renamed from: b */
    public final int f402b;

    @Override // java.lang.Comparable
    public final int compareTo(Duration duration) {
        Duration duration2 = duration;
        int iCompare = Long.compare(this.f401a, duration2.f401a);
        return iCompare != 0 ? iCompare : this.f402b - duration2.f402b;
    }

    static {
        BigInteger.valueOf(1000000000L);
    }

    public static Duration ofHours(long j) {
        return m461h(AbstractC1965a.m409O(j, 3600), 0);
    }

    public static Duration ofMinutes(long j) {
        return m461h(AbstractC1965a.m409O(j, 60), 0);
    }

    public static Duration ofSeconds(long j) {
        return m461h(j, 0);
    }

    /* JADX INFO: renamed from: i */
    public static Duration m462i(long j) {
        long j2 = j / 1000000000;
        int i = (int) (j % 1000000000);
        if (i < 0) {
            i = (int) (((long) i) + 1000000000);
            j2--;
        }
        return m461h(j2, i);
    }

    /* JADX INFO: renamed from: h */
    public static Duration m461h(long j, int i) {
        if ((((long) i) | j) == 0) {
            return f400c;
        }
        return new Duration(j, i);
    }

    public Duration(long j, int i) {
        this.f401a = j;
        this.f402b = i;
    }

    public long toMillis() {
        long j = this.f401a;
        long j2 = this.f402b;
        if (j < 0) {
            j++;
            j2 -= 1000000000;
        }
        return AbstractC1965a.m410P(AbstractC1965a.m409O(j, MediaDataController.MAX_STYLE_RUNS_COUNT), j2 / 1000000);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof Duration) {
            Duration duration = (Duration) obj;
            if (this.f401a == duration.f401a && this.f402b == duration.f402b) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        long j = this.f401a;
        return (this.f402b * 51) + ((int) (j ^ (j >>> 32)));
    }

    public final String toString() {
        if (this == f400c) {
            return "PT0S";
        }
        long j = this.f401a;
        if (j < 0 && this.f402b > 0) {
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
        if (i2 == 0 && this.f402b == 0 && sb.length() > 2) {
            return sb.toString();
        }
        if (this.f401a < 0 && this.f402b > 0 && i2 == 0) {
            sb.append("-0");
        } else {
            sb.append(i2);
        }
        if (this.f402b > 0) {
            int length = sb.length();
            if (this.f401a < 0) {
                sb.append(2000000000 - ((long) this.f402b));
            } else {
                sb.append(((long) this.f402b) + 1000000000);
            }
            while (sb.charAt(sb.length() - 1) == '0') {
                sb.setLength(sb.length() - 1);
            }
            sb.setCharAt(length, '.');
        }
        sb.append('S');
        return sb.toString();
    }

    private Object writeReplace() {
        return new C2041o((byte) 1, this);
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }
}
