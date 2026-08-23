package j$.util;

import j$.com.android.tools.r8.AbstractC1965a;
import j$.util.Map;
import j$.util.concurrent.C2123s;
import j$.util.concurrent.InterfaceC2124t;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.concurrent.ConcurrentMap;
import java.util.function.BiConsumer;
import java.util.function.BiFunction;
import java.util.function.Function;

/* JADX INFO: renamed from: j$.util.j */
/* JADX INFO: loaded from: classes2.dex */
public final class C2143j implements java.util.Map, Serializable, Map {
    private static final long serialVersionUID = 1978198479659022715L;

    /* JADX INFO: renamed from: a */
    public final java.util.Map f822a;

    /* JADX INFO: renamed from: b */
    public final C2143j f823b = this;

    /* JADX INFO: renamed from: c */
    public transient C2145l f824c;

    /* JADX INFO: renamed from: d */
    public transient C2145l f825d;

    /* JADX INFO: renamed from: e */
    public transient C2141h f826e;

    public C2143j(java.util.Map map) {
        this.f822a = (java.util.Map) Objects.requireNonNull(map);
    }

    @Override // java.util.Map
    public final int size() {
        int size;
        synchronized (this.f823b) {
            size = this.f822a.size();
        }
        return size;
    }

    @Override // java.util.Map
    public final boolean isEmpty() {
        boolean zIsEmpty;
        synchronized (this.f823b) {
            zIsEmpty = this.f822a.isEmpty();
        }
        return zIsEmpty;
    }

    @Override // java.util.Map
    public final boolean containsKey(Object obj) {
        boolean zContainsKey;
        synchronized (this.f823b) {
            zContainsKey = this.f822a.containsKey(obj);
        }
        return zContainsKey;
    }

    @Override // java.util.Map
    public final boolean containsValue(Object obj) {
        boolean zContainsValue;
        synchronized (this.f823b) {
            zContainsValue = this.f822a.containsValue(obj);
        }
        return zContainsValue;
    }

    @Override // java.util.Map
    public final Object get(Object obj) {
        Object obj2;
        synchronized (this.f823b) {
            obj2 = this.f822a.get(obj);
        }
        return obj2;
    }

    @Override // java.util.Map
    public final Object put(Object obj, Object obj2) {
        Object objPut;
        synchronized (this.f823b) {
            objPut = this.f822a.put(obj, obj2);
        }
        return objPut;
    }

    @Override // java.util.Map
    public final Object remove(Object obj) {
        Object objRemove;
        synchronized (this.f823b) {
            objRemove = this.f822a.remove(obj);
        }
        return objRemove;
    }

    @Override // java.util.Map
    public final void putAll(java.util.Map map) {
        synchronized (this.f823b) {
            this.f822a.putAll(map);
        }
    }

    @Override // java.util.Map
    public final void clear() {
        synchronized (this.f823b) {
            this.f822a.clear();
        }
    }

    @Override // java.util.Map
    public final java.util.Set keySet() {
        C2145l c2145l;
        synchronized (this.f823b) {
            try {
                if (this.f824c == null) {
                    this.f824c = new C2145l(this.f822a.keySet(), this.f823b);
                }
                c2145l = this.f824c;
            } catch (Throwable th) {
                throw th;
            }
        }
        return c2145l;
    }

    @Override // java.util.Map
    public final java.util.Set entrySet() {
        C2145l c2145l;
        synchronized (this.f823b) {
            try {
                if (this.f825d == null) {
                    this.f825d = new C2145l(this.f822a.entrySet(), this.f823b);
                }
                c2145l = this.f825d;
            } catch (Throwable th) {
                throw th;
            }
        }
        return c2145l;
    }

    @Override // java.util.Map
    public final java.util.Collection values() {
        C2141h c2141h;
        synchronized (this.f823b) {
            try {
                if (this.f826e == null) {
                    this.f826e = new C2141h(this.f822a.values(), this.f823b);
                }
                c2141h = this.f826e;
            } catch (Throwable th) {
                throw th;
            }
        }
        return c2141h;
    }

    @Override // java.util.Map
    public final boolean equals(Object obj) {
        boolean zEquals;
        if (this == obj) {
            return true;
        }
        synchronized (this.f823b) {
            zEquals = this.f822a.equals(obj);
        }
        return zEquals;
    }

    @Override // java.util.Map
    public final int hashCode() {
        int iHashCode;
        synchronized (this.f823b) {
            iHashCode = this.f822a.hashCode();
        }
        return iHashCode;
    }

    public final String toString() {
        String string;
        synchronized (this.f823b) {
            string = this.f822a.toString();
        }
        return string;
    }

    @Override // java.util.Map, j$.util.Map
    public final Object getOrDefault(Object obj, Object obj2) {
        Object orDefault;
        synchronized (this.f823b) {
            orDefault = Map.EL.getOrDefault(this.f822a, obj, obj2);
        }
        return orDefault;
    }

