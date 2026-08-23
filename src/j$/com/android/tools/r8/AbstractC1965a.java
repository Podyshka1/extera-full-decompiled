package j$.com.android.tools.r8;

import j$.com.android.tools.r8.AbstractC1965a;
import j$.time.AbstractC1970c;
import j$.time.C1969b;
import j$.time.ZoneOffset;
import j$.time.chrono.AbstractC1980a;
import j$.time.chrono.AbstractC1987h;
import j$.time.chrono.C1976F;
import j$.time.chrono.C1993n;
import j$.time.chrono.C1997r;
import j$.time.chrono.C2000u;
import j$.time.chrono.C2005z;
import j$.time.chrono.ChronoLocalDateTime;
import j$.time.chrono.ChronoZonedDateTime;
import j$.time.chrono.InterfaceC1981b;
import j$.time.chrono.InterfaceC1990k;
import j$.time.chrono.InterfaceC1991l;
import j$.time.format.C2009a;
import j$.time.temporal.AbstractC2064r;
import j$.time.temporal.C2066t;
import j$.time.temporal.EnumC2047a;
import j$.time.temporal.EnumC2048b;
import j$.time.temporal.InterfaceC2059m;
import j$.time.temporal.InterfaceC2060n;
import j$.time.temporal.InterfaceC2063q;
import j$.util.C2078B;
import j$.util.C2079C;
import j$.util.C2080D;
import j$.util.C2084H;
import j$.util.C2088L;
import j$.util.InterfaceC2096U;
import j$.util.InterfaceC2101Z;
import j$.util.InterfaceC2209y;
import j$.util.Objects;
import j$.util.OptionalInt;
import j$.util.Spliterator;
import j$.util.concurrent.C2115k;
import j$.util.concurrent.ConcurrentHashMap;
import j$.util.function.C2133b;
import j$.util.function.C2135d;
import j$.util.function.C2138g;
import j$.util.t0;
import java.text.SimpleDateFormat;
import java.util.AbstractMap;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Optional;
import java.util.OptionalDouble;
import java.util.OptionalLong;
import java.util.ServiceConfigurationError;
import java.util.ServiceLoader;
import java.util.TimeZone;
import java.util.concurrent.ConcurrentMap;
import java.util.function.BiConsumer;
import java.util.function.BiFunction;
import java.util.function.Consumer;
import java.util.function.DoubleConsumer;
import java.util.function.IntConsumer;
import java.util.function.LongConsumer;
import org.mvel2.asm.signature.SignatureVisitor;
import sun.misc.Unsafe;

