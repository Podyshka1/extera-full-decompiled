package j$.time;

import j$.time.temporal.C2271r;
import j$.time.temporal.ChronoUnit;
import j$.time.temporal.InterfaceC2268o;
import j$.time.temporal.Temporal;
import j$.time.temporal.TemporalUnit;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.Objects;
import kotlin.time.DurationKt;

/* JADX INFO: compiled from: r8-map-id-d770cecce19e13e7204002895f1f3846e7cae954646f7ef2982ee0cbc1d920c0 */
/* JADX INFO: loaded from: classes2.dex */
public final class Duration implements InterfaceC2268o, Comparable<Duration>, Serializable {
    public static final Duration ZERO = new Duration(0, 0);

    /* JADX INFO: renamed from: c */
    public static final BigInteger f601c = BigInteger.valueOf(1000000000);
    private static final long serialVersionUID = 3078945930695997490L;

    /* JADX INFO: renamed from: a */
    public final long f602a;

    /* JADX INFO: renamed from: b */
    public final int f603b;

    public Duration(long j, int i) {
        this.f602a = j;
        this.f603b = i;
    }

    /* JADX INFO: renamed from: D */
    public static Duration m644D(long j, int i) {
        return (((long) i) | j) == 0 ? ZERO : new Duration(j, i);
    }

    public static Duration of(long j, TemporalUnit temporalUnit) {
        Duration duration = ZERO;
        duration.getClass();
        Objects.requireNonNull(temporalUnit, "unit");
        if (temporalUnit == ChronoUnit.DAYS) {
            return duration.m645I(Math.multiplyExact(j, 86400L), 0L);
        }
        if (temporalUnit.isDurationEstimated()) {
            throw new C2271r("Unit must not have an estimated duration");
        }
        if (j == 0) {
            return duration;
        }
        if (temporalUnit instanceof ChronoUnit) {
            ChronoUnit chronoUnit = (ChronoUnit) temporalUnit;
            int i = AbstractC2212d.f715a[chronoUnit.ordinal()];
            return i != 1 ? i != 2 ? i != 3 ? i != 4 ? duration.m645I(Math.multiplyExact(chronoUnit.f827b.f602a, j), 0L) : duration.m645I(j, 0L) : duration.m645I(j / 1000, (j % 1000) * 1000000) : duration.m645I((j / 1000000000) * 1000, 0L).plusNanos((j % 1000000000) * 1000) : duration.plusNanos(j);
        }
        Duration duration2 = temporalUnit.getDuration();
        duration2.getClass();
        if (j == 0) {
            duration2 = duration;
        } else if (j != 1) {
            BigInteger bigIntegerExact = BigDecimal.valueOf(duration2.f602a).add(BigDecimal.valueOf(duration2.f603b, 9)).multiply(BigDecimal.valueOf(j)).movePointRight(9).toBigIntegerExact();
            BigInteger[] bigIntegerArrDivideAndRemainder = bigIntegerExact.divideAndRemainder(f601c);
            if (bigIntegerArrDivideAndRemainder[0].bitLength() > 63) {
                throw new ArithmeticException("Exceeds capacity of Duration: " + bigIntegerExact);
            }
            duration2 = ofSeconds(bigIntegerArrDivideAndRemainder[0].longValue(), bigIntegerArrDivideAndRemainder[1].intValue());
        }
        return duration.m645I(duration2.getSeconds(), 0L).plusNanos(duration2.getNano());
    }

    public static Duration ofMillis(long j) {
        long j2 = j / 1000;
        int i = (int) (j % 1000);
        if (i < 0) {
            i += 1000;
            j2--;
        }
        return m644D(j2, i * DurationKt.NANOS_IN_MILLIS);
    }

    public static Duration ofMinutes(long j) {
        return m644D(Math.multiplyExact(j, 60L), 0);
    }

    public static Duration ofNanos(long j) {
        long j2 = j / 1000000000;
        int i = (int) (j % 1000000000);
        if (i < 0) {
            i = (int) (((long) i) + 1000000000);
            j2--;
        }
        return m644D(j2, i);
    }

    public static Duration ofSeconds(long j, long j2) {
        return m644D(Math.addExact(j, Math.floorDiv(j2, 1000000000L)), (int) Math.floorMod(j2, 1000000000L));
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private Object writeReplace() {
        return new C2249o((byte) 1, this);
    }

    /* JADX INFO: renamed from: I */
    public final Duration m645I(long j, long j2) {
        if ((j | j2) == 0) {
            return this;
        }
        return ofSeconds(Math.addExact(Math.addExact(this.f602a, j), j2 / 1000000000), ((long) this.f603b) + (j2 % 1000000000));
    }

    @Override // java.lang.Comparable
    public final int compareTo(Duration duration) {
        Duration duration2 = duration;
        int iCompare = Long.compare(this.f602a, duration2.f602a);
        return iCompare != 0 ? iCompare : this.f603b - duration2.f603b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof Duration) {
            Duration duration = (Duration) obj;
            if (this.f602a == duration.f602a && this.f603b == duration.f603b) {
                return true;
            }
        }
        return false;
    }

    public int getNano() {
        return this.f603b;
    }

    public long getSeconds() {
        return this.f602a;
    }

    public int hashCode() {
        long j = this.f602a;
        return (this.f603b * 51) + ((int) (j ^ (j >>> 32)));
    }

    public Duration plusNanos(long j) {
        return m645I(0L, j);
    }

    @Override // j$.time.temporal.InterfaceC2268o
    /* JADX INFO: renamed from: s */
    public final Temporal mo646s(Temporal temporal) {
        long j = this.f602a;
        if (j != 0) {
            temporal = temporal.mo653b(j, ChronoUnit.SECONDS);
        }
        int i = this.f603b;
        return i != 0 ? temporal.mo653b(i, ChronoUnit.NANOS) : temporal;
    }

    public long toMillis() {
        long j = this.f602a;
        long j2 = this.f603b;
        if (j < 0) {
            j++;
            j2 -= 1000000000;
        }
        return Math.addExact(Math.multiplyExact(j, 1000L), j2 / 1000000);
    }

    public final String toString() {
        if (this == ZERO) {
            return "PT0S";
        }
        long j = this.f602a;
        if (j < 0 && this.f603b > 0) {
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
        if (i2 == 0 && this.f603b == 0 && sb.length() > 2) {
            return sb.toString();
        }
        if (this.f602a >= 0 || this.f603b <= 0 || i2 != 0) {
            sb.append(i2);
        } else {
            sb.append("-0");
        }
        if (this.f603b > 0) {
            int length = sb.length();
            long j3 = this.f602a;
            int i3 = this.f603b;
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
        return m644D(j, 0);
    }
}
