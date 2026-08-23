package j$.util;

import java.util.Collections;
import java.util.function.Function;
import java.util.function.ToDoubleFunction;
import java.util.function.ToIntFunction;
import java.util.function.ToLongFunction;

/* JADX INFO: loaded from: classes2.dex */
public interface Comparator<T> {
    java.util.Comparator<T> reversed();

    java.util.Comparator<T> thenComparing(java.util.Comparator<? super T> comparator);

    <U extends Comparable<? super U>> java.util.Comparator<T> thenComparing(Function<? super T, ? extends U> function);

    <U> java.util.Comparator<T> thenComparing(Function<? super T, ? extends U> function, java.util.Comparator<? super U> comparator);

    java.util.Comparator<T> thenComparingDouble(ToDoubleFunction<? super T> toDoubleFunction);

    java.util.Comparator<T> thenComparingInt(ToIntFunction<? super T> toIntFunction);

    java.util.Comparator<T> thenComparingLong(ToLongFunction<? super T> toLongFunction);

    /* JADX INFO: renamed from: j$.util.Comparator$-EL, reason: invalid class name */
    public final /* synthetic */ class EL {
        /* JADX INFO: renamed from: a */
        public static /* synthetic */ java.util.Comparator m685a(java.util.Comparator comparator, java.util.Comparator comparator2) {
            return comparator instanceof Comparator ? ((Comparator) comparator).thenComparing(comparator2) : CC.$default$thenComparing(comparator, comparator2);
        }

        public static /* synthetic */ java.util.Comparator thenComparingInt(java.util.Comparator comparator, ToIntFunction toIntFunction) {
            return comparator instanceof Comparator ? ((Comparator) comparator).thenComparingInt(toIntFunction) : CC.$default$thenComparingInt(comparator, toIntFunction);
        }

        public static java.util.Comparator reversed(java.util.Comparator comparator) {
            return comparator instanceof Comparator ? ((Comparator) comparator).reversed() : Collections.reverseOrder(comparator);
        }
    }

    /* JADX INFO: renamed from: j$.util.Comparator$-CC, reason: invalid class name */
    public final /* synthetic */ class CC {
        public static java.util.Comparator $default$thenComparing(java.util.Comparator comparator, java.util.Comparator comparator2) {
            Objects.requireNonNull(comparator2);
            return new C2129d(comparator, comparator2, 0);
        }

        public static java.util.Comparator $default$thenComparingInt(java.util.Comparator comparator, ToIntFunction toIntFunction) {
            return EL.m685a(comparator, comparingInt(toIntFunction));
        }

        public static <T extends Comparable<? super T>> java.util.Comparator<T> reverseOrder() {
            return Collections.reverseOrder();
        }

        public static <T extends Comparable<? super T>> java.util.Comparator<T> naturalOrder() {
            return EnumC2130e.INSTANCE;
        }

        public static <T> java.util.Comparator<T> nullsLast(java.util.Comparator<? super T> comparator) {
            return new C2131f(false, comparator);
        }

        public static <T, U> java.util.Comparator<T> comparing(Function<? super T, ? extends U> function, java.util.Comparator<? super U> comparator) {
            Objects.requireNonNull(function);
            Objects.requireNonNull(comparator);
            return new C2129d(comparator, function, 1);
        }

        public static <T, U extends Comparable<? super U>> java.util.Comparator<T> comparing(Function<? super T, ? extends U> function) {
            Objects.requireNonNull(function);
            return new C2104c(2, function);
        }

        public static <T> java.util.Comparator<T> comparingInt(ToIntFunction<? super T> toIntFunction) {
            Objects.requireNonNull(toIntFunction);
            return new C2104c(0, toIntFunction);
        }

        public static <T> java.util.Comparator<T> comparingLong(ToLongFunction<? super T> toLongFunction) {
            Objects.requireNonNull(toLongFunction);
            return new C2104c(3, toLongFunction);
        }

        public static <T> java.util.Comparator<T> comparingDouble(ToDoubleFunction<? super T> toDoubleFunction) {
            Objects.requireNonNull(toDoubleFunction);
            return new C2104c(1, toDoubleFunction);
        }
    }
}
