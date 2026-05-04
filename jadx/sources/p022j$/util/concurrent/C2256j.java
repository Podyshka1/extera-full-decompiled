package p022j$.util.concurrent;

import java.util.Map;
import p022j$.com.android.tools.p023r8.AbstractC2104a;

/* JADX INFO: renamed from: j$.util.concurrent.j */
/* JADX INFO: loaded from: classes2.dex */
public final class C2256j implements Map.Entry {

    /* JADX INFO: renamed from: a */
    public final Object f967a;

    /* JADX INFO: renamed from: b */
    public Object f968b;

    /* JADX INFO: renamed from: c */
    public final ConcurrentHashMap f969c;

    public C2256j(Object obj, Object obj2, ConcurrentHashMap concurrentHashMap) {
        this.f967a = obj;
        this.f968b = obj2;
        this.f969c = concurrentHashMap;
    }

    @Override // java.util.Map.Entry
    public final Object getKey() {
        return this.f967a;
    }

    @Override // java.util.Map.Entry
    public final Object getValue() {
        return this.f968b;
    }

    @Override // java.util.Map.Entry
    public final int hashCode() {
        return this.f967a.hashCode() ^ this.f968b.hashCode();
    }

    public final String toString() {
        return AbstractC2104a.m536V(this.f967a, this.f968b);
    }

    @Override // java.util.Map.Entry
    public final boolean equals(Object obj) {
        Map.Entry entry;
        Object key;
        Object value;
        if (!(obj instanceof Map.Entry) || (key = (entry = (Map.Entry) obj).getKey()) == null || (value = entry.getValue()) == null) {
            return false;
        }
        Object obj2 = this.f967a;
        if (key != obj2 && !key.equals(obj2)) {
            return false;
        }
        Object obj3 = this.f968b;
        return value == obj3 || value.equals(obj3);
    }

    @Override // java.util.Map.Entry
    public final Object setValue(Object obj) {
        obj.getClass();
        Object obj2 = this.f968b;
        this.f968b = obj;
        this.f969c.put(this.f967a, obj);
        return obj2;
    }
}
