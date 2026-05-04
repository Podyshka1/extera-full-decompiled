package okhttp3;

import java.net.URL;
import java.util.List;
import kotlin.Pair;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.JvmClassMappingKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import kotlin.text.StringsKt;
import okhttp3.Headers;
import okhttp3.HttpUrl;
import okhttp3.internal.EmptyTags;
import okhttp3.internal.IsProbablyUtf8Kt;
import okhttp3.internal.Tags;
import okhttp3.internal._UtilCommonKt;
import okhttp3.internal.http.GzipRequestBody;
import okhttp3.internal.http.HttpMethod;
import okio.Buffer;

/* JADX INFO: loaded from: classes.dex */
public final class Request {
    private final RequestBody body;
    private final HttpUrl cacheUrlOverride;
    private final Headers headers;
    private CacheControl lazyCacheControl;
    private final String method;
    private final Tags tags;
    private final HttpUrl url;

    public final String toCurl() {
        return toCurl$default(this, false, 1, null);
    }

    public Request(Builder builder) {
        Intrinsics.checkNotNullParameter(builder, "builder");
        HttpUrl url$okhttp = builder.getUrl$okhttp();
        if (url$okhttp == null) {
            throw new IllegalStateException("url == null");
        }
        this.url = url$okhttp;
        this.method = builder.getMethod$okhttp();
        this.headers = builder.getHeaders$okhttp().build();
        this.body = builder.getBody$okhttp();
        this.cacheUrlOverride = builder.getCacheUrlOverride$okhttp();
        this.tags = builder.getTags$okhttp();
    }

    public final HttpUrl url() {
        return this.url;
    }

    public final String method() {
        return this.method;
    }

    public final Headers headers() {
        return this.headers;
    }

    public final RequestBody body() {
        return this.body;
    }

    public final HttpUrl cacheUrlOverride() {
        return this.cacheUrlOverride;
    }

    public final Tags getTags$okhttp() {
        return this.tags;
    }

    public final boolean isHttps() {
        return this.url.isHttps();
    }

