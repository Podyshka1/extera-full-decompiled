package j$.util.concurrent;

import j$.com.android.tools.r8.AbstractC1965a;
import java.util.Map;

/* JADX INFO: renamed from: j$.util.concurrent.k */
/* JADX INFO: loaded from: classes2.dex */
public class C2115k implements Map.Entry {

    /* JADX INFO: renamed from: a */
    public final int f735a;

    /* JADX INFO: renamed from: b */
    public final Object f736b;

    /* JADX INFO: renamed from: c */
    public volatile Object f737c;

    /* JADX INFO: renamed from: d */
    public volatile C2115k f738d;

    public C2115k(int i, Object obj, Object obj2) {
        this.f735a = i;
        this.f736b = obj;
        this.f737c = obj2;
    }

    public C2115k(int i, Object obj, Object obj2, C2115k c2115k) {
        this(i, obj, obj2);
        this.f738d = c2115k;
    }

    @Override // java.util.Map.Entry
    public final Object getKey() {
        return this.f736b;
    }

    @Override // java.util.Map.Entry
    public final Object getValue() {
        return this.f737c;
    }

    @Override // java.util.Map.Entry
    public final int hashCode() {
        return this.f736b.hashCode() ^ this.f737c.hashCode();
    }

    public final String toString() {
        return AbstractC1965a.m416V(this.f736b, this.f737c);
    }

    @Override // java.util.Map.Entry
    public final Object setValue(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map.Entry
    public final boolean equals(Object obj) {
        Map.Entry entry;
        Object key;
        Object value;
        if (!(obj instanceof Map.Entry) || (key = (entry = (Map.Entry) obj).getKey()) == null || (value = entry.getValue()) == null) {
            return false;
        }
        Object obj2 = this.f736b;
        if (key != obj2 && !key.equals(obj2)) {
            return false;
        }
        Object obj3 = this.f737c;
        return value == obj3 || value.equals(obj3);
    }

    /* JADX INFO: renamed from: a */
    public C2115k mo722a(int i, Object obj) {
        Object obj2;
        C2115k c2115k = this;
        do {
            if (c2115k.f735a == i && ((obj2 = c2115k.f736b) == obj || (obj2 != null && obj.equals(obj2)))) {
                return c2115k;
            }
            c2115k = c2115k.f738d;
        } while (c2115k != null);
        return null;
    }
}
