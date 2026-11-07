package j$.time.zone;

import j$.desugar.sun.nio.fs.AbstractC2108g;
import j$.time.DayOfWeek;
import j$.time.EnumC2245k;
import j$.time.Instant;
import j$.time.LocalDate;
import j$.time.LocalDateTime;
import j$.time.LocalTime;
import j$.time.ZoneOffset;
import j$.time.chrono.C2203r;
import j$.time.temporal.C2267n;
import j$.time.temporal.EnumC2254a;
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

/* JADX INFO: compiled from: r8-map-id-d770cecce19e13e7204002895f1f3846e7cae954646f7ef2982ee0cbc1d920c0 */
/* JADX INFO: loaded from: classes2.dex */
public final class ZoneRules implements Serializable {

    /* JADX INFO: renamed from: i */
    public static final long[] f858i = new long[0];

    /* JADX INFO: renamed from: j */
    public static final C2277e[] f859j = new C2277e[0];

    /* JADX INFO: renamed from: k */
    public static final LocalDateTime[] f860k = new LocalDateTime[0];

    /* JADX INFO: renamed from: l */
    public static final C2274b[] f861l = new C2274b[0];
    private static final long serialVersionUID = 3044319355680032515L;

    /* JADX INFO: renamed from: a */
    public final long[] f862a;

    /* JADX INFO: renamed from: b */
    public final ZoneOffset[] f863b;

    /* JADX INFO: renamed from: c */
    public final long[] f864c;

    /* JADX INFO: renamed from: d */
    public final LocalDateTime[] f865d;

    /* JADX INFO: renamed from: e */
    public final ZoneOffset[] f866e;

    /* JADX INFO: renamed from: f */
    public final C2277e[] f867f;

    /* JADX INFO: renamed from: g */
    public final TimeZone f868g;

    /* JADX INFO: renamed from: h */
    public final transient ConcurrentMap f869h = new ConcurrentHashMap();

    public ZoneRules(long[] jArr, ZoneOffset[] zoneOffsetArr, long[] jArr2, ZoneOffset[] zoneOffsetArr2, C2277e[] c2277eArr) {
        this.f862a = jArr;
        this.f863b = zoneOffsetArr;
        this.f864c = jArr2;
        this.f866e = zoneOffsetArr2;
        this.f867f = c2277eArr;
        if (jArr2.length == 0) {
            this.f865d = f860k;
        } else {
            ArrayList arrayList = new ArrayList();
            int i = 0;
            while (i < jArr2.length) {
                int i2 = i + 1;
                C2274b c2274b = new C2274b(jArr2[i], zoneOffsetArr2[i], zoneOffsetArr2[i2]);
                boolean zM854s = c2274b.m854s();
                LocalDateTime localDateTime = c2274b.f874b;
                if (zM854s) {
                    arrayList.add(localDateTime);
                    arrayList.add(c2274b.f874b.m676Y(c2274b.f876d.getTotalSeconds() - c2274b.f875c.getTotalSeconds()));
                } else {
                    arrayList.add(localDateTime.m676Y(c2274b.f876d.getTotalSeconds() - c2274b.f875c.getTotalSeconds()));
                    arrayList.add(c2274b.f874b);
                }
                i = i2;
            }
            this.f865d = (LocalDateTime[]) arrayList.toArray(new LocalDateTime[arrayList.size()]);
        }
        this.f868g = null;
    }

    /* JADX INFO: renamed from: a */
    public static Object m842a(LocalDateTime localDateTime, C2274b c2274b) {
        LocalDateTime localDateTime2 = c2274b.f874b;
        if (c2274b.m854s()) {
            if (localDateTime.m673I(localDateTime2)) {
                return c2274b.f875c;
            }
            if (!localDateTime.m673I(c2274b.f874b.m676Y(c2274b.f876d.getTotalSeconds() - c2274b.f875c.getTotalSeconds()))) {
                return c2274b.f876d;
            }
        } else {
            if (!localDateTime.m673I(localDateTime2)) {
                return c2274b.f876d;
            }
            if (localDateTime.m673I(c2274b.f874b.m676Y(c2274b.f876d.getTotalSeconds() - c2274b.f875c.getTotalSeconds()))) {
                return c2274b.f875c;
            }
        }
        return c2274b;
    }

    /* JADX INFO: renamed from: c */
    public static int m843c(long j, ZoneOffset zoneOffset) {
        return LocalDate.g0(Math.floorDiv(j + ((long) zoneOffset.getTotalSeconds()), 86400L)).getYear();
    }

