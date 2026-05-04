package p022j$.util;

import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.Collection;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentMap;
import java.util.function.BiConsumer;
import java.util.function.BiFunction;
import java.util.function.Function;
import p022j$.com.android.tools.p023r8.AbstractC2104a;
import p022j$.util.Map;
import p022j$.util.concurrent.C2265s;
import p022j$.util.concurrent.InterfaceC2266t;

/* JADX INFO: renamed from: j$.util.j */
/* JADX INFO: loaded from: classes2.dex */
public final class C2291j implements Map, Serializable, Map {
    private static final long serialVersionUID = 1978198479659022715L;

    /* JADX INFO: renamed from: a */
    public final Map f1057a;

    /* JADX INFO: renamed from: b */
    public final C2291j f1058b = this;

    /* JADX INFO: renamed from: c */
    public transient C2295l f1059c;

    /* JADX INFO: renamed from: d */
    public transient C2295l f1060d;

    /* JADX INFO: renamed from: e */
    public transient C2287h f1061e;

    public C2291j(Map map) {
        this.f1057a = (Map) Objects.requireNonNull(map);
    }

    @Override // java.util.Map
    public final int size() {
        int size;
        synchronized (this.f1058b) {
            size = this.f1057a.size();
        }
        return size;
    }

    @Override // java.util.Map
    public final boolean isEmpty() {
        boolean zIsEmpty;
        synchronized (this.f1058b) {
            zIsEmpty = this.f1057a.isEmpty();
        }
        return zIsEmpty;
    }

    @Override // java.util.Map
    public final boolean containsKey(Object obj) {
        boolean zContainsKey;
        synchronized (this.f1058b) {
            zContainsKey = this.f1057a.containsKey(obj);
        }
        return zContainsKey;
    }

    @Override // java.util.Map
    public final boolean containsValue(Object obj) {
        boolean zContainsValue;
        synchronized (this.f1058b) {
            zContainsValue = this.f1057a.containsValue(obj);
        }
        return zContainsValue;
    }

    @Override // java.util.Map
    public final Object get(Object obj) {
        Object obj2;
        synchronized (this.f1058b) {
            obj2 = this.f1057a.get(obj);
        }
        return obj2;
    }

    @Override // java.util.Map
    public final Object put(Object obj, Object obj2) {
        Object objPut;
        synchronized (this.f1058b) {
            objPut = this.f1057a.put(obj, obj2);
        }
        return objPut;
    }

    @Override // java.util.Map
    public final Object remove(Object obj) {
        Object objRemove;
        synchronized (this.f1058b) {
            objRemove = this.f1057a.remove(obj);
        }
        return objRemove;
    }

    @Override // java.util.Map
    public final void putAll(Map map) {
        synchronized (this.f1058b) {
            this.f1057a.putAll(map);
        }
    }

    @Override // java.util.Map
    public final void clear() {
        synchronized (this.f1058b) {
            this.f1057a.clear();
        }
    }

    @Override // java.util.Map
    public final Set keySet() {
        C2295l c2295l;
        synchronized (this.f1058b) {
            try {
                if (this.f1059c == null) {
                    this.f1059c = new C2295l(this.f1057a.keySet(), this.f1058b);
                }
                c2295l = this.f1059c;
            } catch (Throwable th) {
                throw th;
            }
        }
        return c2295l;
    }

    @Override // java.util.Map
    public final Set entrySet() {
        C2295l c2295l;
        synchronized (this.f1058b) {
            try {
                if (this.f1060d == null) {
                    this.f1060d = new C2295l(this.f1057a.entrySet(), this.f1058b);
                }
                c2295l = this.f1060d;
            } catch (Throwable th) {
                throw th;
            }
        }
        return c2295l;
    }

    @Override // java.util.Map
    public final Collection values() {
        C2287h c2287h;
        synchronized (this.f1058b) {
            try {
                if (this.f1061e == null) {
                    this.f1061e = new C2287h(this.f1057a.values(), this.f1058b);
                }
                c2287h = this.f1061e;
            } catch (Throwable th) {
                throw th;
            }
        }
        return c2287h;
    }

    @Override // java.util.Map
    public final boolean equals(Object obj) {
        boolean zEquals;
        if (this == obj) {
            return true;
        }
        synchronized (this.f1058b) {
            zEquals = this.f1057a.equals(obj);
        }
        return zEquals;
    }

