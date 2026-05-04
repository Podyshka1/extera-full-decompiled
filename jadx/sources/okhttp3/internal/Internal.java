package okhttp3.internal;

import java.nio.charset.Charset;
import javax.net.ssl.SSLSocket;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;
import okhttp3.Cache;
import okhttp3.CipherSuite;
import okhttp3.ConnectionPool;
import okhttp3.ConnectionSpec;
import okhttp3.Cookie;
import okhttp3.Headers;
import okhttp3.HttpUrl;
import okhttp3.MediaType;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.internal.concurrent.TaskRunner;
import okhttp3.internal.connection.ConnectionListener;
import okhttp3.internal.connection.Exchange;
import okhttp3.internal.connection.RealConnection;

/* JADX INFO: loaded from: classes.dex */
public final class Internal {
    public static final Cookie parseCookie(long j, HttpUrl url, String setCookie) {
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(setCookie, "setCookie");
        return Cookie.Companion.parse$okhttp(j, url, setCookie);
    }

    public static final String cookieToString(Cookie cookie, boolean z) {
        Intrinsics.checkNotNullParameter(cookie, "cookie");
        return cookie.toString$okhttp(z);
    }

    public static final Headers.Builder addHeaderLenient(Headers.Builder builder, String line) {
        Intrinsics.checkNotNullParameter(builder, "builder");
        Intrinsics.checkNotNullParameter(line, "line");
        return builder.addLenient$okhttp(line);
    }

    public static final Headers.Builder addHeaderLenient(Headers.Builder builder, String name, String value) {
        Intrinsics.checkNotNullParameter(builder, "builder");
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(value, "value");
        return builder.addLenient$okhttp(name, value);
    }

    public static final Response cacheGet(Cache cache, Request request) {
        Intrinsics.checkNotNullParameter(cache, "cache");
        Intrinsics.checkNotNullParameter(request, "request");
        return cache.get$okhttp(request);
    }

    public static final void applyConnectionSpec(ConnectionSpec connectionSpec, SSLSocket sslSocket, boolean z) {
        Intrinsics.checkNotNullParameter(connectionSpec, "connectionSpec");
        Intrinsics.checkNotNullParameter(sslSocket, "sslSocket");
        connectionSpec.apply$okhttp(sslSocket, z);
    }

    public static final String[] effectiveCipherSuites(ConnectionSpec connectionSpec, String[] socketEnabledCipherSuites) {
        Intrinsics.checkNotNullParameter(connectionSpec, "<this>");
        Intrinsics.checkNotNullParameter(socketEnabledCipherSuites, "socketEnabledCipherSuites");
        return connectionSpec.getCipherSuitesAsString$okhttp() != null ? _UtilCommonKt.intersect(connectionSpec.getCipherSuitesAsString$okhttp(), socketEnabledCipherSuites, CipherSuite.Companion.getORDER_BY_NAME$okhttp()) : socketEnabledCipherSuites;
    }

    public static final Pair chooseCharset(MediaType mediaType) {
        Charset charset = Charsets.UTF_8;
        if (mediaType != null) {
            Charset charsetCharset$default = MediaType.charset$default(mediaType, null, 1, null);
            if (charsetCharset$default == null) {
                mediaType = MediaType.Companion.parse(mediaType + "; charset=utf-8");
            } else {
                charset = charsetCharset$default;
            }
        }
        return TuplesKt.m1081to(charset, mediaType);
    }

    public static final Charset charsetOrUtf8(MediaType mediaType) {
        Charset charsetCharset$default;
        return (mediaType == null || (charsetCharset$default = MediaType.charset$default(mediaType, null, 1, null)) == null) ? Charsets.UTF_8 : charsetCharset$default;
    }

    public static final RealConnection getConnection(Response response) {
        Intrinsics.checkNotNullParameter(response, "<this>");
        Exchange exchange = response.exchange();
        Intrinsics.checkNotNull(exchange);
        return exchange.getConnection$okhttp();
    }

    public static final OkHttpClient.Builder taskRunnerInternal(OkHttpClient.Builder builder, TaskRunner taskRunner) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(taskRunner, "taskRunner");
        return builder.taskRunner$okhttp(taskRunner);
    }

    public static final ConnectionPool buildConnectionPool(ConnectionListener connectionListener, TaskRunner taskRunner) {
        Intrinsics.checkNotNullParameter(connectionListener, "connectionListener");
        Intrinsics.checkNotNullParameter(taskRunner, "taskRunner");
        return new ConnectionPool(0, 0L, null, taskRunner, connectionListener, 7, null);
    }
}
