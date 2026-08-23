package p022j$.util;

import java.io.Serializable;
import java.util.Collection;
import java.util.Map;
import java.util.Set;
import java.util.function.BiConsumer;
import java.util.function.BiFunction;
import java.util.function.Function;
import p022j$.util.Map;

/* JADX INFO: renamed from: j$.util.t */
/* JADX INFO: loaded from: classes2.dex */
public final class C2581t implements Map, Serializable, Map {
    private static final long serialVersionUID = -1034234728574286014L;

    /* JADX INFO: renamed from: a */
    public final Map f1531a;

    /* JADX INFO: renamed from: b */
    public transient Set f1532b;

    /* JADX INFO: renamed from: c */
    public transient C2309s f1533c;

    /* JADX INFO: renamed from: d */
    public transient Collection f1534d;

    public C2581t(Map map) {
        map.getClass();
        this.f1531a = map;
    }

    @Override // java.util.Map
    public final int size() {
        return this.f1531a.size();
    }

    @Override // java.util.Map
    public final boolean isEmpty() {
        return this.f1531a.isEmpty();
    }

    @Override // java.util.Map
    public final boolean containsKey(Object obj) {
        return this.f1531a.containsKey(obj);
    }

    @Override // java.util.Map
    public final boolean containsValue(Object obj) {
        return this.f1531a.containsValue(obj);
    }

    @Override // java.util.Map
    public final Object get(Object obj) {
        return this.f1531a.get(obj);
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
    public final void putAll(Map map) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map
    public final void clear() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map
    public final Set keySet() {
        if (this.f1532b == null) {
            this.f1532b = DesugarCollections.unmodifiableSet(this.f1531a.keySet());
        }
        return this.f1532b;
    }

    @Override // java.util.Map
    public final Set entrySet() {
        if (this.f1533c == null) {
            this.f1533c = new C2309s(this.f1531a.entrySet());
        }
        return this.f1533c;
    }

    @Override // java.util.Map
    public final Collection values() {
        if (this.f1534d == null) {
            this.f1534d = DesugarCollections.unmodifiableCollection(this.f1531a.values());
        }
        return this.f1534d;
    }

    @Override // java.util.Map
    public final boolean equals(Object obj) {
        return obj == this || this.f1531a.equals(obj);
    }

    @Override // java.util.Map
    public final int hashCode() {
        return this.f1531a.hashCode();
    }

    public final String toString() {
        return this.f1531a.toString();
    }

    @Override // java.util.Map, p022j$.util.Map
    public final Object getOrDefault(Object obj, Object obj2) {
        return Map.EL.getOrDefault(this.f1531a, obj, obj2);
    }

    @Override // java.util.Map, p022j$.util.Map
    public final void forEach(BiConsumer biConsumer) {
        Map.EL.forEach(this.f1531a, biConsumer);
    }

    @Override // java.util.Map, p022j$.util.Map
    public final void replaceAll(BiFunction biFunction) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map, p022j$.util.Map
    public final Object putIfAbsent(Object obj, Object obj2) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map, p022j$.util.Map
    public final boolean remove(Object obj, Object obj2) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map, p022j$.util.Map
    public final boolean replace(Object obj, Object obj2, Object obj3) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map, p022j$.util.Map
    public final Object replace(Object obj, Object obj2) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map, p022j$.util.Map
    public final Object computeIfAbsent(Object obj, Function function) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map, p022j$.util.Map
    public final Object computeIfPresent(Object obj, BiFunction biFunction) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map, p022j$.util.Map
    public final Object compute(Object obj, BiFunction biFunction) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map, p022j$.util.Map
    public final Object merge(Object obj, Object obj2, BiFunction biFunction) {
        throw new UnsupportedOperationException();
    }
}
