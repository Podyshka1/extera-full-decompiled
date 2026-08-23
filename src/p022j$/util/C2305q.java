package p022j$.util;

import java.util.Map;

/* JADX INFO: renamed from: j$.util.q */
/* JADX INFO: loaded from: classes2.dex */
public final class C2305q implements Map.Entry {

    /* JADX INFO: renamed from: a */
    public final Map.Entry f1080a;

    public C2305q(Map.Entry entry) {
        this.f1080a = (Map.Entry) Objects.requireNonNull(entry);
    }

    @Override // java.util.Map.Entry
    public final Object getKey() {
        return this.f1080a.getKey();
    }

    @Override // java.util.Map.Entry
    public final Object getValue() {
        return this.f1080a.getValue();
    }

    @Override // java.util.Map.Entry
    public final Object setValue(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map.Entry
    public final int hashCode() {
        return this.f1080a.hashCode();
    }

    @Override // java.util.Map.Entry
    public final boolean equals(Object obj) {
        boolean zEquals;
        boolean zEquals2;
        if (this != obj) {
            if (obj instanceof Map.Entry) {
                Map.Entry entry = (Map.Entry) obj;
                Object key = this.f1080a.getKey();
                Object key2 = entry.getKey();
                if (key == null) {
                    zEquals = key2 == null;
                } else {
                    zEquals = key.equals(key2);
                }
                if (zEquals) {
                    Object value = this.f1080a.getValue();
                    Object value2 = entry.getValue();
                    if (value == null) {
                        zEquals2 = value2 == null;
                    } else {
                        zEquals2 = value.equals(value2);
                    }
                    if (zEquals2) {
                    }
                }
            }
            return false;
        }
        return true;
    }

    public final String toString() {
        return this.f1080a.toString();
    }
}