    @Override // java.util.Map
    public final int hashCode() {
        int iHashCode;
        synchronized (this.f1058b) {
            iHashCode = this.f1057a.hashCode();
        }
        return iHashCode;
    }

    public final String toString() {
        String string;
        synchronized (this.f1058b) {
            string = this.f1057a.toString();
        }
        return string;
    }

    @Override // java.util.Map, p022j$.util.Map
    public final Object getOrDefault(Object obj, Object obj2) {
        Object orDefault;
        synchronized (this.f1058b) {
            orDefault = Map.EL.getOrDefault(this.f1057a, obj, obj2);
        }
        return orDefault;
    }

    @Override // java.util.Map, p022j$.util.Map
    public final void forEach(BiConsumer biConsumer) {
        synchronized (this.f1058b) {
            Map.EL.forEach(this.f1057a, biConsumer);
        }
    }

    @Override // java.util.Map, p022j$.util.Map
    public final void replaceAll(BiFunction biFunction) {
        synchronized (this.f1058b) {
            java.util.Map map = this.f1057a;
            if (map instanceof Map) {
                ((Map) map).replaceAll(biFunction);
            } else if (map instanceof ConcurrentMap) {
                ConcurrentMap concurrentMap = (ConcurrentMap) map;
                Objects.requireNonNull(biFunction);
                C2265s c2265s = new C2265s(0, concurrentMap, biFunction);
                if (concurrentMap instanceof InterfaceC2266t) {
                    ((InterfaceC2266t) concurrentMap).forEach(c2265s);
                } else {
                    AbstractC2104a.m546i(concurrentMap, c2265s);
                }
            } else {
                Map.CC.$default$replaceAll(map, biFunction);
            }
        }
    }

    @Override // java.util.Map, p022j$.util.Map
    public final Object putIfAbsent(Object obj, Object obj2) {
        Object objPutIfAbsent;
        synchronized (this.f1058b) {
            objPutIfAbsent = Map.EL.putIfAbsent(this.f1057a, obj, obj2);
        }
        return objPutIfAbsent;
    }

    @Override // java.util.Map, p022j$.util.Map
    public final boolean remove(Object obj, Object obj2) {
        boolean zRemove;
        synchronized (this.f1058b) {
            zRemove = Map.EL.remove(this.f1057a, obj, obj2);
        }
        return zRemove;
    }

    @Override // java.util.Map, p022j$.util.Map
    public final boolean replace(Object obj, Object obj2, Object obj3) {
        boolean zReplace;
        synchronized (this.f1058b) {
            java.util.Map map = this.f1057a;
            zReplace = map instanceof Map ? ((Map) map).replace(obj, obj2, obj3) : Map.CC.$default$replace(map, obj, obj2, obj3);
        }
        return zReplace;
    }

    @Override // java.util.Map, p022j$.util.Map
    public final Object replace(Object obj, Object obj2) {
        Object objReplace;
        synchronized (this.f1058b) {
            java.util.Map map = this.f1057a;
            objReplace = map instanceof Map ? ((Map) map).replace(obj, obj2) : Map.CC.$default$replace(map, obj, obj2);
        }
        return objReplace;
    }

    @Override // java.util.Map, p022j$.util.Map
    public final Object computeIfAbsent(Object obj, Function function) {
        Object objComputeIfAbsent;
        synchronized (this.f1058b) {
            objComputeIfAbsent = Map.EL.computeIfAbsent(this.f1057a, obj, function);
        }
        return objComputeIfAbsent;
    }

    @Override // java.util.Map, p022j$.util.Map
    public final Object computeIfPresent(Object obj, BiFunction biFunction) {
        Object obj$default$computeIfPresent;
        Object objApply;
        synchronized (this.f1058b) {
            java.util.Map map = this.f1057a;
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

    @Override // java.util.Map, p022j$.util.Map
    public final Object compute(Object obj, BiFunction biFunction) {
        Object objCompute;
        synchronized (this.f1058b) {
            objCompute = Map.EL.compute(this.f1057a, obj, biFunction);
        }
        return objCompute;
    }

    @Override // java.util.Map, p022j$.util.Map
    public final Object merge(Object obj, Object obj2, BiFunction biFunction) {
        Object objM813a;
        synchronized (this.f1058b) {
            objM813a = Map.EL.m813a(this.f1057a, obj, obj2, biFunction);
        }
        return objM813a;
    }

    private void writeObject(ObjectOutputStream objectOutputStream) {
        synchronized (this.f1058b) {
            objectOutputStream.defaultWriteObject();
        }
    }
}