    public /* synthetic */ Request(HttpUrl httpUrl, Headers headers, String str, RequestBody requestBody, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(httpUrl, (i & 2) != 0 ? Headers.Companion.m1096of(new String[0]) : headers, (i & 4) != 0 ? "\u0000" : str, (i & 8) != 0 ? null : requestBody);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public Request(HttpUrl url, Headers headers, String method, RequestBody requestBody) {
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(headers, "headers");
        Intrinsics.checkNotNullParameter(method, "method");
        Builder builderHeaders = new Builder().url(url).headers(headers);
        if (Intrinsics.areEqual(method, "\u0000")) {
            if (requestBody != null) {
                method = "POST";
            } else {
                method = "GET";
            }
        }
        this(builderHeaders.method(method, requestBody));
    }

    public final String header(String name) {
        Intrinsics.checkNotNullParameter(name, "name");
        return this.headers.get(name);
    }

    public final List<String> headers(String name) {
        Intrinsics.checkNotNullParameter(name, "name");
        return this.headers.values(name);
    }

    public final /* synthetic */ <T> T reifiedTag() {
        Intrinsics.reifiedOperationMarker(4, "T");
        return (T) tag(Reflection.getOrCreateKotlinClass(Object.class));
    }

    public final Object tag() {
        return tag(Reflection.getOrCreateKotlinClass(Object.class));
    }

    public final <T> T tag(KClass type) {
        Intrinsics.checkNotNullParameter(type, "type");
        return (T) JvmClassMappingKt.getJavaClass(type).cast(this.tags.get(type));
    }

    public final <T> T tag(Class<? extends T> type) {
        Intrinsics.checkNotNullParameter(type, "type");
        return (T) tag(JvmClassMappingKt.getKotlinClass(type));
    }

    public final Builder newBuilder() {
        return new Builder(this);
    }

    public final CacheControl cacheControl() {
        CacheControl cacheControl = this.lazyCacheControl;
        if (cacheControl != null) {
            return cacheControl;
        }
        CacheControl cacheControl2 = CacheControl.Companion.parse(this.headers);
        this.lazyCacheControl = cacheControl2;
        return cacheControl2;
    }

    /* JADX INFO: renamed from: -deprecated_url, reason: not valid java name */
    public final HttpUrl m3861deprecated_url() {
        return this.url;
    }

    /* JADX INFO: renamed from: -deprecated_method, reason: not valid java name */
    public final String m3860deprecated_method() {
        return this.method;
    }

    /* JADX INFO: renamed from: -deprecated_headers, reason: not valid java name */
    public final Headers m3859deprecated_headers() {
        return this.headers;
    }

    /* JADX INFO: renamed from: -deprecated_body, reason: not valid java name */
    public final RequestBody m3857deprecated_body() {
        return this.body;
    }

    /* JADX INFO: renamed from: -deprecated_cacheControl, reason: not valid java name */
    public final CacheControl m3858deprecated_cacheControl() {
        return cacheControl();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(32);
        sb.append("Request{method=");
        sb.append(this.method);
        sb.append(", url=");
        sb.append(this.url);
        if (this.headers.size() != 0) {
            sb.append(", headers=[");
            int i = 0;
            for (Pair pair : this.headers) {
                int i2 = i + 1;
                if (i < 0) {
                    CollectionsKt.throwIndexOverflow();
                }
                Pair pair2 = pair;
                String str = (String) pair2.component1();
                String str2 = (String) pair2.component2();
                if (i > 0) {
                    sb.append(", ");
                }
                sb.append(str);
                sb.append(':');
                if (_UtilCommonKt.isSensitiveHeader(str)) {
                    str2 = "██";
                }
                sb.append(str2);
                i = i2;
            }
            sb.append(']');
        }
        if (!Intrinsics.areEqual(this.tags, EmptyTags.INSTANCE)) {
            sb.append(", tags=");
            sb.append(this.tags);
        }
        sb.append('}');
        return sb.toString();
    }

    public static class Builder {
        private RequestBody body;
        private HttpUrl cacheUrlOverride;
        private Headers.Builder headers;
        private String method;
        private Tags tags;
        private HttpUrl url;

        public final Builder delete() {
            return delete$default(this, null, 1, null);
        }

        public final HttpUrl getUrl$okhttp() {
            return this.url;
        }

        public final void setUrl$okhttp(HttpUrl httpUrl) {
            this.url = httpUrl;
        }

        public final String getMethod$okhttp() {
            return this.method;
        }

        public final void setMethod$okhttp(String str) {
            Intrinsics.checkNotNullParameter(str, "<set-?>");
            this.method = str;
        }

        public final Headers.Builder getHeaders$okhttp() {
            return this.headers;
        }

        public final void setHeaders$okhttp(Headers.Builder builder) {
            Intrinsics.checkNotNullParameter(builder, "<set-?>");
            this.headers = builder;
        }

        public final RequestBody getBody$okhttp() {
            return this.body;
        }

        public final void setBody$okhttp(RequestBody requestBody) {
            this.body = requestBody;
        }

        public final HttpUrl getCacheUrlOverride$okhttp() {
            return this.cacheUrlOverride;
        }

        public final void setCacheUrlOverride$okhttp(HttpUrl httpUrl) {
            this.cacheUrlOverride = httpUrl;
        }

        public final Tags getTags$okhttp() {
            return this.tags;
        }

        public final void setTags$okhttp(Tags tags) {
            Intrinsics.checkNotNullParameter(tags, "<set-?>");
            this.tags = tags;
        }

        public Builder() {
            this.tags = EmptyTags.INSTANCE;
            this.method = "GET";
            this.headers = new Headers.Builder();
        }

        public Builder(Request request) {
            Intrinsics.checkNotNullParameter(request, "request");
            this.tags = EmptyTags.INSTANCE;
            this.url = request.url();
            this.method = request.method();
            this.body = request.body();
            this.tags = request.getTags$okhttp();
            this.headers = request.headers().newBuilder();
            this.cacheUrlOverride = request.cacheUrlOverride();
        }

        public Builder url(HttpUrl url) {
            Intrinsics.checkNotNullParameter(url, "url");
            this.url = url;
            return this;
        }

        public Builder url(String url) {
            Intrinsics.checkNotNullParameter(url, "url");
            return url(HttpUrl.Companion.get(canonicalUrl(url)));
        }

        private final String canonicalUrl(String str) {
            if (StringsKt.startsWith(str, "ws:", true)) {
                StringBuilder sb = new StringBuilder();
                sb.append("http:");
                String strSubstring = str.substring(3);
                Intrinsics.checkNotNullExpressionValue(strSubstring, "substring(...)");
                sb.append(strSubstring);
                return sb.toString();
            }
            if (!StringsKt.startsWith(str, "wss:", true)) {
                return str;
            }
            StringBuilder sb2 = new StringBuilder();
            sb2.append("https:");
            String strSubstring2 = str.substring(4);
            Intrinsics.checkNotNullExpressionValue(strSubstring2, "substring(...)");
            sb2.append(strSubstring2);
            return sb2.toString();
        }

        public Builder url(URL url) {
            Intrinsics.checkNotNullParameter(url, "url");
            HttpUrl.Companion companion = HttpUrl.Companion;
            String string = url.toString();
            Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
            return url(companion.get(string));
        }

        public Builder header(String name, String value) {
            Intrinsics.checkNotNullParameter(name, "name");
            Intrinsics.checkNotNullParameter(value, "value");
            this.headers.set(name, value);
            return this;
        }

        public Builder addHeader(String name, String value) {
            Intrinsics.checkNotNullParameter(name, "name");
            Intrinsics.checkNotNullParameter(value, "value");
            this.headers.add(name, value);
            return this;
        }

        public Builder removeHeader(String name) {
            Intrinsics.checkNotNullParameter(name, "name");
            this.headers.removeAll(name);
            return this;
        }

        public Builder headers(Headers headers) {
            Intrinsics.checkNotNullParameter(headers, "headers");
            this.headers = headers.newBuilder();
            return this;
        }

        public Builder cacheControl(CacheControl cacheControl) {
            Intrinsics.checkNotNullParameter(cacheControl, "cacheControl");
            String string = cacheControl.toString();
            return string.length() == 0 ? removeHeader("Cache-Control") : header("Cache-Control", string);
        }

        public Builder get() {
            return method("GET", null);
        }

        public Builder head() {
            return method("HEAD", null);
        }

        public Builder post(RequestBody body) {
            Intrinsics.checkNotNullParameter(body, "body");
            return method("POST", body);
        }

        public static /* synthetic */ Builder delete$default(Builder builder, RequestBody requestBody, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: delete");
            }
            if ((i & 1) != 0) {
                requestBody = RequestBody.EMPTY;
            }
            return builder.delete(requestBody);
        }

        public Builder delete(RequestBody requestBody) {
            return method("DELETE", requestBody);
        }

        public Builder put(RequestBody body) {
            Intrinsics.checkNotNullParameter(body, "body");
            return method("PUT", body);
        }

        public Builder patch(RequestBody body) {
            Intrinsics.checkNotNullParameter(body, "body");
            return method("PATCH", body);
        }

        public Builder query(RequestBody body) {
            Intrinsics.checkNotNullParameter(body, "body");
            return method("QUERY", body);
        }

        public Builder method(String method, RequestBody requestBody) {
            Intrinsics.checkNotNullParameter(method, "method");
            if (method.length() <= 0) {
                throw new IllegalArgumentException("method.isEmpty() == true");
            }
            if (requestBody == null) {
                if (HttpMethod.requiresRequestBody(method)) {
                    throw new IllegalArgumentException(("method " + method + " must have a request body.").toString());
                }
            } else if (!HttpMethod.permitsRequestBody(method)) {
                throw new IllegalArgumentException(("method " + method + " must not have a request body.").toString());
            }
            this.method = method;
            this.body = requestBody;
            return this;
        }

        public final /* synthetic */ <T> Builder reifiedTag(T t) {
            Intrinsics.reifiedOperationMarker(4, "T");
            return tag(Reflection.getOrCreateKotlinClass(Object.class), t);
        }

        public final <T> Builder tag(KClass type, T t) {
            Intrinsics.checkNotNullParameter(type, "type");
            this.tags = this.tags.plus(type, t);
            return this;
        }

        public Builder tag(Object obj) {
            return tag(Reflection.getOrCreateKotlinClass(Object.class), obj);
        }

        public <T> Builder tag(Class<? super T> type, T t) {
            Intrinsics.checkNotNullParameter(type, "type");
            return tag(JvmClassMappingKt.getKotlinClass(type), t);
        }

        public final Builder cacheUrlOverride(HttpUrl httpUrl) {
            this.cacheUrlOverride = httpUrl;
            return this;
        }

        public final Builder gzip() {
            RequestBody requestBody = this.body;
            if (requestBody == null) {
                throw new IllegalStateException("cannot gzip a request that has no body");
            }
            String str = this.headers.get("Content-Encoding");
            if (str != null) {
                throw new IllegalStateException(("Content-Encoding already set: " + str).toString());
            }
            this.headers.add("Content-Encoding", "gzip");
            this.body = new GzipRequestBody(requestBody);
            return this;
        }

        public Request build() {
            return new Request(this);
        }
    }

