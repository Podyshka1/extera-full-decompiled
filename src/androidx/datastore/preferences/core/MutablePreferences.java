package androidx.datastore.preferences.core;

import androidx.datastore.preferences.core.Preferences;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
import kotlin.Pair;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;

/* JADX INFO: loaded from: classes.dex */
public final class MutablePreferences extends Preferences {
    private final AtomicBoolean frozen;
    private final Map preferencesMap;

    public /* synthetic */ MutablePreferences(Map map, boolean z, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? new LinkedHashMap() : map, (i & 2) != 0 ? true : z);
    }

    public MutablePreferences(Map preferencesMap, boolean z) {
        Intrinsics.checkNotNullParameter(preferencesMap, "preferencesMap");
        this.preferencesMap = preferencesMap;
        this.frozen = new AtomicBoolean(z);
    }

    public final void checkNotFrozen$datastore_preferences_core_release() {
        if (this.frozen.get()) {
            throw new IllegalStateException("Do mutate preferences once returned to DataStore.");
        }
    }

    public final void freeze$datastore_preferences_core_release() {
        this.frozen.set(true);
    }

    @Override // androidx.datastore.preferences.core.Preferences
    public Object get(Preferences.Key key) {
        Intrinsics.checkNotNullParameter(key, "key");
        Object obj = this.preferencesMap.get(key);
        if (!(obj instanceof byte[])) {
            return obj;
        }
        byte[] bArr = (byte[]) obj;
        byte[] bArrCopyOf = Arrays.copyOf(bArr, bArr.length);
        Intrinsics.checkNotNullExpressionValue(bArrCopyOf, "copyOf(this, size)");
        return bArrCopyOf;
    }

    @Override // androidx.datastore.preferences.core.Preferences
    public Map asMap() {
        Pair pair;
        Set<Map.Entry> setEntrySet = this.preferencesMap.entrySet();
        LinkedHashMap linkedHashMap = new LinkedHashMap(RangesKt.coerceAtLeast(MapsKt.mapCapacity(CollectionsKt.collectionSizeOrDefault(setEntrySet, 10)), 16));
        for (Map.Entry entry : setEntrySet) {
            Object value = entry.getValue();
            if (value instanceof byte[]) {
                Object key = entry.getKey();
                byte[] bArr = (byte[]) value;
                byte[] bArrCopyOf = Arrays.copyOf(bArr, bArr.length);
                Intrinsics.checkNotNullExpressionValue(bArrCopyOf, "copyOf(this, size)");
                pair = new Pair(key, bArrCopyOf);
            } else {
                pair = new Pair(entry.getKey(), entry.getValue());
            }
            linkedHashMap.put(pair.getFirst(), pair.getSecond());
        }
        return Actual_jvmAndroidKt.immutableMap(linkedHashMap);
    }

    public final void set(Preferences.Key key, Object obj) {
        Intrinsics.checkNotNullParameter(key, "key");
        setUnchecked$datastore_preferences_core_release(key, obj);
    }

    public final void setUnchecked$datastore_preferences_core_release(Preferences.Key key, Object obj) {
        Intrinsics.checkNotNullParameter(key, "key");
        checkNotFrozen$datastore_preferences_core_release();
        if (obj == null) {
            remove(key);
            return;
        }
        if (obj instanceof Set) {
            this.preferencesMap.put(key, Actual_jvmAndroidKt.immutableCopyOfSet((Set) obj));
            return;
        }
        if (!(obj instanceof byte[])) {
            this.preferencesMap.put(key, obj);
            return;
        }
        Map map = this.preferencesMap;
        byte[] bArr = (byte[]) obj;
        byte[] bArrCopyOf = Arrays.copyOf(bArr, bArr.length);
        Intrinsics.checkNotNullExpressionValue(bArrCopyOf, "copyOf(this, size)");
        map.put(key, bArrCopyOf);
    }

    public final void putAll(Preferences.Pair... pairs) {
        Intrinsics.checkNotNullParameter(pairs, "pairs");
        checkNotFrozen$datastore_preferences_core_release();
        if (pairs.length <= 0) {
            return;
        }
        Preferences.Pair pair = pairs[0];
        throw null;
    }

    public final Object remove(Preferences.Key key) {
        Intrinsics.checkNotNullParameter(key, "key");
        checkNotFrozen$datastore_preferences_core_release();
        return this.preferencesMap.remove(key);
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x0063  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean equals(Object obj) {
        boolean zAreEqual;
        if (!(obj instanceof MutablePreferences)) {
            return false;
        }
        MutablePreferences mutablePreferences = (MutablePreferences) obj;
        Map map = mutablePreferences.preferencesMap;
        if (map == this.preferencesMap) {
            return true;
        }
        if (map.size() != this.preferencesMap.size()) {
            return false;
        }
        Map map2 = mutablePreferences.preferencesMap;
        if (map2.isEmpty()) {
            return true;
        }
        for (Map.Entry entry : map2.entrySet()) {
            Object obj2 = this.preferencesMap.get(entry.getKey());
            if (obj2 != null) {
                Object value = entry.getValue();
                if (value instanceof byte[]) {
                    zAreEqual = (obj2 instanceof byte[]) && Arrays.equals((byte[]) value, (byte[]) obj2);
                } else {
                    zAreEqual = Intrinsics.areEqual(value, obj2);
                }
            }
            if (!zAreEqual) {
                return false;
            }
        }
        return true;
    }

    public int hashCode() {
        Iterator it = this.preferencesMap.entrySet().iterator();
        int iHashCode = 0;
        while (it.hasNext()) {
            Object value = ((Map.Entry) it.next()).getValue();
            iHashCode += value instanceof byte[] ? Arrays.hashCode((byte[]) value) : value.hashCode();
        }
        return iHashCode;
    }

    public String toString() {
        return CollectionsKt.joinToString$default(this.preferencesMap.entrySet(), ",\n", "{\n", "\n}", 0, null, new Function1() { // from class: androidx.datastore.preferences.core.MutablePreferences.toString.1
            @Override // kotlin.jvm.functions.Function1
            public final CharSequence invoke(Map.Entry entry) {
                Intrinsics.checkNotNullParameter(entry, "entry");
                Object value = entry.getValue();
                return "  " + ((Preferences.Key) entry.getKey()).getName() + " = " + (value instanceof byte[] ? ArraysKt.joinToString$default((byte[]) value, (CharSequence) ", ", (CharSequence) "[", (CharSequence) "]", 0, (CharSequence) null, (Function1) null, 56, (Object) null) : String.valueOf(entry.getValue()));
            }
        }, 24, null);
    }
}
