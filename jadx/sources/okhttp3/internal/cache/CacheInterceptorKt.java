package okhttp3.internal.cache;

import kotlin.jvm.internal.Intrinsics;
import okhttp3.HttpUrl;
import okhttp3.Request;
import okhttp3.internal.http.HttpMethod;

/* JADX INFO: loaded from: classes5.dex */
public final class CacheInterceptorKt {
    /* JADX INFO: Access modifiers changed from: private */
    public static final Request requestForCache(Request request) {
        HttpUrl httpUrlCacheUrlOverride = request.cacheUrlOverride();
        return httpUrlCacheUrlOverride != null ? (HttpMethod.INSTANCE.isCacheable(request.method()) || Intrinsics.areEqual(request.method(), "POST")) ? request.newBuilder().get().url(httpUrlCacheUrlOverride).cacheUrlOverride(null).build() : request : request;
    }
}
