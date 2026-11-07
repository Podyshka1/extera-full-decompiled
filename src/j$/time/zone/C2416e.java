package j$.time.zone;

import j$.nio.file.C2288b;
import j$.time.DayOfWeek;
import j$.time.EnumC2384j;
import j$.time.LocalTime;
import j$.time.ZoneOffset;
import j$.time.temporal.EnumC2393a;
import java.io.DataInput;
import java.io.DataOutput;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.Objects;

/* JADX INFO: renamed from: j$.time.zone.e */
/* JADX INFO: compiled from: r8-map-id-4910828a8dc56cbd751d74065856ac3a183dfd4d6dbda867057afff82c304930 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2416e implements Serializable {
    private static final long serialVersionUID = 6889046316657758795L;

    /* JADX INFO: renamed from: a */
    public final EnumC2384j f881a;

    /* JADX INFO: renamed from: b */
    public final byte f882b;

    /* JADX INFO: renamed from: c */
    public final DayOfWeek f883c;

    /* JADX INFO: renamed from: d */
    public final LocalTime f884d;

    /* JADX INFO: renamed from: e */
    public final boolean f885e;

    /* JADX INFO: renamed from: f */
    public final EnumC2415d f886f;

    /* JADX INFO: renamed from: g */
    public final ZoneOffset f887g;

    /* JADX INFO: renamed from: h */
    public final ZoneOffset f888h;

    /* JADX INFO: renamed from: i */
    public final ZoneOffset f889i;

    public C2416e(EnumC2384j enumC2384j, int i, DayOfWeek dayOfWeek, LocalTime localTime, boolean z, EnumC2415d enumC2415d, ZoneOffset zoneOffset, ZoneOffset zoneOffset2, ZoneOffset zoneOffset3) {
        this.f881a = enumC2384j;
        this.f882b = (byte) i;
        this.f883c = dayOfWeek;
        this.f884d = localTime;
        this.f885e = z;
        this.f886f = enumC2415d;
        this.f887g = zoneOffset;
        this.f888h = zoneOffset2;
        this.f889i = zoneOffset3;
    }

    /* JADX INFO: renamed from: a */
    public static C2416e m903a(DataInput dataInput) {
        EnumC2384j enumC2384j;
        C2416e c2416e;
        LocalTime localTimeOf;
        int i = dataInput.readInt();
        EnumC2384j enumC2384jM866K = EnumC2384j.m866K(i >>> 28);
        int i2 = ((264241152 & i) >>> 22) - 32;
        int i3 = (3670016 & i) >>> 19;
        DayOfWeek dayOfWeekM664s = i3 == 0 ? null : DayOfWeek.m664s(i3);
        int i4 = (507904 & i) >>> 14;
        EnumC2415d enumC2415d = EnumC2415d.values()[(i & 12288) >>> 12];
        int i5 = (i & 4080) >>> 4;
        int i6 = (i & 12) >>> 2;
        int i7 = i & 3;
        if (i4 == 31) {
            long j = dataInput.readInt();
            LocalTime localTime = LocalTime.f619e;
            EnumC2393a.SECOND_OF_DAY.m877Y(j);
            int i8 = (int) (j / 3600);
            enumC2384j = enumC2384jM866K;
            c2416e = null;
            long j2 = j - ((long) (i8 * 3600));
            int i9 = (int) (j2 / 60);
            localTimeOf = LocalTime.m707D(i8, i9, (int) (j2 - ((long) (i9 * 60))), 0);
        } else {
            enumC2384j = enumC2384jM866K;
            c2416e = null;
            localTimeOf = LocalTime.of(i4 % 24, 0);
        }
        ZoneOffset zoneOffsetOfTotalSeconds = i5 == 255 ? ZoneOffset.ofTotalSeconds(dataInput.readInt()) : ZoneOffset.ofTotalSeconds((i5 - 128) * 900);
        ZoneOffset zoneOffsetOfTotalSeconds2 = i6 == 3 ? ZoneOffset.ofTotalSeconds(dataInput.readInt()) : ZoneOffset.ofTotalSeconds((i6 * 1800) + zoneOffsetOfTotalSeconds.getTotalSeconds());
        ZoneOffset zoneOffsetOfTotalSeconds3 = ZoneOffset.ofTotalSeconds(i7 == 3 ? dataInput.readInt() : (i7 * 1800) + zoneOffsetOfTotalSeconds.getTotalSeconds());
        boolean z = i4 == 24;
        EnumC2384j enumC2384j2 = enumC2384j;
        Objects.requireNonNull(enumC2384j2, "month");
        Objects.requireNonNull(localTimeOf, "time");
        Objects.requireNonNull(enumC2415d, "timeDefnition");
        Objects.requireNonNull(zoneOffsetOfTotalSeconds, "standardOffset");
        Objects.requireNonNull(zoneOffsetOfTotalSeconds2, "offsetBefore");
        Objects.requireNonNull(zoneOffsetOfTotalSeconds3, "offsetAfter");
        if (i2 < -28 || i2 > 31 || i2 == 0) {
            C2288b.m632a("Day of month indicator must be between -28 and 31 inclusive excluding zero");
            return c2416e;
        }
        if (z && !localTimeOf.equals(LocalTime.f621g)) {
            C2288b.m632a("Time must be midnight when end of day flag is true");
            return c2416e;
        }
        if (localTimeOf.getNano() == 0) {
            return new C2416e(enumC2384j2, i2, dayOfWeekM664s, localTimeOf, z, enumC2415d, zoneOffsetOfTotalSeconds, zoneOffsetOfTotalSeconds2, zoneOffsetOfTotalSeconds3);
        }
        C2288b.m632a("Time's nano-of-second must be zero");
        return c2416e;
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private Object writeReplace() {
        return new C2412a((byte) 3, this);
    }

    /* JADX INFO: renamed from: b */
    public final void m904b(DataOutput dataOutput) {
        int iE0 = this.f885e ? 86400 : this.f884d.e0();
        int totalSeconds = this.f887g.getTotalSeconds();
        int totalSeconds2 = this.f888h.getTotalSeconds() - totalSeconds;
        int totalSeconds3 = this.f889i.getTotalSeconds() - totalSeconds;
        int hour = iE0 % 3600 == 0 ? this.f885e ? 24 : this.f884d.getHour() : 31;
        int i = totalSeconds % 900 == 0 ? (totalSeconds / 900) + 128 : 255;
        int i2 = (totalSeconds2 == 0 || totalSeconds2 == 1800 || totalSeconds2 == 3600) ? totalSeconds2 / 1800 : 3;
        int i3 = (totalSeconds3 == 0 || totalSeconds3 == 1800 || totalSeconds3 == 3600) ? totalSeconds3 / 1800 : 3;
        DayOfWeek dayOfWeek = this.f883c;
        dataOutput.writeInt((this.f881a.getValue() << 28) + ((this.f882b + 32) << 22) + ((dayOfWeek == null ? 0 : dayOfWeek.getValue()) << 19) + (hour << 14) + (this.f886f.ordinal() << 12) + (i << 4) + (i2 << 2) + i3);
        if (hour == 31) {
            dataOutput.writeInt(iE0);
        }
        if (i == 255) {
            dataOutput.writeInt(totalSeconds);
        }
        if (i2 == 3) {
            dataOutput.writeInt(this.f888h.getTotalSeconds());
        }
        if (i3 == 3) {
            dataOutput.writeInt(this.f889i.getTotalSeconds());
        }
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C2416e)) {
            return false;
        }
        C2416e c2416e = (C2416e) obj;
        return this.f881a == c2416e.f881a && this.f882b == c2416e.f882b && this.f883c == c2416e.f883c && this.f886f == c2416e.f886f && this.f884d.equals(c2416e.f884d) && this.f885e == c2416e.f885e && this.f887g.equals(c2416e.f887g) && this.f888h.equals(c2416e.f888h) && this.f889i.equals(c2416e.f889i);
    }

    public final int hashCode() {
        int iE0 = ((this.f884d.e0() + (this.f885e ? 1 : 0)) << 15) + (this.f881a.ordinal() << 11) + ((this.f882b + 32) << 5);
        DayOfWeek dayOfWeek = this.f883c;
        return this.f889i.f650b ^ ((this.f887g.f650b ^ (this.f886f.ordinal() + (iE0 + ((dayOfWeek == null ? 7 : dayOfWeek.ordinal()) << 2)))) ^ this.f888h.f650b);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("TransitionRule[");
        sb.append(this.f889i.f650b - this.f888h.f650b > 0 ? "Gap " : "Overlap ");
        sb.append(this.f888h);
        sb.append(" to ");
        sb.append(this.f889i);
        sb.append(", ");
        DayOfWeek dayOfWeek = this.f883c;
        if (dayOfWeek != null) {
            byte b2 = this.f882b;
            if (b2 == -1) {
                sb.append(dayOfWeek.name());
                sb.append(" on or before last day of ");
                sb.append(this.f881a.name());
            } else if (b2 < 0) {
                sb.append(dayOfWeek.name());
                sb.append(" on or before last day minus ");
                sb.append((-this.f882b) - 1);
                sb.append(" of ");
                sb.append(this.f881a.name());
            } else {
                sb.append(dayOfWeek.name());
                sb.append(" on or after ");
                sb.append(this.f881a.name());
                sb.append(' ');
                sb.append((int) this.f882b);
            }
        } else {
            sb.append(this.f881a.name());
            sb.append(' ');
            sb.append((int) this.f882b);
        }
        sb.append(" at ");
        sb.append(this.f885e ? "24:00" : this.f884d.toString());
        sb.append(" ");
        sb.append(this.f886f);
        sb.append(", standard offset ");
        sb.append(this.f887g);
        sb.append(']');
        return sb.toString();
    }
}
