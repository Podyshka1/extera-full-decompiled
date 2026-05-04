package j$.util.concurrent;

import j$.com.android.tools.r8.AbstractC1965a;
import java.util.Map;

/* JADX INFO: renamed from: j$.util.concurrent.j */
/* JADX INFO: loaded from: classes2.dex */
public final class C2114j implements Map.Entry {

    /* JADX INFO: renamed from: a */
    public final Object f732a;

    /* JADX INFO: renamed from: b */
    public Object f733b;

    /* JADX INFO: renamed from: c */
    public final ConcurrentHashMap f734c;

    public C2114j(Object obj, Object obj2, ConcurrentHashMap concurrentHashMap) {
        this.f732a = obj;
        this.f733b = obj2;
        this.f734c = concurrentHashMap;
    }

    @Override // java.util.Map.Entry
    public final Object getKey() {
        return this.f732a;
    }

    @Override // java.util.Map.Entry
    public final Object getValue() {
        return this.f733b;
    }

    @Override // java.util.Map.Entry
    public final int hashCode() {
        return this.f732a.hashCode() ^ this.f733b.hashCode();
    }

    public final String toString() {
        return AbstractC1965a.m416V(this.f732a, this.f733b);
    }

    @Override // java.util.Map.Entry
    public final boolean equals(Object obj) {
        Map.Entry entry;
        Object key;
        Object value;
        if (!(obj instanceof Map.Entry) || (key = (entry = (Map.Entry) obj).getKey()) == null || (value = entry.getValue()) == null) {
            return false;
        }
        Object obj2 = this.f732a;
        if (key != obj2 && !key.equals(obj2)) {
            return false;
        }
        Object obj3 = this.f733b;
        return value == obj3 || value.equals(obj3);
    }

    @Override // java.util.Map.Entry
    public final Object setValue(Object obj) {
        obj.getClass();
        Object obj2 = this.f733b;
        this.f733b = obj;
        this.f734c.put(this.f732a, obj);
        return obj2;
    }
}
