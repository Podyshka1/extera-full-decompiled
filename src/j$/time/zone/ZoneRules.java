package j$.time.zone;

import j$.com.android.tools.r8.AbstractC1965a;
import j$.time.C2034h;
import j$.time.DayOfWeek;
import j$.time.EnumC2036j;
import j$.time.Instant;
import j$.time.LocalDate;
import j$.time.LocalDateTime;
import j$.time.ZoneOffset;
import j$.time.chrono.C1997r;
import j$.time.temporal.EnumC2047a;
import j$.time.temporal.InterfaceC2061o;
import j$.util.Objects;
import j$.util.concurrent.ConcurrentHashMap;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.TimeZone;
import org.telegram.messenger.MediaDataController;

/* JADX INFO: loaded from: classes2.dex */
public final class ZoneRules implements Serializable {

    /* JADX INFO: renamed from: i */
    public static final long[] f622i = new long[0];

    /* JADX INFO: renamed from: j */
    public static final C2073e[] f623j = new C2073e[0];

    /* JADX INFO: renamed from: k */
    public static final LocalDateTime[] f624k = new LocalDateTime[0];

    /* JADX INFO: renamed from: l */
    public static final C2070b[] f625l = new C2070b[0];
    private static final long serialVersionUID = 3044319355680032515L;

    /* JADX INFO: renamed from: a */
    public final long[] f626a;

    /* JADX INFO: renamed from: b */
    public final ZoneOffset[] f627b;

    /* JADX INFO: renamed from: c */
    public final long[] f628c;

    /* JADX INFO: renamed from: d */
    public final LocalDateTime[] f629d;

    /* JADX INFO: renamed from: e */
    public final ZoneOffset[] f630e;

    /* JADX INFO: renamed from: f */
    public final C2073e[] f631f;

    /* JADX INFO: renamed from: g */
    public final TimeZone f632g;

    /* JADX INFO: renamed from: h */
    public final transient ConcurrentHashMap f633h = new ConcurrentHashMap();

    /* JADX INFO: renamed from: a */
    public static Object m665a(LocalDateTime localDateTime, C2070b c2070b) {
        LocalDateTime localDateTime2 = c2070b.f638b;
        if (c2070b.m677h()) {
            if (localDateTime.m496D(localDateTime2)) {
                return c2070b.f639c;
            }
            if (!localDateTime.m496D(c2070b.f638b.m498H(c2070b.f640d.getTotalSeconds() - c2070b.f639c.getTotalSeconds()))) {
                return c2070b.f640d;
            }
        } else {
            if (!localDateTime.m496D(localDateTime2)) {
                return c2070b.f640d;
            }
            if (localDateTime.m496D(c2070b.f638b.m498H(c2070b.f640d.getTotalSeconds() - c2070b.f639c.getTotalSeconds()))) {
                return c2070b.f639c;
            }
        }
        return c2070b;
    }

    public ZoneRules(long[] jArr, ZoneOffset[] zoneOffsetArr, long[] jArr2, ZoneOffset[] zoneOffsetArr2, C2073e[] c2073eArr) {
        this.f626a = jArr;
        this.f627b = zoneOffsetArr;
        this.f628c = jArr2;
        this.f630e = zoneOffsetArr2;
        this.f631f = c2073eArr;
        if (jArr2.length == 0) {
            this.f629d = f624k;
        } else {
            ArrayList arrayList = new ArrayList();
            int i = 0;
            while (i < jArr2.length) {
                int i2 = i + 1;
                C2070b c2070b = new C2070b(jArr2[i], zoneOffsetArr2[i], zoneOffsetArr2[i2]);
                if (c2070b.m677h()) {
                    arrayList.add(c2070b.f638b);
                    arrayList.add(c2070b.f638b.m498H(c2070b.f640d.getTotalSeconds() - c2070b.f639c.getTotalSeconds()));
                } else {
                    arrayList.add(c2070b.f638b.m498H(c2070b.f640d.getTotalSeconds() - c2070b.f639c.getTotalSeconds()));
                    arrayList.add(c2070b.f638b);
                }
                i = i2;
            }
            this.f629d = (LocalDateTime[]) arrayList.toArray(new LocalDateTime[arrayList.size()]);
        }
        this.f632g = null;
    }

