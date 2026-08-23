package p022j$.time.zone;

import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.TimeZone;
import org.telegram.messenger.MediaDataController;
import p022j$.com.android.tools.p023r8.AbstractC2104a;
import p022j$.time.C2173h;
import p022j$.time.DayOfWeek;
import p022j$.time.EnumC2175j;
import p022j$.time.Instant;
import p022j$.time.LocalDate;
import p022j$.time.LocalDateTime;
import p022j$.time.ZoneOffset;
import p022j$.time.chrono.C2136r;
import p022j$.time.temporal.EnumC2186a;
import p022j$.time.temporal.InterfaceC2200o;
import p022j$.util.Objects;
import p022j$.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes2.dex */
public final class ZoneRules implements Serializable {

    /* JADX INFO: renamed from: i */
    public static final long[] f857i = new long[0];

    /* JADX INFO: renamed from: j */
    public static final C2212e[] f858j = new C2212e[0];

    /* JADX INFO: renamed from: k */
    public static final LocalDateTime[] f859k = new LocalDateTime[0];

    /* JADX INFO: renamed from: l */
    public static final C2209b[] f860l = new C2209b[0];
    private static final long serialVersionUID = 3044319355680032515L;

    /* JADX INFO: renamed from: a */
    public final long[] f861a;

    /* JADX INFO: renamed from: b */
    public final ZoneOffset[] f862b;

    /* JADX INFO: renamed from: c */
    public final long[] f863c;

    /* JADX INFO: renamed from: d */
    public final LocalDateTime[] f864d;

    /* JADX INFO: renamed from: e */
    public final ZoneOffset[] f865e;

    /* JADX INFO: renamed from: f */
    public final C2212e[] f866f;

    /* JADX INFO: renamed from: g */
    public final TimeZone f867g;

    /* JADX INFO: renamed from: h */
    public final transient ConcurrentHashMap f868h = new ConcurrentHashMap();

    /* JADX INFO: renamed from: a */
    public static Object m790a(LocalDateTime localDateTime, C2209b c2209b) {
        LocalDateTime localDateTime2 = c2209b.f873b;
        if (c2209b.m802h()) {
            if (localDateTime.m617D(localDateTime2)) {
                return c2209b.f874c;
            }
            if (!localDateTime.m617D(c2209b.f873b.m619H(c2209b.f875d.getTotalSeconds() - c2209b.f874c.getTotalSeconds()))) {
                return c2209b.f875d;
            }
        } else {
            if (!localDateTime.m617D(localDateTime2)) {
                return c2209b.f875d;
            }
            if (localDateTime.m617D(c2209b.f873b.m619H(c2209b.f875d.getTotalSeconds() - c2209b.f874c.getTotalSeconds()))) {
                return c2209b.f874c;
            }
        }
        return c2209b;
    }

    public ZoneRules(long[] jArr, ZoneOffset[] zoneOffsetArr, long[] jArr2, ZoneOffset[] zoneOffsetArr2, C2212e[] c2212eArr) {
        this.f861a = jArr;
        this.f862b = zoneOffsetArr;
        this.f863c = jArr2;
        this.f865e = zoneOffsetArr2;
        this.f866f = c2212eArr;
        if (jArr2.length == 0) {
            this.f864d = f859k;
        } else {
            ArrayList arrayList = new ArrayList();
            int i = 0;
            while (i < jArr2.length) {
                int i2 = i + 1;
                C2209b c2209b = new C2209b(jArr2[i], zoneOffsetArr2[i], zoneOffsetArr2[i2]);
                if (c2209b.m802h()) {
                    arrayList.add(c2209b.f873b);
                    arrayList.add(c2209b.f873b.m619H(c2209b.f875d.getTotalSeconds() - c2209b.f874c.getTotalSeconds()));
                } else {
                    arrayList.add(c2209b.f873b.m619H(c2209b.f875d.getTotalSeconds() - c2209b.f874c.getTotalSeconds()));
                    arrayList.add(c2209b.f873b);
                }
                i = i2;
            }
            this.f864d = (LocalDateTime[]) arrayList.toArray(new LocalDateTime[arrayList.size()]);
        }
        this.f867g = null;
    }

