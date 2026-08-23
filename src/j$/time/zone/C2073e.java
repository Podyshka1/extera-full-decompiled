package j$.time.zone;

import j$.time.C2034h;
import j$.time.DayOfWeek;
import j$.time.EnumC2036j;
import j$.time.ZoneOffset;
import j$.time.temporal.EnumC2047a;
import j$.util.Objects;
import java.io.DataInput;
import java.io.DataOutput;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;

/* JADX INFO: renamed from: j$.time.zone.e */
/* JADX INFO: loaded from: classes2.dex */
public final class C2073e implements Serializable {
    private static final long serialVersionUID = 6889046316657758795L;

    /* JADX INFO: renamed from: a */
    public final EnumC2036j f643a;

    /* JADX INFO: renamed from: b */
    public final byte f644b;

    /* JADX INFO: renamed from: c */
    public final DayOfWeek f645c;

    /* JADX INFO: renamed from: d */
    public final C2034h f646d;

    /* JADX INFO: renamed from: e */
    public final boolean f647e;

    /* JADX INFO: renamed from: f */
    public final EnumC2072d f648f;

    /* JADX INFO: renamed from: g */
    public final ZoneOffset f649g;

    /* JADX INFO: renamed from: h */
    public final ZoneOffset f650h;

    /* JADX INFO: renamed from: i */
    public final ZoneOffset f651i;