    @Override // java.util.Map, j$.util.Map
    public final void forEach(BiConsumer biConsumer) {
        synchronized (this.f823b) {
            Map.EL.forEach(this.f822a, biConsumer);
        }
    }

    @Override // java.util.Map, j$.util.Map
    public final void replaceAll(BiFunction biFunction) {
        synchronized (this.f823b) {
            java.util.Map map = this.f822a;
            if (map instanceof Map) {
                ((Map) map).replaceAll(biFunction);
            } else if (map instanceof ConcurrentMap) {
                ConcurrentMap concurrentMap = (ConcurrentMap) map;
                Objects.requireNonNull(biFunction);
                C2123s c2123s = new C2123s(0, concurrentMap, biFunction);
                if (concurrentMap instanceof InterfaceC2124t) {
                    ((InterfaceC2124t) concurrentMap).forEach(c2123s);
                } else {
                    AbstractC1965a.m426i(concurrentMap, c2123s);
                }
            } else {
                Map.CC.$default$replaceAll(map, biFunction);
            }
        }
    }

    @Override // java.util.Map, j$.util.Map
    public final Object putIfAbsent(Object obj, Object obj2) {
        Object objPutIfAbsent;
        synchronized (this.f823b) {
            objPutIfAbsent = Map.EL.putIfAbsent(this.f822a, obj, obj2);
        }
        return objPutIfAbsent;
    }

    @Override // java.util.Map, j$.util.Map
    public final boolean remove(Object obj, Object obj2) {
        boolean zRemove;
        synchronized (this.f823b) {
            zRemove = Map.EL.remove(this.f822a, obj, obj2);
        }
        return zRemove;
    }

    @Override // java.util.Map, j$.util.Map
    public final boolean replace(Object obj, Object obj2, Object obj3) {
        boolean zReplace;
        synchronized (this.f823b) {
            java.util.Map map = this.f822a;
            zReplace = map instanceof Map ? ((Map) map).replace(obj, obj2, obj3) : Map.CC.$default$replace(map, obj, obj2, obj3);
        }
        return zReplace;
    }

    @Override // java.util.Map, j$.util.Map
    public final Object replace(Object obj, Object obj2) {
        Object objReplace;
        synchronized (this.f823b) {
            java.util.Map map = this.f822a;
            objReplace = map instanceof Map ? ((Map) map).replace(obj, obj2) : Map.CC.$default$replace(map, obj, obj2);
        }
        return objReplace;
    }

    @Override // java.util.Map, j$.util.Map
    public final Object computeIfAbsent(Object obj, Function function) {
        Object objComputeIfAbsent;
        synchronized (this.f823b) {
            objComputeIfAbsent = Map.EL.computeIfAbsent(this.f822a, obj, function);
        }
        return objComputeIfAbsent;
    }

    @Override // java.util.Map, j$.util.Map
    public final Object computeIfPresent(Object obj, BiFunction biFunction) {
        Object obj$default$computeIfPresent;
        Object objApply;
        synchronized (this.f823b) {
            java.util.Map map = this.f822a;
            if (map instanceof Map) {
                obj$default$computeIfPresent = ((Map) map).computeIfPresent(obj, biFunction);
            } else if (map instanceof ConcurrentMap) {
                ConcurrentMap concurrentMap = (ConcurrentMap) map;
                Objects.requireNonNull(biFunction);
                while (true) {
                    Object obj2 = concurrentMap.get(obj);
                    if (obj2 == null) {
                        obj$default$computeIfPresent = null;
                        break;
                    }
                    objApply = biFunction.apply(obj, obj2);
                    if (objApply == null) {
                        if (concurrentMap.remove(obj, obj2)) {
                            break;
                        }
                    } else if (concurrentMap.replace(obj, obj2, objApply)) {
                        break;
                    }
                }
                obj$default$computeIfPresent = objApply;
            } else {
                obj$default$computeIfPresent = Map.CC.$default$computeIfPresent(map, obj, biFunction);
            }
        }
        return obj$default$computeIfPresent;
    }

    @Override // java.util.Map, j$.util.Map
    public final Object compute(Object obj, BiFunction biFunction) {
        Object objCompute;
        synchronized (this.f823b) {
            objCompute = Map.EL.compute(this.f822a, obj, biFunction);
        }
        return objCompute;
    }

    @Override // java.util.Map, j$.util.Map
    public final Object merge(Object obj, Object obj2, BiFunction biFunction) {
        Object objM688a;
        synchronized (this.f823b) {
            objM688a = Map.EL.m688a(this.f822a, obj, obj2, biFunction);
        }
        return objM688a;
    }

    private void writeObject(ObjectOutputStream objectOutputStream) {
        synchronized (this.f823b) {
            objectOutputStream.defaultWriteObject();
        }
    }
}
