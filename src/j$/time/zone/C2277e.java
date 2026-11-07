package j$.time.zone;

import j$.nio.file.C2148b;
import j$.time.DayOfWeek;
import j$.time.EnumC2245k;
import j$.time.LocalTime;
import j$.time.ZoneOffset;
import j$.time.temporal.EnumC2254a;
import java.io.DataInput;
import java.io.DataOutput;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.Objects;

/* JADX INFO: renamed from: j$.time.zone.e */
/* JADX INFO: compiled from: r8-map-id-d770cecce19e13e7204002895f1f3846e7cae954646f7ef2982ee0cbc1d920c0 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2277e implements Serializable {
    private static final long serialVersionUID = 6889046316657758795L;

    /* JADX INFO: renamed from: a */
    public final EnumC2245k f879a;

    /* JADX INFO: renamed from: b */
    public final byte f880b;

    /* JADX INFO: renamed from: c */
    public final DayOfWeek f881c;

    /* JADX INFO: renamed from: d */
    public final LocalTime f882d;

    /* JADX INFO: renamed from: e */
    public final boolean f883e;

    /* JADX INFO: renamed from: f */
    public final EnumC2276d f884f;

    /* JADX INFO: renamed from: g */
    public final ZoneOffset f885g;

    /* JADX INFO: renamed from: h */
    public final ZoneOffset f886h;

    /* JADX INFO: renamed from: i */
    public final ZoneOffset f887i;

    public C2277e(EnumC2245k enumC2245k, int i, DayOfWeek dayOfWeek, LocalTime localTime, boolean z, EnumC2276d enumC2276d, ZoneOffset zoneOffset, ZoneOffset zoneOffset2, ZoneOffset zoneOffset3) {
        this.f879a = enumC2245k;
        this.f880b = (byte) i;
        this.f881c = dayOfWeek;
        this.f882d = localTime;
        this.f883e = z;
        this.f884f = enumC2276d;
        this.f885g = zoneOffset;
        this.f886h = zoneOffset2;
        this.f887i = zoneOffset3;
    }

    /* JADX INFO: renamed from: a */
    public static C2277e m855a(DataInput dataInput) {
        EnumC2245k enumC2245k;
        C2277e c2277e;
        LocalTime localTimeM680D;
        int i = dataInput.readInt();
        EnumC2245k enumC2245kM822K = EnumC2245k.m822K(i >>> 28);
        int i2 = ((264241152 & i) >>> 22) - 32;
        int i3 = (3670016 & i) >>> 19;
        DayOfWeek dayOfWeekM640s = i3 == 0 ? null : DayOfWeek.m640s(i3);
        int i4 = (507904 & i) >>> 14;
        EnumC2276d enumC2276d = EnumC2276d.values()[(i & 12288) >>> 12];
        int i5 = (i & 4080) >>> 4;
        int i6 = (i & 12) >>> 2;
        int i7 = i & 3;
        if (i4 == 31) {
            long j = dataInput.readInt();
            LocalTime localTime = LocalTime.f618e;
            EnumC2254a.SECOND_OF_DAY.a0(j);
            int i8 = (int) (j / 3600);
            enumC2245k = enumC2245kM822K;
            c2277e = null;
            long j2 = j - ((long) (i8 * 3600));
            int i9 = (int) (j2 / 60);
            localTimeM680D = LocalTime.m680D(i8, i9, (int) (j2 - ((long) (i9 * 60))), 0);
        } else {
            enumC2245k = enumC2245kM822K;
            c2277e = null;
            int i10 = i4 % 24;
            LocalTime localTime2 = LocalTime.f618e;
            EnumC2254a.HOUR_OF_DAY.a0(i10);
            localTimeM680D = LocalTime.f621h[i10];
        }
        ZoneOffset zoneOffsetOfTotalSeconds = i5 == 255 ? ZoneOffset.ofTotalSeconds(dataInput.readInt()) : ZoneOffset.ofTotalSeconds((i5 - 128) * 900);
        ZoneOffset zoneOffsetOfTotalSeconds2 = i6 == 3 ? ZoneOffset.ofTotalSeconds(dataInput.readInt()) : ZoneOffset.ofTotalSeconds((i6 * 1800) + zoneOffsetOfTotalSeconds.getTotalSeconds());
        ZoneOffset zoneOffsetOfTotalSeconds3 = ZoneOffset.ofTotalSeconds(i7 == 3 ? dataInput.readInt() : (i7 * 1800) + zoneOffsetOfTotalSeconds.getTotalSeconds());
        boolean z = i4 == 24;
        EnumC2245k enumC2245k2 = enumC2245k;
        Objects.requireNonNull(enumC2245k2, "month");
        Objects.requireNonNull(localTimeM680D, "time");
        Objects.requireNonNull(enumC2276d, "timeDefnition");
        Objects.requireNonNull(zoneOffsetOfTotalSeconds, "standardOffset");
        Objects.requireNonNull(zoneOffsetOfTotalSeconds2, "offsetBefore");
        Objects.requireNonNull(zoneOffsetOfTotalSeconds3, "offsetAfter");
        if (i2 < -28 || i2 > 31 || i2 == 0) {
            C2148b.m608a("Day of month indicator must be between -28 and 31 inclusive excluding zero");
            return c2277e;
        }
        if (z && !localTimeM680D.equals(LocalTime.f620g)) {
            C2148b.m608a("Time must be midnight when end of day flag is true");
            return c2277e;
        }
        if (localTimeM680D.getNano() == 0) {
            return new C2277e(enumC2245k2, i2, dayOfWeekM640s, localTimeM680D, z, enumC2276d, zoneOffsetOfTotalSeconds, zoneOffsetOfTotalSeconds2, zoneOffsetOfTotalSeconds3);
        }
        C2148b.m608a("Time's nano-of-second must be zero");
        return c2277e;
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private Object writeReplace() {
        return new C2273a((byte) 3, this);
    }

    /* JADX INFO: renamed from: b */
    public final void m856b(DataOutput dataOutput) {
        int iG0 = this.f883e ? 86400 : this.f882d.g0();
        int totalSeconds = this.f885g.getTotalSeconds();
        int totalSeconds2 = this.f886h.getTotalSeconds() - totalSeconds;
        int totalSeconds3 = this.f887i.getTotalSeconds() - totalSeconds;
        int hour = iG0 % 3600 == 0 ? this.f883e ? 24 : this.f882d.getHour() : 31;
        int i = totalSeconds % 900 == 0 ? (totalSeconds / 900) + 128 : 255;
        int i2 = (totalSeconds2 == 0 || totalSeconds2 == 1800 || totalSeconds2 == 3600) ? totalSeconds2 / 1800 : 3;
        int i3 = (totalSeconds3 == 0 || totalSeconds3 == 1800 || totalSeconds3 == 3600) ? totalSeconds3 / 1800 : 3;
        DayOfWeek dayOfWeek = this.f881c;
        dataOutput.writeInt((this.f879a.getValue() << 28) + ((this.f880b + 32) << 22) + ((dayOfWeek == null ? 0 : dayOfWeek.getValue()) << 19) + (hour << 14) + (this.f884f.ordinal() << 12) + (i << 4) + (i2 << 2) + i3);
        if (hour == 31) {
            dataOutput.writeInt(iG0);
        }
        if (i == 255) {
            dataOutput.writeInt(totalSeconds);
        }
        if (i2 == 3) {
            dataOutput.writeInt(this.f886h.getTotalSeconds());
        }
        if (i3 == 3) {
            dataOutput.writeInt(this.f887i.getTotalSeconds());
        }
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C2277e)) {
            return false;
        }
        C2277e c2277e = (C2277e) obj;
        return this.f879a == c2277e.f879a && this.f880b == c2277e.f880b && this.f881c == c2277e.f881c && this.f884f == c2277e.f884f && this.f882d.equals(c2277e.f882d) && this.f883e == c2277e.f883e && this.f885g.equals(c2277e.f885g) && this.f886h.equals(c2277e.f886h) && this.f887i.equals(c2277e.f887i);
    }

    public final int hashCode() {
        int iG0 = ((this.f882d.g0() + (this.f883e ? 1 : 0)) << 15) + (this.f879a.ordinal() << 11) + ((this.f880b + 32) << 5);
        DayOfWeek dayOfWeek = this.f881c;
        return this.f887i.f649b ^ ((this.f885g.f649b ^ (this.f884f.ordinal() + (iG0 + ((dayOfWeek == null ? 7 : dayOfWeek.ordinal()) << 2)))) ^ this.f886h.f649b);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("TransitionRule[");
        sb.append(this.f887i.f649b - this.f886h.f649b > 0 ? "Gap " : "Overlap ");
        sb.append(this.f886h);
        sb.append(" to ");
        sb.append(this.f887i);
        sb.append(", ");
        DayOfWeek dayOfWeek = this.f881c;
        if (dayOfWeek != null) {
            byte b2 = this.f880b;
            if (b2 == -1) {
                sb.append(dayOfWeek.name());
                sb.append(" on or before last day of ");
                sb.append(this.f879a.name());
            } else if (b2 < 0) {
                sb.append(dayOfWeek.name());
                sb.append(" on or before last day minus ");
                sb.append((-this.f880b) - 1);
                sb.append(" of ");
                sb.append(this.f879a.name());
            } else {
                sb.append(dayOfWeek.name());
                sb.append(" on or after ");
                sb.append(this.f879a.name());
                sb.append(' ');
                sb.append((int) this.f880b);
            }
        } else {
            sb.append(this.f879a.name());
            sb.append(' ');
            sb.append((int) this.f880b);
        }
        sb.append(" at ");
        sb.append(this.f883e ? "24:00" : this.f882d.toString());
        sb.append(" ");
        sb.append(this.f884f);
        sb.append(", standard offset ");
        sb.append(this.f885g);
        sb.append(']');
        return sb.toString();
    }
}
