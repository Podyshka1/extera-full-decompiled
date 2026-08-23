package p022j$.com.android.tools.p023r8;

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
import p022j$.com.android.tools.p023r8.AbstractC2104a;
import p022j$.time.AbstractC2109c;
import p022j$.time.C2108b;
import p022j$.time.ZoneOffset;
import p022j$.time.chrono.AbstractC2119a;
import p022j$.time.chrono.AbstractC2126h;
import p022j$.time.chrono.C2115F;
import p022j$.time.chrono.C2132n;
import p022j$.time.chrono.C2136r;
import p022j$.time.chrono.C2139u;
import p022j$.time.chrono.C2144z;
import p022j$.time.chrono.ChronoLocalDateTime;
import p022j$.time.chrono.ChronoZonedDateTime;
import p022j$.time.chrono.InterfaceC2120b;
import p022j$.time.chrono.InterfaceC2129k;
import p022j$.time.chrono.InterfaceC2130l;
import p022j$.time.format.C2148a;
import p022j$.time.temporal.AbstractC2203r;
import p022j$.time.temporal.C2205t;
import p022j$.time.temporal.EnumC2186a;
import p022j$.time.temporal.EnumC2187b;
import p022j$.time.temporal.InterfaceC2198m;
import p022j$.time.temporal.InterfaceC2199n;
import p022j$.time.temporal.InterfaceC2202q;
import p022j$.util.AbstractC2582t0;
import p022j$.util.C2217B;
import p022j$.util.C2218C;
import p022j$.util.C2219D;
import p022j$.util.C2223H;
import p022j$.util.C2227L;
import p022j$.util.InterfaceC2235U;
import p022j$.util.InterfaceC2240Z;
import p022j$.util.InterfaceC2587y;
import p022j$.util.Objects;
import p022j$.util.OptionalInt;
import p022j$.util.Spliterator;
import p022j$.util.concurrent.C2257k;
import p022j$.util.concurrent.ConcurrentHashMap;
import p022j$.util.function.C2278b;
import p022j$.util.function.C2280d;
import p022j$.util.function.C2283g;
import sun.misc.Unsafe;