    public ZoneRules(ZoneOffset zoneOffset) {
        ZoneOffset[] zoneOffsetArr = {zoneOffset};
        this.f627b = zoneOffsetArr;
        long[] jArr = f622i;
        this.f626a = jArr;
        this.f628c = jArr;
        this.f629d = f624k;
        this.f630e = zoneOffsetArr;
        this.f631f = f623j;
        this.f632g = null;
    }

    public ZoneRules(TimeZone timeZone) {
        ZoneOffset[] zoneOffsetArr = {m667h(timeZone.getRawOffset())};
        this.f627b = zoneOffsetArr;
        long[] jArr = f622i;
        this.f626a = jArr;
        this.f628c = jArr;
        this.f629d = f624k;
        this.f630e = zoneOffsetArr;
        this.f631f = f623j;
        this.f632g = timeZone;
    }

    /* JADX INFO: renamed from: h */
    public static ZoneOffset m667h(int i) {
        return ZoneOffset.m524H(i / MediaDataController.MAX_STYLE_RUNS_COUNT);
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private Object writeReplace() {
        return new C2069a(this.f632g != null ? (byte) 100 : (byte) 1, this);
    }

    public ZoneOffset getOffset(Instant instant) {
        TimeZone timeZone = this.f632g;
        if (timeZone != null) {
            return m667h(timeZone.getOffset(instant.toEpochMilli()));
        }
        long[] jArr = this.f628c;
        if (jArr.length == 0) {
            return this.f627b[0];
        }
        long j = instant.f404a;
        if (this.f631f.length > 0 && j > jArr[jArr.length - 1]) {
            C2070b[] c2070bArrM668b = m668b(m666c(j, this.f630e[r8.length - 1]));
            C2070b c2070b = null;
            for (int i = 0; i < c2070bArrM668b.length; i++) {
                c2070b = c2070bArrM668b[i];
                if (j < c2070b.f637a) {
                    return c2070b.f639c;
                }
            }
            return c2070b.f640d;
        }
        int iBinarySearch = Arrays.binarySearch(jArr, j);
        if (iBinarySearch < 0) {
            iBinarySearch = (-iBinarySearch) - 2;
        }
        return this.f630e[iBinarySearch + 1];
    }

    /* JADX INFO: renamed from: f */
    public final List m671f(LocalDateTime localDateTime) {
        Object objM669d = m669d(localDateTime);
        if (!(objM669d instanceof C2070b)) {
            return Collections.singletonList((ZoneOffset) objM669d);
        }
        C2070b c2070b = (C2070b) objM669d;
        if (c2070b.m677h()) {
            return Collections.EMPTY_LIST;
        }
        Object[] objArr = {c2070b.f639c, c2070b.f640d};
        ArrayList arrayList = new ArrayList(2);
        for (int i = 0; i < 2; i++) {
            arrayList.add(Objects.requireNonNull(objArr[i]));
        }
        return Collections.unmodifiableList(arrayList);
    }

    /* JADX INFO: renamed from: e */
    public final C2070b m670e(LocalDateTime localDateTime) {
        Object objM669d = m669d(localDateTime);
        if (objM669d instanceof C2070b) {
            return (C2070b) objM669d;
        }
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x0064, code lost:
    
        if (r8.m507v(r0) > 0) goto L34;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0087, code lost:
    
        if (r8.f414b.m625M() <= r0.f414b.m625M()) goto L44;
     */
    /* JADX INFO: renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object m669d(LocalDateTime localDateTime) {
        Object obj = null;
        int i = 0;
        if (this.f632g != null) {
            C2070b[] c2070bArrM668b = m668b(localDateTime.f413a.getYear());
            if (c2070bArrM668b.length == 0) {
                return m667h(this.f632g.getOffset(AbstractC1965a.m441x(localDateTime, this.f627b[0]) * 1000));
            }
            int length = c2070bArrM668b.length;
            while (i < length) {
                C2070b c2070b = c2070bArrM668b[i];
                Object objM665a = m665a(localDateTime, c2070b);
                if ((objM665a instanceof C2070b) || objM665a.equals(c2070b.f639c)) {
                    return objM665a;
                }
                i++;
                obj = objM665a;
            }
            return obj;
        }
        if (this.f628c.length == 0) {
            return this.f627b[0];
        }
        if (this.f631f.length > 0) {
            LocalDateTime localDateTime2 = this.f629d[r0.length - 1];
            if (localDateTime2 == null) {
                long jMo491x = localDateTime.f413a.mo491x();
                long jMo491x2 = localDateTime2.f413a.mo491x();
                if (jMo491x <= jMo491x2) {
                    if (jMo491x == jMo491x2) {
                    }
                }
                C2070b[] c2070bArrM668b2 = m668b(localDateTime.f413a.getYear());
                int length2 = c2070bArrM668b2.length;
                while (i < length2) {
                    C2070b c2070b2 = c2070bArrM668b2[i];
                    Object objM665a2 = m665a(localDateTime, c2070b2);
                    if ((objM665a2 instanceof C2070b) || objM665a2.equals(c2070b2.f639c)) {
                        return objM665a2;
                    }
                    i++;
                    obj = objM665a2;
                }
                return obj;
            }
            localDateTime.getClass();
        }
        int iBinarySearch = Arrays.binarySearch(this.f629d, localDateTime);
        if (iBinarySearch == -1) {
            return this.f630e[0];
        }
        if (iBinarySearch < 0) {
            iBinarySearch = (-iBinarySearch) - 2;
        } else {
            Object[] objArr = this.f629d;
            if (iBinarySearch < objArr.length - 1) {
                int i2 = iBinarySearch + 1;
                if (objArr[iBinarySearch].equals(objArr[i2])) {
                    iBinarySearch = i2;
                }
            }
        }
        if ((iBinarySearch & 1) != 0) {
            return this.f630e[(iBinarySearch / 2) + 1];
        }
        LocalDateTime[] localDateTimeArr = this.f629d;
        LocalDateTime localDateTime3 = localDateTimeArr[iBinarySearch];
        LocalDateTime localDateTime4 = localDateTimeArr[iBinarySearch + 1];
        ZoneOffset[] zoneOffsetArr = this.f630e;
        int i3 = iBinarySearch / 2;
        ZoneOffset zoneOffset = zoneOffsetArr[i3];
        ZoneOffset zoneOffset2 = zoneOffsetArr[i3 + 1];
        return zoneOffset2.getTotalSeconds() > zoneOffset.getTotalSeconds() ? new C2070b(localDateTime3, zoneOffset, zoneOffset2) : new C2070b(localDateTime4, zoneOffset, zoneOffset2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX INFO: renamed from: b */
    public final C2070b[] m668b(int i) {
        LocalDate localDateM472A;
        C2070b[] c2070bArr = f625l;
        Integer numValueOf = Integer.valueOf(i);
        C2070b[] c2070bArr2 = (C2070b[]) this.f633h.get(numValueOf);
        if (c2070bArr2 != null) {
            return c2070bArr2;
        }
        long j = 1;
        final int i2 = 0;
        final int i3 = 1;
        if (this.f632g != null) {
            if (i < 1800) {
                return c2070bArr;
            }
            LocalDateTime localDateTime = LocalDateTime.f411c;
            LocalDate localDateOf = LocalDate.of(i - 1, 12, 31);
            EnumC2047a.HOUR_OF_DAY.m649r(0);
            long jM441x = AbstractC1965a.m441x(new LocalDateTime(localDateOf, C2034h.f561h[0]), this.f627b[0]);
            long j2 = 1000;
            int offset = this.f632g.getOffset(jM441x * 1000);
            long j3 = 31968000 + jM441x;
            while (jM441x < j3) {
                long j4 = jM441x + 7776000;
                long j5 = j2;
                if (offset != this.f632g.getOffset(j4 * j5)) {
                    while (j4 - jM441x > j) {
                        long jM414T = AbstractC1965a.m414T(j4 + jM441x, 2L);
                        if (this.f632g.getOffset(jM414T * j5) == offset) {
                            jM441x = jM414T;
                        } else {
                            j4 = jM414T;
                        }
                        j = 1;
                    }
                    if (this.f632g.getOffset(jM441x * j5) == offset) {
                        jM441x = j4;
                    }
                    ZoneOffset zoneOffsetM667h = m667h(offset);
                    int offset2 = this.f632g.getOffset(jM441x * j5);
                    ZoneOffset zoneOffsetM667h2 = m667h(offset2);
                    if (m666c(jM441x, zoneOffsetM667h2) == i) {
                        c2070bArr = (C2070b[]) Arrays.copyOf(c2070bArr, c2070bArr.length + 1);
                        c2070bArr[c2070bArr.length - 1] = new C2070b(jM441x, zoneOffsetM667h, zoneOffsetM667h2);
                    }
                    offset = offset2;
                } else {
                    jM441x = j4;
                }
                j2 = j5;
                j = 1;
            }
            if (1916 <= i && i < 2100) {
                this.f633h.putIfAbsent(numValueOf, c2070bArr);
            }
            return c2070bArr;
        }
        C2073e[] c2073eArr = this.f631f;
        C2070b[] c2070bArr3 = new C2070b[c2073eArr.length];
        int i4 = 0;
        while (i4 < c2073eArr.length) {
            C2073e c2073e = c2073eArr[i4];
            byte b = c2073e.f644b;
            if (b < 0) {
                EnumC2036j enumC2036j = c2073e.f643a;
                long j6 = i;
                C1997r.f480c.getClass();
                int iM632A = enumC2036j.m632A(C1997r.m583i(j6)) + 1 + c2073e.f644b;
                LocalDate localDate = LocalDate.f406d;
                EnumC2047a.YEAR.m649r(j6);
                Objects.requireNonNull(enumC2036j, "month");
                EnumC2047a.DAY_OF_MONTH.m649r(iM632A);
                localDateM472A = LocalDate.m472A(i, enumC2036j.getValue(), iM632A);
                DayOfWeek dayOfWeek = c2073e.f645c;
                if (dayOfWeek != null) {
                    final int value = dayOfWeek.getValue();
                    localDateM472A = (LocalDate) new InterfaceC2061o() { // from class: j$.time.temporal.p
                        @Override // j$.time.temporal.InterfaceC2061o
                        /* JADX INFO: renamed from: n */
                        public final InterfaceC2059m mo459n(InterfaceC2059m interfaceC2059m) {
                            switch (i3) {
                                case 0:
                                    int iMo456h = interfaceC2059m.mo456h(EnumC2047a.DAY_OF_WEEK);
                                    int i5 = value;
                                    if (iMo456h == i5) {
                                        return interfaceC2059m;
                                    }
                                    return interfaceC2059m.mo469d(iMo456h - i5 >= 0 ? 7 - r0 : -r0, EnumC2048b.DAYS);
                                default:
                                    int iMo456h2 = interfaceC2059m.mo456h(EnumC2047a.DAY_OF_WEEK);
                                    int i6 = value;
                                    if (iMo456h2 == i6) {
                                        return interfaceC2059m;
                                    }
                                    return interfaceC2059m.mo471r(i6 - iMo456h2 >= 0 ? 7 - r1 : -r1, EnumC2048b.DAYS);
                            }
                        }
                    }.mo459n(localDateM472A);
                }
            } else {
                EnumC2036j enumC2036j2 = c2073e.f643a;
                LocalDate localDate2 = LocalDate.f406d;
                EnumC2047a.YEAR.m649r(i);
                Objects.requireNonNull(enumC2036j2, "month");
                EnumC2047a.DAY_OF_MONTH.m649r(b);
                localDateM472A = LocalDate.m472A(i, enumC2036j2.getValue(), b);
                DayOfWeek dayOfWeek2 = c2073e.f645c;
                if (dayOfWeek2 != null) {
                    final int value2 = dayOfWeek2.getValue();
                    localDateM472A = (LocalDate) new InterfaceC2061o() { // from class: j$.time.temporal.p
                        @Override // j$.time.temporal.InterfaceC2061o
                        /* JADX INFO: renamed from: n */
                        public final InterfaceC2059m mo459n(InterfaceC2059m interfaceC2059m) {
                            switch (i2) {
                                case 0:
                                    int iMo456h = interfaceC2059m.mo456h(EnumC2047a.DAY_OF_WEEK);
                                    int i5 = value2;
                                    if (iMo456h == i5) {
                                        return interfaceC2059m;
                                    }
                                    return interfaceC2059m.mo469d(iMo456h - i5 >= 0 ? 7 - r0 : -r0, EnumC2048b.DAYS);
                                default:
                                    int iMo456h2 = interfaceC2059m.mo456h(EnumC2047a.DAY_OF_WEEK);
                                    int i6 = value2;
                                    if (iMo456h2 == i6) {
                                        return interfaceC2059m;
                                    }
                                    return interfaceC2059m.mo471r(i6 - iMo456h2 >= 0 ? 7 - r1 : -r1, EnumC2048b.DAYS);
                            }
                        }
                    }.mo459n(localDateM472A);
                }
            }
            if (c2073e.f647e) {
                localDateM472A = localDateM472A.plusDays(1L);
            }
            LocalDateTime localDateTimeM494E = LocalDateTime.m494E(localDateM472A, c2073e.f646d);
            EnumC2072d enumC2072d = c2073e.f648f;
            ZoneOffset zoneOffset = c2073e.f649g;
            ZoneOffset zoneOffset2 = c2073e.f650h;
            enumC2072d.getClass();
            int i5 = AbstractC2071c.f641a[enumC2072d.ordinal()];
            if (i5 == 1) {
                localDateTimeM494E = localDateTimeM494E.m498H(zoneOffset2.getTotalSeconds() - ZoneOffset.UTC.getTotalSeconds());
            } else if (i5 == 2) {
                localDateTimeM494E = localDateTimeM494E.m498H(zoneOffset2.getTotalSeconds() - zoneOffset.getTotalSeconds());
            }
            c2070bArr3[i4] = new C2070b(localDateTimeM494E, c2073e.f650h, c2073e.f651i);
            i4++;
            i2 = 0;
        }
        if (i < 2100) {
            this.f633h.putIfAbsent(numValueOf, c2070bArr3);
        }
        return c2070bArr3;
    }

    /* JADX INFO: renamed from: g */
    public final boolean m672g(Instant instant) {
        ZoneOffset zoneOffsetM667h;
        TimeZone timeZone = this.f632g;
        if (timeZone != null) {
            zoneOffsetM667h = m667h(timeZone.getRawOffset());
        } else if (this.f628c.length != 0) {
            int iBinarySearch = Arrays.binarySearch(this.f626a, instant.f404a);
            if (iBinarySearch < 0) {
                iBinarySearch = (-iBinarySearch) - 2;
            }
            zoneOffsetM667h = this.f627b[iBinarySearch + 1];
        } else {
            zoneOffsetM667h = this.f627b[0];
        }
        return !zoneOffsetM667h.equals(getOffset(instant));
    }

    /* JADX INFO: renamed from: c */
    public static int m666c(long j, ZoneOffset zoneOffset) {
        return LocalDate.m474K(AbstractC1965a.m414T(j + ((long) zoneOffset.getTotalSeconds()), 86400)).getYear();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof ZoneRules) {
            ZoneRules zoneRules = (ZoneRules) obj;
            if (Objects.equals(this.f632g, zoneRules.f632g) && Arrays.equals(this.f626a, zoneRules.f626a) && Arrays.equals(this.f627b, zoneRules.f627b) && Arrays.equals(this.f628c, zoneRules.f628c) && Arrays.equals(this.f630e, zoneRules.f630e) && Arrays.equals(this.f631f, zoneRules.f631f)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return ((((Objects.hashCode(this.f632g) ^ Arrays.hashCode(this.f626a)) ^ Arrays.hashCode(this.f627b)) ^ Arrays.hashCode(this.f628c)) ^ Arrays.hashCode(this.f630e)) ^ Arrays.hashCode(this.f631f);
    }

    public final String toString() {
        TimeZone timeZone = this.f632g;
        if (timeZone != null) {
            return "ZoneRules[timeZone=" + timeZone.getID() + "]";
        }
        return "ZoneRules[currentStandardOffset=" + this.f627b[r0.length - 1] + "]";
    }
}
