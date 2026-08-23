package androidx.collection.internal;

import java.util.LinkedHashMap;
import java.util.Set;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class LruHashMap {
    private final LinkedHashMap map;

    public LruHashMap(int i, float f) {
        this.map = new LinkedHashMap(i, f, true);
    }

    public final boolean isEmpty() {
        return this.map.isEmpty();
    }

    public final Set getEntries() {
        Set setEntrySet = this.map.entrySet();
        Intrinsics.checkNotNullExpressionValue(setEntrySet, "<get-entries>(...)");
        return setEntrySet;
    }

    public final Object get(Object key) {
        Intrinsics.checkNotNullParameter(key, "key");
        return this.map.get(key);
    }

    public final Object put(Object key, Object value) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(value, "value");
        return this.map.put(key, value);
    }

    public final Object remove(Object key) {
        Intrinsics.checkNotNullParameter(key, "key");
        return this.map.remove(key);
    }
}
