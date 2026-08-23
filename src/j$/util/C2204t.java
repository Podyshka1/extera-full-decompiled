package j$.util;

import j$.util.Map;
import java.io.Serializable;
import java.util.function.BiConsumer;
import java.util.function.BiFunction;
import java.util.function.Function;

/* JADX INFO: renamed from: j$.util.t */
/* JADX INFO: loaded from: classes2.dex */
public final class C2204t implements java.util.Map, Serializable, Map {
    private static final long serialVersionUID = -1034234728574286014L;

    /* JADX INFO: renamed from: a */
    public final java.util.Map f1295a;

    /* JADX INFO: renamed from: b */
    public transient java.util.Set f1296b;

    /* JADX INFO: renamed from: c */
    public transient C2152s f1297c;

    /* JADX INFO: renamed from: d */
    public transient java.util.Collection f1298d;

    public C2204t(java.util.Map map) {
        map.getClass();
        this.f1295a = map;
    }

    @Override // java.util.Map
    public final int size() {
        return this.f1295a.size();
    }

    @Override // java.util.Map
    public final boolean isEmpty() {
        return this.f1295a.isEmpty();
    }

    @Override // java.util.Map
    public final boolean containsKey(Object obj) {
        return this.f1295a.containsKey(obj);
    }

    @Override // java.util.Map
    public final boolean containsValue(Object obj) {
        return this.f1295a.containsValue(obj);
    }

    @Override // java.util.Map
    public final Object get(Object obj) {
        return this.f1295a.get(obj);
    }

    @Override // java.util.Map
    public final Object put(Object obj, Object obj2) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map
    public final Object remove(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map
    public final void putAll(java.util.Map map) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map
    public final void clear() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map
    public final java.util.Set keySet() {
        if (this.f1296b == null) {
            this.f1296b = DesugarCollections.unmodifiableSet(this.f1295a.keySet());
        }
        return this.f1296b;
    }

    @Override // java.util.Map
    public final java.util.Set entrySet() {
        if (this.f1297c == null) {
            this.f1297c = new C2152s(this.f1295a.entrySet());
        }
        return this.f1297c;
    }

    @Override // java.util.Map
    public final java.util.Collection values() {
        if (this.f1298d == null) {
            this.f1298d = DesugarCollections.unmodifiableCollection(this.f1295a.values());
        }
        return this.f1298d;
    }

    @Override // java.util.Map
    public final boolean equals(Object obj) {
        return obj == this || this.f1295a.equals(obj);
    }

    @Override // java.util.Map
    public final int hashCode() {
        return this.f1295a.hashCode();
    }

    public final String toString() {
        return this.f1295a.toString();
    }

    @Override // java.util.Map, j$.util.Map
    public final Object getOrDefault(Object obj, Object obj2) {
        return Map.EL.getOrDefault(this.f1295a, obj, obj2);
    }

    @Override // java.util.Map, j$.util.Map
    public final void forEach(BiConsumer biConsumer) {
        Map.EL.forEach(this.f1295a, biConsumer);
    }

    @Override // java.util.Map, j$.util.Map
    public final void replaceAll(BiFunction biFunction) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map, j$.util.Map
    public final Object putIfAbsent(Object obj, Object obj2) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map, j$.util.Map
    public final boolean remove(Object obj, Object obj2) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map, j$.util.Map
    public final boolean replace(Object obj, Object obj2, Object obj3) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map, j$.util.Map
    public final Object replace(Object obj, Object obj2) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map, j$.util.Map
    public final Object computeIfAbsent(Object obj, Function function) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map, j$.util.Map
    public final Object computeIfPresent(Object obj, BiFunction biFunction) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map, j$.util.Map
    public final Object compute(Object obj, BiFunction biFunction) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map, j$.util.Map
    public final Object merge(Object obj, Object obj2, BiFunction biFunction) {
        throw new UnsupportedOperationException();
    }
}
