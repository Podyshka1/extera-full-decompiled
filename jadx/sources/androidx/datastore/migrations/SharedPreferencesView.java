package androidx.datastore.migrations;

import android.content.SharedPreferences;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class SharedPreferencesView {
    private final Set keySet;
    private final SharedPreferences prefs;

    public SharedPreferencesView(SharedPreferences prefs, Set set) {
        Intrinsics.checkNotNullParameter(prefs, "prefs");
        this.prefs = prefs;
        this.keySet = set;
    }

    public final Map getAll() {
        Map<String, ?> all = this.prefs.getAll();
        Intrinsics.checkNotNullExpressionValue(all, "prefs.all");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Map.Entry<String, ?> entry : all.entrySet()) {
            String key = entry.getKey();
            Set set = this.keySet;
            if (set != null ? set.contains(key) : true) {
                linkedHashMap.put(entry.getKey(), entry.getValue());
            }
        }
        LinkedHashMap linkedHashMap2 = new LinkedHashMap(MapsKt.mapCapacity(linkedHashMap.size()));
        for (Map.Entry entry2 : linkedHashMap.entrySet()) {
            Object key2 = entry2.getKey();
            Object value = entry2.getValue();
            if (value instanceof Set) {
                value = CollectionsKt.toSet((Iterable) value);
            }
            linkedHashMap2.put(key2, value);
        }
        return linkedHashMap2;
    }
}
