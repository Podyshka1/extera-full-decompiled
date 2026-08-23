package kotlin.collections.jdk8;

import java.util.Map;
import kotlin.IgnorableReturnValue;
import kotlin.Metadata;
import kotlin.SinceKotlin;
import kotlin.internal.InlineOnly;
import kotlin.jvm.JvmName;
import kotlin.jvm.internal.TypeIntrinsics;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010$\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\u0010%\n\u0002\b\u0003\u001aB\u0010\u0000\u001a\u0002H\u0001\"\t\b\u0000\u0010\u0002¢\u0006\u0002\b\u0003\"\u0004\b\u0001\u0010\u0001*\u0010\u0012\u0006\b\u0001\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H\u00010\u00042\u0006\u0010\u0005\u001a\u0002H\u00022\u0006\u0010\u0006\u001a\u0002H\u0001H\u0087\u0088\u0004¢\u0006\u0002\u0010\u0007\u001aI\u0010\b\u001a\u00020\t\"\t\b\u0000\u0010\u0002¢\u0006\u0002\b\u0003\"\t\b\u0001\u0010\u0001¢\u0006\u0002\b\u0003*\u0012\u0012\u0006\b\u0001\u0012\u0002H\u0002\u0012\u0006\b\u0001\u0012\u0002H\u00010\n2\u0006\u0010\u0005\u001a\u0002H\u00022\u0006\u0010\u000b\u001a\u0002H\u0001H\u0087\u0088\b¢\u0006\u0002\u0010\f¨\u0006\r"}, d2 = {"getOrDefault", "V", "K", "Lkotlin/internal/OnlyInputTypes;", _UrlKt.FRAGMENT_ENCODE_SET, "key", "defaultValue", "(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "remove", _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, "value", "(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Z", "kotlin-stdlib-jdk8"}, m754k = 2, mv = {2, 3, 0}, pn = "kotlin.collections", xi = 48)
@JvmName(name = "CollectionsJDK8Kt")
public final class CollectionsJDK8Kt {
    /* JADX WARN: Multi-variable type inference failed */
    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final <K, V> V getOrDefault(Map<? extends K, ? extends V> map, K k, V v) {
        return map.getOrDefault(k, v);
    }

    @SinceKotlin(version = "1.2")
    @IgnorableReturnValue
    @InlineOnly
    private static final <K, V> boolean remove(Map<? extends K, ? extends V> map, K k, V v) {
        return TypeIntrinsics.asMutableMap(map).remove(k, v);
    }
}
