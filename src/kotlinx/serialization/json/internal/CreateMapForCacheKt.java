package kotlinx.serialization.json.internal;

import java.util.Map;
import p022j$.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes.dex */
public abstract class CreateMapForCacheKt {
    public static final Map createMapForCache(int i) {
        return new ConcurrentHashMap(i);
    }
}
