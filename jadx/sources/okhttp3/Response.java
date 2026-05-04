package okhttp3;

import java.io.Closeable;
import java.io.EOFException;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.Headers;
import okhttp3.internal.connection.Exchange;
import okhttp3.internal.http.HttpHeaders;
import okio.Buffer;
import okio.BufferedSource;
import okio.Socket;

/* JADX INFO: loaded from: classes.dex */
public final class Response implements Closeable {
    private final ResponseBody body;
    private final Response cacheResponse;
    private final int code;
    private final Exchange exchange;
    private final Handshake handshake;
    private final Headers headers;
    private final boolean isRedirect;
    private final boolean isSuccessful;
    private CacheControl lazyCacheControl;
    private final String message;
    private final Response networkResponse;
    private final Response priorResponse;
    private final Protocol protocol;
    private final long receivedResponseAtMillis;
    private final Request request;
    private final long sentRequestAtMillis;
    private final Socket socket;
    private TrailersSource trailersSource;

    public final String header(String name) {
        Intrinsics.checkNotNullParameter(name, "name");
        return header$default(this, name, null, 2, null);
    }

    public Response(Request request, Protocol protocol, String message, int i, Handshake handshake, Headers headers, ResponseBody body, Socket socket, Response response, Response response2, Response response3, long j, long j2, Exchange exchange, TrailersSource trailersSource) {
        Intrinsics.checkNotNullParameter(request, "request");
        Intrinsics.checkNotNullParameter(protocol, "protocol");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(headers, "headers");
        Intrinsics.checkNotNullParameter(body, "body");
        Intrinsics.checkNotNullParameter(trailersSource, "trailersSource");
        this.request = request;
        this.protocol = protocol;
        this.message = message;
        this.code = i;
        this.handshake = handshake;
        this.headers = headers;
        this.body = body;
        this.socket = socket;
        this.networkResponse = response;
        this.cacheResponse = response2;
        this.priorResponse = response3;
        this.sentRequestAtMillis = j;
        this.receivedResponseAtMillis = j2;
        this.exchange = exchange;
        this.trailersSource = trailersSource;
        boolean z = true;
        this.isSuccessful = 200 <= i && i < 300;
        if (i != 307 && i != 308) {
            switch (i) {
                case 300:
                case 301:
                case 302:
                case 303:
                    break;
                default:
                    z = false;
                    break;
            }
        }
        this.isRedirect = z;
    }

    public final Request request() {
        return this.request;
    }

    public final Protocol protocol() {
        return this.protocol;
    }

    public final String message() {
        return this.message;
    }

    public final int code() {
        return this.code;
    }

    public final Handshake handshake() {
        return this.handshake;
    }

    public final Headers headers() {
        return this.headers;
    }

    public final ResponseBody body() {
        return this.body;
    }

    public final Socket socket() {
        return this.socket;
    }

    public final Response networkResponse() {
        return this.networkResponse;
    }

    public final Response cacheResponse() {
        return this.cacheResponse;
    }

    public final Response priorResponse() {
        return this.priorResponse;
    }

    public final long sentRequestAtMillis() {
        return this.sentRequestAtMillis;
    }

    public final long receivedResponseAtMillis() {
        return this.receivedResponseAtMillis;
    }

    public final Exchange exchange() {
        return this.exchange;
    }

    public final CacheControl getLazyCacheControl$okhttp() {
        return this.lazyCacheControl;
    }

    public final void setLazyCacheControl$okhttp(CacheControl cacheControl) {
        this.lazyCacheControl = cacheControl;
    }

    /* JADX INFO: renamed from: -deprecated_request, reason: not valid java name */
    public final Request m3873deprecated_request() {
        return this.request;
    }

    /* JADX INFO: renamed from: -deprecated_protocol, reason: not valid java name */
    public final Protocol m3871deprecated_protocol() {
        return this.protocol;
    }

    /* JADX INFO: renamed from: -deprecated_code, reason: not valid java name */
    public final int m3865deprecated_code() {
        return this.code;
    }

    public final boolean isSuccessful() {
        return this.isSuccessful;
    }

    /* JADX INFO: renamed from: -deprecated_message, reason: not valid java name */
    public final String m3868deprecated_message() {
        return this.message;
    }

    /* JADX INFO: renamed from: -deprecated_handshake, reason: not valid java name */
    public final Handshake m3866deprecated_handshake() {
        return this.handshake;
    }

    public final List<String> headers(String name) {
        Intrinsics.checkNotNullParameter(name, "name");
        return this.headers.values(name);
    }

    public static /* synthetic */ String header$default(Response response, String str, String str2, int i, Object obj) {
        if ((i & 2) != 0) {
            str2 = null;
        }
        return response.header(str, str2);
    }

    public final String header(String name, String str) {
        Intrinsics.checkNotNullParameter(name, "name");
        String str2 = this.headers.get(name);
        return str2 == null ? str : str2;
    }

    /* JADX INFO: renamed from: -deprecated_headers, reason: not valid java name */
    public final Headers m3867deprecated_headers() {
        return this.headers;
    }

