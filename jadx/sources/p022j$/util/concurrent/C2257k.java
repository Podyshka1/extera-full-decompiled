package p022j$.util.concurrent;

import java.util.Map;
import p022j$.com.android.tools.p023r8.AbstractC2104a;

/* JADX INFO: renamed from: j$.util.concurrent.k */
/* JADX INFO: loaded from: classes2.dex */
public class C2257k implements Map.Entry {

    /* JADX INFO: renamed from: a */
    public final int f970a;

    /* JADX INFO: renamed from: b */
    public final Object f971b;

    /* JADX INFO: renamed from: c */
    public volatile Object f972c;

    /* JADX INFO: renamed from: d */
    public volatile C2257k f973d;

    public C2257k(int i, Object obj, Object obj2) {
        this.f970a = i;
        this.f971b = obj;
        this.f972c = obj2;
    }

    public C2257k(int i, Object obj, Object obj2, C2257k c2257k) {
        this(i, obj, obj2);
        this.f973d = c2257k;
    }

    @Override // java.util.Map.Entry
    public final Object getKey() {
        return this.f971b;
    }

    @Override // java.util.Map.Entry
    public final Object getValue() {
        return this.f972c;
    }

    @Override // java.util.Map.Entry
    public final int hashCode() {
        return this.f971b.hashCode() ^ this.f972c.hashCode();
    }

    public final String toString() {
        return AbstractC2104a.m536V(this.f971b, this.f972c);
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
        Object obj2 = this.f971b;
        if (key != obj2 && !key.equals(obj2)) {
            return false;
        }
        Object obj3 = this.f972c;
        return value == obj3 || value.equals(obj3);
    }

    /* JADX INFO: renamed from: a */
    public C2257k mo848a(int i, Object obj) {
        Object obj2;
        C2257k c2257k = this;
        do {
            if (c2257k.f970a == i && ((obj2 = c2257k.f971b) == obj || (obj2 != null && obj.equals(obj2)))) {
                return c2257k;
            }
            c2257k = c2257k.f973d;
        } while (c2257k != null);
        return null;
    }
}
