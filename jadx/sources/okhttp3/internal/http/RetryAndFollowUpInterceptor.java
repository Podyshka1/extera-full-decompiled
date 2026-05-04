package okhttp3.internal.http;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.ProtocolException;
import java.net.Proxy;
import java.net.SocketTimeoutException;
import java.security.cert.CertificateException;
import java.util.List;
import javax.net.ssl.SSLHandshakeException;
import javax.net.ssl.SSLPeerUnverifiedException;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Regex;
import okhttp3.HttpUrl;
import okhttp3.Interceptor;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.Response;
import okhttp3.Route;
import okhttp3.internal._UtilCommonKt;
import okhttp3.internal._UtilJvmKt;
import okhttp3.internal.connection.Exchange;
import okhttp3.internal.connection.RealCall;
import okhttp3.internal.connection.RealConnection;
import okhttp3.internal.http2.ConnectionShutdownException;

/* JADX INFO: loaded from: classes.dex */
public final class RetryAndFollowUpInterceptor implements Interceptor {
    public static final Companion Companion = new Companion(null);
    private static final int MAX_FOLLOW_UPS = 20;
    private final OkHttpClient client;

    public RetryAndFollowUpInterceptor(OkHttpClient client) {
        Intrinsics.checkNotNullParameter(client, "client");
        this.client = client;
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0030, code lost:
    
        r6 = okhttp3.internal.UnreadableResponseBodyKt.stripBody(r7);
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x0039, code lost:
    
        r6 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x003a, code lost:
    
        r7 = r0.priorResponse(r6).build();
        r0 = r1.getInterceptorScopedExchange$okhttp();
        r6 = followUpRequest(r7, r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x004a, code lost:
    
        if (r6 != null) goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x004c, code lost:
    
        if (r0 == null) goto L20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0052, code lost:
    
        if (r0.isDuplex$okhttp() == false) goto L20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0054, code lost:
    
        r1.timeoutEarlyExit();
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0057, code lost:
    
        r1.getEventListener$okhttp().followUpDecision(r1, r7, null);
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x005e, code lost:
    
        r1.exitNetworkInterceptorExchange$okhttp(false);
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0061, code lost:
    
        return r7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0062, code lost:
    
        r12 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0065, code lost:
    
        r0 = r6.body();
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0069, code lost:
    
        if (r0 == null) goto L32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x006f, code lost:
    
        if (r0.isOneShot() == false) goto L32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0071, code lost:
    
        r1.getEventListener$okhttp().followUpDecision(r1, r7, null);
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x0078, code lost:
    
        r1.exitNetworkInterceptorExchange$okhttp(false);
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x007b, code lost:
    
        return r7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x007c, code lost:
    
        okhttp3.internal._UtilCommonKt.closeQuietly(r7.body());
        r8 = r8 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0087, code lost:
    
        if (r8 > 20) goto L56;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x0089, code lost:
    
        r1.getEventListener$okhttp().followUpDecision(r1, r7, r6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0095, code lost:
    
        r1.getEventListener$okhttp().followUpDecision(r1, r7, null);
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x00b2, code lost:
    
        throw new java.net.ProtocolException("Too many follow-up requests: " + r8);
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x0026, code lost:
    
        r0 = r12.proceed(r0).newBuilder().request(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x002e, code lost:
    
        if (r7 == null) goto L13;
     */
    @Override // okhttp3.Interceptor
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Response intercept(Interceptor.Chain chain) throws Throwable {
        Request requestFollowUpRequest;
        Intrinsics.checkNotNullParameter(chain, "chain");
        RealInterceptorChain realInterceptorChain = (RealInterceptorChain) chain;
        Request request$okhttp = realInterceptorChain.getRequest$okhttp();
        RealCall call$okhttp = realInterceptorChain.getCall$okhttp();
        List listEmptyList = CollectionsKt.emptyList();
        boolean z = false;
        int i = 0;
        Response responseBuild = null;
        while (true) {
            boolean z2 = true;
            while (true) {
                call$okhttp.enterNetworkInterceptorExchange(request$okhttp, z2, realInterceptorChain);
                try {
                    if (call$okhttp.isCanceled()) {
                        throw new IOException("Canceled");
                    }
                    try {
                        break;
                    } catch (IOException e) {
                        boolean zRecover = recover(e, call$okhttp, request$okhttp);
                        call$okhttp.getEventListener$okhttp().retryDecision(call$okhttp, e, zRecover);
                        if (!zRecover) {
                            throw _UtilCommonKt.withSuppressed(e, listEmptyList);
                        }
                        listEmptyList = CollectionsKt.plus(listEmptyList, e);
                        call$okhttp.exitNetworkInterceptorExchange$okhttp(true);
                        z2 = false;
                    }
                } catch (Throwable th) {
                    th = th;
                    z = true;
                }
                call$okhttp.exitNetworkInterceptorExchange$okhttp(z);
                throw th;
            }
            call$okhttp.exitNetworkInterceptorExchange$okhttp(true);
            request$okhttp = requestFollowUpRequest;
        }
    }

    private final boolean recover(IOException iOException, RealCall realCall, Request request) {
        boolean z = iOException instanceof ConnectionShutdownException;
        boolean z2 = !z;
        if (this.client.retryOnConnectionFailure()) {
            return (z || !requestIsOneShot(iOException, request)) && isRecoverable(iOException, z2) && realCall.retryAfterFailure();
        }
        return false;
    }

    private final boolean requestIsOneShot(IOException iOException, Request request) {
        RequestBody requestBodyBody = request.body();
        return (requestBodyBody != null && requestBodyBody.isOneShot()) || (iOException instanceof FileNotFoundException);
    }

    private final boolean isRecoverable(IOException iOException, boolean z) {
        if (iOException instanceof ProtocolException) {
            return false;
        }
        return iOException instanceof InterruptedIOException ? (iOException instanceof SocketTimeoutException) && !z : (((iOException instanceof SSLHandshakeException) && (iOException.getCause() instanceof CertificateException)) || (iOException instanceof SSLPeerUnverifiedException)) ? false : true;
    }

    private final Request followUpRequest(Response response, Exchange exchange) throws ProtocolException {
        RealConnection connection$okhttp;
        Route route = (exchange == null || (connection$okhttp = exchange.getConnection$okhttp()) == null) ? null : connection$okhttp.route();
        int iCode = response.code();
        String strMethod = response.request().method();
        if (iCode != 307 && iCode != 308) {
            if (iCode == 401) {
                return this.client.authenticator().authenticate(route, response);
            }
            if (iCode == 421) {
                RequestBody requestBodyBody = response.request().body();
                if ((requestBodyBody != null && requestBodyBody.isOneShot()) || exchange == null || !exchange.isCoalescedConnection$okhttp()) {
                    return null;
                }
                exchange.getConnection$okhttp().noCoalescedConnections$okhttp();
                return response.request();
            }
            if (iCode == 503) {
                Response responsePriorResponse = response.priorResponse();
                if ((responsePriorResponse == null || responsePriorResponse.code() != 503) && retryAfter(response, Integer.MAX_VALUE) == 0) {
                    return response.request();
                }
                return null;
            }
            if (iCode == 407) {
                Intrinsics.checkNotNull(route);
                if (route.proxy().type() != Proxy.Type.HTTP) {
                    throw new ProtocolException("Received HTTP_PROXY_AUTH (407) code while not using proxy");
                }
                return this.client.proxyAuthenticator().authenticate(route, response);
            }
            if (iCode == 408) {
                if (!this.client.retryOnConnectionFailure()) {
                    return null;
                }
                RequestBody requestBodyBody2 = response.request().body();
                if (requestBodyBody2 != null && requestBodyBody2.isOneShot()) {
                    return null;
                }
                Response responsePriorResponse2 = response.priorResponse();
                if ((responsePriorResponse2 == null || responsePriorResponse2.code() != 408) && retryAfter(response, 0) <= 0) {
                    return response.request();
                }
                return null;
            }
            switch (iCode) {
                case 300:
                case 301:
                case 302:
                case 303:
                    break;
                default:
                    return null;
            }
        }
        return buildRedirectRequest(response, strMethod);
    }

    private final Request buildRedirectRequest(Response response, String str) {
        String strHeader$default;
        HttpUrl httpUrlResolve;
        if (!this.client.followRedirects() || (strHeader$default = Response.header$default(response, "Location", null, 2, null)) == null || (httpUrlResolve = response.request().url().resolve(strHeader$default)) == null) {
            return null;
        }
        if (!Intrinsics.areEqual(httpUrlResolve.scheme(), response.request().url().scheme()) && !this.client.followSslRedirects()) {
            return null;
        }
        Request.Builder builderNewBuilder = response.request().newBuilder();
        if (HttpMethod.permitsRequestBody(str)) {
            int iCode = response.code();
            HttpMethod httpMethod = HttpMethod.INSTANCE;
            boolean z = httpMethod.redirectsWithBody(str) || iCode == 308 || iCode == 307;
            if (httpMethod.redirectsToGet(str) && iCode != 308 && iCode != 307) {
                builderNewBuilder.method("GET", null);
            } else {
                builderNewBuilder.method(str, z ? response.request().body() : null);
            }
            if (!z) {
                builderNewBuilder.removeHeader("Transfer-Encoding");
                builderNewBuilder.removeHeader("Content-Length");
                builderNewBuilder.removeHeader("Content-Type");
            }
        }
        if (!_UtilJvmKt.canReuseConnectionFor(response.request().url(), httpUrlResolve)) {
            builderNewBuilder.removeHeader("Authorization");
        }
        return builderNewBuilder.url(httpUrlResolve).build();
    }

    private final int retryAfter(Response response, int i) {
        String strHeader$default = Response.header$default(response, "Retry-After", null, 2, null);
        if (strHeader$default == null) {
            return i;
        }
        if (!new Regex("\\d+").matches(strHeader$default)) {
            return Integer.MAX_VALUE;
        }
        Integer numValueOf = Integer.valueOf(strHeader$default);
        Intrinsics.checkNotNullExpressionValue(numValueOf, "valueOf(...)");
        return numValueOf.intValue();
    }

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
