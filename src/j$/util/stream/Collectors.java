package j$.util.stream;

import j$.time.C2045s;
import j$.time.format.C2009a;
import j$.util.Map;
import j$.util.function.BiConsumer$CC;
import j$.util.stream.Collector;
import java.util.Collection;
import java.util.Collections;
import java.util.EnumSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.function.BiConsumer;
import java.util.function.BinaryOperator;
import java.util.function.Function;
import java.util.function.Supplier;

/* JADX INFO: loaded from: classes2.dex */
public final class Collectors {

    /* JADX INFO: renamed from: a */
    public static final Set f873a;

    /* JADX INFO: renamed from: b */
    public static final Set f874b;

    /* JADX INFO: renamed from: c */
    public static final Set f875c;

    static {
        Collector.Characteristics characteristics = Collector.Characteristics.CONCURRENT;
        Collector.Characteristics characteristics2 = Collector.Characteristics.UNORDERED;
        Collector.Characteristics characteristics3 = Collector.Characteristics.IDENTITY_FINISH;
        Collections.unmodifiableSet(EnumSet.of(characteristics, characteristics2, characteristics3));
        Collections.unmodifiableSet(EnumSet.of(characteristics, characteristics2));
        f873a = Collections.unmodifiableSet(EnumSet.of(characteristics3));
        f874b = Collections.unmodifiableSet(EnumSet.of(characteristics2, characteristics3));
        f875c = Collections.EMPTY_SET;
        Collections.unmodifiableSet(EnumSet.of(characteristics2));
    }

    public static <T, C extends Collection<T>> Collector<T, ?, C> toCollection(Supplier<C> supplier) {
        return new C2189l(supplier, new C2009a(10), new C2009a(11), f873a);
    }

    public static <T> Collector<T, ?, List<T>> toList() {
        return new C2189l(new C2187j(1), new C2009a(12), new C2009a(14), f873a);
    }

    public static <T> Collector<T, ?, Set<T>> toSet() {
        return new C2189l(new C2187j(3), new C2009a(13), new C2009a(19), f874b);
    }

    public static Collector<CharSequence, ?, String> joining() {
        return new C2189l(new C2187j(5), new C2009a(20), new C2009a(21), new C2009a(22), f875c);
    }

    public static Collector<CharSequence, ?, String> joining(CharSequence charSequence) {
        return new C2189l(new C2178a(2, charSequence), new C2009a(16), new C2009a(17), new C2009a(18), f875c);
    }

    /* JADX INFO: renamed from: a */
    public static void m772a(double[] dArr, double d) {
        double d2 = d - dArr[1];
        double d3 = dArr[0];
        double d4 = d3 + d2;
        dArr[1] = (d4 - d3) - d2;
        dArr[0] = d4;
    }

    public static <T, K, U, M extends Map<K, U>> Collector<T, ?, M> toMap(final Function<? super T, ? extends K> function, final Function<? super T, ? extends U> function2, final BinaryOperator<U> binaryOperator, Supplier<M> supplier) {
        return new C2189l(supplier, new BiConsumer() { // from class: j$.util.stream.k
            public final /* synthetic */ BiConsumer andThen(BiConsumer biConsumer) {
                return BiConsumer$CC.$default$andThen(this, biConsumer);
            }

            @Override // java.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                Set set = Collectors.f873a;
                Map.EL.m688a((java.util.Map) obj, function.apply(obj2), function2.apply(obj2), binaryOperator);
            }
        }, new C2045s(4, binaryOperator), f873a);
    }
}
