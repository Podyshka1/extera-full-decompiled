package p022j$.util;

import java.util.Collection;
import java.util.List;
import java.util.Map;
import java.util.RandomAccess;
import java.util.Set;

/* JADX INFO: loaded from: classes2.dex */
public class DesugarCollections {
    public static <T> Collection<T> unmodifiableCollection(Collection<? extends T> collection) {
        return new C2299n(collection);
    }

    public static <T> Set<T> unmodifiableSet(Set<? extends T> set) {
        return new C2584v(set);
    }

    public static <T> List<T> unmodifiableList(List<? extends T> list) {
        if (!(list instanceof RandomAccess)) {
            return new C2303p(list);
        }
        return new C2583u(list);
    }

    public static <K, V> Map<K, V> unmodifiableMap(Map<? extends K, ? extends V> map) {
        return new C2581t(map);
    }

    public static <T> Set<T> synchronizedSet(Set<T> set) {
        return new C2295l(set);
    }

    public static <T> List<T> synchronizedList(List<T> list) {
        if (!(list instanceof RandomAccess)) {
            return new C2289i(list);
        }
        return new C2293k(list);
    }

    public static <K, V> Map<K, V> synchronizedMap(Map<K, V> map) {
        return new C2291j(map);
    }
}
