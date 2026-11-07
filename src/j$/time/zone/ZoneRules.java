package j$.time.zone;

import j$.desugar.sun.nio.fs.AbstractC2248g;
import j$.time.DayOfWeek;
import j$.time.EnumC2384j;
import j$.time.Instant;
import j$.time.LocalDate;
import j$.time.LocalDateTime;
import j$.time.LocalTime;
import j$.time.ZoneOffset;
import j$.time.chrono.C2343r;
import j$.time.temporal.C2406n;
import j$.time.temporal.EnumC2393a;
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

/* JADX INFO: compiled from: r8-map-id-4910828a8dc56cbd751d74065856ac3a183dfd4d6dbda867057afff82c304930 */
/* JADX INFO: loaded from: classes2.dex */
public final class ZoneRules implements Serializable {

    /* JADX INFO: renamed from: i */
    public static final long[] f860i = new long[0];

    /* JADX INFO: renamed from: j */
    public static final C2416e[] f861j = new C2416e[0];

    /* JADX INFO: renamed from: k */
    public static final LocalDateTime[] f862k = new LocalDateTime[0];

    /* JADX INFO: renamed from: l */
    public static final C2413b[] f863l = new C2413b[0];
    private static final long serialVersionUID = 3044319355680032515L;

    /* JADX INFO: renamed from: a */
    public final long[] f864a;

    /* JADX INFO: renamed from: b */
    public final ZoneOffset[] f865b;

    /* JADX INFO: renamed from: c */
    public final long[] f866c;

    /* JADX INFO: renamed from: d */
    public final LocalDateTime[] f867d;

    /* JADX INFO: renamed from: e */
    public final ZoneOffset[] f868e;

    /* JADX INFO: renamed from: f */
    public final C2416e[] f869f;

    /* JADX INFO: renamed from: g */
    public final TimeZone f870g;

    /* JADX INFO: renamed from: h */
    public final transient ConcurrentMap f871h = new ConcurrentHashMap();

    public ZoneRules(long[] jArr, ZoneOffset[] zoneOffsetArr, long[] jArr2, ZoneOffset[] zoneOffsetArr2, C2416e[] c2416eArr) {
        this.f864a = jArr;
        this.f865b = zoneOffsetArr;
        this.f866c = jArr2;
        this.f868e = zoneOffsetArr2;
        this.f869f = c2416eArr;
        if (jArr2.length == 0) {
            this.f867d = f862k;
        } else {
            ArrayList arrayList = new ArrayList();
            int i = 0;
            while (i < jArr2.length) {
                int i2 = i + 1;
                C2413b c2413b = new C2413b(jArr2[i], zoneOffsetArr2[i], zoneOffsetArr2[i2]);
                boolean zM902s = c2413b.m902s();
                LocalDateTime localDateTime = c2413b.f876b;
                if (zM902s) {
                    arrayList.add(localDateTime);
                    arrayList.add(c2413b.f876b.m701X(c2413b.f878d.getTotalSeconds() - c2413b.f877c.getTotalSeconds()));
                } else {
                    arrayList.add(localDateTime.m701X(c2413b.f878d.getTotalSeconds() - c2413b.f877c.getTotalSeconds()));
                    arrayList.add(c2413b.f876b);
                }
                i = i2;
            }
            this.f867d = (LocalDateTime[]) arrayList.toArray(new LocalDateTime[arrayList.size()]);
        }
        this.f870g = null;
    }

    /* JADX INFO: renamed from: a */
    public static Object m890a(LocalDateTime localDateTime, C2413b c2413b) {
        LocalDateTime localDateTime2 = c2413b.f876b;
        if (c2413b.m902s()) {
            if (localDateTime.m698I(localDateTime2)) {
                return c2413b.f877c;
            }
            if (!localDateTime.m698I(c2413b.f876b.m701X(c2413b.f878d.getTotalSeconds() - c2413b.f877c.getTotalSeconds()))) {
                return c2413b.f878d;
            }
        } else {
            if (!localDateTime.m698I(localDateTime2)) {
                return c2413b.f878d;
            }
            if (localDateTime.m698I(c2413b.f876b.m701X(c2413b.f878d.getTotalSeconds() - c2413b.f877c.getTotalSeconds()))) {
                return c2413b.f877c;
            }
        }
        return c2413b;
    }

    /* JADX INFO: renamed from: c */
    public static int m891c(long j, ZoneOffset zoneOffset) {
        return LocalDate.e0(Math.floorDiv(j + ((long) zoneOffset.getTotalSeconds()), 86400L)).getYear();
    }

