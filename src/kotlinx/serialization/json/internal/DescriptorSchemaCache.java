package kotlinx.serialization.json.internal;

import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.serialization.descriptors.SerialDescriptor;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0000\u0018\u00002\u00020\u0001:\u0001\u0016B\t\bF¢\u0006\u0004\b\u0002\u0010\u0003J7\u0010\t\u001a\u00020\n\"\b\b\u0000\u0010\u000b*\u00020\u00012\u0006\u0010\f\u001a\u00020\u00062\f\u0010\r\u001a\b\u0012\u0004\u0012\u0002H\u000b0\u00072\u0006\u0010\u000e\u001a\u0002H\u000bH\u0086\u0082\u0004¢\u0006\u0002\u0010\u000fJ=\u0010\u0010\u001a\u0002H\u000b\"\b\b\u0000\u0010\u000b*\u00020\u00012\u0006\u0010\f\u001a\u00020\u00062\f\u0010\r\u001a\b\u0012\u0004\u0012\u0002H\u000b0\u00072\f\u0010\u0011\u001a\b\u0012\u0004\u0012\u0002H\u000b0\u0012H\u0086\u0080\u0004¢\u0006\u0002\u0010\u0013J1\u0010\u0014\u001a\u0004\u0018\u0001H\u000b\"\b\b\u0000\u0010\u000b*\u00020\u00012\u0006\u0010\f\u001a\u00020\u00062\f\u0010\r\u001a\b\u0012\u0004\u0012\u0002H\u000b0\u0007H\u0086\u0082\u0004¢\u0006\u0002\u0010\u0015R7\u0010\u0004\u001a*\u0012\u0004\u0012\u00020\u0006\u0012 \u0012\u001e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00010\u0007\u0012\u0004\u0012\u00020\u00010\u0005j\b\u0012\u0004\u0012\u00020\u0001`\b0\u0005X\u0082\u0084\b¢\u0006\u0002\n\u0000¨\u0006\u0017"}, d2 = {"Lkotlinx/serialization/json/internal/DescriptorSchemaCache;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "map", _UrlKt.FRAGMENT_ENCODE_SET, "Lkotlinx/serialization/descriptors/SerialDescriptor;", "Lkotlinx/serialization/json/internal/DescriptorSchemaCache$Key;", "Lkotlinx/serialization/json/internal/DescriptorData;", "set", _UrlKt.FRAGMENT_ENCODE_SET, "T", "descriptor", "key", "value", "(Lkotlinx/serialization/descriptors/SerialDescriptor;Lkotlinx/serialization/json/internal/DescriptorSchemaCache$Key;Ljava/lang/Object;)V", "getOrPut", "defaultValue", "Lkotlin/Function0;", "(Lkotlinx/serialization/descriptors/SerialDescriptor;Lkotlinx/serialization/json/internal/DescriptorSchemaCache$Key;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;", "get", "(Lkotlinx/serialization/descriptors/SerialDescriptor;Lkotlinx/serialization/json/internal/DescriptorSchemaCache$Key;)Ljava/lang/Object;", "Key", "kotlinx-serialization-json"}, m754k = 1, mv = {2, 3, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nSchemaCache.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SchemaCache.kt\nkotlinx/serialization/json/internal/DescriptorSchemaCache\n+ 2 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,53:1\n410#2,7:54\n1#3:61\n*S KotlinDebug\n*F\n+ 1 SchemaCache.kt\nkotlinx/serialization/json/internal/DescriptorSchemaCache\n*L\n25#1:54,7\n*E\n"})
public final class DescriptorSchemaCache {
    private final Map<SerialDescriptor, Map<Key<Object>, Object>> map = CreateMapForCacheKt.createMapForCache(16);

    @Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\u0018\u0000*\b\b\u0000\u0010\u0001*\u00020\u00022\u00020\u0002B\t\bF¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lkotlinx/serialization/json/internal/DescriptorSchemaCache$Key;", "T", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "kotlinx-serialization-json"}, m754k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Key<T> {
    }

    public final <T> void set(SerialDescriptor descriptor, Key<T> key, T value) {
        Map<SerialDescriptor, Map<Key<Object>, Object>> map = this.map;
        Map<Key<Object>, Object> mapCreateMapForCache = map.get(descriptor);
        if (mapCreateMapForCache == null) {
            mapCreateMapForCache = CreateMapForCacheKt.createMapForCache(2);
            map.put(descriptor, mapCreateMapForCache);
        }
        mapCreateMapForCache.put(key, value);
    }

    public final <T> T getOrPut(SerialDescriptor descriptor, Key<T> key, Function0<? extends T> defaultValue) {
        T t = (T) get(descriptor, key);
        if (t != null) {
            return t;
        }
        T tInvoke = defaultValue.invoke();
        set(descriptor, key, tInvoke);
        return tInvoke;
    }

    public final <T> T get(SerialDescriptor descriptor, Key<T> key) {
        Map<Key<Object>, Object> map = this.map.get(descriptor);
        T t = map != null ? (T) map.get(key) : null;
        if (t == null) {
            return null;
        }
        return t;
    }
}