    public ZoneRules(ZoneOffset zoneOffset) {
        ZoneOffset[] zoneOffsetArr = {zoneOffset};
        this.f862b = zoneOffsetArr;
        long[] jArr = f857i;
        this.f861a = jArr;
        this.f863c = jArr;
        this.f864d = f859k;
        this.f865e = zoneOffsetArr;
        this.f866f = f858j;
        this.f867g = null;
    }

    public ZoneRules(TimeZone timeZone) {
        ZoneOffset[] zoneOffsetArr = {m792h(timeZone.getRawOffset())};
        this.f862b = zoneOffsetArr;
        long[] jArr = f857i;
        this.f861a = jArr;
        this.f863c = jArr;
        this.f864d = f859k;
        this.f865e = zoneOffsetArr;
        this.f866f = f858j;
        this.f867g = timeZone;
    }

    /* JADX INFO: renamed from: h */
    public static ZoneOffset m792h(int i) {
        return ZoneOffset.m647H(i / MediaDataController.MAX_STYLE_RUNS_COUNT);
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private Object writeReplace() {
        return new C2208a(this.f867g != null ? (byte) 100 : (byte) 1, this);
    }

    public ZoneOffset getOffset(Instant instant) {
        TimeZone timeZone = this.f867g;
        if (timeZone != null) {
            return m792h(timeZone.getOffset(instant.toEpochMilli()));
        }
        long[] jArr = this.f863c;
        if (jArr.length == 0) {
            return this.f862b[0];
        }
        long j = instant.f636a;
        if (this.f866f.length > 0 && j > jArr[jArr.length - 1]) {
            C2209b[] c2209bArrM793b = m793b(m791c(j, this.f865e[r8.length - 1]));
            C2209b c2209b = null;
            for (int i = 0; i < c2209bArrM793b.length; i++) {
                c2209b = c2209bArrM793b[i];
                if (j < c2209b.f872a) {
                    return c2209b.f874c;
                }
            }
            return c2209b.f875d;
        }
        int iBinarySearch = Arrays.binarySearch(jArr, j);
        if (iBinarySearch < 0) {
            iBinarySearch = (-iBinarySearch) - 2;
        }
        return this.f865e[iBinarySearch + 1];
    }

    /* JADX INFO: renamed from: f */
    public final List m796f(LocalDateTime localDateTime) {
        Object objM794d = m794d(localDateTime);
        if (!(objM794d instanceof C2209b)) {
            return Collections.singletonList((ZoneOffset) objM794d);
        }
        C2209b c2209b = (C2209b) objM794d;
        if (c2209b.m802h()) {
            return Collections.EMPTY_LIST;
        }
        Object[] objArr = {c2209b.f874c, c2209b.f875d};
        ArrayList arrayList = new ArrayList(2);
        for (int i = 0; i < 2; i++) {
            arrayList.add(Objects.requireNonNull(objArr[i]));
        }
        return Collections.unmodifiableList(arrayList);
    }

    /* JADX INFO: renamed from: e */
    public final C2209b m795e(LocalDateTime localDateTime) {
        Object objM794d = m794d(localDateTime);
        if (objM794d instanceof C2209b) {
            return (C2209b) objM794d;
        }
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x0064, code lost:
    
        if (r8.m628v(r0) > 0) goto L34;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0087, code lost:
    
        if (r8.f646b.m748M() <= r0.f646b.m748M()) goto L44;
     */
    /* JADX INFO: renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object m794d(LocalDateTime localDateTime) {
        Object obj = null;
        int i = 0;
        if (this.f867g != null) {
            C2209b[] c2209bArrM793b = m793b(localDateTime.f645a.getYear());
            if (c2209bArrM793b.length == 0) {
                return m792h(this.f867g.getOffset(AbstractC2104a.m561x(localDateTime, this.f862b[0]) * 1000));
            }
            int length = c2209bArrM793b.length;
            while (i < length) {
                C2209b c2209b = c2209bArrM793b[i];
                Object objM790a = m790a(localDateTime, c2209b);
                if ((objM790a instanceof C2209b) || objM790a.equals(c2209b.f874c)) {
                    return objM790a;
                }
                i++;
                obj = objM790a;
            }
            return obj;
        }
        if (this.f863c.length == 0) {
            return this.f862b[0];
        }
        if (this.f866f.length > 0) {
            LocalDateTime localDateTime2 = this.f864d[r0.length - 1];
            if (localDateTime2 == null) {
                long jMo612x = localDateTime.f645a.mo612x();
                long jMo612x2 = localDateTime2.f645a.mo612x();
                if (jMo612x <= jMo612x2) {
                    if (jMo612x == jMo612x2) {
                    }
                }
                C2209b[] c2209bArrM793b2 = m793b(localDateTime.f645a.getYear());
                int length2 = c2209bArrM793b2.length;
                while (i < length2) {
                    C2209b c2209b2 = c2209bArrM793b2[i];
                    Object objM790a2 = m790a(localDateTime, c2209b2);
                    if ((objM790a2 instanceof C2209b) || objM790a2.equals(c2209b2.f874c)) {
                        return objM790a2;
                    }
                    i++;
                    obj = objM790a2;
                }
                return obj;
            }
            localDateTime.getClass();
        }
        int iBinarySearch = Arrays.binarySearch(this.f864d, localDateTime);
        if (iBinarySearch == -1) {
            return this.f865e[0];
        }
        if (iBinarySearch < 0) {
            iBinarySearch = (-iBinarySearch) - 2;
        } else {
            Object[] objArr = this.f864d;
            if (iBinarySearch < objArr.length - 1) {
                int i2 = iBinarySearch + 1;
                if (objArr[iBinarySearch].equals(objArr[i2])) {
                    iBinarySearch = i2;
                }
            }
        }
        if ((iBinarySearch & 1) != 0) {
            return this.f865e[(iBinarySearch / 2) + 1];
        }
        LocalDateTime[] localDateTimeArr = this.f864d;
        LocalDateTime localDateTime3 = localDateTimeArr[iBinarySearch];
        LocalDateTime localDateTime4 = localDateTimeArr[iBinarySearch + 1];
        ZoneOffset[] zoneOffsetArr = this.f865e;
        int i3 = iBinarySearch / 2;
        ZoneOffset zoneOffset = zoneOffsetArr[i3];
        ZoneOffset zoneOffset2 = zoneOffsetArr[i3 + 1];
        return zoneOffset2.getTotalSeconds() > zoneOffset.getTotalSeconds() ? new C2209b(localDateTime3, zoneOffset, zoneOffset2) : new C2209b(localDateTime4, zoneOffset, zoneOffset2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX INFO: renamed from: b */
    public final C2209b[] m793b(int i) {
        LocalDate localDateM592A;
        C2209b[] c2209bArr = f860l;
        Integer numValueOf = Integer.valueOf(i);
        C2209b[] c2209bArr2 = (C2209b[]) this.f868h.get(numValueOf);
        if (c2209bArr2 != null) {
            return c2209bArr2;
        }
        long j = 1;
        final int i2 = 0;
        final int i3 = 1;
        if (this.f867g != null) {
            if (i < 1800) {
                return c2209bArr;
            }
            LocalDateTime localDateTime = LocalDateTime.f643c;
            LocalDate localDateM596of = LocalDate.m596of(i - 1, 12, 31);
            EnumC2186a.HOUR_OF_DAY.m774r(0);
            long jM561x = AbstractC2104a.m561x(new LocalDateTime(localDateM596of, C2173h.f796h[0]), this.f862b[0]);
            long j2 = 1000;
            int offset = this.f867g.getOffset(jM561x * 1000);
            long j3 = 31968000 + jM561x;
            while (jM561x < j3) {
                long j4 = jM561x + 7776000;
                long j5 = j2;
                if (offset != this.f867g.getOffset(j4 * j5)) {
                    while (j4 - jM561x > j) {
                        long jM534T = AbstractC2104a.m534T(j4 + jM561x, 2L);
                        if (this.f867g.getOffset(jM534T * j5) == offset) {
                            jM561x = jM534T;
                        } else {
                            j4 = jM534T;
                        }
                        j = 1;
                    }
                    if (this.f867g.getOffset(jM561x * j5) == offset) {
                        jM561x = j4;
                    }
                    ZoneOffset zoneOffsetM792h = m792h(offset);
                    int offset2 = this.f867g.getOffset(jM561x * j5);
                    ZoneOffset zoneOffsetM792h2 = m792h(offset2);
                    if (m791c(jM561x, zoneOffsetM792h2) == i) {
                        c2209bArr = (C2209b[]) Arrays.copyOf(c2209bArr, c2209bArr.length + 1);
                        c2209bArr[c2209bArr.length - 1] = new C2209b(jM561x, zoneOffsetM792h, zoneOffsetM792h2);
                    }
                    offset = offset2;
                } else {
                    jM561x = j4;
                }
                j2 = j5;
                j = 1;
            }
            if (1916 <= i && i < 2100) {
                this.f868h.putIfAbsent(numValueOf, c2209bArr);
            }
            return c2209bArr;
        }
        C2212e[] c2212eArr = this.f866f;
        C2209b[] c2209bArr3 = new C2209b[c2212eArr.length];
        int i4 = 0;
        while (i4 < c2212eArr.length) {
            C2212e c2212e = c2212eArr[i4];
            byte b = c2212e.f879b;
            if (b < 0) {
                EnumC2175j enumC2175j = c2212e.f878a;
                long j6 = i;
                C2136r.f714c.getClass();
                int iM755A = enumC2175j.m755A(C2136r.m706i(j6)) + 1 + c2212e.f879b;
                LocalDate localDate = LocalDate.f638d;
                EnumC2186a.YEAR.m774r(j6);
                Objects.requireNonNull(enumC2175j, "month");
                EnumC2186a.DAY_OF_MONTH.m774r(iM755A);
                localDateM592A = LocalDate.m592A(i, enumC2175j.getValue(), iM755A);
                DayOfWeek dayOfWeek = c2212e.f880c;
                if (dayOfWeek != null) {
                    final int value = dayOfWeek.getValue();
                    localDateM592A = (LocalDate) new InterfaceC2200o() { // from class: j$.time.temporal.p
                        @Override // p022j$.time.temporal.InterfaceC2200o
                        /* JADX INFO: renamed from: n */
                        public final InterfaceC2198m mo579n(InterfaceC2198m interfaceC2198m) {
                            switch (i3) {
                                case 0:
                                    int iMo576h = interfaceC2198m.mo576h(EnumC2186a.DAY_OF_WEEK);
                                    int i5 = value;
                                    if (iMo576h == i5) {
                                        return interfaceC2198m;
                                    }
                                    return interfaceC2198m.mo589d(iMo576h - i5 >= 0 ? 7 - r0 : -r0, EnumC2187b.DAYS);
                                default:
                                    int iMo576h2 = interfaceC2198m.mo576h(EnumC2186a.DAY_OF_WEEK);
                                    int i6 = value;
                                    if (iMo576h2 == i6) {
                                        return interfaceC2198m;
                                    }
                                    return interfaceC2198m.mo591r(i6 - iMo576h2 >= 0 ? 7 - r1 : -r1, EnumC2187b.DAYS);
                            }
                        }
                    }.mo579n(localDateM592A);
                }
            } else {
                EnumC2175j enumC2175j2 = c2212e.f878a;
                LocalDate localDate2 = LocalDate.f638d;
                EnumC2186a.YEAR.m774r(i);
                Objects.requireNonNull(enumC2175j2, "month");
                EnumC2186a.DAY_OF_MONTH.m774r(b);
                localDateM592A = LocalDate.m592A(i, enumC2175j2.getValue(), b);
                DayOfWeek dayOfWeek2 = c2212e.f880c;
                if (dayOfWeek2 != null) {
                    final int value2 = dayOfWeek2.getValue();
                    localDateM592A = (LocalDate) new InterfaceC2200o() { // from class: j$.time.temporal.p
                        @Override // p022j$.time.temporal.InterfaceC2200o
                        /* JADX INFO: renamed from: n */
                        public final InterfaceC2198m mo579n(InterfaceC2198m interfaceC2198m) {
                            switch (i2) {
                                case 0:
                                    int iMo576h = interfaceC2198m.mo576h(EnumC2186a.DAY_OF_WEEK);
                                    int i5 = value2;
                                    if (iMo576h == i5) {
                                        return interfaceC2198m;
                                    }
                                    return interfaceC2198m.mo589d(iMo576h - i5 >= 0 ? 7 - r0 : -r0, EnumC2187b.DAYS);
                                default:
                                    int iMo576h2 = interfaceC2198m.mo576h(EnumC2186a.DAY_OF_WEEK);
                                    int i6 = value2;
                                    if (iMo576h2 == i6) {
                                        return interfaceC2198m;
                                    }
                                    return interfaceC2198m.mo591r(i6 - iMo576h2 >= 0 ? 7 - r1 : -r1, EnumC2187b.DAYS);
                            }
                        }
                    }.mo579n(localDateM592A);
                }
            }
            if (c2212e.f882e) {
                localDateM592A = localDateM592A.plusDays(1L);
            }
            LocalDateTime localDateTimeM615E = LocalDateTime.m615E(localDateM592A, c2212e.f881d);
            EnumC2211d enumC2211d = c2212e.f883f;
            ZoneOffset zoneOffset = c2212e.f884g;
            ZoneOffset zoneOffset2 = c2212e.f885h;
            enumC2211d.getClass();
            int i5 = AbstractC2210c.f876a[enumC2211d.ordinal()];
            if (i5 == 1) {
                localDateTimeM615E = localDateTimeM615E.m619H(zoneOffset2.getTotalSeconds() - ZoneOffset.UTC.getTotalSeconds());
            } else if (i5 == 2) {
                localDateTimeM615E = localDateTimeM615E.m619H(zoneOffset2.getTotalSeconds() - zoneOffset.getTotalSeconds());
            }
            c2209bArr3[i4] = new C2209b(localDateTimeM615E, c2212e.f885h, c2212e.f886i);
            i4++;
            i2 = 0;
        }
        if (i < 2100) {
            this.f868h.putIfAbsent(numValueOf, c2209bArr3);
        }
        return c2209bArr3;
    }

    /* JADX INFO: renamed from: g */
    public final boolean m797g(Instant instant) {
        ZoneOffset zoneOffsetM792h;
        TimeZone timeZone = this.f867g;
        if (timeZone != null) {
            zoneOffsetM792h = m792h(timeZone.getRawOffset());
        } else if (this.f863c.length != 0) {
            int iBinarySearch = Arrays.binarySearch(this.f861a, instant.f636a);
            if (iBinarySearch < 0) {
                iBinarySearch = (-iBinarySearch) - 2;
            }
            zoneOffsetM792h = this.f862b[iBinarySearch + 1];
        } else {
            zoneOffsetM792h = this.f862b[0];
        }
        return !zoneOffsetM792h.equals(getOffset(instant));
    }

    /* JADX INFO: renamed from: c */
    public static int m791c(long j, ZoneOffset zoneOffset) {
        return LocalDate.m594K(AbstractC2104a.m534T(j + ((long) zoneOffset.getTotalSeconds()), 86400)).getYear();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof ZoneRules) {
            ZoneRules zoneRules = (ZoneRules) obj;
            if (Objects.equals(this.f867g, zoneRules.f867g) && Arrays.equals(this.f861a, zoneRules.f861a) && Arrays.equals(this.f862b, zoneRules.f862b) && Arrays.equals(this.f863c, zoneRules.f863c) && Arrays.equals(this.f865e, zoneRules.f865e) && Arrays.equals(this.f866f, zoneRules.f866f)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return ((((Objects.hashCode(this.f867g) ^ Arrays.hashCode(this.f861a)) ^ Arrays.hashCode(this.f862b)) ^ Arrays.hashCode(this.f863c)) ^ Arrays.hashCode(this.f865e)) ^ Arrays.hashCode(this.f866f);
    }

    public final String toString() {
        TimeZone timeZone = this.f867g;
        if (timeZone != null) {
            return "ZoneRules[timeZone=" + timeZone.getID() + "]";
        }
        return "ZoneRules[currentStandardOffset=" + this.f862b[r0.length - 1] + "]";
    }
}