    public static /* synthetic */ String toCurl$default(Request request, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = true;
        }
        return request.toCurl(z);
    }

    public final String toCurl(boolean z) {
        MediaType mediaTypeContentType;
        StringBuilder sb = new StringBuilder();
        sb.append("curl " + shellEscape(this.url.toString()));
        RequestBody requestBody = this.body;
        String string = (requestBody == null || (mediaTypeContentType = requestBody.contentType()) == null) ? null : mediaTypeContentType.toString();
        if (!Intrinsics.areEqual(this.method, (!z || this.body == null) ? "GET" : "POST")) {
            sb.append(" \\\n  -X " + shellEscape(this.method));
        }
        for (Pair pair : this.headers) {
            String str = (String) pair.component1();
            String str2 = (String) pair.component2();
            if (string == null || !StringsKt.equals(str, "Content-Type", true)) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append(" \\\n  -H ");
                sb2.append(shellEscape(str + ": " + str2));
                sb.append(sb2.toString());
            }
        }
        if (string != null) {
            StringBuilder sb3 = new StringBuilder();
            sb3.append(" \\\n  -H ");
            sb3.append(shellEscape("Content-Type: " + string));
            sb.append(sb3.toString());
        }
        if (z && this.body != null) {
            Buffer buffer = new Buffer();
            this.body.writeTo(buffer);
            if (IsProbablyUtf8Kt.isProbablyUtf8$default(buffer, 0L, 1, null)) {
                sb.append(" \\\n  --data " + shellEscape(buffer.readUtf8()));
            } else {
                sb.append(" \\\n  --data-binary " + shellEscape(buffer.readByteString().hex()));
            }
        }
        return sb.toString();
    }

    private final String shellEscape(String str) {
        return '\'' + StringsKt.replace$default(str, "'", "'\\''", false, 4, (Object) null) + '\'';
    }
}
