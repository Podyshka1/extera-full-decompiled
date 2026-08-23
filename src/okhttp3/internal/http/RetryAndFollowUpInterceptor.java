package okhttp3.internal.http;

import com.google.android.gms.cast.MediaError;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.ProtocolException;
import java.net.Proxy;
import java.net.SocketTimeoutException;
import java.security.cert.CertificateException;
import java.util.Collection;
import java.util.List;
import javax.net.ssl.SSLHandshakeException;
import javax.net.ssl.SSLPeerUnverifiedException;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
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
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\u0018\u0000 \u001f2\u00020\u0001:\u0001\u001fB\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u0010\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tH\u0016J \u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0002J\u0018\u0010\u0012\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\u0011H\u0002J\u0018\u0010\u0013\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u0014\u001a\u00020\u000bH\u0002J\u001c\u0010\u0015\u001a\u0004\u0018\u00010\u00112\u0006\u0010\u0016\u001a\u00020\u00072\b\u0010\u0017\u001a\u0004\u0018\u00010\u0018H\u0002J\u001a\u0010\u0019\u001a\u0004\u0018\u00010\u00112\u0006\u0010\u0016\u001a\u00020\u00072\u0006\u0010\u001a\u001a\u00020\u001bH\u0002J\u0018\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u0016\u001a\u00020\u00072\u0006\u0010\u001e\u001a\u00020\u001dH\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006 "}, d2 = {"Lokhttp3/internal/http/RetryAndFollowUpInterceptor;", "Lokhttp3/Interceptor;", "client", "Lokhttp3/OkHttpClient;", "<init>", "(Lokhttp3/OkHttpClient;)V", "intercept", "Lokhttp3/Response;", "chain", "Lokhttp3/Interceptor$Chain;", "recover", _UrlKt.FRAGMENT_ENCODE_SET, "e", "Ljava/io/IOException;", "call", "Lokhttp3/internal/connection/RealCall;", "userRequest", "Lokhttp3/Request;", "requestIsOneShot", "isRecoverable", "requestSendStarted", "followUpRequest", "userResponse", "exchange", "Lokhttp3/internal/connection/Exchange;", "buildRedirectRequest", "method", _UrlKt.FRAGMENT_ENCODE_SET, "retryAfter", _UrlKt.FRAGMENT_ENCODE_SET, "defaultDelay", "Companion", "okhttp"}, m754k = 1, mv = {2, 2, 0}, xi = 48)
public final class RetryAndFollowUpInterceptor implements Interceptor {
    private static final int MAX_FOLLOW_UPS = 20;
    private final OkHttpClient client;