    public final Headers trailers() {
        return this.trailersSource.get();
    }

    public final Headers peekTrailers() {
        return this.trailersSource.peek();
    }

    public final ResponseBody peekBody(long j) throws EOFException {
        BufferedSource bufferedSourcePeek = this.body.source().peek();
        Buffer buffer = new Buffer();
        bufferedSourcePeek.request(j);
        buffer.write(bufferedSourcePeek, Math.min(j, bufferedSourcePeek.getBuffer().size()));
        return ResponseBody.Companion.create(buffer, this.body.contentType(), buffer.size());
    }

    /* JADX INFO: renamed from: -deprecated_body, reason: not valid java name */
    public final ResponseBody m3862deprecated_body() {
        return this.body;
    }

    public final Builder newBuilder() {
        return new Builder(this);
    }

    public final boolean isRedirect() {
        return this.isRedirect;
    }

    /* JADX INFO: renamed from: -deprecated_networkResponse, reason: not valid java name */
    public final Response m3869deprecated_networkResponse() {
        return this.networkResponse;
    }

    /* JADX INFO: renamed from: -deprecated_cacheResponse, reason: not valid java name */
    public final Response m3864deprecated_cacheResponse() {
        return this.cacheResponse;
    }

    /* JADX INFO: renamed from: -deprecated_priorResponse, reason: not valid java name */
    public final Response m3870deprecated_priorResponse() {
        return this.priorResponse;
    }

