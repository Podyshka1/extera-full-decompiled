package j$.util;

import j$.lang.InterfaceC1966a;
import j$.util.stream.I3;
import j$.util.stream.Stream;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.RandomAccess;
import java.util.function.Consumer;
import java.util.function.IntFunction;
import java.util.function.Predicate;

/* JADX INFO: loaded from: classes2.dex */
public interface Collection<E> extends InterfaceC1966a {
    @Override // j$.util.Collection, j$.lang.InterfaceC1966a
    void forEach(Consumer<? super E> consumer);

    Stream<E> parallelStream();

    boolean removeIf(Predicate<? super E> predicate);

    Spliterator<E> spliterator();

    Stream<E> stream();

    <T> T[] toArray(IntFunction<T[]> intFunction);

    /* JADX INFO: renamed from: j$.util.Collection$-EL, reason: invalid class name */
    public final /* synthetic */ class EL {
        /* JADX INFO: renamed from: b */
        public static /* synthetic */ Stream m683b(java.util.Collection collection) {
            return collection instanceof Collection ? ((Collection) collection).parallelStream() : CC.$default$parallelStream(collection);
        }

        public static /* synthetic */ boolean removeIf(java.util.Collection collection, Predicate predicate) {
            return collection instanceof Collection ? ((Collection) collection).removeIf(predicate) : CC.$default$removeIf(collection, predicate);
        }

        public static /* synthetic */ Stream stream(java.util.Collection collection) {
            return collection instanceof Collection ? ((Collection) collection).stream() : CC.$default$stream(collection);
        }

        /* JADX INFO: renamed from: c */
        public static Spliterator m684c(java.util.Collection collection) {
            if (collection instanceof Collection) {
                return ((Collection) collection).spliterator();
            }
            if (collection instanceof LinkedHashSet) {
                return Spliterators.spliterator((LinkedHashSet) collection, 17);
            }
            if (collection instanceof java.util.SortedSet) {
                java.util.SortedSet sortedSet = (java.util.SortedSet) collection;
                return new C2093Q(sortedSet, sortedSet);
            }
            if (collection instanceof java.util.Set) {
                return Spliterators.spliterator((java.util.Set) collection, 1);
            }
            if (!(collection instanceof java.util.List)) {
                return Spliterators.spliterator(collection, 0);
            }
            java.util.List list = (java.util.List) collection;
            return list instanceof RandomAccess ? new C2102a(list) : Spliterators.spliterator(list, 16);
        }

        /* JADX INFO: renamed from: a */
        public static void m682a(java.util.Collection collection, Consumer consumer) {
            if (collection instanceof Collection) {
                ((Collection) collection).forEach(consumer);
                return;
            }
            Objects.requireNonNull(consumer);
            Iterator<E> it = collection.iterator();
            while (it.hasNext()) {
                consumer.m800v(it.next());
            }
        }
    }

    /* JADX INFO: renamed from: j$.util.Collection$-CC, reason: invalid class name */
    public final /* synthetic */ class CC {
        public static boolean $default$removeIf(java.util.Collection collection, Predicate predicate) {
            Objects.requireNonNull(predicate);
            Iterator<E> it = collection.iterator();
            boolean z = false;
            while (it.hasNext()) {
                if (predicate.test(it.next())) {
                    it.remove();
                    z = true;
                }
            }
            return z;
        }

        public static Stream $default$stream(java.util.Collection collection) {
            return I3.m794b(EL.m684c(collection), false);
        }

        public static Stream $default$parallelStream(java.util.Collection collection) {
            return I3.m794b(EL.m684c(collection), true);
        }
    }
}