    /* JADX INFO: renamed from: h */
    public static ZoneOffset m844h(int i) {
        return ZoneOffset.ofTotalSeconds(i / 1000);
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private Object writeReplace() {
        return new C2273a(this.f868g != null ? (byte) 100 : (byte) 1, this);
    }

    /* JADX INFO: renamed from: b */
    public final C2274b[] m845b(int i) {
        LocalDate localDateM657D;
        C2274b[] c2274bArr = f861l;
        Integer numValueOf = Integer.valueOf(i);
        C2274b[] c2274bArr2 = (C2274b[]) ((ConcurrentHashMap) this.f869h).get(numValueOf);
        if (c2274bArr2 != null) {
            return c2274bArr2;
        }
        long j = 1;
        int i2 = 0;
        int i3 = 1;
        if (this.f868g != null) {
            if (i < 1800) {
                return c2274bArr;
            }
            LocalDateTime localDateTime = LocalDateTime.f614c;
            LocalDate localDateOf = LocalDate.of(i - 1, 12, 31);
            EnumC2254a.HOUR_OF_DAY.a0(0L);
            long epochSecond = new LocalDateTime(localDateOf, LocalTime.f621h[0]).toEpochSecond(this.f863b[0]);
            long j2 = 1000;
            int offset = this.f868g.getOffset(epochSecond * 1000);
            long j3 = 31968000 + epochSecond;
            while (epochSecond < j3) {
                long j4 = epochSecond + 7776000;
                long j5 = j2;
                if (offset != this.f868g.getOffset(j4 * j5)) {
                    while (j4 - epochSecond > j) {
                        long jFloorDiv = Math.floorDiv(j4 + epochSecond, 2L);
                        if (this.f868g.getOffset(jFloorDiv * j5) == offset) {
                            epochSecond = jFloorDiv;
                        } else {
                            j4 = jFloorDiv;
                        }
                        j = 1;
                    }
                    if (this.f868g.getOffset(epochSecond * j5) == offset) {
                        epochSecond = j4;
                    }
                    ZoneOffset zoneOffsetM844h = m844h(offset);
                    int offset2 = this.f868g.getOffset(epochSecond * j5);
                    ZoneOffset zoneOffsetM844h2 = m844h(offset2);
                    if (m843c(epochSecond, zoneOffsetM844h2) == i) {
                        c2274bArr = (C2274b[]) Arrays.copyOf(c2274bArr, c2274bArr.length + 1);
                        c2274bArr[c2274bArr.length - 1] = new C2274b(epochSecond, zoneOffsetM844h, zoneOffsetM844h2);
                    }
                    offset = offset2;
                } else {
                    epochSecond = j4;
                }
                j2 = j5;
                j = 1;
            }
            if (1916 <= i && i < 2100) {
                ((ConcurrentHashMap) this.f869h).putIfAbsent(numValueOf, c2274bArr);
            }
            return c2274bArr;
        }
        C2277e[] c2277eArr = this.f867f;
        C2274b[] c2274bArr3 = new C2274b[c2277eArr.length];
        int i4 = 0;
        while (i4 < c2277eArr.length) {
            C2277e c2277e = c2277eArr[i4];
            byte b2 = c2277e.f880b;
            EnumC2245k enumC2245k = c2277e.f879a;
            if (b2 < 0) {
                long j6 = i;
                C2203r.f699c.getClass();
                int iM823D = enumC2245k.m823D(C2203r.a0(j6)) + 1 + c2277e.f880b;
                LocalDate localDate = LocalDate.f609d;
                EnumC2254a.YEAR.a0(j6);
                EnumC2254a.DAY_OF_MONTH.a0(iM823D);
                localDateM657D = LocalDate.m657D(i, enumC2245k.getValue(), iM823D);
                DayOfWeek dayOfWeek = c2277e.f881c;
                if (dayOfWeek != null) {
                    localDateM657D = localDateM657D.mo655h(new C2267n(dayOfWeek.getValue(), i3));
                }
            } else {
                LocalDate localDate2 = LocalDate.f609d;
                EnumC2254a.YEAR.a0(i);
                EnumC2254a.DAY_OF_MONTH.a0(b2);
                localDateM657D = LocalDate.m657D(i, enumC2245k.getValue(), b2);
                DayOfWeek dayOfWeek2 = c2277e.f881c;
                if (dayOfWeek2 != null) {
                    localDateM657D = localDateM657D.mo655h(new C2267n(dayOfWeek2.getValue(), i2));
                }
            }
            if (c2277e.f883e) {
                localDateM657D = localDateM657D.plusDays(1L);
            }
            LocalDateTime localDateTimeOf = LocalDateTime.of(localDateM657D, c2277e.f882d);
            EnumC2276d enumC2276d = c2277e.f884f;
            ZoneOffset zoneOffset = c2277e.f885g;
            ZoneOffset zoneOffset2 = c2277e.f886h;
            int i5 = AbstractC2275c.f877a[enumC2276d.ordinal()];
            if (i5 == 1) {
                localDateTimeOf = localDateTimeOf.m676Y(zoneOffset2.getTotalSeconds() - ZoneOffset.UTC.getTotalSeconds());
            } else if (i5 == 2) {
                localDateTimeOf = localDateTimeOf.m676Y(zoneOffset2.getTotalSeconds() - zoneOffset.getTotalSeconds());
            }
            c2274bArr3[i4] = new C2274b(localDateTimeOf, c2277e.f886h, c2277e.f887i);
            i4++;
            i2 = 0;
        }
        if (i < 2100) {
            ((ConcurrentHashMap) this.f869h).putIfAbsent(numValueOf, c2274bArr3);
        }
        return c2274bArr3;
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x0066  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0068  */
    /* JADX INFO: renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object m846d(LocalDateTime localDateTime) {
        boolean z;
        Object obj = null;
        int i = 0;
        if (this.f868g != null) {
            C2274b[] c2274bArrM845b = m845b(localDateTime.f616a.getYear());
            if (c2274bArrM845b.length == 0) {
                return m844h(this.f868g.getOffset(localDateTime.toEpochSecond(this.f863b[0]) * 1000));
            }
            int length = c2274bArrM845b.length;
            while (i < length) {
                C2274b c2274b = c2274bArrM845b[i];
                Object objM842a = m842a(localDateTime, c2274b);
                if ((objM842a instanceof C2274b) || objM842a.equals(c2274b.f875c)) {
                    return objM842a;
                }
                i++;
                obj = objM842a;
            }
            return obj;
        }
        if (this.f864c.length == 0) {
            return this.f863b[0];
        }
        if (this.f867f.length > 0) {
            LocalDateTime[] localDateTimeArr = this.f865d;
            LocalDateTime localDateTime2 = localDateTimeArr[localDateTimeArr.length - 1];
            if (localDateTime2 != null) {
                localDateTime.getClass();
                z = localDateTime.m679s(localDateTime2) > 0;
            } else {
                long jMo660L = localDateTime.mo678m().mo660L();
                long jMo660L2 = localDateTime2.mo678m().mo660L();
                if (jMo660L > jMo660L2 || (jMo660L == jMo660L2 && localDateTime.toLocalTime().f0() > localDateTime2.toLocalTime().f0())) {
                }
            }
            if (z) {
                C2274b[] c2274bArrM845b2 = m845b(localDateTime.f616a.getYear());
                int length2 = c2274bArrM845b2.length;
                while (i < length2) {
                    C2274b c2274b2 = c2274bArrM845b2[i];
                    Object objM842a2 = m842a(localDateTime, c2274b2);
                    if ((objM842a2 instanceof C2274b) || objM842a2.equals(c2274b2.f875c)) {
                        return objM842a2;
                    }
                    i++;
                    obj = objM842a2;
                }
                return obj;
            }
        }
        int iBinarySearch = Arrays.binarySearch(this.f865d, localDateTime);
        if (iBinarySearch == -1) {
            return this.f866e[0];
        }
        if (iBinarySearch < 0) {
            iBinarySearch = (-iBinarySearch) - 2;
        } else {
            Object[] objArr = this.f865d;
            if (iBinarySearch < objArr.length - 1) {
                int i2 = iBinarySearch + 1;
                if (objArr[iBinarySearch].equals(objArr[i2])) {
                    iBinarySearch = i2;
                }
            }
        }
        if ((iBinarySearch & 1) != 0) {
            return this.f866e[(iBinarySearch / 2) + 1];
        }
        LocalDateTime[] localDateTimeArr2 = this.f865d;
        LocalDateTime localDateTime3 = localDateTimeArr2[iBinarySearch];
        LocalDateTime localDateTime4 = localDateTimeArr2[iBinarySearch + 1];
        ZoneOffset[] zoneOffsetArr = this.f866e;
        int i3 = iBinarySearch / 2;
        ZoneOffset zoneOffset = zoneOffsetArr[i3];
        ZoneOffset zoneOffset2 = zoneOffsetArr[i3 + 1];
        return zoneOffset2.getTotalSeconds() > zoneOffset.getTotalSeconds() ? new C2274b(localDateTime3, zoneOffset, zoneOffset2) : new C2274b(localDateTime4, zoneOffset, zoneOffset2);
    }

    /* JADX INFO: renamed from: e */
    public final C2274b m847e(LocalDateTime localDateTime) {
        Object objM846d = m846d(localDateTime);
        if (objM846d instanceof C2274b) {
            return (C2274b) objM846d;
        }
        return null;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof ZoneRules) {
            ZoneRules zoneRules = (ZoneRules) obj;
            if (Objects.equals(this.f868g, zoneRules.f868g) && Arrays.equals(this.f862a, zoneRules.f862a) && Arrays.equals(this.f863b, zoneRules.f863b) && Arrays.equals(this.f864c, zoneRules.f864c) && Arrays.equals(this.f866e, zoneRules.f866e) && Arrays.equals(this.f867f, zoneRules.f867f)) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: renamed from: f */
    public final List m848f(LocalDateTime localDateTime) {
        Object objM846d = m846d(localDateTime);
        if (!(objM846d instanceof C2274b)) {
            return Collections.singletonList((ZoneOffset) objM846d);
        }
        C2274b c2274b = (C2274b) objM846d;
        return c2274b.m854s() ? Collections.EMPTY_LIST : AbstractC2108g.m519p(new Object[]{c2274b.f875c, c2274b.f876d});
    }

    /* JADX INFO: renamed from: g */
    public final boolean m849g(Instant instant) {
        ZoneOffset zoneOffsetM844h;
        TimeZone timeZone = this.f868g;
        if (timeZone != null) {
            zoneOffsetM844h = m844h(timeZone.getRawOffset());
        } else if (this.f864c.length == 0) {
            zoneOffsetM844h = this.f863b[0];
        } else {
            int iBinarySearch = Arrays.binarySearch(this.f862a, instant.getEpochSecond());
            if (iBinarySearch < 0) {
                iBinarySearch = (-iBinarySearch) - 2;
            }
            zoneOffsetM844h = this.f863b[iBinarySearch + 1];
        }
        return !zoneOffsetM844h.equals(getOffset(instant));
    }

    public ZoneOffset getOffset(Instant instant) {
        TimeZone timeZone = this.f868g;
        if (timeZone != null) {
            return m844h(timeZone.getOffset(instant.toEpochMilli()));
        }
        if (this.f864c.length == 0) {
            return this.f863b[0];
        }
        long epochSecond = instant.getEpochSecond();
        if (this.f867f.length > 0) {
            if (epochSecond > this.f864c[r7.length - 1]) {
                C2274b[] c2274bArrM845b = m845b(m843c(epochSecond, this.f866e[r7.length - 1]));
                C2274b c2274b = null;
                for (int i = 0; i < c2274bArrM845b.length; i++) {
                    c2274b = c2274bArrM845b[i];
                    if (epochSecond < c2274b.f873a) {
                        return c2274b.f875c;
                    }
                }
                return c2274b.f876d;
            }
        }
        int iBinarySearch = Arrays.binarySearch(this.f864c, epochSecond);
        if (iBinarySearch < 0) {
            iBinarySearch = (-iBinarySearch) - 2;
        }
        return this.f866e[iBinarySearch + 1];
    }

    public final int hashCode() {
        return Arrays.hashCode(this.f867f) ^ ((((Objects.hashCode(this.f868g) ^ Arrays.hashCode(this.f862a)) ^ Arrays.hashCode(this.f863b)) ^ Arrays.hashCode(this.f864c)) ^ Arrays.hashCode(this.f866e));
    }

    public final String toString() {
        TimeZone timeZone = this.f868g;
        if (timeZone != null) {
            return "ZoneRules[timeZone=" + timeZone.getID() + "]";
        }
        return "ZoneRules[currentStandardOffset=" + this.f863b[r3.length - 1] + "]";
    }

    public ZoneOffset getOffset(LocalDateTime localDateTime) {
        Object objM846d = m846d(localDateTime);
        if (objM846d instanceof C2274b) {
            return ((C2274b) objM846d).f875c;
        }
        return (ZoneOffset) objM846d;
    }

    public ZoneRules(ZoneOffset zoneOffset) {
        ZoneOffset[] zoneOffsetArr = {zoneOffset};
        this.f863b = zoneOffsetArr;
        long[] jArr = f858i;
        this.f862a = jArr;
        this.f864c = jArr;
        this.f865d = f860k;
        this.f866e = zoneOffsetArr;
        this.f867f = f859j;
        this.f868g = null;
    }

    public ZoneRules(TimeZone timeZone) {
        ZoneOffset[] zoneOffsetArr = {m844h(timeZone.getRawOffset())};
        this.f863b = zoneOffsetArr;
        long[] jArr = f858i;
        this.f862a = jArr;
        this.f864c = jArr;
        this.f865d = f860k;
        this.f866e = zoneOffsetArr;
        this.f867f = f859j;
        this.f868g = timeZone;
    }
}
