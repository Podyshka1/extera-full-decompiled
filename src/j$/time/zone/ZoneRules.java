package j$.time.zone;

import j$.time.AbstractC2102b;
import j$.time.C2162j;
import j$.time.DayOfWeek;
import j$.time.EnumC2164l;
import j$.time.Instant;
import j$.time.LocalDate;
import j$.time.LocalDateTime;
import j$.time.ZoneOffset;
import j$.time.chrono.C2121r;
import j$.time.temporal.C2186n;
import j$.time.temporal.EnumC2173a;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
import java.util.TimeZone;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;

/* JADX INFO: compiled from: r8-map-id-aec3840a64bd99e9b6e79ef11e6742e52cf8ea8118315f6a864397976aaae532 */
/* JADX INFO: loaded from: classes2.dex */
public final class ZoneRules implements Serializable {

    /* JADX INFO: renamed from: i */
    public static final long[] f716i = new long[0];

    /* JADX INFO: renamed from: j */
    public static final C2202e[] f717j = new C2202e[0];

    /* JADX INFO: renamed from: k */
    public static final LocalDateTime[] f718k = new LocalDateTime[0];

    /* JADX INFO: renamed from: l */
    public static final C2199b[] f719l = new C2199b[0];
    private static final long serialVersionUID = 3044319355680032515L;

    /* JADX INFO: renamed from: a */
    public final long[] f720a;

    /* JADX INFO: renamed from: b */
    public final ZoneOffset[] f721b;

    /* JADX INFO: renamed from: c */
    public final long[] f722c;

    /* JADX INFO: renamed from: d */
    public final LocalDateTime[] f723d;

    /* JADX INFO: renamed from: e */
    public final ZoneOffset[] f724e;

    /* JADX INFO: renamed from: f */
    public final C2202e[] f725f;

    /* JADX INFO: renamed from: g */
    public final TimeZone f726g;

    /* JADX INFO: renamed from: h */
    public final transient ConcurrentMap f727h = new ConcurrentHashMap();

    public ZoneRules(long[] jArr, ZoneOffset[] zoneOffsetArr, long[] jArr2, ZoneOffset[] zoneOffsetArr2, C2202e[] c2202eArr) {
        this.f720a = jArr;
        this.f721b = zoneOffsetArr;
        this.f722c = jArr2;
        this.f724e = zoneOffsetArr2;
        this.f725f = c2202eArr;
        if (jArr2.length == 0) {
            this.f723d = f718k;
        } else {
            ArrayList arrayList = new ArrayList();
            int i = 0;
            while (i < jArr2.length) {
                int i2 = i + 1;
                C2199b c2199b = new C2199b(jArr2[i], zoneOffsetArr2[i], zoneOffsetArr2[i2]);
                boolean zM747t = c2199b.m747t();
                LocalDateTime localDateTime = c2199b.f732b;
                if (zM747t) {
                    arrayList.add(localDateTime);
                    arrayList.add(c2199b.f732b.m524X(c2199b.f734d.getTotalSeconds() - c2199b.f733c.getTotalSeconds()));
                } else {
                    arrayList.add(localDateTime.m524X(c2199b.f734d.getTotalSeconds() - c2199b.f733c.getTotalSeconds()));
                    arrayList.add(c2199b.f732b);
                }
                i = i2;
            }
            this.f723d = (LocalDateTime[]) arrayList.toArray(new LocalDateTime[arrayList.size()]);
        }
        this.f726g = null;
    }

    /* JADX INFO: renamed from: a */
    public static Object m735a(LocalDateTime localDateTime, C2199b c2199b) {
        LocalDateTime localDateTime2 = c2199b.f732b;
        if (c2199b.m747t()) {
            if (localDateTime.m521G(localDateTime2)) {
                return c2199b.f733c;
            }
            if (!localDateTime.m521G(c2199b.f732b.m524X(c2199b.f734d.getTotalSeconds() - c2199b.f733c.getTotalSeconds()))) {
                return c2199b.f734d;
            }
        } else {
            if (!localDateTime.m521G(localDateTime2)) {
                return c2199b.f734d;
            }
            if (localDateTime.m521G(c2199b.f732b.m524X(c2199b.f734d.getTotalSeconds() - c2199b.f733c.getTotalSeconds()))) {
                return c2199b.f733c;
            }
        }
        return c2199b;
    }

    /* JADX INFO: renamed from: c */
    public static int m736c(long j, ZoneOffset zoneOffset) {
        return LocalDate.d0(Math.floorDiv(j + ((long) zoneOffset.getTotalSeconds()), 86400L)).getYear();
    }