    /* JADX INFO: renamed from: h */
    public static ZoneOffset m892h(int i) {
        return ZoneOffset.ofTotalSeconds(i / 1000);
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private Object writeReplace() {
        return new C2412a(this.f870g != null ? (byte) 100 : (byte) 1, this);
    }

    /* JADX INFO: renamed from: b */
    public final C2413b[] m893b(int i) {
        LocalDate localDateM681D;
        C2413b[] c2413bArr = f863l;
        Integer numValueOf = Integer.valueOf(i);
        C2413b[] c2413bArr2 = (C2413b[]) ((ConcurrentHashMap) this.f871h).get(numValueOf);
        if (c2413bArr2 != null) {
            return c2413bArr2;
        }
        long j = 1;
        int i2 = 0;
        int i3 = 1;
        if (this.f870g != null) {
            if (i < 1800) {
                return c2413bArr;
            }
            LocalDateTime localDateTime = LocalDateTime.f615c;
            long epochSecond = new LocalDateTime(LocalDate.of(i - 1, 12, 31), LocalTime.of(0, 0)).toEpochSecond(this.f865b[0]);
            long j2 = 1000;
            int offset = this.f870g.getOffset(epochSecond * 1000);
            long j3 = 31968000 + epochSecond;
            while (epochSecond < j3) {
                long j4 = epochSecond + 7776000;
                long j5 = j2;
                if (offset != this.f870g.getOffset(j4 * j5)) {
                    while (j4 - epochSecond > j) {
                        long jFloorDiv = Math.floorDiv(j4 + epochSecond, 2L);
                        if (this.f870g.getOffset(jFloorDiv * j5) == offset) {
                            epochSecond = jFloorDiv;
                        } else {
                            j4 = jFloorDiv;
                        }
                        j = 1;
                    }
                    if (this.f870g.getOffset(epochSecond * j5) == offset) {
                        epochSecond = j4;
                    }
                    ZoneOffset zoneOffsetM892h = m892h(offset);
                    int offset2 = this.f870g.getOffset(epochSecond * j5);
                    ZoneOffset zoneOffsetM892h2 = m892h(offset2);
                    if (m891c(epochSecond, zoneOffsetM892h2) == i) {
                        c2413bArr = (C2413b[]) Arrays.copyOf(c2413bArr, c2413bArr.length + 1);
                        c2413bArr[c2413bArr.length - 1] = new C2413b(epochSecond, zoneOffsetM892h, zoneOffsetM892h2);
                    }
                    offset = offset2;
                } else {
                    epochSecond = j4;
                }
                j2 = j5;
                j = 1;
            }
            if (1916 <= i && i < 2100) {
                ((ConcurrentHashMap) this.f871h).putIfAbsent(numValueOf, c2413bArr);
            }
            return c2413bArr;
        }
        C2416e[] c2416eArr = this.f869f;
        C2413b[] c2413bArr3 = new C2413b[c2416eArr.length];
        int i4 = 0;
        while (i4 < c2416eArr.length) {
            C2416e c2416e = c2416eArr[i4];
            byte b2 = c2416e.f882b;
            EnumC2384j enumC2384j = c2416e.f881a;
            if (b2 < 0) {
                long j6 = i;
                C2343r.f701c.getClass();
                int iM867D = enumC2384j.m867D(C2343r.m803Y(j6)) + 1 + c2416e.f882b;
                LocalDate localDate = LocalDate.f610d;
                EnumC2393a.YEAR.m877Y(j6);
                EnumC2393a.DAY_OF_MONTH.m877Y(iM867D);
                localDateM681D = LocalDate.m681D(i, enumC2384j.getValue(), iM867D);
                DayOfWeek dayOfWeek = c2416e.f883c;
                if (dayOfWeek != null) {
                    localDateM681D = localDateM681D.mo679h(new C2406n(dayOfWeek.getValue(), i3));
                }
            } else {
                LocalDate localDate2 = LocalDate.f610d;
                EnumC2393a.YEAR.m877Y(i);
                EnumC2393a.DAY_OF_MONTH.m877Y(b2);
                localDateM681D = LocalDate.m681D(i, enumC2384j.getValue(), b2);
                DayOfWeek dayOfWeek2 = c2416e.f883c;
                if (dayOfWeek2 != null) {
                    localDateM681D = localDateM681D.mo679h(new C2406n(dayOfWeek2.getValue(), i2));
                }
            }
            if (c2416e.f885e) {
                localDateM681D = localDateM681D.plusDays(1L);
            }
            LocalDateTime localDateTimeOf = LocalDateTime.of(localDateM681D, c2416e.f884d);
            EnumC2415d enumC2415d = c2416e.f886f;
            ZoneOffset zoneOffset = c2416e.f887g;
            ZoneOffset zoneOffset2 = c2416e.f888h;
            int i5 = AbstractC2414c.f879a[enumC2415d.ordinal()];
            if (i5 == 1) {
                localDateTimeOf = localDateTimeOf.m701X(zoneOffset2.getTotalSeconds() - ZoneOffset.UTC.getTotalSeconds());
            } else if (i5 == 2) {
                localDateTimeOf = localDateTimeOf.m701X(zoneOffset2.getTotalSeconds() - zoneOffset.getTotalSeconds());
            }
            c2413bArr3[i4] = new C2413b(localDateTimeOf, c2416e.f888h, c2416e.f889i);
            i4++;
            i2 = 0;
        }
        if (i < 2100) {
            ((ConcurrentHashMap) this.f871h).putIfAbsent(numValueOf, c2413bArr3);
        }
        return c2413bArr3;
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x0066  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0068  */
    /* JADX INFO: renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object m894d(LocalDateTime localDateTime) {
        boolean z;
        Object obj = null;
        int i = 0;
        if (this.f870g != null) {
            C2413b[] c2413bArrM893b = m893b(localDateTime.f617a.getYear());
            if (c2413bArrM893b.length == 0) {
                return m892h(this.f870g.getOffset(localDateTime.toEpochSecond(this.f865b[0]) * 1000));
            }
            int length = c2413bArrM893b.length;
            while (i < length) {
                C2413b c2413b = c2413bArrM893b[i];
                Object objM890a = m890a(localDateTime, c2413b);
                if ((objM890a instanceof C2413b) || objM890a.equals(c2413b.f877c)) {
                    return objM890a;
                }
                i++;
                obj = objM890a;
            }
            return obj;
        }
        if (this.f866c.length == 0) {
            return this.f865b[0];
        }
        if (this.f869f.length > 0) {
            LocalDateTime[] localDateTimeArr = this.f867d;
            LocalDateTime localDateTime2 = localDateTimeArr[localDateTimeArr.length - 1];
            if (localDateTime2 != null) {
                localDateTime.getClass();
                z = localDateTime.m706s(localDateTime2) > 0;
            } else {
                long epochDay = localDateTime.mo705m().toEpochDay();
                long epochDay2 = localDateTime2.mo705m().toEpochDay();
                if (epochDay > epochDay2 || (epochDay == epochDay2 && localDateTime.toLocalTime().d0() > localDateTime2.toLocalTime().d0())) {
                }
            }
            if (z) {
                C2413b[] c2413bArrM893b2 = m893b(localDateTime.f617a.getYear());
                int length2 = c2413bArrM893b2.length;
                while (i < length2) {
                    C2413b c2413b2 = c2413bArrM893b2[i];
                    Object objM890a2 = m890a(localDateTime, c2413b2);
                    if ((objM890a2 instanceof C2413b) || objM890a2.equals(c2413b2.f877c)) {
                        return objM890a2;
                    }
                    i++;
                    obj = objM890a2;
                }
                return obj;
            }
        }
        int iBinarySearch = Arrays.binarySearch(this.f867d, localDateTime);
        if (iBinarySearch == -1) {
            return this.f868e[0];
        }
        if (iBinarySearch < 0) {
            iBinarySearch = (-iBinarySearch) - 2;
        } else {
            Object[] objArr = this.f867d;
            if (iBinarySearch < objArr.length - 1) {
                int i2 = iBinarySearch + 1;
                if (objArr[iBinarySearch].equals(objArr[i2])) {
                    iBinarySearch = i2;
                }
            }
        }
        if ((iBinarySearch & 1) != 0) {
            return this.f868e[(iBinarySearch / 2) + 1];
        }
        LocalDateTime[] localDateTimeArr2 = this.f867d;
        LocalDateTime localDateTime3 = localDateTimeArr2[iBinarySearch];
        LocalDateTime localDateTime4 = localDateTimeArr2[iBinarySearch + 1];
        ZoneOffset[] zoneOffsetArr = this.f868e;
        int i3 = iBinarySearch / 2;
        ZoneOffset zoneOffset = zoneOffsetArr[i3];
        ZoneOffset zoneOffset2 = zoneOffsetArr[i3 + 1];
        return zoneOffset2.getTotalSeconds() > zoneOffset.getTotalSeconds() ? new C2413b(localDateTime3, zoneOffset, zoneOffset2) : new C2413b(localDateTime4, zoneOffset, zoneOffset2);
    }

    /* JADX INFO: renamed from: e */
    public final C2413b m895e(LocalDateTime localDateTime) {
        Object objM894d = m894d(localDateTime);
        if (objM894d instanceof C2413b) {
            return (C2413b) objM894d;
        }
        return null;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof ZoneRules) {
            ZoneRules zoneRules = (ZoneRules) obj;
            if (Objects.equals(this.f870g, zoneRules.f870g) && Arrays.equals(this.f864a, zoneRules.f864a) && Arrays.equals(this.f865b, zoneRules.f865b) && Arrays.equals(this.f866c, zoneRules.f866c) && Arrays.equals(this.f868e, zoneRules.f868e) && Arrays.equals(this.f869f, zoneRules.f869f)) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: renamed from: f */
    public final List m896f(LocalDateTime localDateTime) {
        Object objM894d = m894d(localDateTime);
        if (!(objM894d instanceof C2413b)) {
            return Collections.singletonList((ZoneOffset) objM894d);
        }
        C2413b c2413b = (C2413b) objM894d;
        return c2413b.m902s() ? Collections.EMPTY_LIST : AbstractC2248g.m543p(new Object[]{c2413b.f877c, c2413b.f878d});
    }

    /* JADX INFO: renamed from: g */
    public final boolean m897g(Instant instant) {
        ZoneOffset zoneOffsetM892h;
        TimeZone timeZone = this.f870g;
        if (timeZone != null) {
            zoneOffsetM892h = m892h(timeZone.getRawOffset());
        } else if (this.f866c.length == 0) {
            zoneOffsetM892h = this.f865b[0];
        } else {
            int iBinarySearch = Arrays.binarySearch(this.f864a, instant.getEpochSecond());
            if (iBinarySearch < 0) {
                iBinarySearch = (-iBinarySearch) - 2;
            }
            zoneOffsetM892h = this.f865b[iBinarySearch + 1];
        }
        return !zoneOffsetM892h.equals(getOffset(instant));
    }

    public ZoneOffset getOffset(Instant instant) {
        TimeZone timeZone = this.f870g;
        if (timeZone != null) {
            return m892h(timeZone.getOffset(instant.toEpochMilli()));
        }
        if (this.f866c.length == 0) {
            return this.f865b[0];
        }
        long epochSecond = instant.getEpochSecond();
        if (this.f869f.length > 0) {
            if (epochSecond > this.f866c[r7.length - 1]) {
                C2413b[] c2413bArrM893b = m893b(m891c(epochSecond, this.f868e[r7.length - 1]));
                C2413b c2413b = null;
                for (int i = 0; i < c2413bArrM893b.length; i++) {
                    c2413b = c2413bArrM893b[i];
                    if (epochSecond < c2413b.f875a) {
                        return c2413b.f877c;
                    }
                }
                return c2413b.f878d;
            }
        }
        int iBinarySearch = Arrays.binarySearch(this.f866c, epochSecond);
        if (iBinarySearch < 0) {
            iBinarySearch = (-iBinarySearch) - 2;
        }
        return this.f868e[iBinarySearch + 1];
    }

    public final int hashCode() {
        return Arrays.hashCode(this.f869f) ^ ((((Objects.hashCode(this.f870g) ^ Arrays.hashCode(this.f864a)) ^ Arrays.hashCode(this.f865b)) ^ Arrays.hashCode(this.f866c)) ^ Arrays.hashCode(this.f868e));
    }

    public final String toString() {
        TimeZone timeZone = this.f870g;
        if (timeZone != null) {
            return "ZoneRules[timeZone=" + timeZone.getID() + "]";
        }
        return "ZoneRules[currentStandardOffset=" + this.f865b[r3.length - 1] + "]";
    }

    public ZoneOffset getOffset(LocalDateTime localDateTime) {
        Object objM894d = m894d(localDateTime);
        if (objM894d instanceof C2413b) {
            return ((C2413b) objM894d).f877c;
        }
        return (ZoneOffset) objM894d;
    }

    public ZoneRules(ZoneOffset zoneOffset) {
        ZoneOffset[] zoneOffsetArr = {zoneOffset};
        this.f865b = zoneOffsetArr;
        long[] jArr = f860i;
        this.f864a = jArr;
        this.f866c = jArr;
        this.f867d = f862k;
        this.f868e = zoneOffsetArr;
        this.f869f = f861j;
        this.f870g = null;
    }

    public ZoneRules(TimeZone timeZone) {
        ZoneOffset[] zoneOffsetArr = {m892h(timeZone.getRawOffset())};
        this.f865b = zoneOffsetArr;
        long[] jArr = f860i;
        this.f864a = jArr;
        this.f866c = jArr;
        this.f867d = f862k;
        this.f868e = zoneOffsetArr;
        this.f869f = f861j;
        this.f870g = timeZone;
    }
}