/* JADX INFO: renamed from: j$.com.android.tools.r8.a */
/* JADX INFO: loaded from: classes2.dex */
public abstract /* synthetic */ class AbstractC1965a {
    /* JADX INFO: renamed from: O */
    public static /* synthetic */ long m409O(long j, int i) {
        long j2 = i;
        int iNumberOfLeadingZeros = Long.numberOfLeadingZeros(~j2) + Long.numberOfLeadingZeros(j2) + Long.numberOfLeadingZeros(~j) + Long.numberOfLeadingZeros(j);
        if (iNumberOfLeadingZeros > 65) {
            return j * j2;
        }
        if (iNumberOfLeadingZeros >= 64) {
            if ((j2 != Long.MIN_VALUE) | (j >= 0)) {
                long j3 = j * j2;
                if (j == 0 || j3 / j == j2) {
                    return j3;
                }
            }
        }
        throw new ArithmeticException();
    }

    /* JADX INFO: renamed from: P */
    public static /* synthetic */ long m410P(long j, long j2) {
        long j3 = j + j2;
        if (((j2 ^ j) < 0) || ((j ^ j3) >= 0)) {
            return j3;
        }
        throw new ArithmeticException();
    }

    /* JADX INFO: renamed from: Q */
    public static /* synthetic */ Map.Entry m411Q(Object obj, Object obj2) {
        return new AbstractMap.SimpleImmutableEntry(Objects.requireNonNull(obj), Objects.requireNonNull(obj2));
    }

    /* JADX INFO: renamed from: R */
    public static /* synthetic */ boolean m412R(Unsafe unsafe, Object obj, long j, C2115k c2115k) {
        while (true) {
            Unsafe unsafe2 = unsafe;
            Object obj2 = obj;
            long j2 = j;
            C2115k c2115k2 = c2115k;
            if (unsafe2.compareAndSwapObject(obj2, j2, (Object) null, c2115k2)) {
                return true;
            }
            if (unsafe2.getObject(obj2, j2) != null) {
                return false;
            }
            unsafe = unsafe2;
            obj = obj2;
            j = j2;
            c2115k = c2115k2;
        }
    }

    /* JADX INFO: renamed from: S */
    public static /* synthetic */ long m413S(long j, long j2) {
        long j3 = j % j2;
        if (j3 == 0) {
            return 0L;
        }
        return (((j ^ j2) >> 63) | 1) > 0 ? j3 : j3 + j2;
    }

    /* JADX INFO: renamed from: T */
    public static /* synthetic */ long m414T(long j, long j2) {
        long j3 = j / j2;
        return (j - (j2 * j3) != 0 && (((j ^ j2) >> 63) | 1) < 0) ? j3 - 1 : j3;
    }

    /* JADX INFO: renamed from: U */
    public static /* synthetic */ long m415U(long j, long j2) {
        long j3 = j - j2;
        if (((j2 ^ j) >= 0) || ((j ^ j3) >= 0)) {
            return j3;
        }
        throw new ArithmeticException();
    }

    /* JADX INFO: renamed from: I */
    public static Optional m403I(j$.util.Optional optional) {
        if (optional == null) {
            return null;
        }
        if (optional.isPresent()) {
            return Optional.of(optional.get());
        }
        return Optional.empty();
    }

    /* JADX INFO: renamed from: E */
    public static j$.util.Optional m399E(Optional optional) {
        if (optional == null) {
            return null;
        }
        if (optional.isPresent()) {
            return j$.util.Optional.of(optional.get());
        }
        return j$.util.Optional.empty();
    }

    /* JADX INFO: renamed from: F */
    public static C2078B m400F(OptionalDouble optionalDouble) {
        if (optionalDouble == null) {
            return null;
        }
        if (!optionalDouble.isPresent()) {
            return C2078B.f656c;
        }
        return new C2078B(optionalDouble.getAsDouble());
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [j$.util.function.b] */
    /* JADX INFO: renamed from: b */
    public static C2133b m419b(final DoubleConsumer doubleConsumer, final DoubleConsumer doubleConsumer2) {
        Objects.requireNonNull(doubleConsumer2);
        return new DoubleConsumer() { // from class: j$.util.function.b
            public final /* synthetic */ DoubleConsumer andThen(DoubleConsumer doubleConsumer3) {
                return AbstractC1965a.m419b(this, doubleConsumer3);
            }

            @Override // java.util.function.DoubleConsumer
            public final void accept(double d) {
                doubleConsumer.accept(d);
                doubleConsumer2.accept(d);
            }
        };
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [j$.util.function.d] */
    /* JADX INFO: renamed from: c */
    public static C2135d m420c(final IntConsumer intConsumer, final IntConsumer intConsumer2) {
        Objects.requireNonNull(intConsumer2);
        return new IntConsumer() { // from class: j$.util.function.d
            public final /* synthetic */ IntConsumer andThen(IntConsumer intConsumer3) {
                return AbstractC1965a.m420c(this, intConsumer3);
            }

            @Override // java.util.function.IntConsumer
            public final void accept(int i) {
                intConsumer.accept(i);
                intConsumer2.accept(i);
            }
        };
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [j$.util.function.g] */
    /* JADX INFO: renamed from: d */
    public static C2138g m421d(final LongConsumer longConsumer, final LongConsumer longConsumer2) {
        Objects.requireNonNull(longConsumer2);
        return new LongConsumer() { // from class: j$.util.function.g
            public final /* synthetic */ LongConsumer andThen(LongConsumer longConsumer3) {
                return AbstractC1965a.m421d(this, longConsumer3);
            }

            @Override // java.util.function.LongConsumer
            public final void accept(long j) {
                longConsumer.accept(j);
                longConsumer2.accept(j);
            }
        };
    }

    /* JADX INFO: renamed from: H */
    public static C2079C m402H(OptionalLong optionalLong) {
        if (optionalLong == null) {
            return null;
        }
        if (!optionalLong.isPresent()) {
            return C2079C.f661c;
        }
        return new C2079C(optionalLong.getAsLong());
    }

    /* JADX INFO: renamed from: D */
    public static String m398D(long j, String str, Locale locale) {
        TimeZone timeZone = TimeZone.getTimeZone("UTC");
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat(str, locale);
        simpleDateFormat.setTimeZone(timeZone);
        Calendar calendar = Calendar.getInstance();
        calendar.setTimeZone(timeZone);
        calendar.set(0, (int) j, 0, 0, 0, 0);
        return simpleDateFormat.format(calendar.getTime());
    }

    /* JADX INFO: renamed from: G */
    public static OptionalInt m401G(java.util.OptionalInt optionalInt) {
        if (optionalInt == null) {
            return null;
        }
        if (!optionalInt.isPresent()) {
            return OptionalInt.f678c;
        }
        return new OptionalInt(optionalInt.getAsInt());
    }

    /* JADX INFO: renamed from: i */
    public static void m426i(ConcurrentMap concurrentMap, BiConsumer biConsumer) {
        Objects.requireNonNull(biConsumer);
        for (Map.Entry entry : concurrentMap.entrySet()) {
            try {
                biConsumer.accept(entry.getKey(), entry.getValue());
            } catch (IllegalStateException unused) {
            }
        }
    }

    /* JADX INFO: renamed from: V */
    public static String m416V(Object obj, Object obj2) {
        String string;
        String string2;
        String str = "null";
        if (obj == null || (string = obj.toString()) == null) {
            string = "null";
        }
        int length = string.length();
        if (obj2 != null && (string2 = obj2.toString()) != null) {
            str = string2;
        }
        int length2 = str.length();
        char[] cArr = new char[length + length2 + 1];
        string.getChars(0, length, cArr, 0);
        cArr[length] = SignatureVisitor.INSTANCEOF;
        str.getChars(0, length2, cArr, length + 1);
        return new String(cArr);
    }

    /* JADX INFO: renamed from: C */
    public static String m397C(long j, String str, Locale locale) {
        TimeZone timeZone = TimeZone.getTimeZone("UTC");
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat(str, locale);
        simpleDateFormat.setTimeZone(timeZone);
        Calendar calendar = Calendar.getInstance();
        calendar.setTimeZone(timeZone);
        calendar.set(2016, 1, (int) j, 0, 0, 0);
        return simpleDateFormat.format(calendar.getTime());
    }

    /* JADX INFO: renamed from: M */
    public static void m407M(Iterator it, Consumer consumer) {
        if (it instanceof InterfaceC2209y) {
            ((InterfaceC2209y) it).forEachRemaining(consumer);
            return;
        }
        Objects.requireNonNull(consumer);
        while (it.hasNext()) {
            consumer.accept(it.next());
        }
    }

    /* JADX INFO: renamed from: J */
    public static OptionalDouble m404J(C2078B c2078b) {
        if (c2078b == null) {
            return null;
        }
        boolean z = c2078b.f657a;
        if (!z) {
            return OptionalDouble.empty();
        }
        if (z) {
            return OptionalDouble.of(c2078b.f658b);
        }
        throw new NoSuchElementException("No value present");
    }

    /* JADX INFO: renamed from: K */
    public static java.util.OptionalInt m405K(OptionalInt optionalInt) {
        if (optionalInt == null) {
            return null;
        }
        boolean z = optionalInt.f679a;
        if (!z) {
            return java.util.OptionalInt.empty();
        }
        if (z) {
            return java.util.OptionalInt.of(optionalInt.f680b);
        }
        throw new NoSuchElementException("No value present");
    }

    /* JADX INFO: renamed from: L */
    public static OptionalLong m406L(C2079C c2079c) {
        if (c2079c == null) {
            return null;
        }
        boolean z = c2079c.f662a;
        if (!z) {
            return OptionalLong.empty();
        }
        if (z) {
            return OptionalLong.of(c2079c.f663b);
        }
        throw new NoSuchElementException("No value present");
    }

    /* JADX INFO: renamed from: s */
    public static boolean m436s(InterfaceC1991l interfaceC1991l, InterfaceC2063q interfaceC2063q) {
        return interfaceC2063q instanceof EnumC2047a ? interfaceC2063q == EnumC2047a.ERA : interfaceC2063q != null && interfaceC2063q.mo644h(interfaceC1991l);
    }

    /* JADX INFO: renamed from: N */
    public static InterfaceC1990k m408N(InterfaceC2060n interfaceC2060n) {
        Objects.requireNonNull(interfaceC2060n, "temporal");
        return (InterfaceC1990k) Objects.requireNonNullElse((InterfaceC1990k) interfaceC2060n.mo458k(AbstractC2064r.f611b), C1997r.f480c);
    }

    /* JADX INFO: renamed from: m */
    public static int m430m(ChronoZonedDateTime chronoZonedDateTime, InterfaceC2063q interfaceC2063q) {
        if (interfaceC2063q instanceof EnumC2047a) {
            int i = AbstractC1987h.f458a[((EnumC2047a) interfaceC2063q).ordinal()];
            if (i == 1) {
                throw new C2066t("Invalid field 'InstantSeconds' for get() method, use getLong() instead");
            }
            if (i == 2) {
                return chronoZonedDateTime.mo537g().getTotalSeconds();
            }
            return chronoZonedDateTime.mo538o().mo456h(interfaceC2063q);
        }
        return AbstractC2064r.m655a(chronoZonedDateTime, interfaceC2063q);
    }

    /* JADX INFO: renamed from: n */
    public static int m431n(InterfaceC1991l interfaceC1991l, InterfaceC2063q interfaceC2063q) {
        if (interfaceC2063q == EnumC2047a.ERA) {
            return interfaceC1991l.getValue();
        }
        return AbstractC2064r.m655a(interfaceC1991l, interfaceC2063q);
    }

    /* JADX INFO: renamed from: p */
    public static long m433p(InterfaceC1991l interfaceC1991l, InterfaceC2063q interfaceC2063q) {
        if (interfaceC2063q == EnumC2047a.ERA) {
            return interfaceC1991l.getValue();
        }
        if (interfaceC2063q instanceof EnumC2047a) {
            throw new C2066t(AbstractC1970c.m541a("Unsupported field: ", interfaceC2063q));
        }
        return interfaceC2063q.mo647k(interfaceC1991l);
    }

    /* JADX INFO: renamed from: W */
    public static InterfaceC1990k m417W(String str) {
        ConcurrentHashMap concurrentHashMap = AbstractC1980a.f447a;
        Objects.requireNonNull(str, "id");
        while (true) {
            ConcurrentHashMap concurrentHashMap2 = AbstractC1980a.f447a;
            InterfaceC1990k interfaceC1990k = (InterfaceC1990k) concurrentHashMap2.get(str);
            if (interfaceC1990k == null) {
                interfaceC1990k = (InterfaceC1990k) AbstractC1980a.f448b.get(str);
            }
            if (interfaceC1990k != null) {
                return interfaceC1990k;
            }
            if (concurrentHashMap2.get("ISO") != null) {
                for (InterfaceC1990k interfaceC1990k2 : ServiceLoader.load(InterfaceC1990k.class)) {
                    if (str.equals(interfaceC1990k2.getId()) || str.equals(interfaceC1990k2.mo553m())) {
                        return interfaceC1990k2;
                    }
                }
                throw new C1969b("Unknown chronology: " + str);
            }
            C1993n c1993n = C1993n.f464l;
            c1993n.getClass();
            AbstractC1980a.m559h(c1993n, "Hijrah-umalqura");
            C2000u c2000u = C2000u.f483c;
            c2000u.getClass();
            AbstractC1980a.m559h(c2000u, "Japanese");
            C2005z c2005z = C2005z.f495c;
            c2005z.getClass();
            AbstractC1980a.m559h(c2005z, "Minguo");
            C1976F c1976f = C1976F.f443c;
            c1976f.getClass();
            AbstractC1980a.m559h(c1976f, "ThaiBuddhist");
            try {
                for (AbstractC1980a abstractC1980a : Arrays.asList(new AbstractC1980a[0])) {
                    if (!abstractC1980a.getId().equals("ISO")) {
                        AbstractC1980a.m559h(abstractC1980a, abstractC1980a.getId());
                    }
                }
                C1997r c1997r = C1997r.f480c;
                c1997r.getClass();
                AbstractC1980a.m559h(c1997r, "ISO");
            } catch (Throwable th) {
                throw new ServiceConfigurationError(th.getMessage(), th);
            }
        }
    }

    /* JADX INFO: renamed from: w */
    public static Object m440w(InterfaceC1991l interfaceC1991l, C2009a c2009a) {
        if (c2009a == AbstractC2064r.f612c) {
            return EnumC2048b.ERAS;
        }
        return AbstractC2064r.m657c(interfaceC1991l, c2009a);
    }

    /* JADX INFO: renamed from: u */
    public static Object m438u(ChronoLocalDateTime chronoLocalDateTime, C2009a c2009a) {
        if (c2009a == AbstractC2064r.f610a || c2009a == AbstractC2064r.f614e || c2009a == AbstractC2064r.f613d) {
            return null;
        }
        if (c2009a == AbstractC2064r.f616g) {
            return chronoLocalDateTime.mo504b();
        }
        if (c2009a == AbstractC2064r.f611b) {
            return chronoLocalDateTime.mo503a();
        }
        if (c2009a == AbstractC2064r.f612c) {
            return EnumC2048b.NANOS;
        }
        return c2009a.m593a(chronoLocalDateTime);
    }

    /* JADX INFO: renamed from: r */
    public static boolean m435r(InterfaceC1981b interfaceC1981b, InterfaceC2063q interfaceC2063q) {
        if (interfaceC2063q instanceof EnumC2047a) {
            return ((EnumC2047a) interfaceC2063q).isDateBased();
        }
        return interfaceC2063q != null && interfaceC2063q.mo644h(interfaceC1981b);
    }

    /* JADX INFO: renamed from: o */
    public static long m432o(Spliterator spliterator) {
        if ((spliterator.characteristics() & 64) == 0) {
            return -1L;
        }
        return spliterator.estimateSize();
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0019, code lost:
    
        return r1;
     */
    /* JADX INFO: renamed from: h */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static Object m425h(ConcurrentMap concurrentMap, Object obj, BiFunction biFunction) {
        loop0: while (true) {
            Object objPutIfAbsent = concurrentMap.get(obj);
            while (true) {
                Object objApply = biFunction.apply(obj, objPutIfAbsent);
                if (objApply != null) {
                    if (objPutIfAbsent != null) {
                        if (concurrentMap.replace(obj, objPutIfAbsent, objApply)) {
                            break;
                        }
                    } else {
                        objPutIfAbsent = concurrentMap.putIfAbsent(obj, objApply);
                        if (objPutIfAbsent == null) {
                            break loop0;
                        }
                    }
                } else if (objPutIfAbsent == null || concurrentMap.remove(obj, objPutIfAbsent)) {
                    return null;
                }
            }
        }
    }

    /* JADX INFO: renamed from: q */
    public static boolean m434q(Spliterator spliterator, int i) {
        return (spliterator.characteristics() & i) == i;
    }

    /* JADX INFO: renamed from: x */
    public static long m441x(ChronoLocalDateTime chronoLocalDateTime, ZoneOffset zoneOffset) {
        Objects.requireNonNull(zoneOffset, "offset");
        return ((chronoLocalDateTime.mo505f().mo491x() * 86400) + ((long) chronoLocalDateTime.mo504b().m626N())) - ((long) zoneOffset.getTotalSeconds());
    }

    /* JADX INFO: renamed from: v */
    public static Object m439v(ChronoZonedDateTime chronoZonedDateTime, C2009a c2009a) {
        if (c2009a == AbstractC2064r.f614e || c2009a == AbstractC2064r.f610a) {
            return chronoZonedDateTime.mo540u();
        }
        if (c2009a == AbstractC2064r.f613d) {
            return chronoZonedDateTime.mo537g();
        }
        if (c2009a == AbstractC2064r.f616g) {
            return chronoZonedDateTime.mo535b();
        }
        if (c2009a == AbstractC2064r.f611b) {
            return chronoZonedDateTime.mo534a();
        }
        if (c2009a == AbstractC2064r.f612c) {
            return EnumC2048b.NANOS;
        }
        return c2009a.m593a(chronoZonedDateTime);
    }

    /* JADX INFO: renamed from: f */
    public static int m423f(ChronoLocalDateTime chronoLocalDateTime, ChronoLocalDateTime chronoLocalDateTime2) {
        int iMo476B = chronoLocalDateTime.mo505f().compareTo(chronoLocalDateTime2.mo505f());
        return (iMo476B == 0 && (iMo476B = chronoLocalDateTime.mo504b().compareTo(chronoLocalDateTime2.mo504b())) == 0) ? ((AbstractC1980a) chronoLocalDateTime.mo503a()).getId().compareTo(chronoLocalDateTime2.mo503a().getId()) : iMo476B;
    }

    /* JADX INFO: renamed from: t */
    public static Object m437t(InterfaceC1981b interfaceC1981b, C2009a c2009a) {
        if (c2009a == AbstractC2064r.f610a || c2009a == AbstractC2064r.f614e || c2009a == AbstractC2064r.f613d || c2009a == AbstractC2064r.f616g) {
            return null;
        }
        if (c2009a == AbstractC2064r.f611b) {
            return interfaceC1981b.mo489a();
        }
        if (c2009a == AbstractC2064r.f612c) {
            return EnumC2048b.DAYS;
        }
        return c2009a.m593a(interfaceC1981b);
    }

    /* JADX INFO: renamed from: a */
    public static InterfaceC2059m m418a(InterfaceC1981b interfaceC1981b, InterfaceC2059m interfaceC2059m) {
        return interfaceC2059m.mo468c(interfaceC1981b.mo491x(), EnumC2047a.EPOCH_DAY);
    }

    /* JADX INFO: renamed from: y */
    public static long m442y(ChronoZonedDateTime chronoZonedDateTime) {
        return ((chronoZonedDateTime.mo536f().mo491x() * 86400) + ((long) chronoZonedDateTime.mo535b().m626N())) - ((long) chronoZonedDateTime.mo537g().getTotalSeconds());
    }

    /* JADX INFO: renamed from: g */
    public static int m424g(ChronoZonedDateTime chronoZonedDateTime, ChronoZonedDateTime chronoZonedDateTime2) {
        int iCompare = Long.compare(chronoZonedDateTime.mo531C(), chronoZonedDateTime2.mo531C());
        return (iCompare == 0 && (iCompare = chronoZonedDateTime.mo535b().f565d - chronoZonedDateTime2.mo535b().f565d) == 0 && (iCompare = chronoZonedDateTime.mo538o().mo508z(chronoZonedDateTime2.mo538o())) == 0 && (iCompare = chronoZonedDateTime.mo540u().getId().compareTo(chronoZonedDateTime2.mo540u().getId())) == 0) ? ((AbstractC1980a) chronoZonedDateTime.mo534a()).getId().compareTo(chronoZonedDateTime2.mo534a().getId()) : iCompare;
    }

    /* JADX INFO: renamed from: A */
    public static boolean m395A(Spliterator.OfInt ofInt, Consumer consumer) {
        if (consumer instanceof IntConsumer) {
            return ofInt.tryAdvance((IntConsumer) consumer);
        }
        if (t0.f1299a) {
            t0.m909a(ofInt.getClass(), "{0} calling Spliterator.OfInt.tryAdvance((IntConsumer) action::accept)");
            throw null;
        }
        Objects.requireNonNull(consumer);
        return ofInt.tryAdvance((IntConsumer) new C2084H(consumer, 0));
    }

    /* JADX INFO: renamed from: k */
    public static void m428k(Spliterator.OfInt ofInt, Consumer consumer) {
        if (consumer instanceof IntConsumer) {
            ofInt.forEachRemaining((IntConsumer) consumer);
        } else {
            if (t0.f1299a) {
                t0.m909a(ofInt.getClass(), "{0} calling Spliterator.OfInt.forEachRemaining((IntConsumer) action::accept)");
                throw null;
            }
            Objects.requireNonNull(consumer);
            ofInt.forEachRemaining((IntConsumer) new C2084H(consumer, 0));
        }
    }

    /* JADX INFO: renamed from: e */
    public static int m422e(InterfaceC1981b interfaceC1981b, InterfaceC1981b interfaceC1981b2) {
        int iCompare = Long.compare(interfaceC1981b.mo491x(), interfaceC1981b2.mo491x());
        if (iCompare != 0) {
            return iCompare;
        }
        return ((AbstractC1980a) interfaceC1981b.mo489a()).getId().compareTo(interfaceC1981b2.mo489a().getId());
    }

    /* JADX INFO: renamed from: B */
    public static boolean m396B(InterfaceC2101Z interfaceC2101Z, Consumer consumer) {
        if (consumer instanceof LongConsumer) {
            return interfaceC2101Z.tryAdvance((LongConsumer) consumer);
        }
        if (t0.f1299a) {
            t0.m909a(interfaceC2101Z.getClass(), "{0} calling Spliterator.OfLong.tryAdvance((LongConsumer) action::accept)");
            throw null;
        }
        Objects.requireNonNull(consumer);
        return interfaceC2101Z.tryAdvance((LongConsumer) new C2088L(consumer, 0));
    }

    /* JADX INFO: renamed from: l */
    public static void m429l(InterfaceC2101Z interfaceC2101Z, Consumer consumer) {
        if (consumer instanceof LongConsumer) {
            interfaceC2101Z.forEachRemaining((LongConsumer) consumer);
        } else {
            if (t0.f1299a) {
                t0.m909a(interfaceC2101Z.getClass(), "{0} calling Spliterator.OfLong.forEachRemaining((LongConsumer) action::accept)");
                throw null;
            }
            Objects.requireNonNull(consumer);
            interfaceC2101Z.forEachRemaining((LongConsumer) new C2088L(consumer, 0));
        }
    }

    /* JADX INFO: renamed from: z */
    public static boolean m443z(InterfaceC2096U interfaceC2096U, Consumer consumer) {
        if (consumer instanceof DoubleConsumer) {
            return interfaceC2096U.tryAdvance((DoubleConsumer) consumer);
        }
        if (t0.f1299a) {
            t0.m909a(interfaceC2096U.getClass(), "{0} calling Spliterator.OfDouble.tryAdvance((DoubleConsumer) action::accept)");
            throw null;
        }
        Objects.requireNonNull(consumer);
        return interfaceC2096U.tryAdvance((DoubleConsumer) new C2080D(consumer, 0));
    }

    /* JADX INFO: renamed from: j */
    public static void m427j(InterfaceC2096U interfaceC2096U, Consumer consumer) {
        if (consumer instanceof DoubleConsumer) {
            interfaceC2096U.forEachRemaining((DoubleConsumer) consumer);
        } else {
            if (t0.f1299a) {
                t0.m909a(interfaceC2096U.getClass(), "{0} calling Spliterator.OfDouble.forEachRemaining((DoubleConsumer) action::accept)");
                throw null;
            }
            Objects.requireNonNull(consumer);
            interfaceC2096U.forEachRemaining((DoubleConsumer) new C2080D(consumer, 0));
        }
    }

    public Spliterator trySplit() {
        return null;
    }

    public boolean tryAdvance(Object obj) {
        Objects.requireNonNull(obj);
        return false;
    }

    public void forEachRemaining(Object obj) {
        Objects.requireNonNull(obj);
    }

    public long estimateSize() {
        return 0L;
    }

    public int characteristics() {
        return 16448;
    }
}
