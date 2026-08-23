package okhttp3.internal.http;

import java.io.IOException;
import java.net.ProtocolException;
import kotlin.ExceptionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import okhttp3.Headers;
import okhttp3.Interceptor;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.Response;
import okhttp3.ResponseBody;
import okhttp3.TrailersSource;
import okhttp3.internal.UnreadableResponseBody;
import okhttp3.internal._UtilJvmKt;
import okhttp3.internal.connection.Exchange;
import okhttp3.internal.http2.ConnectionShutdownException;
import okio.BufferedSink;
import okio.BufferedSource;
import okio.Okio;

/* JADX INFO: loaded from: classes.dex */
public final class CallServerInterceptor implements Interceptor {
    public static final CallServerInterceptor INSTANCE = new CallServerInterceptor();

    private final boolean shouldIgnoreAndWaitForRealResponse(int i) {
        if (i == 100) {
            return true;
        }
        return 102 <= i && i < 200;
    }

    private CallServerInterceptor() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:94:0x020b  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x020f  */
    /* JADX WARN: Type inference failed for: r0v10, types: [okhttp3.Response$Builder] */
    /* JADX WARN: Type inference failed for: r0v37 */
    /* JADX WARN: Type inference failed for: r0v5 */
    /* JADX WARN: Type inference failed for: r0v6 */
    /* JADX WARN: Type inference failed for: r0v7, types: [java.lang.Object, okhttp3.Response$Builder] */
    /* JADX WARN: Type inference failed for: r17v0 */
    /* JADX WARN: Type inference failed for: r6v10 */
    /* JADX WARN: Type inference failed for: r6v17 */
    /* JADX WARN: Type inference failed for: r6v19 */
    /* JADX WARN: Type inference failed for: r6v2 */
    /* JADX WARN: Type inference failed for: r6v20 */
    /* JADX WARN: Type inference failed for: r6v21 */
    /* JADX WARN: Type inference failed for: r6v22 */
    /* JADX WARN: Type inference failed for: r6v23 */
    /* JADX WARN: Type inference failed for: r6v24 */
    /* JADX WARN: Type inference failed for: r6v3 */
    /* JADX WARN: Type inference failed for: r6v4 */
    /* JADX WARN: Type inference failed for: r6v5 */
    /* JADX WARN: Type inference failed for: r6v8 */
    /* JADX WARN: Type inference failed for: r6v9 */
    @Override // okhttp3.Interceptor
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Response intercept(Interceptor.Chain chain) throws IOException {
        boolean z;
        ?? r6;
        IOException iOException;
        ?? responseHeaders;
        Response responseBuild;
        Response.Builder builder;
        Intrinsics.checkNotNullParameter(chain, "chain");
        RealInterceptorChain realInterceptorChain = (RealInterceptorChain) chain;
        final Exchange exchange$okhttp = realInterceptorChain.getExchange$okhttp();
        Intrinsics.checkNotNull(exchange$okhttp);
        Request request$okhttp = realInterceptorChain.getRequest$okhttp();
        RequestBody requestBodyBody = request$okhttp.body();
        long jCurrentTimeMillis = System.currentTimeMillis();
        boolean z2 = false;
        ?? r62 = (!HttpMethod.permitsRequestBody(request$okhttp.method()) || requestBodyBody == null) ? 0 : 1;
        boolean zEquals = StringsKt.equals("upgrade", request$okhttp.header("Connection"), true);
        try {
            exchange$okhttp.writeRequestHeaders(request$okhttp);
            try {
                if (r62 != 0) {
                    if (StringsKt.equals("100-continue", request$okhttp.header("Expect"), true)) {
                        exchange$okhttp.flushRequest();
                        Response.Builder responseHeaders2 = exchange$okhttp.readResponseHeaders(true);
                        try {
                            exchange$okhttp.responseHeadersStart();
                            z = false;
                            builder = responseHeaders2;
                        } catch (IOException e) {
                            e = e;
                            z = true;
                            r6 = responseHeaders2;
                            if (e instanceof ConnectionShutdownException) {
                                throw e;
                            }
                            if (!exchange$okhttp.getHasFailure$okhttp()) {
                                throw e;
                            }
                            ?? r17 = r6;
                            iOException = e;
                            responseHeaders = r17;
                        }
                    } else {
                        z = true;
                        builder = null;
                    }
                    if (builder == null) {
                        if (requestBodyBody.isDuplex()) {
                            exchange$okhttp.flushRequest();
                            requestBodyBody.writeTo(Okio.buffer(exchange$okhttp.createRequestBody(request$okhttp, true)));
                            r62 = builder;
                        } else {
                            BufferedSink bufferedSinkBuffer = Okio.buffer(exchange$okhttp.createRequestBody(request$okhttp, false));
                            requestBodyBody.writeTo(bufferedSinkBuffer);
                            bufferedSinkBuffer.close();
                            r62 = builder;
                        }
                    } else {
                        exchange$okhttp.noRequestBody();
                        r62 = builder;
                        if (!exchange$okhttp.getConnection$okhttp().isMultiplexed$okhttp()) {
                            exchange$okhttp.noNewExchangesOnConnection();
                            r62 = builder;
                        }
                    }
                } else {
                    exchange$okhttp.noRequestBody();
                    z = true;
                    r62 = 0;
                }
                if (requestBodyBody == null || !requestBodyBody.isDuplex()) {
                    exchange$okhttp.finishRequest();
                }
                responseHeaders = r62;
                iOException = null;
            } catch (IOException e2) {
                e = e2;
                r6 = r62;
            }
        } catch (IOException e3) {
            e = e3;
            z = true;
            r6 = 0;
        }
        if (responseHeaders == 0) {
            try {
                responseHeaders = exchange$okhttp.readResponseHeaders(false);
                Intrinsics.checkNotNull(responseHeaders);
                if (z) {
                    exchange$okhttp.responseHeadersStart();
                    z = false;
                }
            } catch (IOException e4) {
                e = e4;
                if (iOException == null) {
                    ExceptionsKt.addSuppressed(iOException, e);
                    throw iOException;
                }
                throw e;
            }
        }
        Response responseBuild2 = responseHeaders.request(request$okhttp).handshake(exchange$okhttp.getConnection$okhttp().handshake()).sentRequestAtMillis(jCurrentTimeMillis).receivedResponseAtMillis(System.currentTimeMillis()).build();
        int iCode = responseBuild2.code();
        while (shouldIgnoreAndWaitForRealResponse(iCode)) {
            try {
                Response.Builder responseHeaders3 = exchange$okhttp.readResponseHeaders(z2);
                Intrinsics.checkNotNull(responseHeaders3);
                if (z) {
                    exchange$okhttp.responseHeadersStart();
                }
                responseBuild2 = responseHeaders3.request(request$okhttp).handshake(exchange$okhttp.getConnection$okhttp().handshake()).sentRequestAtMillis(jCurrentTimeMillis).receivedResponseAtMillis(System.currentTimeMillis()).build();
                iCode = responseBuild2.code();
                z2 = false;
            } catch (IOException e5) {
                e = e5;
                if (iOException == null) {
                }
            }
        }
        exchange$okhttp.responseHeadersEnd(responseBuild2);
        boolean z3 = iCode == 101;
        if (z3 && exchange$okhttp.getConnection$okhttp().isMultiplexed$okhttp()) {
            throw new ProtocolException("Unexpected 101 code on HTTP/2 connection");
        }
        boolean z4 = z3 && StringsKt.equals("upgrade", Response.header$default(responseBuild2, "Connection", null, 2, null), true);
        if (zEquals && z4) {
            responseBuild = responseBuild2.newBuilder().body(new UnreadableResponseBody(responseBuild2.body().contentType(), responseBuild2.body().contentLength())).socket(exchange$okhttp.upgradeToSocket()).build();
        } else {
            final ResponseBody responseBodyOpenResponseBody = exchange$okhttp.openResponseBody(responseBuild2);
            responseBuild = responseBuild2.newBuilder().body(responseBodyOpenResponseBody).trailers(new TrailersSource() { // from class: okhttp3.internal.http.CallServerInterceptor.intercept.1
                @Override // okhttp3.TrailersSource
                public Headers peek() {
                    return exchange$okhttp.peekTrailers();
                }

                @Override // okhttp3.TrailersSource
                public Headers get() {
                    BufferedSource bufferedSourceSource = responseBodyOpenResponseBody.source();
                    if (bufferedSourceSource.isOpen()) {
                        _UtilJvmKt.skipAll(bufferedSourceSource);
                    }
                    Headers headersPeek = peek();
                    if (headersPeek != null) {
                        return headersPeek;
                    }
                    throw new IllegalStateException("null trailers after exhausting response body?!");
                }
            }).build();
        }
        if (StringsKt.equals("close", responseBuild.request().header("Connection"), true) || StringsKt.equals("close", Response.header$default(responseBuild, "Connection", null, 2, null), true)) {
            exchange$okhttp.noNewExchangesOnConnection();
        }
        if ((iCode != 204 && iCode != 205) || responseBuild.body().contentLength() <= 0) {
            return responseBuild;
        }
        throw new ProtocolException("HTTP " + iCode + " had non-zero Content-Length: " + responseBuild.body().contentLength());
    }
}