    public C2073e(EnumC2036j enumC2036j, int i, DayOfWeek dayOfWeek, C2034h c2034h, boolean z, EnumC2072d enumC2072d, ZoneOffset zoneOffset, ZoneOffset zoneOffset2, ZoneOffset zoneOffset3) {
        this.f643a = enumC2036j;
        this.f644b = (byte) i;
        this.f645c = dayOfWeek;
        this.f646d = c2034h;
        this.f647e = z;
        this.f648f = enumC2072d;
        this.f649g = zoneOffset;
        this.f650h = zoneOffset2;
        this.f651i = zoneOffset3;
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private Object writeReplace() {
        return new C2069a((byte) 3, this);
    }

    /* JADX INFO: renamed from: b */
    public final void m679b(DataOutput dataOutput) {
        byte b;
        int iM626N = this.f647e ? 86400 : this.f646d.m626N();
        int totalSeconds = this.f649g.getTotalSeconds();
        int totalSeconds2 = this.f650h.getTotalSeconds() - totalSeconds;
        int totalSeconds3 = this.f651i.getTotalSeconds() - totalSeconds;
        if (iM626N % 3600 == 0) {
            b = this.f647e ? (byte) 24 : this.f646d.f562a;
        } else {
            b = 31;
        }
        int i = totalSeconds % 900 == 0 ? (totalSeconds / 900) + 128 : 255;
        int i2 = (totalSeconds2 == 0 || totalSeconds2 == 1800 || totalSeconds2 == 3600) ? totalSeconds2 / 1800 : 3;
        int i3 = (totalSeconds3 == 0 || totalSeconds3 == 1800 || totalSeconds3 == 3600) ? totalSeconds3 / 1800 : 3;
        DayOfWeek dayOfWeek = this.f645c;
        dataOutput.writeInt((this.f643a.getValue() << 28) + ((this.f644b + 32) << 22) + ((dayOfWeek == null ? 0 : dayOfWeek.getValue()) << 19) + (b << 14) + (this.f648f.ordinal() << 12) + (i << 4) + (i2 << 2) + i3);
        if (b == 31) {
            dataOutput.writeInt(iM626N);
        }
        if (i == 255) {
            dataOutput.writeInt(totalSeconds);
        }
        if (i2 == 3) {
            dataOutput.writeInt(this.f650h.getTotalSeconds());
        }
        if (i3 == 3) {
            dataOutput.writeInt(this.f651i.getTotalSeconds());
        }
    }

    /* JADX INFO: renamed from: a */
    public static C2073e m678a(DataInput dataInput) {
        EnumC2072d enumC2072d;
        C2034h c2034hM615A;
        int i = dataInput.readInt();
        EnumC2036j enumC2036jM631E = EnumC2036j.m631E(i >>> 28);
        int i2 = ((264241152 & i) >>> 22) - 32;
        int i3 = (3670016 & i) >>> 19;
        DayOfWeek dayOfWeekM454v = i3 == 0 ? null : DayOfWeek.m454v(i3);
        int i4 = (507904 & i) >>> 14;
        EnumC2072d enumC2072d2 = EnumC2072d.values()[(i & 12288) >>> 12];
        int i5 = (i & 4080) >>> 4;
        int i6 = (i & 12) >>> 2;
        int i7 = i & 3;
        if (i4 == 31) {
            long j = dataInput.readInt();
            C2034h c2034h = C2034h.f558e;
            EnumC2047a.SECOND_OF_DAY.m649r(j);
            int i8 = (int) (j / 3600);
            long j2 = j - ((long) (i8 * 3600));
            int i9 = (int) (j2 / 60);
            enumC2072d = enumC2072d2;
            c2034hM615A = C2034h.m615A(i8, i9, (int) (j2 - ((long) (i9 * 60))), 0);
        } else {
            enumC2072d = enumC2072d2;
            int i10 = i4 % 24;
            C2034h c2034h2 = C2034h.f558e;
            EnumC2047a.HOUR_OF_DAY.m649r(i10);
            c2034hM615A = C2034h.f561h[i10];
        }
        ZoneOffset zoneOffsetM524H = ZoneOffset.m524H(i5 == 255 ? dataInput.readInt() : (i5 - 128) * 900);
        ZoneOffset zoneOffsetM524H2 = ZoneOffset.m524H(i6 == 3 ? dataInput.readInt() : (i6 * 1800) + zoneOffsetM524H.getTotalSeconds());
        ZoneOffset zoneOffsetM524H3 = ZoneOffset.m524H(i7 == 3 ? dataInput.readInt() : (i7 * 1800) + zoneOffsetM524H.getTotalSeconds());
        boolean z = i4 == 24;
        Objects.requireNonNull(enumC2036jM631E, "month");
        Objects.requireNonNull(c2034hM615A, "time");
        EnumC2072d enumC2072d3 = enumC2072d;
        Objects.requireNonNull(enumC2072d3, "timeDefnition");
        Objects.requireNonNull(zoneOffsetM524H, "standardOffset");
        Objects.requireNonNull(zoneOffsetM524H2, "offsetBefore");
        Objects.requireNonNull(zoneOffsetM524H3, "offsetAfter");
        if (i2 < -28 || i2 > 31 || i2 == 0) {
            throw new IllegalArgumentException("Day of month indicator must be between -28 and 31 inclusive excluding zero");
        }
        if (z && !c2034hM615A.equals(C2034h.f560g)) {
            throw new IllegalArgumentException("Time must be midnight when end of day flag is true");
        }
        if (c2034hM615A.f565d != 0) {
            throw new IllegalArgumentException("Time's nano-of-second must be zero");
        }
        return new C2073e(enumC2036jM631E, i2, dayOfWeekM454v, c2034hM615A, z, enumC2072d3, zoneOffsetM524H, zoneOffsetM524H2, zoneOffsetM524H3);
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof C2073e) {
            C2073e c2073e = (C2073e) obj;
            if (this.f643a == c2073e.f643a && this.f644b == c2073e.f644b && this.f645c == c2073e.f645c && this.f648f == c2073e.f648f && this.f646d.equals(c2073e.f646d) && this.f647e == c2073e.f647e && this.f649g.equals(c2073e.f649g) && this.f650h.equals(c2073e.f650h) && this.f651i.equals(c2073e.f651i)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int iM626N = ((this.f646d.m626N() + (this.f647e ? 1 : 0)) << 15) + (this.f643a.ordinal() << 11) + ((this.f644b + 32) << 5);
        DayOfWeek dayOfWeek = this.f645c;
        return ((this.f649g.f430b ^ (this.f648f.ordinal() + (iM626N + ((dayOfWeek == null ? 7 : dayOfWeek.ordinal()) << 2)))) ^ this.f650h.f430b) ^ this.f651i.f430b;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("TransitionRule[");
        sb.append(this.f651i.f430b - this.f650h.f430b > 0 ? "Gap " : "Overlap ");
        sb.append(this.f650h);
        sb.append(" to ");
        sb.append(this.f651i);
        sb.append(", ");
        DayOfWeek dayOfWeek = this.f645c;
        if (dayOfWeek != null) {
            byte b = this.f644b;
            if (b == -1) {
                sb.append(dayOfWeek.name());
                sb.append(" on or before last day of ");
                sb.append(this.f643a.name());
            } else if (b < 0) {
                sb.append(dayOfWeek.name());
                sb.append(" on or before last day minus ");
                sb.append((-this.f644b) - 1);
                sb.append(" of ");
                sb.append(this.f643a.name());
            } else {
                sb.append(dayOfWeek.name());
                sb.append(" on or after ");
                sb.append(this.f643a.name());
                sb.append(' ');
                sb.append((int) this.f644b);
            }
        } else {
            sb.append(this.f643a.name());
            sb.append(' ');
            sb.append((int) this.f644b);
        }
        sb.append(" at ");
        sb.append(this.f647e ? "24:00" : this.f646d.toString());
        sb.append(" ");
        sb.append(this.f648f);
        sb.append(", standard offset ");
        sb.append(this.f649g);
        sb.append(']');
        return sb.toString();
    }
}