    public RetryAndFollowUpInterceptor(OkHttpClient okHttpClient) {
        this.client = okHttpClient;
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x002b, code lost:
    
        r6 = okhttp3.internal.UnreadableResponseBodyKt.stripBody(r7);
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x0034, code lost:
    
        r6 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0035, code lost:
    
        r7 = r0.priorResponse(r6).build();
        r0 = r1.getInterceptorScopedExchange();
        r6 = followUpRequest(r7, r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0045, code lost:
    
        if (r6 != null) goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0047, code lost:
    
        if (r0 == null) goto L20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x004d, code lost:
    
        if (r0.getIsDuplex() == false) goto L20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x004f, code lost:
    
        r1.timeoutEarlyExit();
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0052, code lost:
    
        r1.getEventListener().followUpDecision(r1, r7, null);
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0059, code lost:
    
        r1.exitNetworkInterceptorExchange$okhttp(false);
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x005c, code lost:
    
        return r7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x005d, code lost:
    
        r11 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0060, code lost:
    
        r0 = r6.body();
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0064, code lost:
    
        if (r0 == null) goto L32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x006a, code lost:
    
        if (r0.isOneShot() == false) goto L32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x006c, code lost:
    
        r1.getEventListener().followUpDecision(r1, r7, null);
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x0073, code lost:
    
        r1.exitNetworkInterceptorExchange$okhttp(false);
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0076, code lost:
    
        return r7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0077, code lost:
    
        okhttp3.internal._UtilCommonKt.closeQuietly(r7.body());
        r8 = r8 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0082, code lost:
    
        if (r8 > 20) goto L56;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x0084, code lost:
    
        r1.getEventListener().followUpDecision(r1, r7, r6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0090, code lost:
    
        r1.getEventListener().followUpDecision(r1, r7, null);
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x00ad, code lost:
    
        throw new java.net.ProtocolException("Too many follow-up requests: " + r8);
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x0021, code lost:
    
        r0 = r12.proceed(r0).newBuilder().request(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0029, code lost:
    
        if (r7 == null) goto L13;
     */
    @Override // okhttp3.Interceptor
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Response intercept(Interceptor.Chain chain) throws Throwable {
        Request requestFollowUpRequest;
        RealInterceptorChain realInterceptorChain = (RealInterceptorChain) chain;
        Request request = realInterceptorChain.getRequest();
        RealCall call = realInterceptorChain.getCall();
        List listEmptyList = CollectionsKt.emptyList();
        boolean z = false;
        int i = 0;
        Response responseBuild = null;
        while (true) {
            boolean z2 = true;
            while (true) {
                call.enterNetworkInterceptorExchange(request, z2, realInterceptorChain);
                try {
                    if (call.getCanceled()) {
                        throw new IOException("Canceled");
                    }
                    try {
                        break;
                    } catch (IOException e) {
                        boolean zRecover = recover(e, call, request);
                        call.getEventListener().retryDecision(call, e, zRecover);
                        if (!zRecover) {
                            throw _UtilCommonKt.withSuppressed(e, listEmptyList);
                        }
                        listEmptyList = CollectionsKt.plus((Collection<? extends IOException>) listEmptyList, e);
                        call.exitNetworkInterceptorExchange$okhttp(true);
                        z2 = false;
                    }
                } catch (Throwable th) {
                    th = th;
                    z = true;
                }
                call.exitNetworkInterceptorExchange$okhttp(z);
                throw th;
            }
            call.exitNetworkInterceptorExchange$okhttp(true);
            request = requestFollowUpRequest;
        }
    }

    private final boolean recover(IOException e, RealCall call, Request userRequest) {
        boolean z = e instanceof ConnectionShutdownException;
        boolean z2 = !z;
        if (this.client.retryOnConnectionFailure()) {
            return (z || !requestIsOneShot(e, userRequest)) && isRecoverable(e, z2) && call.retryAfterFailure();
        }
        return false;
    }

    private final boolean requestIsOneShot(IOException e, Request userRequest) {
        RequestBody requestBodyBody = userRequest.body();
        return (requestBodyBody != null && requestBodyBody.isOneShot()) || (e instanceof FileNotFoundException);
    }

    private final boolean isRecoverable(IOException e, boolean requestSendStarted) {
        if (e instanceof ProtocolException) {
            return false;
        }
        return e instanceof InterruptedIOException ? (e instanceof SocketTimeoutException) && !requestSendStarted : (((e instanceof SSLHandshakeException) && (e.getCause() instanceof CertificateException)) || (e instanceof SSLPeerUnverifiedException)) ? false : true;
    }

    private final Request followUpRequest(Response userResponse, Exchange exchange) throws ProtocolException {
        RealConnection connection$okhttp;
        Route route = (exchange == null || (connection$okhttp = exchange.getConnection$okhttp()) == null) ? null : connection$okhttp.route();
        int iCode = userResponse.code();
        String strMethod = userResponse.request().method();
        if (iCode != 307 && iCode != 308) {
            if (iCode == 401) {
                return this.client.authenticator().authenticate(route, userResponse);
            }
            if (iCode == 421) {
                RequestBody requestBodyBody = userResponse.request().body();
                if ((requestBodyBody != null && requestBodyBody.isOneShot()) || exchange == null || !exchange.isCoalescedConnection$okhttp()) {
                    return null;
                }
                exchange.getConnection$okhttp().noCoalescedConnections$okhttp();
                return userResponse.request();
            }
            if (iCode == 503) {
                Response responsePriorResponse = userResponse.priorResponse();
                if ((responsePriorResponse == null || responsePriorResponse.code() != 503) && retryAfter(userResponse, Integer.MAX_VALUE) == 0) {
                    return userResponse.request();
                }
                return null;
            }
            if (iCode == 407) {
                if (route.proxy().type() != Proxy.Type.HTTP) {
                    throw new ProtocolException("Received HTTP_PROXY_AUTH (407) code while not using proxy");
                }
                return this.client.proxyAuthenticator().authenticate(route, userResponse);
            }
            if (iCode == 408) {
                if (!this.client.retryOnConnectionFailure()) {
                    return null;
                }
                RequestBody requestBodyBody2 = userResponse.request().body();
                if (requestBodyBody2 != null && requestBodyBody2.isOneShot()) {
                    return null;
                }
                Response responsePriorResponse2 = userResponse.priorResponse();
                if ((responsePriorResponse2 == null || responsePriorResponse2.code() != 408) && retryAfter(userResponse, 0) <= 0) {
                    return userResponse.request();
                }
                return null;
            }
            switch (iCode) {
                case 300:
                case MediaError.DetailedErrorCode.SEGMENT_NETWORK /* 301 */:
                case 302:
                case 303:
                    break;
                default:
                    return null;
            }
        }
        return buildRedirectRequest(userResponse, strMethod);
    }

    private final Request buildRedirectRequest(Response userResponse, String method) {
        String strHeader$default;
        HttpUrl httpUrlResolve;
        if (!this.client.followRedirects() || (strHeader$default = Response.header$default(userResponse, "Location", null, 2, null)) == null || (httpUrlResolve = userResponse.request().url().resolve(strHeader$default)) == null) {
            return null;
        }
        if (!Intrinsics.areEqual(httpUrlResolve.scheme(), userResponse.request().url().scheme()) && !this.client.followSslRedirects()) {
            return null;
        }
        Request.Builder builderNewBuilder = userResponse.request().newBuilder();
        if (HttpMethod.permitsRequestBody(method)) {
            int iCode = userResponse.code();
            HttpMethod httpMethod = HttpMethod.INSTANCE;
            boolean z = httpMethod.redirectsWithBody(method) || iCode == 308 || iCode == 307;
            if (httpMethod.redirectsToGet(method) && iCode != 308 && iCode != 307) {
                builderNewBuilder.method("GET", null);
            } else {
                builderNewBuilder.method(method, z ? userResponse.request().body() : null);
            }
            if (!z) {
                builderNewBuilder.removeHeader("Transfer-Encoding");
                builderNewBuilder.removeHeader("Content-Length");
                builderNewBuilder.removeHeader("Content-Type");
            }
        }
        if (!_UtilJvmKt.canReuseConnectionFor(userResponse.request().url(), httpUrlResolve)) {
            builderNewBuilder.removeHeader("Authorization");
        }
        return builderNewBuilder.url(httpUrlResolve).build();
    }

    private final int retryAfter(Response userResponse, int defaultDelay) {
        String strHeader$default = Response.header$default(userResponse, "Retry-After", null, 2, null);
        if (strHeader$default == null) {
            return defaultDelay;
        }
        if (new Regex("\\d+").matches(strHeader$default)) {
            return Integer.valueOf(strHeader$default).intValue();
        }
        return Integer.MAX_VALUE;
    }
}