    /* JADX INFO: renamed from: h */
    public static ZoneOffset m737h(int i) {
        return ZoneOffset.m549Z(i / 1000);
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private Object writeReplace() {
        return new C2198a(this.f726g != null ? (byte) 100 : (byte) 1, this);
    }

    /* JADX INFO: renamed from: b */
    public final C2199b[] m738b(int i) {
        LocalDate localDateM501B;
        C2199b[] c2199bArr = f719l;
        Integer numValueOf = Integer.valueOf(i);
        C2199b[] c2199bArr2 = (C2199b[]) ((ConcurrentHashMap) this.f727h).get(numValueOf);
        if (c2199bArr2 != null) {
            return c2199bArr2;
        }
        long j = 1;
        int i2 = 0;
        int i3 = 1;
        if (this.f726g != null) {
            if (i < 1800) {
                return c2199bArr;
            }
            LocalDateTime localDateTime = LocalDateTime.f474c;
            LocalDate localDateOf = LocalDate.of(i - 1, 12, 31);
            EnumC2173a.HOUR_OF_DAY.m719X(0L);
            long epochSecond = new LocalDateTime(localDateOf, C2162j.f654h[0]).toEpochSecond(this.f721b[0]);
            long j2 = 1000;
            int offset = this.f726g.getOffset(epochSecond * 1000);
            long j3 = 31968000 + epochSecond;
            while (epochSecond < j3) {
                long j4 = epochSecond + 7776000;
                long j5 = j2;
                if (offset != this.f726g.getOffset(j4 * j5)) {
                    while (j4 - epochSecond > j) {
                        long jFloorDiv = Math.floorDiv(j4 + epochSecond, 2L);
                        if (this.f726g.getOffset(jFloorDiv * j5) == offset) {
                            epochSecond = jFloorDiv;
                        } else {
                            j4 = jFloorDiv;
                        }
                        j = 1;
                    }
                    if (this.f726g.getOffset(epochSecond * j5) == offset) {
                        epochSecond = j4;
                    }
                    ZoneOffset zoneOffsetM737h = m737h(offset);
                    int offset2 = this.f726g.getOffset(epochSecond * j5);
                    ZoneOffset zoneOffsetM737h2 = m737h(offset2);
                    if (m736c(epochSecond, zoneOffsetM737h2) == i) {
                        c2199bArr = (C2199b[]) Arrays.copyOf(c2199bArr, c2199bArr.length + 1);
                        c2199bArr[c2199bArr.length - 1] = new C2199b(epochSecond, zoneOffsetM737h, zoneOffsetM737h2);
                    }
                    offset = offset2;
                } else {
                    epochSecond = j4;
                }
                j2 = j5;
                j = 1;
            }
            if (1916 <= i && i < 2100) {
                ((ConcurrentHashMap) this.f727h).putIfAbsent(numValueOf, c2199bArr);
            }
            return c2199bArr;
        }
        C2202e[] c2202eArr = this.f725f;
        C2199b[] c2199bArr3 = new C2199b[c2202eArr.length];
        int i4 = 0;
        while (i4 < c2202eArr.length) {
            C2202e c2202e = c2202eArr[i4];
            byte b2 = c2202e.f738b;
            EnumC2164l enumC2164l = c2202e.f737a;
            if (b2 < 0) {
                long j6 = i;
                C2121r.f543c.getClass();
                int iM703B = enumC2164l.m703B(C2121r.m621X(j6)) + 1 + c2202e.f738b;
                LocalDate localDate = LocalDate.f469d;
                EnumC2173a.YEAR.m719X(j6);
                EnumC2173a.DAY_OF_MONTH.m719X(iM703B);
                localDateM501B = LocalDate.m501B(i, enumC2164l.getValue(), iM703B);
                DayOfWeek dayOfWeek = c2202e.f739c;
                if (dayOfWeek != null) {
                    localDateM501B = localDateM501B.mo499h(new C2186n(dayOfWeek.getValue(), i3));
                }
            } else {
                LocalDate localDate2 = LocalDate.f469d;
                EnumC2173a.YEAR.m719X(i);
                EnumC2173a.DAY_OF_MONTH.m719X(b2);
                localDateM501B = LocalDate.m501B(i, enumC2164l.getValue(), b2);
                DayOfWeek dayOfWeek2 = c2202e.f739c;
                if (dayOfWeek2 != null) {
                    localDateM501B = localDateM501B.mo499h(new C2186n(dayOfWeek2.getValue(), i2));
                }
            }
            if (c2202e.f741e) {
                localDateM501B = localDateM501B.plusDays(1L);
            }
            LocalDateTime localDateTimeM518I = LocalDateTime.m518I(localDateM501B, c2202e.f740d);
            EnumC2201d enumC2201d = c2202e.f742f;
            ZoneOffset zoneOffset = c2202e.f743g;
            ZoneOffset zoneOffset2 = c2202e.f744h;
            int i5 = AbstractC2200c.f735a[enumC2201d.ordinal()];
            if (i5 == 1) {
                localDateTimeM518I = localDateTimeM518I.m524X(zoneOffset2.getTotalSeconds() - ZoneOffset.UTC.getTotalSeconds());
            } else if (i5 == 2) {
                localDateTimeM518I = localDateTimeM518I.m524X(zoneOffset2.getTotalSeconds() - zoneOffset.getTotalSeconds());
            }
            c2199bArr3[i4] = new C2199b(localDateTimeM518I, c2202e.f744h, c2202e.f745i);
            i4++;
            i2 = 0;
        }
        if (i < 2100) {
            ((ConcurrentHashMap) this.f727h).putIfAbsent(numValueOf, c2199bArr3);
        }
        return c2199bArr3;
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x0066  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0068  */
    /* JADX INFO: renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object m739d(LocalDateTime localDateTime) {
        boolean z;
        Object obj = null;
        int i = 0;
        if (this.f726g != null) {
            C2199b[] c2199bArrM738b = m738b(localDateTime.f476a.getYear());
            if (c2199bArrM738b.length == 0) {
                return m737h(this.f726g.getOffset(localDateTime.toEpochSecond(this.f721b[0]) * 1000));
            }
            int length = c2199bArrM738b.length;
            while (i < length) {
                C2199b c2199b = c2199bArrM738b[i];
                Object objM735a = m735a(localDateTime, c2199b);
                if ((objM735a instanceof C2199b) || objM735a.equals(c2199b.f733c)) {
                    return objM735a;
                }
                i++;
                obj = objM735a;
            }
            return obj;
        }
        if (this.f722c.length == 0) {
            return this.f721b[0];
        }
        if (this.f725f.length > 0) {
            LocalDateTime[] localDateTimeArr = this.f723d;
            LocalDateTime localDateTime2 = localDateTimeArr[localDateTimeArr.length - 1];
            if (localDateTime2 != null) {
                localDateTime.getClass();
                z = localDateTime.m530t(localDateTime2) > 0;
            } else {
                long jMo504J = localDateTime.f476a.mo504J();
                long jMo504J2 = localDateTime2.f476a.mo504J();
                if (jMo504J > jMo504J2 || (jMo504J == jMo504J2 && localDateTime.f477b.d0() > localDateTime2.f477b.d0())) {
                }
            }
            if (z) {
                C2199b[] c2199bArrM738b2 = m738b(localDateTime.f476a.getYear());
                int length2 = c2199bArrM738b2.length;
                while (i < length2) {
                    C2199b c2199b2 = c2199bArrM738b2[i];
                    Object objM735a2 = m735a(localDateTime, c2199b2);
                    if ((objM735a2 instanceof C2199b) || objM735a2.equals(c2199b2.f733c)) {
                        return objM735a2;
                    }
                    i++;
                    obj = objM735a2;
                }
                return obj;
            }
        }
        int iBinarySearch = Arrays.binarySearch(this.f723d, localDateTime);
        if (iBinarySearch == -1) {
            return this.f724e[0];
        }
        if (iBinarySearch < 0) {
            iBinarySearch = (-iBinarySearch) - 2;
        } else {
            Object[] objArr = this.f723d;
            if (iBinarySearch < objArr.length - 1) {
                int i2 = iBinarySearch + 1;
                if (objArr[iBinarySearch].equals(objArr[i2])) {
                    iBinarySearch = i2;
                }
            }
        }
        if ((iBinarySearch & 1) != 0) {
            return this.f724e[(iBinarySearch / 2) + 1];
        }
        LocalDateTime[] localDateTimeArr2 = this.f723d;
        LocalDateTime localDateTime3 = localDateTimeArr2[iBinarySearch];
        LocalDateTime localDateTime4 = localDateTimeArr2[iBinarySearch + 1];
        ZoneOffset[] zoneOffsetArr = this.f724e;
        int i3 = iBinarySearch / 2;
        ZoneOffset zoneOffset = zoneOffsetArr[i3];
        ZoneOffset zoneOffset2 = zoneOffsetArr[i3 + 1];
        return zoneOffset2.getTotalSeconds() > zoneOffset.getTotalSeconds() ? new C2199b(localDateTime3, zoneOffset, zoneOffset2) : new C2199b(localDateTime4, zoneOffset, zoneOffset2);
    }

    /* JADX INFO: renamed from: e */
    public final C2199b m740e(LocalDateTime localDateTime) {
        Object objM739d = m739d(localDateTime);
        if (objM739d instanceof C2199b) {
            return (C2199b) objM739d;
        }
        return null;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof ZoneRules) {
            ZoneRules zoneRules = (ZoneRules) obj;
            if (Objects.equals(this.f726g, zoneRules.f726g) && Arrays.equals(this.f720a, zoneRules.f720a) && Arrays.equals(this.f721b, zoneRules.f721b) && Arrays.equals(this.f722c, zoneRules.f722c) && Arrays.equals(this.f724e, zoneRules.f724e) && Arrays.equals(this.f725f, zoneRules.f725f)) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: renamed from: f */
    public final List m741f(LocalDateTime localDateTime) {
        Object objM739d = m739d(localDateTime);
        if (!(objM739d instanceof C2199b)) {
            return Collections.singletonList((ZoneOffset) objM739d);
        }
        C2199b c2199b = (C2199b) objM739d;
        return c2199b.m747t() ? Collections.EMPTY_LIST : AbstractC2102b.m567c(new Object[]{c2199b.f733c, c2199b.f734d});
    }

    /* JADX INFO: renamed from: g */
    public final boolean m742g(Instant instant) {
        ZoneOffset zoneOffsetM737h;
        TimeZone timeZone = this.f726g;
        if (timeZone != null) {
            zoneOffsetM737h = m737h(timeZone.getRawOffset());
        } else if (this.f722c.length == 0) {
            zoneOffsetM737h = this.f721b[0];
        } else {
            int iBinarySearch = Arrays.binarySearch(this.f720a, instant.getEpochSecond());
            if (iBinarySearch < 0) {
                iBinarySearch = (-iBinarySearch) - 2;
            }
            zoneOffsetM737h = this.f721b[iBinarySearch + 1];
        }
        return !zoneOffsetM737h.equals(getOffset(instant));
    }

    public ZoneOffset getOffset(Instant instant) {
        TimeZone timeZone = this.f726g;
        if (timeZone != null) {
            return m737h(timeZone.getOffset(instant.toEpochMilli()));
        }
        if (this.f722c.length == 0) {
            return this.f721b[0];
        }
        long epochSecond = instant.getEpochSecond();
        if (this.f725f.length > 0) {
            if (epochSecond > this.f722c[r7.length - 1]) {
                C2199b[] c2199bArrM738b = m738b(m736c(epochSecond, this.f724e[r7.length - 1]));
                C2199b c2199b = null;
                for (int i = 0; i < c2199bArrM738b.length; i++) {
                    c2199b = c2199bArrM738b[i];
                    if (epochSecond < c2199b.f731a) {
                        return c2199b.f733c;
                    }
                }
                return c2199b.f734d;
            }
        }
        int iBinarySearch = Arrays.binarySearch(this.f722c, epochSecond);
        if (iBinarySearch < 0) {
            iBinarySearch = (-iBinarySearch) - 2;
        }
        return this.f724e[iBinarySearch + 1];
    }

    public final int hashCode() {
        return Arrays.hashCode(this.f725f) ^ ((((Objects.hashCode(this.f726g) ^ Arrays.hashCode(this.f720a)) ^ Arrays.hashCode(this.f721b)) ^ Arrays.hashCode(this.f722c)) ^ Arrays.hashCode(this.f724e));
    }

    public final String toString() {
        TimeZone timeZone = this.f726g;
        if (timeZone != null) {
            return "ZoneRules[timeZone=" + timeZone.getID() + "]";
        }
        return "ZoneRules[currentStandardOffset=" + this.f721b[r3.length - 1] + "]";
    }

    public ZoneOffset getOffset(LocalDateTime localDateTime) {
        Object objM739d = m739d(localDateTime);
        if (objM739d instanceof C2199b) {
            return ((C2199b) objM739d).f733c;
        }
        return (ZoneOffset) objM739d;
    }

    public ZoneRules(ZoneOffset zoneOffset) {
        ZoneOffset[] zoneOffsetArr = {zoneOffset};
        this.f721b = zoneOffsetArr;
        long[] jArr = f716i;
        this.f720a = jArr;
        this.f722c = jArr;
        this.f723d = f718k;
        this.f724e = zoneOffsetArr;
        this.f725f = f717j;
        this.f726g = null;
    }

    public ZoneRules(TimeZone timeZone) {
        ZoneOffset[] zoneOffsetArr = {m737h(timeZone.getRawOffset())};
        this.f721b = zoneOffsetArr;
        long[] jArr = f716i;
        this.f720a = jArr;
        this.f722c = jArr;
        this.f723d = f718k;
        this.f724e = zoneOffsetArr;
        this.f725f = f717j;
        this.f726g = timeZone;
    }
}
