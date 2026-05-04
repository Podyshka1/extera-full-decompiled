package p022j$.util;

import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.RandomAccess;
import java.util.Set;
import java.util.SortedSet;
import java.util.function.Consumer;
import java.util.function.IntFunction;
import java.util.function.Predicate;
import p022j$.lang.InterfaceC2105a;
import p022j$.util.stream.AbstractC2355I3;
import p022j$.util.stream.Stream;

/* JADX INFO: loaded from: classes2.dex */
public interface Collection<E> extends InterfaceC2105a {
    @Override // p022j$.util.Collection, p022j$.lang.InterfaceC2105a
    void forEach(Consumer<? super E> consumer);

    Stream<E> parallelStream();

    boolean removeIf(Predicate<? super E> predicate);

    Spliterator<E> spliterator();

    Stream<E> stream();

    <T> T[] toArray(IntFunction<T[]> intFunction);

    /* JADX INFO: renamed from: j$.util.Collection$-EL, reason: invalid class name */
    public final /* synthetic */ class EL {
        /* JADX INFO: renamed from: b */
        public static /* synthetic */ Stream m808b(java.util.Collection collection) {
            return collection instanceof Collection ? ((Collection) collection).parallelStream() : CC.$default$parallelStream(collection);
        }

        public static /* synthetic */ boolean removeIf(java.util.Collection collection, Predicate predicate) {
            return collection instanceof Collection ? ((Collection) collection).removeIf(predicate) : CC.$default$removeIf(collection, predicate);
        }

        public static /* synthetic */ Stream stream(java.util.Collection collection) {
            return collection instanceof Collection ? ((Collection) collection).stream() : CC.$default$stream(collection);
        }

        /* JADX INFO: renamed from: c */
        public static Spliterator m809c(java.util.Collection collection) {
            if (collection instanceof Collection) {
                return ((Collection) collection).spliterator();
            }
            if (collection instanceof LinkedHashSet) {
                return Spliterators.spliterator((LinkedHashSet) collection, 17);
            }
            if (collection instanceof SortedSet) {
                SortedSet sortedSet = (SortedSet) collection;
                return new C2232Q(sortedSet, sortedSet);
            }
            if (collection instanceof Set) {
                return Spliterators.spliterator((Set) collection, 1);
            }
            if (!(collection instanceof List)) {
                return Spliterators.spliterator(collection, 0);
            }
            List list = (List) collection;
            return list instanceof RandomAccess ? new C2241a(list) : Spliterators.spliterator(list, 16);
        }

        /* JADX INFO: renamed from: a */
        public static void m807a(java.util.Collection collection, Consumer consumer) {
            if (collection instanceof Collection) {
                ((Collection) collection).forEach(consumer);
                return;
            }
            Objects.requireNonNull(consumer);
            Iterator<E> it = collection.iterator();
            while (it.hasNext()) {
                consumer.m940v(it.next());
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
            return AbstractC2355I3.m934b(EL.m809c(collection), false);
        }

        public static Stream $default$parallelStream(java.util.Collection collection) {
            return AbstractC2355I3.m934b(EL.m809c(collection), true);
        }
    }
}
