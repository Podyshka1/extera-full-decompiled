package okhttp3;

import java.net.URL;
import java.util.List;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.ReplaceWith;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.JvmClassMappingKt;
import kotlin.jvm.JvmName;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.reflect.KClass;
import kotlin.text.StringsKt;
import okhttp3.Headers;
import okhttp3.internal.EmptyTags;
import okhttp3.internal.IsProbablyUtf8Kt;
import okhttp3.internal.Tags;
import okhttp3.internal._UtilCommonKt;
import okhttp3.internal.http.GzipRequestBody;
import okhttp3.internal.http.HttpMethod;
import okhttp3.internal.url._UrlKt;
import okio.Buffer;
import okio.ByteString$$ExternalSyntheticBUOutline0;
import okio.Segment$$ExternalSyntheticBUOutline1;
import org.scilab.forge.jlatexmath.TeXSymbolParser;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000X\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000f\u0018\u00002\u00020\u0001:\u00015B\u0011\b\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005B1\b\u0016\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\b\b\u0002\u0010\b\u001a\u00020\t\u0012\b\b\u0002\u0010\n\u001a\u00020\u000b\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\r¢\u0006\u0004\b\u0004\u0010\u000eJ\u0010\u0010\u001d\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u001e\u001a\u00020\u000bJ\u0014\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u000b0\u001f2\u0006\u0010\u001e\u001a\u00020\u000bJ\u001e\u0010 \u001a\u0004\u0018\u0001H!\"\n\b\u0000\u0010!\u0018\u0001*\u00020\u0001H\u0087\b¢\u0006\u0004\b\"\u0010#J%\u0010 \u001a\u0004\u0018\u0001H!\"\b\b\u0000\u0010!*\u00020\u00012\f\u0010$\u001a\b\u0012\u0004\u0012\u0002H!0%¢\u0006\u0002\u0010&J\b\u0010 \u001a\u0004\u0018\u00010\u0001J#\u0010 \u001a\u0004\u0018\u0001H!\"\u0004\b\u0000\u0010!2\u000e\u0010$\u001a\n\u0012\u0006\b\u0001\u0012\u0002H!0'¢\u0006\u0002\u0010(J\u0006\u0010)\u001a\u00020\u0003J\r\u0010\u0006\u001a\u00020\u0007H\u0007¢\u0006\u0002\b,J\r\u0010\n\u001a\u00020\u000bH\u0007¢\u0006\u0002\b-J\r\u0010\b\u001a\u00020\tH\u0007¢\u0006\u0002\b.J\u000f\u0010\f\u001a\u0004\u0018\u00010\rH\u0007¢\u0006\u0002\b/J\r\u0010*\u001a\u00020\u0019H\u0007¢\u0006\u0002\b0J\b\u00101\u001a\u00020\u000bH\u0016J\u0012\u00102\u001a\u00020\u000b2\b\b\u0002\u00103\u001a\u00020\u001bH\u0007J\f\u00104\u001a\u00020\u000b*\u00020\u000bH\u0002R\u0013\u0010\u0006\u001a\u00020\u00078\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u000fR\u0013\u0010\n\u001a\u00020\u000b8\u0007¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u0010R\u0013\u0010\b\u001a\u00020\t8\u0007¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\u0011R\u0015\u0010\f\u001a\u0004\u0018\u00010\r8\u0007¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\u0012R\u0015\u0010\u0013\u001a\u0004\u0018\u00010\u00078\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u000fR\u0014\u0010\u0014\u001a\u00020\u0015X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0017R\u0010\u0010\u0018\u001a\u0004\u0018\u00010\u0019X\u0082\u000e¢\u0006\u0002\n\u0000R\u0011\u0010\u001a\u001a\u00020\u001b8F¢\u0006\u0006\u001a\u0004\b\u001a\u0010\u001cR\u0011\u0010*\u001a\u00020\u00198G¢\u0006\u0006\u001a\u0004\b*\u0010+¨\u00066"}, d2 = {"Lokhttp3/Request;", _UrlKt.FRAGMENT_ENCODE_SET, "builder", "Lokhttp3/Request$Builder;", "<init>", "(Lokhttp3/Request$Builder;)V", "url", "Lokhttp3/HttpUrl;", "headers", "Lokhttp3/Headers;", "method", _UrlKt.FRAGMENT_ENCODE_SET, "body", "Lokhttp3/RequestBody;", "(Lokhttp3/HttpUrl;Lokhttp3/Headers;Ljava/lang/String;Lokhttp3/RequestBody;)V", "()Lokhttp3/HttpUrl;", "()Ljava/lang/String;", "()Lokhttp3/Headers;", "()Lokhttp3/RequestBody;", "cacheUrlOverride", "tags", "Lokhttp3/internal/Tags;", "getTags$okhttp", "()Lokhttp3/internal/Tags;", "lazyCacheControl", "Lokhttp3/CacheControl;", "isHttps", _UrlKt.FRAGMENT_ENCODE_SET, "()Z", "header", "name", _UrlKt.FRAGMENT_ENCODE_SET, "tag", "T", "reifiedTag", "()Ljava/lang/Object;", TeXSymbolParser.TYPE_ATTR, "Lkotlin/reflect/KClass;", "(Lkotlin/reflect/KClass;)Ljava/lang/Object;", "Ljava/lang/Class;", "(Ljava/lang/Class;)Ljava/lang/Object;", "newBuilder", "cacheControl", "()Lokhttp3/CacheControl;", "-deprecated_url", "-deprecated_method", "-deprecated_headers", "-deprecated_body", "-deprecated_cacheControl", "toString", "toCurl", "includeBody", "shellEscape", "Builder", "okhttp"}, m754k = 1, mv = {2, 2, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Request.kt\nokhttp3/Request\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,495:1\n92#1:497\n1#2:496\n1878#3,3:498\n*S KotlinDebug\n*F\n+ 1 Request.kt\nokhttp3/Request\n*L\n107#1:497\n180#1:498,3\n*E\n"})
public final class Request {
    private final RequestBody body;
    private final HttpUrl cacheUrlOverride;
    private final Headers headers;
    private CacheControl lazyCacheControl;
    private final String method;
    private final Tags tags;
    private final HttpUrl url;

    @JvmOverloads
    public final String toCurl() {
        return toCurl$default(this, false, 1, null);
    }

    public Request(Builder builder) {
        HttpUrl url = builder.getUrl();
        if (url == null) {
            Segment$$ExternalSyntheticBUOutline1.m848m("url == null");
            throw null;
        }
        this.url = url;
        this.method = builder.getMethod();
        this.headers = builder.getHeaders().build();
        this.body = builder.getBody();
        this.cacheUrlOverride = builder.getCacheUrlOverride();
        this.tags = builder.getTags();
    }

    @JvmName(name = "url")
    public final HttpUrl url() {
        return this.url;
    }

    @JvmName(name = "method")
    public final String method() {
        return this.method;
    }

    @JvmName(name = "headers")
    public final Headers headers() {
        return this.headers;
    }

    @JvmName(name = "body")
    public final RequestBody body() {
        return this.body;
    }

    @JvmName(name = "cacheUrlOverride")
    /* JADX INFO: renamed from: cacheUrlOverride, reason: from getter */
    public final HttpUrl getCacheUrlOverride() {
        return this.cacheUrlOverride;
    }

    /* JADX INFO: renamed from: getTags$okhttp, reason: from getter */
    public final Tags getTags() {
        return this.tags;
    }

    public final boolean isHttps() {
        return this.url.isHttps();
    }

    public /* synthetic */ Request(HttpUrl httpUrl, Headers headers, String str, RequestBody requestBody, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(httpUrl, (i & 2) != 0 ? Headers.INSTANCE.of(new String[0]) : headers, (i & 4) != 0 ? "\u0000" : str, (i & 8) != 0 ? null : requestBody);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public Request(HttpUrl httpUrl, Headers headers, String str, RequestBody requestBody) {
        Builder builderHeaders = new Builder().url(httpUrl).headers(headers);
        if (Intrinsics.areEqual(str, "\u0000")) {
            if (requestBody != null) {
                str = "POST";
            } else {
                str = "GET";
            }
        }
        this(builderHeaders.method(str, requestBody));
    }

    public final String header(String name) {
        return this.headers.get(name);
    }

    public final List<String> headers(String name) {
        return this.headers.values(name);
    }

    @JvmName(name = "reifiedTag")
    public final /* synthetic */ <T> T reifiedTag() {
        Intrinsics.reifiedOperationMarker(4, "T");
        return (T) tag(Reflection.getOrCreateKotlinClass(Object.class));
    }

    public final Object tag() {
        return tag(Reflection.getOrCreateKotlinClass(Object.class));
    }

    public final <T> T tag(KClass<T> type) {
        return (T) JvmClassMappingKt.getJavaClass((KClass) type).cast(this.tags.get(type));
    }

    public final <T> T tag(Class<? extends T> type) {
        return (T) tag(JvmClassMappingKt.getKotlinClass(type));
    }

    public final Builder newBuilder() {
        return new Builder(this);
    }

    @JvmName(name = "cacheControl")
    public final CacheControl cacheControl() {
        CacheControl cacheControl = this.lazyCacheControl;
        if (cacheControl != null) {
            return cacheControl;
        }
        CacheControl cacheControl2 = CacheControl.INSTANCE.parse(this.headers);
        this.lazyCacheControl = cacheControl2;
        return cacheControl2;
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = "moved to val", replaceWith = @ReplaceWith(expression = "url", imports = {}))
    @JvmName(name = "-deprecated_url")
    /* JADX INFO: renamed from: -deprecated_url, reason: not valid java name and from getter */
    public final HttpUrl getUrl() {
        return this.url;
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = "moved to val", replaceWith = @ReplaceWith(expression = "method", imports = {}))
    @JvmName(name = "-deprecated_method")
    /* JADX INFO: renamed from: -deprecated_method, reason: not valid java name and from getter */
    public final String getMethod() {
        return this.method;
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = "moved to val", replaceWith = @ReplaceWith(expression = "headers", imports = {}))
    @JvmName(name = "-deprecated_headers")
    /* JADX INFO: renamed from: -deprecated_headers, reason: not valid java name and from getter */
    public final Headers getHeaders() {
        return this.headers;
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = "moved to val", replaceWith = @ReplaceWith(expression = "body", imports = {}))
    @JvmName(name = "-deprecated_body")
    /* JADX INFO: renamed from: -deprecated_body, reason: not valid java name and from getter */
    public final RequestBody getBody() {
        return this.body;
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = "moved to val", replaceWith = @ReplaceWith(expression = "cacheControl", imports = {}))
    @JvmName(name = "-deprecated_cacheControl")
    /* JADX INFO: renamed from: -deprecated_cacheControl, reason: not valid java name */
    public final CacheControl m4994deprecated_cacheControl() {
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
            for (Pair<? extends String, ? extends String> pair : this.headers) {
                int i2 = i + 1;
                if (i < 0) {
                    CollectionsKt.throwIndexOverflow();
                }
                Pair<? extends String, ? extends String> pair2 = pair;
                String strComponent1 = pair2.component1();
                String strComponent2 = pair2.component2();
                if (i > 0) {
                    sb.append(", ");
                }
                sb.append(strComponent1);
                sb.append(':');
                if (_UtilCommonKt.isSensitiveHeader(strComponent1)) {
                    strComponent2 = "██";
                }
                sb.append(strComponent2);
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

    @Metadata(d1 = {"\u0000`\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0016\u0018\u00002\u00020\u0001B\t\b\u0016¢\u0006\u0004\b\u0002\u0010\u0003B\u0011\b\u0010\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0002\u0010\u0006J\u0010\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0007\u001a\u00020\bH\u0016J\u0010\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0007\u001a\u00020\u000eH\u0016J\u0010\u0010(\u001a\u00020\u000e2\u0006\u0010\u0007\u001a\u00020\u000eH\u0002J\u0010\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0007\u001a\u00020)H\u0016J\u0018\u0010*\u001a\u00020\u00002\u0006\u0010+\u001a\u00020\u000e2\u0006\u0010,\u001a\u00020\u000eH\u0016J\u0018\u0010-\u001a\u00020\u00002\u0006\u0010+\u001a\u00020\u000e2\u0006\u0010,\u001a\u00020\u000eH\u0016J\u0010\u0010.\u001a\u00020\u00002\u0006\u0010+\u001a\u00020\u000eH\u0016J\u0010\u0010\u0013\u001a\u00020\u00002\u0006\u0010\u0013\u001a\u00020/H\u0016J\u0010\u00100\u001a\u00020\u00002\u0006\u00100\u001a\u000201H\u0016J\b\u00102\u001a\u00020\u0000H\u0016J\b\u00103\u001a\u00020\u0000H\u0016J\u0010\u00104\u001a\u00020\u00002\u0006\u0010\u0019\u001a\u00020\u001aH\u0016J\u0014\u00105\u001a\u00020\u00002\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u001aH\u0017J\u0010\u00106\u001a\u00020\u00002\u0006\u0010\u0019\u001a\u00020\u001aH\u0016J\u0010\u00107\u001a\u00020\u00002\u0006\u0010\u0019\u001a\u00020\u001aH\u0016J\u0010\u00108\u001a\u00020\u00002\u0006\u0010\u0019\u001a\u00020\u001aH\u0016J\u001a\u0010\r\u001a\u00020\u00002\u0006\u0010\r\u001a\u00020\u000e2\b\u0010\u0019\u001a\u0004\u0018\u00010\u001aH\u0016J&\u00109\u001a\u00020\u0000\"\n\b\u0000\u0010:\u0018\u0001*\u00020\u00012\b\u00109\u001a\u0004\u0018\u0001H:H\u0087\b¢\u0006\u0004\b;\u0010<J-\u00109\u001a\u00020\u0000\"\b\b\u0000\u0010:*\u00020\u00012\f\u0010=\u001a\b\u0012\u0004\u0012\u0002H:0>2\b\u00109\u001a\u0004\u0018\u0001H:¢\u0006\u0002\u0010?J\u0012\u00109\u001a\u00020\u00002\b\u00109\u001a\u0004\u0018\u00010\u0001H\u0016J-\u00109\u001a\u00020\u0000\"\u0004\b\u0000\u0010:2\u000e\u0010=\u001a\n\u0012\u0006\b\u0000\u0012\u0002H:0@2\b\u00109\u001a\u0004\u0018\u0001H:H\u0016¢\u0006\u0002\u0010AJ\u0010\u0010\u001f\u001a\u00020\u00002\b\u0010\u001f\u001a\u0004\u0018\u00010\bJ\u0006\u0010B\u001a\u00020\u0000J\b\u0010C\u001a\u00020\u0005H\u0016R\u001c\u0010\u0007\u001a\u0004\u0018\u00010\bX\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR\u001a\u0010\r\u001a\u00020\u000eX\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012R\u001a\u0010\u0013\u001a\u00020\u0014X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018R\u001c\u0010\u0019\u001a\u0004\u0018\u00010\u001aX\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001b\u0010\u001c\"\u0004\b\u001d\u0010\u001eR\u001c\u0010\u001f\u001a\u0004\u0018\u00010\bX\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b \u0010\n\"\u0004\b!\u0010\fR\u001a\u0010\"\u001a\u00020#X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b$\u0010%\"\u0004\b&\u0010'¨\u0006D"}, d2 = {"Lokhttp3/Request$Builder;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "request", "Lokhttp3/Request;", "(Lokhttp3/Request;)V", "url", "Lokhttp3/HttpUrl;", "getUrl$okhttp", "()Lokhttp3/HttpUrl;", "setUrl$okhttp", "(Lokhttp3/HttpUrl;)V", "method", _UrlKt.FRAGMENT_ENCODE_SET, "getMethod$okhttp", "()Ljava/lang/String;", "setMethod$okhttp", "(Ljava/lang/String;)V", "headers", "Lokhttp3/Headers$Builder;", "getHeaders$okhttp", "()Lokhttp3/Headers$Builder;", "setHeaders$okhttp", "(Lokhttp3/Headers$Builder;)V", "body", "Lokhttp3/RequestBody;", "getBody$okhttp", "()Lokhttp3/RequestBody;", "setBody$okhttp", "(Lokhttp3/RequestBody;)V", "cacheUrlOverride", "getCacheUrlOverride$okhttp", "setCacheUrlOverride$okhttp", "tags", "Lokhttp3/internal/Tags;", "getTags$okhttp", "()Lokhttp3/internal/Tags;", "setTags$okhttp", "(Lokhttp3/internal/Tags;)V", "canonicalUrl", "Ljava/net/URL;", "header", "name", "value", "addHeader", "removeHeader", "Lokhttp3/Headers;", "cacheControl", "Lokhttp3/CacheControl;", "get", "head", "post", "delete", "put", "patch", "query", "tag", "T", "reifiedTag", "(Ljava/lang/Object;)Lokhttp3/Request$Builder;", TeXSymbolParser.TYPE_ATTR, "Lkotlin/reflect/KClass;", "(Lkotlin/reflect/KClass;Ljava/lang/Object;)Lokhttp3/Request$Builder;", "Ljava/lang/Class;", "(Ljava/lang/Class;Ljava/lang/Object;)Lokhttp3/Request$Builder;", "gzip", "build", "okhttp"}, m754k = 1, mv = {2, 2, 0}, xi = 48)
    public static class Builder {
        private RequestBody body;
        private HttpUrl cacheUrlOverride;
        private Headers.Builder headers;
        private String method;
        private Tags tags;
        private HttpUrl url;

        @JvmOverloads
        public final Builder delete() {
            return delete$default(this, null, 1, null);
        }

        /* JADX INFO: renamed from: getUrl$okhttp, reason: from getter */
        public final HttpUrl getUrl() {
            return this.url;
        }

        public final void setUrl$okhttp(HttpUrl httpUrl) {
            this.url = httpUrl;
        }

        /* JADX INFO: renamed from: getMethod$okhttp, reason: from getter */
        public final String getMethod() {
            return this.method;
        }

        public final void setMethod$okhttp(String str) {
            this.method = str;
        }

        /* JADX INFO: renamed from: getHeaders$okhttp, reason: from getter */
        public final Headers.Builder getHeaders() {
            return this.headers;
        }

        public final void setHeaders$okhttp(Headers.Builder builder) {
            this.headers = builder;
        }

        /* JADX INFO: renamed from: getBody$okhttp, reason: from getter */
        public final RequestBody getBody() {
            return this.body;
        }

        public final void setBody$okhttp(RequestBody requestBody) {
            this.body = requestBody;
        }

        /* JADX INFO: renamed from: getCacheUrlOverride$okhttp, reason: from getter */
        public final HttpUrl getCacheUrlOverride() {
            return this.cacheUrlOverride;
        }

        public final void setCacheUrlOverride$okhttp(HttpUrl httpUrl) {
            this.cacheUrlOverride = httpUrl;
        }

        /* JADX INFO: renamed from: getTags$okhttp, reason: from getter */
        public final Tags getTags() {
            return this.tags;
        }

        public final void setTags$okhttp(Tags tags) {
            this.tags = tags;
        }

        public Builder() {
            this.tags = EmptyTags.INSTANCE;
            this.method = "GET";
            this.headers = new Headers.Builder();
        }

        public Builder(Request request) {
            this.tags = EmptyTags.INSTANCE;
            this.url = request.url();
            this.method = request.method();
            this.body = request.body();
            this.tags = request.getTags();
            this.headers = request.headers().newBuilder();
            this.cacheUrlOverride = request.getCacheUrlOverride();
        }

        public Builder url(HttpUrl url) {
            this.url = url;
            return this;
        }

        public Builder url(String url) {
            return url(HttpUrl.INSTANCE.get(canonicalUrl(url)));
        }

        private final String canonicalUrl(String url) {
            return StringsKt.startsWith(url, "ws:", true) ? "http:".concat(url.substring(3)) : StringsKt.startsWith(url, "wss:", true) ? "https:".concat(url.substring(4)) : url;
        }

        public Builder url(URL url) {
            return url(HttpUrl.INSTANCE.get(url.toString()));
        }

        public Builder header(String name, String value) {
            this.headers.set(name, value);
            return this;
        }

        public Builder addHeader(String name, String value) {
            this.headers.add(name, value);
            return this;
        }

        public Builder removeHeader(String name) {
            this.headers.removeAll(name);
            return this;
        }

        public Builder headers(Headers headers) {
            this.headers = headers.newBuilder();
            return this;
        }

        public Builder cacheControl(CacheControl cacheControl) {
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
            return method("POST", body);
        }

        public static /* synthetic */ Builder delete$default(Builder builder, RequestBody requestBody, int i, Object obj) {
            if (obj != null) {
                ByteString$$ExternalSyntheticBUOutline0.m838m("Super calls with default arguments not supported in this target, function: delete");
                return null;
            }
            if ((i & 1) != 0) {
                requestBody = RequestBody.EMPTY;
            }
            return builder.delete(requestBody);
        }

        @JvmOverloads
        public Builder delete(RequestBody body) {
            return method("DELETE", body);
        }

        public Builder put(RequestBody body) {
            return method("PUT", body);
        }

        public Builder patch(RequestBody body) {
            return method("PATCH", body);
        }

        public Builder query(RequestBody body) {
            return method("QUERY", body);
        }

        public Builder method(String method, RequestBody body) {
            if (method.length() <= 0) {
                f$$ExternalSyntheticBUOutline1.m178m("method.isEmpty() == true");
                return null;
            }
            if (body == null) {
                if (HttpMethod.requiresRequestBody(method)) {
                    Request$Builder$$ExternalSyntheticBUOutline0.m822m("method ", method, " must have a request body.");
                    return null;
                }
            } else if (!HttpMethod.permitsRequestBody(method)) {
                Request$Builder$$ExternalSyntheticBUOutline0.m822m("method ", method, " must not have a request body.");
                return null;
            }
            this.method = method;
            this.body = body;
            return this;
        }

        @JvmName(name = "reifiedTag")
        public final /* synthetic */ <T> Builder reifiedTag(T tag) {
            Intrinsics.reifiedOperationMarker(4, "T");
            return tag(Reflection.getOrCreateKotlinClass(Object.class), tag);
        }

        public final <T> Builder tag(KClass<T> type, T tag) {
            this.tags = this.tags.plus(type, tag);
            return this;
        }

        public Builder tag(Object tag) {
            return tag((KClass<Object>) Reflection.getOrCreateKotlinClass(Object.class), tag);
        }

        public <T> Builder tag(Class<? super T> type, T tag) {
            return tag(JvmClassMappingKt.getKotlinClass(type), tag);
        }

        public final Builder cacheUrlOverride(HttpUrl cacheUrlOverride) {
            this.cacheUrlOverride = cacheUrlOverride;
            return this;
        }

        public final Builder gzip() {
            RequestBody requestBody = this.body;
            if (requestBody == null) {
                Segment$$ExternalSyntheticBUOutline1.m848m("cannot gzip a request that has no body");
                return null;
            }
            String str = this.headers.get("Content-Encoding");
            if (str != null) {
                OkHttpClient$$ExternalSyntheticBUOutline0.m820m("Content-Encoding already set: ", str);
                return null;
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

    @JvmOverloads
    public final String toCurl(boolean includeBody) {
        MediaType mediaTypeContentType;
        StringBuilder sb = new StringBuilder();
        sb.append("curl " + shellEscape(this.url.getUrl()));
        RequestBody requestBody = this.body;
        String string = (requestBody == null || (mediaTypeContentType = requestBody.getContentType()) == null) ? null : mediaTypeContentType.toString();
        if (!Intrinsics.areEqual(this.method, (!includeBody || this.body == null) ? "GET" : "POST")) {
            sb.append(" \\\n  -X " + shellEscape(this.method));
        }
        for (Pair<? extends String, ? extends String> pair : this.headers) {
            String strComponent1 = pair.component1();
            String strComponent2 = pair.component2();
            if (string == null || !StringsKt.equals(strComponent1, "Content-Type", true)) {
                StringBuilder sb2 = new StringBuilder(" \\\n  -H ");
                sb2.append(shellEscape(strComponent1 + ": " + strComponent2));
                sb.append(sb2.toString());
            }
        }
        if (string != null) {
            sb.append(" \\\n  -H " + shellEscape("Content-Type: ".concat(string)));
        }
        if (includeBody && this.body != null) {
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
        return "'" + StringsKt.replace$default(str, "'", "'\\''", false, 4, (Object) null) + '\'';
    }
}
