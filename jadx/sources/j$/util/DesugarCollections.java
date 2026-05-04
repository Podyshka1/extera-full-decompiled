package j$.util;

import java.util.RandomAccess;

/* JADX INFO: loaded from: classes2.dex */
public class DesugarCollections {
    public static <T> java.util.Collection<T> unmodifiableCollection(java.util.Collection<? extends T> collection) {
        return new C2147n(collection);
    }

    public static <T> java.util.Set<T> unmodifiableSet(java.util.Set<? extends T> set) {
        return new C2206v(set);
    }

    public static <T> java.util.List<T> unmodifiableList(java.util.List<? extends T> list) {
        if (!(list instanceof RandomAccess)) {
            return new C2149p(list);
        }
        return new C2205u(list);
    }

    public static <K, V> java.util.Map<K, V> unmodifiableMap(java.util.Map<? extends K, ? extends V> map) {
        return new C2204t(map);
    }

    public static <T> java.util.Set<T> synchronizedSet(java.util.Set<T> set) {
        return new C2145l(set);
    }

    public static <T> java.util.List<T> synchronizedList(java.util.List<T> list) {
        if (!(list instanceof RandomAccess)) {
            return new C2142i(list);
        }
        return new C2144k(list);
    }

    public static <K, V> java.util.Map<K, V> synchronizedMap(java.util.Map<K, V> map) {
        return new C2143j(map);
    }
}