/* JADX INFO: renamed from: j$.com.android.tools.r8.a */
/* JADX INFO: loaded from: classes2.dex */
public abstract /* synthetic */ class AbstractC2104a {
    /* JADX INFO: renamed from: O */
    public static /* synthetic */ long m529O(long j, int i) {
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
    public static /* synthetic */ long m530P(long j, long j2) {
        long j3 = j + j2;
        if (((j2 ^ j) < 0) || ((j ^ j3) >= 0)) {
            return j3;
        }
        throw new ArithmeticException();
    }

    /* JADX INFO: renamed from: Q */
    public static /* synthetic */ Map.Entry m531Q(Object obj, Object obj2) {
        return new AbstractMap.SimpleImmutableEntry(Objects.requireNonNull(obj), Objects.requireNonNull(obj2));
    }

    /* JADX INFO: renamed from: R */
    public static /* synthetic */ boolean m532R(Unsafe unsafe, Object obj, long j, C2257k c2257k) {
        while (true) {
            Unsafe unsafe2 = unsafe;
            Object obj2 = obj;
            long j2 = j;
            C2257k c2257k2 = c2257k;
            if (unsafe2.compareAndSwapObject(obj2, j2, (Object) null, c2257k2)) {
                return true;
            }
            if (unsafe2.getObject(obj2, j2) != null) {
                return false;
            }
            unsafe = unsafe2;
            obj = obj2;
            j = j2;
            c2257k = c2257k2;
        }
    }

    /* JADX INFO: renamed from: S */
    public static /* synthetic */ long m533S(long j, long j2) {
        long j3 = j % j2;
        if (j3 == 0) {
            return 0L;
        }
        return (((j ^ j2) >> 63) | 1) > 0 ? j3 : j3 + j2;
    }

    /* JADX INFO: renamed from: T */
    public static /* synthetic */ long m534T(long j, long j2) {
        long j3 = j / j2;
        return (j - (j2 * j3) != 0 && (((j ^ j2) >> 63) | 1) < 0) ? j3 - 1 : j3;
    }

    /* JADX INFO: renamed from: U */
    public static /* synthetic */ long m535U(long j, long j2) {
        long j3 = j - j2;
        if (((j2 ^ j) >= 0) || ((j ^ j3) >= 0)) {
            return j3;
        }
        throw new ArithmeticException();
    }

    /* JADX INFO: renamed from: I */
    public static Optional m523I(p022j$.util.Optional optional) {
        if (optional == null) {
            return null;
        }
        if (optional.isPresent()) {
            return Optional.of(optional.get());
        }
        return Optional.empty();
    }

    /* JADX INFO: renamed from: E */
    public static p022j$.util.Optional m519E(Optional optional) {
        if (optional == null) {
            return null;
        }
        if (optional.isPresent()) {
            return p022j$.util.Optional.m814of(optional.get());
        }
        return p022j$.util.Optional.empty();
    }

    /* JADX INFO: renamed from: F */
    public static C2217B m520F(OptionalDouble optionalDouble) {
        if (optionalDouble == null) {
            return null;
        }
        if (!optionalDouble.isPresent()) {
            return C2217B.f891c;
        }
        return new C2217B(optionalDouble.getAsDouble());
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [j$.util.function.b] */
    /* JADX INFO: renamed from: b */
    public static C2278b m539b(final DoubleConsumer doubleConsumer, final DoubleConsumer doubleConsumer2) {
        Objects.requireNonNull(doubleConsumer2);
        return new DoubleConsumer() { // from class: j$.util.function.b
            public final /* synthetic */ DoubleConsumer andThen(DoubleConsumer doubleConsumer3) {
                return AbstractC2104a.m539b(this, doubleConsumer3);
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
    public static C2280d m540c(final IntConsumer intConsumer, final IntConsumer intConsumer2) {
        Objects.requireNonNull(intConsumer2);
        return new IntConsumer() { // from class: j$.util.function.d
            public final /* synthetic */ IntConsumer andThen(IntConsumer intConsumer3) {
                return AbstractC2104a.m540c(this, intConsumer3);
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
    public static C2283g m541d(final LongConsumer longConsumer, final LongConsumer longConsumer2) {
        Objects.requireNonNull(longConsumer2);
        return new LongConsumer() { // from class: j$.util.function.g
            public final /* synthetic */ LongConsumer andThen(LongConsumer longConsumer3) {
                return AbstractC2104a.m541d(this, longConsumer3);
            }

            @Override // java.util.function.LongConsumer
            public final void accept(long j) {
                longConsumer.accept(j);
                longConsumer2.accept(j);
            }
        };
    }

    /* JADX INFO: renamed from: H */
    public static C2218C m522H(OptionalLong optionalLong) {
        if (optionalLong == null) {
            return null;
        }
        if (!optionalLong.isPresent()) {
            return C2218C.f896c;
        }
        return new C2218C(optionalLong.getAsLong());
    }

    /* JADX INFO: renamed from: D */
    public static String m518D(long j, String str, Locale locale) {
        TimeZone timeZone = TimeZone.getTimeZone("UTC");
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat(str, locale);
        simpleDateFormat.setTimeZone(timeZone);
        Calendar calendar = Calendar.getInstance();
        calendar.setTimeZone(timeZone);
        calendar.set(0, (int) j, 0, 0, 0, 0);
        return simpleDateFormat.format(calendar.getTime());
    }

    /* JADX INFO: renamed from: G */
    public static OptionalInt m521G(java.util.OptionalInt optionalInt) {
        if (optionalInt == null) {
            return null;
        }
        if (!optionalInt.isPresent()) {
            return OptionalInt.f913c;
        }
        return new OptionalInt(optionalInt.getAsInt());
    }

    /* JADX INFO: renamed from: i */
    public static void m546i(ConcurrentMap concurrentMap, BiConsumer biConsumer) {
        Objects.requireNonNull(biConsumer);
        for (Map.Entry entry : concurrentMap.entrySet()) {
            try {
                biConsumer.accept(entry.getKey(), entry.getValue());
            } catch (IllegalStateException unused) {
            }
        }
    }

    /* JADX INFO: renamed from: V */
    public static String m536V(Object obj, Object obj2) {
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
    public static String m517C(long j, String str, Locale locale) {
        TimeZone timeZone = TimeZone.getTimeZone("UTC");
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat(str, locale);
        simpleDateFormat.setTimeZone(timeZone);
        Calendar calendar = Calendar.getInstance();
        calendar.setTimeZone(timeZone);
        calendar.set(2016, 1, (int) j, 0, 0, 0);
        return simpleDateFormat.format(calendar.getTime());
    }

    /* JADX INFO: renamed from: M */
    public static void m527M(Iterator it, Consumer consumer) {
        if (it instanceof InterfaceC2587y) {
            ((InterfaceC2587y) it).forEachRemaining(consumer);
            return;
        }
        Objects.requireNonNull(consumer);
        while (it.hasNext()) {
            consumer.accept(it.next());
        }
    }

    /* JADX INFO: renamed from: J */
    public static OptionalDouble m524J(C2217B c2217b) {
        if (c2217b == null) {
            return null;
        }
        boolean z = c2217b.f892a;
        if (!z) {
            return OptionalDouble.empty();
        }
        if (z) {
            return OptionalDouble.of(c2217b.f893b);
        }
        throw new NoSuchElementException("No value present");
    }

    /* JADX INFO: renamed from: K */
    public static java.util.OptionalInt m525K(OptionalInt optionalInt) {
        if (optionalInt == null) {
            return null;
        }
        boolean z = optionalInt.f914a;
        if (!z) {
            return java.util.OptionalInt.empty();
        }
        if (z) {
            return java.util.OptionalInt.of(optionalInt.f915b);
        }
        throw new NoSuchElementException("No value present");
    }

    /* JADX INFO: renamed from: L */
    public static OptionalLong m526L(C2218C c2218c) {
        if (c2218c == null) {
            return null;
        }
        boolean z = c2218c.f897a;
        if (!z) {
            return OptionalLong.empty();
        }
        if (z) {
            return OptionalLong.of(c2218c.f898b);
        }
        throw new NoSuchElementException("No value present");
    }

    /* JADX INFO: renamed from: s */
    public static boolean m556s(InterfaceC2130l interfaceC2130l, InterfaceC2202q interfaceC2202q) {
        return interfaceC2202q instanceof EnumC2186a ? interfaceC2202q == EnumC2186a.ERA : interfaceC2202q != null && interfaceC2202q.mo769h(interfaceC2130l);
    }

    /* JADX INFO: renamed from: N */
    public static InterfaceC2129k m528N(InterfaceC2199n interfaceC2199n) {
        Objects.requireNonNull(interfaceC2199n, "temporal");
        return (InterfaceC2129k) Objects.requireNonNullElse((InterfaceC2129k) interfaceC2199n.mo578k(AbstractC2203r.f846b), C2136r.f714c);
    }

    /* JADX INFO: renamed from: m */
    public static int m550m(ChronoZonedDateTime chronoZonedDateTime, InterfaceC2202q interfaceC2202q) {
        if (interfaceC2202q instanceof EnumC2186a) {
            int i = AbstractC2126h.f691a[((EnumC2186a) interfaceC2202q).ordinal()];
            if (i == 1) {
                throw new C2205t("Invalid field 'InstantSeconds' for get() method, use getLong() instead");
            }
            if (i == 2) {
                return chronoZonedDateTime.mo660g().getTotalSeconds();
            }
            return chronoZonedDateTime.mo661o().mo576h(interfaceC2202q);
        }
        return AbstractC2203r.m780a(chronoZonedDateTime, interfaceC2202q);
    }

    /* JADX INFO: renamed from: n */
    public static int m551n(InterfaceC2130l interfaceC2130l, InterfaceC2202q interfaceC2202q) {
        if (interfaceC2202q == EnumC2186a.ERA) {
            return interfaceC2130l.getValue();
        }
        return AbstractC2203r.m780a(interfaceC2130l, interfaceC2202q);
    }

    /* JADX INFO: renamed from: p */
    public static long m553p(InterfaceC2130l interfaceC2130l, InterfaceC2202q interfaceC2202q) {
        if (interfaceC2202q == EnumC2186a.ERA) {
            return interfaceC2130l.getValue();
        }
        if (interfaceC2202q instanceof EnumC2186a) {
            throw new C2205t(AbstractC2109c.m664a("Unsupported field: ", interfaceC2202q));
        }
        return interfaceC2202q.mo772k(interfaceC2130l);
    }

    /* JADX INFO: renamed from: W */
    public static InterfaceC2129k m537W(String str) {
        ConcurrentHashMap concurrentHashMap = AbstractC2119a.f680a;
        Objects.requireNonNull(str, "id");
        while (true) {
            ConcurrentHashMap concurrentHashMap2 = AbstractC2119a.f680a;
            InterfaceC2129k interfaceC2129k = (InterfaceC2129k) concurrentHashMap2.get(str);
            if (interfaceC2129k == null) {
                interfaceC2129k = (InterfaceC2129k) AbstractC2119a.f681b.get(str);
            }
            if (interfaceC2129k != null) {
                return interfaceC2129k;
            }
            if (concurrentHashMap2.get("ISO") != null) {
                for (InterfaceC2129k interfaceC2129k2 : ServiceLoader.load(InterfaceC2129k.class)) {
                    if (str.equals(interfaceC2129k2.getId()) || str.equals(interfaceC2129k2.mo676m())) {
                        return interfaceC2129k2;
                    }
                }
                throw new C2108b("Unknown chronology: " + str);
            }
            C2132n c2132n = C2132n.f697l;
            c2132n.getClass();
            AbstractC2119a.m682h(c2132n, "Hijrah-umalqura");
            C2139u c2139u = C2139u.f718c;
            c2139u.getClass();
            AbstractC2119a.m682h(c2139u, "Japanese");
            C2144z c2144z = C2144z.f730c;
            c2144z.getClass();
            AbstractC2119a.m682h(c2144z, "Minguo");
            C2115F c2115f = C2115F.f675c;
            c2115f.getClass();
            AbstractC2119a.m682h(c2115f, "ThaiBuddhist");
            try {
                for (AbstractC2119a abstractC2119a : Arrays.asList(new AbstractC2119a[0])) {
                    if (!abstractC2119a.getId().equals("ISO")) {
                        AbstractC2119a.m682h(abstractC2119a, abstractC2119a.getId());
                    }
                }
                C2136r c2136r = C2136r.f714c;
                c2136r.getClass();
                AbstractC2119a.m682h(c2136r, "ISO");
            } catch (Throwable th) {
                throw new ServiceConfigurationError(th.getMessage(), th);
            }
        }
    }

    /* JADX INFO: renamed from: w */
    public static Object m560w(InterfaceC2130l interfaceC2130l, C2148a c2148a) {
        if (c2148a == AbstractC2203r.f847c) {
            return EnumC2187b.ERAS;
        }
        return AbstractC2203r.m782c(interfaceC2130l, c2148a);
    }

    /* JADX INFO: renamed from: u */
    public static Object m558u(ChronoLocalDateTime chronoLocalDateTime, C2148a c2148a) {
        if (c2148a == AbstractC2203r.f845a || c2148a == AbstractC2203r.f849e || c2148a == AbstractC2203r.f848d) {
            return null;
        }
        if (c2148a == AbstractC2203r.f851g) {
            return chronoLocalDateTime.mo625b();
        }
        if (c2148a == AbstractC2203r.f846b) {
            return chronoLocalDateTime.mo624a();
        }
        if (c2148a == AbstractC2203r.f847c) {
            return EnumC2187b.NANOS;
        }
        return c2148a.m716a(chronoLocalDateTime);
    }

    /* JADX INFO: renamed from: r */
    public static boolean m555r(InterfaceC2120b interfaceC2120b, InterfaceC2202q interfaceC2202q) {
        if (interfaceC2202q instanceof EnumC2186a) {
            return ((EnumC2186a) interfaceC2202q).isDateBased();
        }
        return interfaceC2202q != null && interfaceC2202q.mo769h(interfaceC2120b);
    }

    /* JADX INFO: renamed from: o */
    public static long m552o(Spliterator spliterator) {
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
    public static Object m545h(ConcurrentMap concurrentMap, Object obj, BiFunction biFunction) {
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
    public static boolean m554q(Spliterator spliterator, int i) {
        return (spliterator.characteristics() & i) == i;
    }

    /* JADX INFO: renamed from: x */
    public static long m561x(ChronoLocalDateTime chronoLocalDateTime, ZoneOffset zoneOffset) {
        Objects.requireNonNull(zoneOffset, "offset");
        return ((chronoLocalDateTime.mo626f().mo612x() * 86400) + ((long) chronoLocalDateTime.mo625b().m749N())) - ((long) zoneOffset.getTotalSeconds());
    }

    /* JADX INFO: renamed from: v */
    public static Object m559v(ChronoZonedDateTime chronoZonedDateTime, C2148a c2148a) {
        if (c2148a == AbstractC2203r.f849e || c2148a == AbstractC2203r.f845a) {
            return chronoZonedDateTime.mo663u();
        }
        if (c2148a == AbstractC2203r.f848d) {
            return chronoZonedDateTime.mo660g();
        }
        if (c2148a == AbstractC2203r.f851g) {
            return chronoZonedDateTime.mo658b();
        }
        if (c2148a == AbstractC2203r.f846b) {
            return chronoZonedDateTime.mo657a();
        }
        if (c2148a == AbstractC2203r.f847c) {
            return EnumC2187b.NANOS;
        }
        return c2148a.m716a(chronoZonedDateTime);
    }

    /* JADX INFO: renamed from: f */
    public static int m543f(ChronoLocalDateTime chronoLocalDateTime, ChronoLocalDateTime chronoLocalDateTime2) {
        int iMo597B = chronoLocalDateTime.mo626f().compareTo(chronoLocalDateTime2.mo626f());
        return (iMo597B == 0 && (iMo597B = chronoLocalDateTime.mo625b().compareTo(chronoLocalDateTime2.mo625b())) == 0) ? ((AbstractC2119a) chronoLocalDateTime.mo624a()).getId().compareTo(chronoLocalDateTime2.mo624a().getId()) : iMo597B;
    }

    /* JADX INFO: renamed from: t */
    public static Object m557t(InterfaceC2120b interfaceC2120b, C2148a c2148a) {
        if (c2148a == AbstractC2203r.f845a || c2148a == AbstractC2203r.f849e || c2148a == AbstractC2203r.f848d || c2148a == AbstractC2203r.f851g) {
            return null;
        }
        if (c2148a == AbstractC2203r.f846b) {
            return interfaceC2120b.mo610a();
        }
        if (c2148a == AbstractC2203r.f847c) {
            return EnumC2187b.DAYS;
        }
        return c2148a.m716a(interfaceC2120b);
    }

    /* JADX INFO: renamed from: a */
    public static InterfaceC2198m m538a(InterfaceC2120b interfaceC2120b, InterfaceC2198m interfaceC2198m) {
        return interfaceC2198m.mo588c(interfaceC2120b.mo612x(), EnumC2186a.EPOCH_DAY);
    }

    /* JADX INFO: renamed from: y */
    public static long m562y(ChronoZonedDateTime chronoZonedDateTime) {
        return ((chronoZonedDateTime.mo659f().mo612x() * 86400) + ((long) chronoZonedDateTime.mo658b().m749N())) - ((long) chronoZonedDateTime.mo660g().getTotalSeconds());
    }

    /* JADX INFO: renamed from: g */
    public static int m544g(ChronoZonedDateTime chronoZonedDateTime, ChronoZonedDateTime chronoZonedDateTime2) {
        int iCompare = Long.compare(chronoZonedDateTime.mo654C(), chronoZonedDateTime2.mo654C());
        return (iCompare == 0 && (iCompare = chronoZonedDateTime.mo658b().f800d - chronoZonedDateTime2.mo658b().f800d) == 0 && (iCompare = chronoZonedDateTime.mo661o().mo629z(chronoZonedDateTime2.mo661o())) == 0 && (iCompare = chronoZonedDateTime.mo663u().getId().compareTo(chronoZonedDateTime2.mo663u().getId())) == 0) ? ((AbstractC2119a) chronoZonedDateTime.mo657a()).getId().compareTo(chronoZonedDateTime2.mo657a().getId()) : iCompare;
    }

    /* JADX INFO: renamed from: A */
    public static boolean m515A(Spliterator.OfInt ofInt, Consumer consumer) {
        if (consumer instanceof IntConsumer) {
            return ofInt.tryAdvance((IntConsumer) consumer);
        }
        if (AbstractC2582t0.f1535a) {
            AbstractC2582t0.m1076a(ofInt.getClass(), "{0} calling Spliterator.OfInt.tryAdvance((IntConsumer) action::accept)");
            throw null;
        }
        Objects.requireNonNull(consumer);
        return ofInt.tryAdvance((IntConsumer) new C2223H(consumer, 0));
    }

    /* JADX INFO: renamed from: k */
    public static void m548k(Spliterator.OfInt ofInt, Consumer consumer) {
        if (consumer instanceof IntConsumer) {
            ofInt.forEachRemaining((IntConsumer) consumer);
        } else {
            if (AbstractC2582t0.f1535a) {
                AbstractC2582t0.m1076a(ofInt.getClass(), "{0} calling Spliterator.OfInt.forEachRemaining((IntConsumer) action::accept)");
                throw null;
            }
            Objects.requireNonNull(consumer);
            ofInt.forEachRemaining((IntConsumer) new C2223H(consumer, 0));
        }
    }

    /* JADX INFO: renamed from: e */
    public static int m542e(InterfaceC2120b interfaceC2120b, InterfaceC2120b interfaceC2120b2) {
        int iCompare = Long.compare(interfaceC2120b.mo612x(), interfaceC2120b2.mo612x());
        if (iCompare != 0) {
            return iCompare;
        }
        return ((AbstractC2119a) interfaceC2120b.mo610a()).getId().compareTo(interfaceC2120b2.mo610a().getId());
    }

    /* JADX INFO: renamed from: B */
    public static boolean m516B(InterfaceC2240Z interfaceC2240Z, Consumer consumer) {
        if (consumer instanceof LongConsumer) {
            return interfaceC2240Z.tryAdvance((LongConsumer) consumer);
        }
        if (AbstractC2582t0.f1535a) {
            AbstractC2582t0.m1076a(interfaceC2240Z.getClass(), "{0} calling Spliterator.OfLong.tryAdvance((LongConsumer) action::accept)");
            throw null;
        }
        Objects.requireNonNull(consumer);
        return interfaceC2240Z.tryAdvance((LongConsumer) new C2227L(consumer, 0));
    }

    /* JADX INFO: renamed from: l */
    public static void m549l(InterfaceC2240Z interfaceC2240Z, Consumer consumer) {
        if (consumer instanceof LongConsumer) {
            interfaceC2240Z.forEachRemaining((LongConsumer) consumer);
        } else {
            if (AbstractC2582t0.f1535a) {
                AbstractC2582t0.m1076a(interfaceC2240Z.getClass(), "{0} calling Spliterator.OfLong.forEachRemaining((LongConsumer) action::accept)");
                throw null;
            }
            Objects.requireNonNull(consumer);
            interfaceC2240Z.forEachRemaining((LongConsumer) new C2227L(consumer, 0));
        }
    }

    /* JADX INFO: renamed from: z */
    public static boolean m563z(InterfaceC2235U interfaceC2235U, Consumer consumer) {
        if (consumer instanceof DoubleConsumer) {
            return interfaceC2235U.tryAdvance((DoubleConsumer) consumer);
        }
        if (AbstractC2582t0.f1535a) {
            AbstractC2582t0.m1076a(interfaceC2235U.getClass(), "{0} calling Spliterator.OfDouble.tryAdvance((DoubleConsumer) action::accept)");
            throw null;
        }
        Objects.requireNonNull(consumer);
        return interfaceC2235U.tryAdvance((DoubleConsumer) new C2219D(consumer, 0));
    }

    /* JADX INFO: renamed from: j */
    public static void m547j(InterfaceC2235U interfaceC2235U, Consumer consumer) {
        if (consumer instanceof DoubleConsumer) {
            interfaceC2235U.forEachRemaining((DoubleConsumer) consumer);
        } else {
            if (AbstractC2582t0.f1535a) {
                AbstractC2582t0.m1076a(interfaceC2235U.getClass(), "{0} calling Spliterator.OfDouble.forEachRemaining((DoubleConsumer) action::accept)");
                throw null;
            }
            Objects.requireNonNull(consumer);
            interfaceC2235U.forEachRemaining((DoubleConsumer) new C2219D(consumer, 0));
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
