package p022j$.time.zone;

import java.io.DataInput;
import java.io.DataOutput;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import p022j$.time.C2173h;
import p022j$.time.DayOfWeek;
import p022j$.time.EnumC2175j;
import p022j$.time.ZoneOffset;
import p022j$.time.temporal.EnumC2186a;
import p022j$.util.Objects;

/* JADX INFO: renamed from: j$.time.zone.e */
/* JADX INFO: loaded from: classes2.dex */
public final class C2212e implements Serializable {
    private static final long serialVersionUID = 6889046316657758795L;

    /* JADX INFO: renamed from: a */
    public final EnumC2175j f878a;

    /* JADX INFO: renamed from: b */
    public final byte f879b;

    /* JADX INFO: renamed from: c */
    public final DayOfWeek f880c;

    /* JADX INFO: renamed from: d */
    public final C2173h f881d;

    /* JADX INFO: renamed from: e */
    public final boolean f882e;

    /* JADX INFO: renamed from: f */
    public final EnumC2211d f883f;

    /* JADX INFO: renamed from: g */
    public final ZoneOffset f884g;

    /* JADX INFO: renamed from: h */
    public final ZoneOffset f885h;

    /* JADX INFO: renamed from: i */
    public final ZoneOffset f886i;

    public C2212e(EnumC2175j enumC2175j, int i, DayOfWeek dayOfWeek, C2173h c2173h, boolean z, EnumC2211d enumC2211d, ZoneOffset zoneOffset, ZoneOffset zoneOffset2, ZoneOffset zoneOffset3) {
        this.f878a = enumC2175j;
        this.f879b = (byte) i;
        this.f880c = dayOfWeek;
        this.f881d = c2173h;
        this.f882e = z;
        this.f883f = enumC2211d;
        this.f884g = zoneOffset;
        this.f885h = zoneOffset2;
        this.f886i = zoneOffset3;
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private Object writeReplace() {
        return new C2208a((byte) 3, this);
    }

    /* JADX INFO: renamed from: b */
    public final void m804b(DataOutput dataOutput) {
        byte b;
        int iM749N = this.f882e ? 86400 : this.f881d.m749N();
        int totalSeconds = this.f884g.getTotalSeconds();
        int totalSeconds2 = this.f885h.getTotalSeconds() - totalSeconds;
        int totalSeconds3 = this.f886i.getTotalSeconds() - totalSeconds;
        if (iM749N % 3600 == 0) {
            b = this.f882e ? (byte) 24 : this.f881d.f797a;
        } else {
            b = 31;
        }
        int i = totalSeconds % 900 == 0 ? (totalSeconds / 900) + 128 : 255;
        int i2 = (totalSeconds2 == 0 || totalSeconds2 == 1800 || totalSeconds2 == 3600) ? totalSeconds2 / 1800 : 3;
        int i3 = (totalSeconds3 == 0 || totalSeconds3 == 1800 || totalSeconds3 == 3600) ? totalSeconds3 / 1800 : 3;
        DayOfWeek dayOfWeek = this.f880c;
        dataOutput.writeInt((this.f878a.getValue() << 28) + ((this.f879b + 32) << 22) + ((dayOfWeek == null ? 0 : dayOfWeek.getValue()) << 19) + (b << 14) + (this.f883f.ordinal() << 12) + (i << 4) + (i2 << 2) + i3);
        if (b == 31) {
            dataOutput.writeInt(iM749N);
        }
        if (i == 255) {
            dataOutput.writeInt(totalSeconds);
        }
        if (i2 == 3) {
            dataOutput.writeInt(this.f885h.getTotalSeconds());
        }
        if (i3 == 3) {
            dataOutput.writeInt(this.f886i.getTotalSeconds());
        }
    }

    /* JADX INFO: renamed from: a */
    public static C2212e m803a(DataInput dataInput) {
        EnumC2211d enumC2211d;
        C2173h c2173hM738A;
        int i = dataInput.readInt();
        EnumC2175j enumC2175jM754E = EnumC2175j.m754E(i >>> 28);
        int i2 = ((264241152 & i) >>> 22) - 32;
        int i3 = (3670016 & i) >>> 19;
        DayOfWeek dayOfWeekM574v = i3 == 0 ? null : DayOfWeek.m574v(i3);
        int i4 = (507904 & i) >>> 14;
        EnumC2211d enumC2211d2 = EnumC2211d.values()[(i & 12288) >>> 12];
        int i5 = (i & 4080) >>> 4;
        int i6 = (i & 12) >>> 2;
        int i7 = i & 3;
        if (i4 == 31) {
            long j = dataInput.readInt();
            C2173h c2173h = C2173h.f793e;
            EnumC2186a.SECOND_OF_DAY.m774r(j);
            int i8 = (int) (j / 3600);
            long j2 = j - ((long) (i8 * 3600));
            int i9 = (int) (j2 / 60);
            enumC2211d = enumC2211d2;
            c2173hM738A = C2173h.m738A(i8, i9, (int) (j2 - ((long) (i9 * 60))), 0);
        } else {
            enumC2211d = enumC2211d2;
            int i10 = i4 % 24;
            C2173h c2173h2 = C2173h.f793e;
            EnumC2186a.HOUR_OF_DAY.m774r(i10);
            c2173hM738A = C2173h.f796h[i10];
        }
        ZoneOffset zoneOffsetM647H = ZoneOffset.m647H(i5 == 255 ? dataInput.readInt() : (i5 - 128) * 900);
        ZoneOffset zoneOffsetM647H2 = ZoneOffset.m647H(i6 == 3 ? dataInput.readInt() : (i6 * 1800) + zoneOffsetM647H.getTotalSeconds());
        ZoneOffset zoneOffsetM647H3 = ZoneOffset.m647H(i7 == 3 ? dataInput.readInt() : (i7 * 1800) + zoneOffsetM647H.getTotalSeconds());
        boolean z = i4 == 24;
        Objects.requireNonNull(enumC2175jM754E, "month");
        Objects.requireNonNull(c2173hM738A, "time");
        EnumC2211d enumC2211d3 = enumC2211d;
        Objects.requireNonNull(enumC2211d3, "timeDefnition");
        Objects.requireNonNull(zoneOffsetM647H, "standardOffset");
        Objects.requireNonNull(zoneOffsetM647H2, "offsetBefore");
        Objects.requireNonNull(zoneOffsetM647H3, "offsetAfter");
        if (i2 < -28 || i2 > 31 || i2 == 0) {
            throw new IllegalArgumentException("Day of month indicator must be between -28 and 31 inclusive excluding zero");
        }
        if (z && !c2173hM738A.equals(C2173h.f795g)) {
            throw new IllegalArgumentException("Time must be midnight when end of day flag is true");
        }
        if (c2173hM738A.f800d != 0) {
            throw new IllegalArgumentException("Time's nano-of-second must be zero");
        }
        return new C2212e(enumC2175jM754E, i2, dayOfWeekM574v, c2173hM738A, z, enumC2211d3, zoneOffsetM647H, zoneOffsetM647H2, zoneOffsetM647H3);
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof C2212e) {
            C2212e c2212e = (C2212e) obj;
            if (this.f878a == c2212e.f878a && this.f879b == c2212e.f879b && this.f880c == c2212e.f880c && this.f883f == c2212e.f883f && this.f881d.equals(c2212e.f881d) && this.f882e == c2212e.f882e && this.f884g.equals(c2212e.f884g) && this.f885h.equals(c2212e.f885h) && this.f886i.equals(c2212e.f886i)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int iM749N = ((this.f881d.m749N() + (this.f882e ? 1 : 0)) << 15) + (this.f878a.ordinal() << 11) + ((this.f879b + 32) << 5);
        DayOfWeek dayOfWeek = this.f880c;
        return ((this.f884g.f662b ^ (this.f883f.ordinal() + (iM749N + ((dayOfWeek == null ? 7 : dayOfWeek.ordinal()) << 2)))) ^ this.f885h.f662b) ^ this.f886i.f662b;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("TransitionRule[");
        sb.append(this.f886i.f662b - this.f885h.f662b > 0 ? "Gap " : "Overlap ");
        sb.append(this.f885h);
        sb.append(" to ");
        sb.append(this.f886i);
        sb.append(", ");
        DayOfWeek dayOfWeek = this.f880c;
        if (dayOfWeek != null) {
            byte b = this.f879b;
            if (b == -1) {
                sb.append(dayOfWeek.name());
                sb.append(" on or before last day of ");
                sb.append(this.f878a.name());
            } else if (b < 0) {
                sb.append(dayOfWeek.name());
                sb.append(" on or before last day minus ");
                sb.append((-this.f879b) - 1);
                sb.append(" of ");
                sb.append(this.f878a.name());
            } else {
                sb.append(dayOfWeek.name());
                sb.append(" on or after ");
                sb.append(this.f878a.name());
                sb.append(' ');
                sb.append((int) this.f879b);
            }
        } else {
            sb.append(this.f878a.name());
            sb.append(' ');
            sb.append((int) this.f879b);
        }
        sb.append(" at ");
        sb.append(this.f882e ? "24:00" : this.f881d.toString());
        sb.append(" ");
        sb.append(this.f883f);
        sb.append(", standard offset ");
        sb.append(this.f884g);
        sb.append(']');
        return sb.toString();
    }
}
