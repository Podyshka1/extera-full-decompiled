package p022j$.util.stream;

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
import p022j$.time.C2184s;
import p022j$.time.format.C2148a;
import p022j$.util.Map;
import p022j$.util.function.BiConsumer$CC;
import p022j$.util.stream.Collector;

/* JADX INFO: loaded from: classes2.dex */
public final class Collectors {

    /* JADX INFO: renamed from: a */
    public static final Set f1108a;

    /* JADX INFO: renamed from: b */
    public static final Set f1109b;

    /* JADX INFO: renamed from: c */
    public static final Set f1110c;

    static {
        Collector.Characteristics characteristics = Collector.Characteristics.CONCURRENT;
        Collector.Characteristics characteristics2 = Collector.Characteristics.UNORDERED;
        Collector.Characteristics characteristics3 = Collector.Characteristics.IDENTITY_FINISH;
        Collections.unmodifiableSet(EnumSet.of(characteristics, characteristics2, characteristics3));
        Collections.unmodifiableSet(EnumSet.of(characteristics, characteristics2));
        f1108a = Collections.unmodifiableSet(EnumSet.of(characteristics3));
        f1109b = Collections.unmodifiableSet(EnumSet.of(characteristics2, characteristics3));
        f1110c = Collections.EMPTY_SET;
        Collections.unmodifiableSet(EnumSet.of(characteristics2));
    }

    public static <T, C extends Collection<T>> Collector<T, ?, C> toCollection(Supplier<C> supplier) {
        return new C2506l(supplier, new C2148a(10), new C2148a(11), f1108a);
    }

    public static <T> Collector<T, ?, List<T>> toList() {
        return new C2506l(new C2494j(1), new C2148a(12), new C2148a(14), f1108a);
    }

    public static <T> Collector<T, ?, Set<T>> toSet() {
        return new C2506l(new C2494j(3), new C2148a(13), new C2148a(19), f1109b);
    }

    public static Collector<CharSequence, ?, String> joining() {
        return new C2506l(new C2494j(5), new C2148a(20), new C2148a(21), new C2148a(22), f1110c);
    }

    public static Collector<CharSequence, ?, String> joining(CharSequence charSequence) {
        return new C2506l(new C2440a(2, charSequence), new C2148a(16), new C2148a(17), new C2148a(18), f1110c);
    }

    /* JADX INFO: renamed from: a */
    public static void m909a(double[] dArr, double d) {
        double d2 = d - dArr[1];
        double d3 = dArr[0];
        double d4 = d3 + d2;
        dArr[1] = (d4 - d3) - d2;
        dArr[0] = d4;
    }

    public static <T, K, U, M extends Map<K, U>> Collector<T, ?, M> toMap(final Function<? super T, ? extends K> function, final Function<? super T, ? extends U> function2, final BinaryOperator<U> binaryOperator, Supplier<M> supplier) {
        return new C2506l(supplier, new BiConsumer() { // from class: j$.util.stream.k
            public final /* synthetic */ BiConsumer andThen(BiConsumer biConsumer) {
                return BiConsumer$CC.$default$andThen(this, biConsumer);
            }

            @Override // java.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                Set set = Collectors.f1108a;
                Map.EL.m813a((java.util.Map) obj, function.apply(obj2), function2.apply(obj2), binaryOperator);
            }
        }, new C2184s(4, binaryOperator), f1108a);
    }
}