    public final List<Challenge> challenges() {
        String str;
        Headers headers = this.headers;
        int i = this.code;
        if (i == 401) {
            str = "WWW-Authenticate";
        } else if (i == 407) {
            str = "Proxy-Authenticate";
        } else {
            return CollectionsKt.emptyList();
        }
        return HttpHeaders.parseChallenges(headers, str);
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

    /* JADX INFO: renamed from: -deprecated_cacheControl, reason: not valid java name */
    public final CacheControl m3863deprecated_cacheControl() {
        return cacheControl();
    }

    /* JADX INFO: renamed from: -deprecated_sentRequestAtMillis, reason: not valid java name */
    public final long m3874deprecated_sentRequestAtMillis() {
        return this.sentRequestAtMillis;
    }

    /* JADX INFO: renamed from: -deprecated_receivedResponseAtMillis, reason: not valid java name */
    public final long m3872deprecated_receivedResponseAtMillis() {
        return this.receivedResponseAtMillis;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.body.close();
    }

    public String toString() {
        return "Response{protocol=" + this.protocol + ", code=" + this.code + ", message=" + this.message + ", url=" + this.request.url() + '}';
    }

    public static class Builder {
        private ResponseBody body;
        private Response cacheResponse;
        private int code;
        private Exchange exchange;
        private Handshake handshake;
        private Headers.Builder headers;
        private String message;
        private Response networkResponse;
        private Response priorResponse;
        private Protocol protocol;
        private long receivedResponseAtMillis;
        private Request request;
        private long sentRequestAtMillis;
        private Socket socket;
        private TrailersSource trailersSource;

        public final Request getRequest$okhttp() {
            return this.request;
        }

        public final void setRequest$okhttp(Request request) {
            this.request = request;
        }

        public final Protocol getProtocol$okhttp() {
            return this.protocol;
        }

        public final void setProtocol$okhttp(Protocol protocol) {
            this.protocol = protocol;
        }

        public final int getCode$okhttp() {
            return this.code;
        }

        public final void setCode$okhttp(int i) {
            this.code = i;
        }

        public final String getMessage$okhttp() {
            return this.message;
        }

        public final void setMessage$okhttp(String str) {
            this.message = str;
        }

        public final Handshake getHandshake$okhttp() {
            return this.handshake;
        }

        public final void setHandshake$okhttp(Handshake handshake) {
            this.handshake = handshake;
        }

        public final Headers.Builder getHeaders$okhttp() {
            return this.headers;
        }

        public final void setHeaders$okhttp(Headers.Builder builder) {
            Intrinsics.checkNotNullParameter(builder, "<set-?>");
            this.headers = builder;
        }

        public final ResponseBody getBody$okhttp() {
            return this.body;
        }

        public final void setBody$okhttp(ResponseBody responseBody) {
            Intrinsics.checkNotNullParameter(responseBody, "<set-?>");
            this.body = responseBody;
        }

        public final Socket getSocket$okhttp() {
            return this.socket;
        }

        public final void setSocket$okhttp(Socket socket) {
            this.socket = socket;
        }

        public final Response getNetworkResponse$okhttp() {
            return this.networkResponse;
        }

        public final void setNetworkResponse$okhttp(Response response) {
            this.networkResponse = response;
        }

        public final Response getCacheResponse$okhttp() {
            return this.cacheResponse;
        }

        public final void setCacheResponse$okhttp(Response response) {
            this.cacheResponse = response;
        }

        public final Response getPriorResponse$okhttp() {
            return this.priorResponse;
        }

        public final void setPriorResponse$okhttp(Response response) {
            this.priorResponse = response;
        }

        public final long getSentRequestAtMillis$okhttp() {
            return this.sentRequestAtMillis;
        }

        public final void setSentRequestAtMillis$okhttp(long j) {
            this.sentRequestAtMillis = j;
        }

        public final long getReceivedResponseAtMillis$okhttp() {
            return this.receivedResponseAtMillis;
        }

        public final void setReceivedResponseAtMillis$okhttp(long j) {
            this.receivedResponseAtMillis = j;
        }

        public final Exchange getExchange$okhttp() {
            return this.exchange;
        }

        public final void setExchange$okhttp(Exchange exchange) {
            this.exchange = exchange;
        }

        public final TrailersSource getTrailersSource$okhttp() {
            return this.trailersSource;
        }

        public final void setTrailersSource$okhttp(TrailersSource trailersSource) {
            Intrinsics.checkNotNullParameter(trailersSource, "<set-?>");
            this.trailersSource = trailersSource;
        }

        public Builder() {
            this.code = -1;
            this.body = ResponseBody.EMPTY;
            this.trailersSource = TrailersSource.EMPTY;
            this.headers = new Headers.Builder();
        }

        public Builder(Response response) {
            Intrinsics.checkNotNullParameter(response, "response");
            this.code = -1;
            this.body = ResponseBody.EMPTY;
            this.trailersSource = TrailersSource.EMPTY;
            this.request = response.request();
            this.protocol = response.protocol();
            this.code = response.code();
            this.message = response.message();
            this.handshake = response.handshake();
            this.headers = response.headers().newBuilder();
            this.body = response.body();
            this.socket = response.socket();
            this.networkResponse = response.networkResponse();
            this.cacheResponse = response.cacheResponse();
            this.priorResponse = response.priorResponse();
            this.sentRequestAtMillis = response.sentRequestAtMillis();
            this.receivedResponseAtMillis = response.receivedResponseAtMillis();
            this.exchange = response.exchange();
            this.trailersSource = response.trailersSource;
        }

        public Builder request(Request request) {
            Intrinsics.checkNotNullParameter(request, "request");
            this.request = request;
            return this;
        }

        public Builder protocol(Protocol protocol) {
            Intrinsics.checkNotNullParameter(protocol, "protocol");
            this.protocol = protocol;
            return this;
        }

        public Builder code(int i) {
            this.code = i;
            return this;
        }

        public Builder message(String message) {
            Intrinsics.checkNotNullParameter(message, "message");
            this.message = message;
            return this;
        }

        public Builder handshake(Handshake handshake) {
            this.handshake = handshake;
            return this;
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

        public Builder body(ResponseBody body) {
            Intrinsics.checkNotNullParameter(body, "body");
            this.body = body;
            return this;
        }

        public Builder socket(Socket socket) {
            Intrinsics.checkNotNullParameter(socket, "socket");
            this.socket = socket;
            return this;
        }

        public Builder networkResponse(Response response) {
            checkSupportResponse("networkResponse", response);
            this.networkResponse = response;
            return this;
        }

        public Builder cacheResponse(Response response) {
            checkSupportResponse("cacheResponse", response);
            this.cacheResponse = response;
            return this;
        }

        private final void checkSupportResponse(String str, Response response) {
            if (response != null) {
                if (response.networkResponse() != null) {
                    throw new IllegalArgumentException((str + ".networkResponse != null").toString());
                }
                if (response.cacheResponse() != null) {
                    throw new IllegalArgumentException((str + ".cacheResponse != null").toString());
                }
                if (response.priorResponse() == null) {
                    return;
                }
                throw new IllegalArgumentException((str + ".priorResponse != null").toString());
            }
        }

        public Builder priorResponse(Response response) {
            this.priorResponse = response;
            return this;
        }

        public Builder trailers(TrailersSource trailersSource) {
            Intrinsics.checkNotNullParameter(trailersSource, "trailersSource");
            this.trailersSource = trailersSource;
            return this;
        }

        public Builder sentRequestAtMillis(long j) {
            this.sentRequestAtMillis = j;
            return this;
        }

        public Builder receivedResponseAtMillis(long j) {
            this.receivedResponseAtMillis = j;
            return this;
        }

        public final void initExchange$okhttp(Exchange exchange) {
            Intrinsics.checkNotNullParameter(exchange, "exchange");
            this.exchange = exchange;
        }

        public Response build() {
            int i = this.code;
            if (i < 0) {
                throw new IllegalStateException(("code < 0: " + this.code).toString());
            }
            Request request = this.request;
            if (request == null) {
                throw new IllegalStateException("request == null");
            }
            Protocol protocol = this.protocol;
            if (protocol == null) {
                throw new IllegalStateException("protocol == null");
            }
            String str = this.message;
            if (str != null) {
                return new Response(request, protocol, str, i, this.handshake, this.headers.build(), this.body, this.socket, this.networkResponse, this.cacheResponse, this.priorResponse, this.sentRequestAtMillis, this.receivedResponseAtMillis, this.exchange, this.trailersSource);
            }
            throw new IllegalStateException("message == null");
        }
    }
}
