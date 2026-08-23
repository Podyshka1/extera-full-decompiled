package j$.time.zone;

import j$.time.C2162j;
import j$.time.DayOfWeek;
import j$.time.EnumC2164l;
import j$.time.ZoneOffset;
import j$.time.temporal.EnumC2173a;
import java.io.DataInput;
import java.io.DataOutput;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.Objects;

/* JADX INFO: renamed from: j$.time.zone.e */
/* JADX INFO: compiled from: r8-map-id-aec3840a64bd99e9b6e79ef11e6742e52cf8ea8118315f6a864397976aaae532 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2202e implements Serializable {
    private static final long serialVersionUID = 6889046316657758795L;

    /* JADX INFO: renamed from: a */
    public final EnumC2164l f737a;

    /* JADX INFO: renamed from: b */
    public final byte f738b;

    /* JADX INFO: renamed from: c */
    public final DayOfWeek f739c;

    /* JADX INFO: renamed from: d */
    public final C2162j f740d;

    /* JADX INFO: renamed from: e */
    public final boolean f741e;

    /* JADX INFO: renamed from: f */
    public final EnumC2201d f742f;

    /* JADX INFO: renamed from: g */
    public final ZoneOffset f743g;

    /* JADX INFO: renamed from: h */
    public final ZoneOffset f744h;

    /* JADX INFO: renamed from: i */
    public final ZoneOffset f745i;

    public C2202e(EnumC2164l enumC2164l, int i, DayOfWeek dayOfWeek, C2162j c2162j, boolean z, EnumC2201d enumC2201d, ZoneOffset zoneOffset, ZoneOffset zoneOffset2, ZoneOffset zoneOffset3) {
        this.f737a = enumC2164l;
        this.f738b = (byte) i;
        this.f739c = dayOfWeek;
        this.f740d = c2162j;
        this.f741e = z;
        this.f742f = enumC2201d;
        this.f743g = zoneOffset;
        this.f744h = zoneOffset2;
        this.f745i = zoneOffset3;
    }

    /* JADX INFO: renamed from: a */
    public static C2202e m748a(DataInput dataInput) {
        EnumC2201d enumC2201d;
        C2162j c2162jM693B;
        int i = dataInput.readInt();
        EnumC2164l enumC2164lM702I = EnumC2164l.m702I(i >>> 28);
        int i2 = ((264241152 & i) >>> 22) - 32;
        int i3 = (3670016 & i) >>> 19;
        DayOfWeek dayOfWeekM481t = i3 == 0 ? null : DayOfWeek.m481t(i3);
        int i4 = (507904 & i) >>> 14;
        EnumC2201d enumC2201d2 = EnumC2201d.values()[(i & 12288) >>> 12];
        int i5 = (i & 4080) >>> 4;
        int i6 = (i & 12) >>> 2;
        int i7 = i & 3;
        if (i4 == 31) {
            long j = dataInput.readInt();
            C2162j c2162j = C2162j.f651e;
            EnumC2173a.SECOND_OF_DAY.m719X(j);
            int i8 = (int) (j / 3600);
            long j2 = j - ((long) (i8 * 3600));
            int i9 = (int) (j2 / 60);
            enumC2201d = enumC2201d2;
            c2162jM693B = C2162j.m693B(i8, i9, (int) (j2 - ((long) (i9 * 60))), 0);
        } else {
            enumC2201d = enumC2201d2;
            int i10 = i4 % 24;
            C2162j c2162j2 = C2162j.f651e;
            EnumC2173a.HOUR_OF_DAY.m719X(i10);
            c2162jM693B = C2162j.f654h[i10];
        }
        ZoneOffset zoneOffsetM549Z = ZoneOffset.m549Z(i5 == 255 ? dataInput.readInt() : (i5 - 128) * 900);
        ZoneOffset zoneOffsetM549Z2 = ZoneOffset.m549Z(i6 == 3 ? dataInput.readInt() : (i6 * 1800) + zoneOffsetM549Z.getTotalSeconds());
        ZoneOffset zoneOffsetM549Z3 = ZoneOffset.m549Z(i7 == 3 ? dataInput.readInt() : (i7 * 1800) + zoneOffsetM549Z.getTotalSeconds());
        boolean z = i4 == 24;
        Objects.requireNonNull(enumC2164lM702I, "month");
        Objects.requireNonNull(c2162jM693B, "time");
        EnumC2201d enumC2201d3 = enumC2201d;
        Objects.requireNonNull(enumC2201d3, "timeDefnition");
        if (i2 < -28 || i2 > 31 || i2 == 0) {
            throw new IllegalArgumentException("Day of month indicator must be between -28 and 31 inclusive excluding zero");
        }
        if (z && !c2162jM693B.equals(C2162j.f653g)) {
            throw new IllegalArgumentException("Time must be midnight when end of day flag is true");
        }
        if (c2162jM693B.f658d == 0) {
            return new C2202e(enumC2164lM702I, i2, dayOfWeekM481t, c2162jM693B, z, enumC2201d3, zoneOffsetM549Z, zoneOffsetM549Z2, zoneOffsetM549Z3);
        }
        throw new IllegalArgumentException("Time's nano-of-second must be zero");
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private Object writeReplace() {
        return new C2198a((byte) 3, this);
    }

    /* JADX INFO: renamed from: b */
    public final void m749b(DataOutput dataOutput) {
        int iE0 = this.f741e ? 86400 : this.f740d.e0();
        int totalSeconds = this.f743g.getTotalSeconds();
        int totalSeconds2 = this.f744h.getTotalSeconds() - totalSeconds;
        int totalSeconds3 = this.f745i.getTotalSeconds() - totalSeconds;
        byte b2 = iE0 % 3600 == 0 ? this.f741e ? (byte) 24 : this.f740d.f655a : (byte) 31;
        int i = totalSeconds % 900 == 0 ? (totalSeconds / 900) + 128 : 255;
        int i2 = (totalSeconds2 == 0 || totalSeconds2 == 1800 || totalSeconds2 == 3600) ? totalSeconds2 / 1800 : 3;
        int i3 = (totalSeconds3 == 0 || totalSeconds3 == 1800 || totalSeconds3 == 3600) ? totalSeconds3 / 1800 : 3;
        DayOfWeek dayOfWeek = this.f739c;
        dataOutput.writeInt((this.f737a.getValue() << 28) + ((this.f738b + 32) << 22) + ((dayOfWeek == null ? 0 : dayOfWeek.getValue()) << 19) + (b2 << 14) + (this.f742f.ordinal() << 12) + (i << 4) + (i2 << 2) + i3);
        if (b2 == 31) {
            dataOutput.writeInt(iE0);
        }
        if (i == 255) {
            dataOutput.writeInt(totalSeconds);
        }
        if (i2 == 3) {
            dataOutput.writeInt(this.f744h.getTotalSeconds());
        }
        if (i3 == 3) {
            dataOutput.writeInt(this.f745i.getTotalSeconds());
        }
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C2202e)) {
            return false;
        }
        C2202e c2202e = (C2202e) obj;
        return this.f737a == c2202e.f737a && this.f738b == c2202e.f738b && this.f739c == c2202e.f739c && this.f742f == c2202e.f742f && this.f740d.equals(c2202e.f740d) && this.f741e == c2202e.f741e && this.f743g.equals(c2202e.f743g) && this.f744h.equals(c2202e.f744h) && this.f745i.equals(c2202e.f745i);
    }

    public final int hashCode() {
        int iE0 = ((this.f740d.e0() + (this.f741e ? 1 : 0)) << 15) + (this.f737a.ordinal() << 11) + ((this.f738b + 32) << 5);
        DayOfWeek dayOfWeek = this.f739c;
        return this.f745i.f493b ^ ((this.f743g.f493b ^ (this.f742f.ordinal() + (iE0 + ((dayOfWeek == null ? 7 : dayOfWeek.ordinal()) << 2)))) ^ this.f744h.f493b);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("TransitionRule[");
        sb.append(this.f745i.f493b - this.f744h.f493b > 0 ? "Gap " : "Overlap ");
        sb.append(this.f744h);
        sb.append(" to ");
        sb.append(this.f745i);
        sb.append(", ");
        DayOfWeek dayOfWeek = this.f739c;
        if (dayOfWeek != null) {
            byte b2 = this.f738b;
            if (b2 == -1) {
                sb.append(dayOfWeek.name());
                sb.append(" on or before last day of ");
                sb.append(this.f737a.name());
            } else if (b2 < 0) {
                sb.append(dayOfWeek.name());
                sb.append(" on or before last day minus ");
                sb.append((-this.f738b) - 1);
                sb.append(" of ");
                sb.append(this.f737a.name());
            } else {
                sb.append(dayOfWeek.name());
                sb.append(" on or after ");
                sb.append(this.f737a.name());
                sb.append(' ');
                sb.append((int) this.f738b);
            }
        } else {
            sb.append(this.f737a.name());
            sb.append(' ');
            sb.append((int) this.f738b);
        }
        sb.append(" at ");
        sb.append(this.f741e ? "24:00" : this.f740d.toString());
        sb.append(" ");
        sb.append(this.f742f);
        sb.append(", standard offset ");
        sb.append(this.f743g);
        sb.append(']');
        return sb.toString();
    }
}
