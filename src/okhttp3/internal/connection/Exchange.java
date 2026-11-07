package okhttp3.internal.connection;

import com.exteragram.messenger.plugins.PluginsConstants;
import java.io.IOException;
import java.net.ProtocolException;
import java.net.SocketException;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import okhttp3.EventListener;
import okhttp3.Headers;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.ResponseBody;
import okhttp3.internal.http.ExchangeCodec;
import okhttp3.internal.http.RealResponseBody;
import okhttp3.internal.url._UrlKt;
import okio.Buffer;
import okio.ForwardingSink;
import okio.ForwardingSource;
import okio.Okio;
import okio.Segment$$ExternalSyntheticBUOutline1;
import okio.Sink;
import okio.Socket;
import okio.Source;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000z\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0007\u0018\u00002\u00020\u0001:\u0002BCB'\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t¢\u0006\u0004\b\n\u0010\u000bJ\u000e\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020\"J\u0016\u0010#\u001a\u00020$2\u0006\u0010!\u001a\u00020\"2\u0006\u0010%\u001a\u00020\u0013J\u0006\u0010&\u001a\u00020 J\u0006\u0010'\u001a\u00020 J\u0006\u0010(\u001a\u00020 J\u0010\u0010)\u001a\u0004\u0018\u00010*2\u0006\u0010+\u001a\u00020\u0013J\u000e\u0010,\u001a\u00020 2\u0006\u0010-\u001a\u00020.J\u000e\u0010/\u001a\u0002002\u0006\u0010-\u001a\u00020.J\b\u00101\u001a\u0004\u0018\u000102J\u0006\u00103\u001a\u000204J\u0006\u00105\u001a\u00020 J\u0006\u00106\u001a\u00020 J\u0006\u00107\u001a\u00020 J\u0010\u00108\u001a\u00020 2\u0006\u00109\u001a\u00020:H\u0002J8\u0010;\u001a\u0004\u0018\u00010:2\b\b\u0002\u0010<\u001a\u00020=2\u0006\u0010>\u001a\u00020\u00132\b\b\u0002\u0010?\u001a\u00020\u00132\b\b\u0002\u0010@\u001a\u00020\u00132\b\u00109\u001a\u0004\u0018\u00010:J\u0006\u0010A\u001a\u00020 R\u0014\u0010\u0002\u001a\u00020\u0003X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0014\u0010\u0004\u001a\u00020\u0005X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u0014\u0010\u0006\u001a\u00020\u0007X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u001e\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0012\u001a\u00020\u0013@BX\u0080\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0016R\u001e\u0010\u0017\u001a\u00020\u00132\u0006\u0010\u0012\u001a\u00020\u0013@BX\u0080\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0016R\u0014\u0010\u0019\u001a\u00020\u001a8@X\u0080\u0004¢\u0006\u0006\u001a\u0004\b\u001b\u0010\u001cR\u0014\u0010\u001d\u001a\u00020\u00138@X\u0080\u0004¢\u0006\u0006\u001a\u0004\b\u001e\u0010\u0016¨\u0006D"}, d2 = {"Lokhttp3/internal/connection/Exchange;", _UrlKt.FRAGMENT_ENCODE_SET, "call", "Lokhttp3/internal/connection/RealCall;", "eventListener", "Lokhttp3/EventListener;", "finder", "Lokhttp3/internal/connection/ExchangeFinder;", "codec", "Lokhttp3/internal/http/ExchangeCodec;", "<init>", "(Lokhttp3/internal/connection/RealCall;Lokhttp3/EventListener;Lokhttp3/internal/connection/ExchangeFinder;Lokhttp3/internal/http/ExchangeCodec;)V", "getCall$okhttp", "()Lokhttp3/internal/connection/RealCall;", "getEventListener$okhttp", "()Lokhttp3/EventListener;", "getFinder$okhttp", "()Lokhttp3/internal/connection/ExchangeFinder;", "value", _UrlKt.FRAGMENT_ENCODE_SET, "isDuplex", "isDuplex$okhttp", "()Z", "hasFailure", "getHasFailure$okhttp", "connection", "Lokhttp3/internal/connection/RealConnection;", "getConnection$okhttp", "()Lokhttp3/internal/connection/RealConnection;", "isCoalescedConnection", "isCoalescedConnection$okhttp", "writeRequestHeaders", _UrlKt.FRAGMENT_ENCODE_SET, PluginsConstants.REQUEST, "Lokhttp3/Request;", "createRequestBody", "Lokio/Sink;", "duplex", "flushRequest", "finishRequest", "responseHeadersStart", "readResponseHeaders", "Lokhttp3/Response$Builder;", "expectContinue", "responseHeadersEnd", PluginsConstants.RESPONSE, "Lokhttp3/Response;", "openResponseBody", "Lokhttp3/ResponseBody;", "peekTrailers", "Lokhttp3/Headers;", "upgradeToSocket", "Lokio/Socket;", "noNewExchangesOnConnection", "cancel", "detachWithViolence", "trackFailure", "e", "Ljava/io/IOException;", "bodyComplete", "bytesRead", _UrlKt.FRAGMENT_ENCODE_SET, "isSocket", "responseDone", "requestDone", "noRequestBody", "RequestBodySink", "ResponseBodySource", "okhttp"}, m862k = 1, mv = {2, 2, 0}, xi = 48)
public final class Exchange {
    private final RealCall call;
    private final ExchangeCodec codec;
    private final EventListener eventListener;
    private final ExchangeFinder finder;
    private boolean hasFailure;
    private boolean isDuplex;

    public Exchange(RealCall realCall, EventListener eventListener, ExchangeFinder exchangeFinder, ExchangeCodec exchangeCodec) {
        this.call = realCall;
        this.eventListener = eventListener;
        this.finder = exchangeFinder;
        this.codec = exchangeCodec;
    }

    /* JADX INFO: renamed from: getCall$okhttp, reason: from getter */
    public final RealCall getCall() {
        return this.call;
    }

    /* JADX INFO: renamed from: getEventListener$okhttp, reason: from getter */
    public final EventListener getEventListener() {
        return this.eventListener;
    }

    /* JADX INFO: renamed from: getFinder$okhttp, reason: from getter */
    public final ExchangeFinder getFinder() {
        return this.finder;
    }

    /* JADX INFO: renamed from: isDuplex$okhttp, reason: from getter */
    public final boolean getIsDuplex() {
        return this.isDuplex;
    }

    /* JADX INFO: renamed from: getHasFailure$okhttp, reason: from getter */
    public final boolean getHasFailure() {
        return this.hasFailure;
    }

    public final RealConnection getConnection$okhttp() {
        ExchangeCodec.Carrier carrier = this.codec.getCarrier();
        RealConnection realConnection = carrier instanceof RealConnection ? (RealConnection) carrier : null;
        if (realConnection != null) {
            return realConnection;
        }
        Segment$$ExternalSyntheticBUOutline1.m925m("no connection for CONNECT tunnels");
        return null;
    }

    public final boolean isCoalescedConnection$okhttp() {
        return !Intrinsics.areEqual(this.finder.getRoutePlanner().getAddress().url().host(), this.codec.getCarrier().getRoute().address().url().host());
    }

    public final void writeRequestHeaders(Request request) throws IOException {
        try {
            this.eventListener.requestHeadersStart(this.call);
            this.codec.writeRequestHeaders(request);
            this.eventListener.requestHeadersEnd(this.call, request);
        } catch (IOException e) {
            this.eventListener.requestFailed(this.call, e);
            trackFailure(e);
            throw e;
        }
    }

    public final Sink createRequestBody(Request request, boolean duplex) {
        this.isDuplex = duplex;
        long jContentLength = request.body().contentLength();
        this.eventListener.requestBodyStart(this.call);
        return new RequestBodySink(this.codec.createRequestBody(request, jContentLength), jContentLength, false);
    }

    public final void flushRequest() throws IOException {
        try {
            this.codec.flushRequest();
        } catch (IOException e) {
            this.eventListener.requestFailed(this.call, e);
            trackFailure(e);
            throw e;
        }
    }

    public final void finishRequest() throws IOException {
        try {
            this.codec.finishRequest();
        } catch (IOException e) {
            this.eventListener.requestFailed(this.call, e);
            trackFailure(e);
            throw e;
        }
    }

    public final void responseHeadersStart() {
        this.eventListener.responseHeadersStart(this.call);
    }

    public final Response.Builder readResponseHeaders(boolean expectContinue) throws IOException {
        try {
            Response.Builder responseHeaders = this.codec.readResponseHeaders(expectContinue);
            if (responseHeaders == null) {
                return responseHeaders;
            }
            responseHeaders.initExchange$okhttp(this);
            return responseHeaders;
        } catch (IOException e) {
            this.eventListener.responseFailed(this.call, e);
            trackFailure(e);
            throw e;
        }
    }

    public final void responseHeadersEnd(Response response) {
        this.eventListener.responseHeadersEnd(this.call, response);
    }

    public final ResponseBody openResponseBody(Response response) throws IOException {
        Exchange exchange;
        String strHeader$default;
        long jReportedContentLength;
        try {
            strHeader$default = Response.header$default(response, "Content-Type", null, 2, null);
            jReportedContentLength = this.codec.reportedContentLength(response);
            exchange = this;
        } catch (IOException e) {
            e = e;
            exchange = this;
        }
        try {
            return new RealResponseBody(strHeader$default, jReportedContentLength, Okio.buffer(exchange.new ResponseBodySource(this.codec.openResponseBodySource(response), jReportedContentLength, false)));
        } catch (IOException e2) {
            e = e2;
            IOException iOException = e;
            exchange.eventListener.responseFailed(exchange.call, iOException);
            exchange.trackFailure(iOException);
            throw iOException;
        }
    }

    public final Headers peekTrailers() {
        return this.codec.peekTrailers();
    }

    public final Socket upgradeToSocket() throws SocketException {
        this.call.upgradeToSocket();
        ((RealConnection) this.codec.getCarrier()).useAsSocket$okhttp();
        return new Socket() { // from class: okhttp3.internal.connection.Exchange.upgradeToSocket.1
            private final RequestBodySink sink;
            private final ResponseBodySource source;

            {
                this.sink = Exchange.this.new RequestBodySink(Exchange.this.codec.getSocket().getSink(), -1L, true);
                this.source = Exchange.this.new ResponseBodySource(Exchange.this.codec.getSocket().getSource(), -1L, true);
            }

            @Override // okio.Socket
            public void cancel() {
                Exchange.this.cancel();
            }

            @Override // okio.Socket
            public RequestBodySink getSink() {
                return this.sink;
            }

            @Override // okio.Socket
            public ResponseBodySource getSource() {
                return this.source;
            }
        };
    }

    public final void noNewExchangesOnConnection() {
        this.codec.getCarrier().noNewExchanges();
    }

    public final void cancel() {
        this.codec.cancel();
    }

    public final void detachWithViolence() {
        this.codec.cancel();
        this.call.messageDone$okhttp(this, true, true, true, true, null);
    }

    private final void trackFailure(IOException e) {
        this.hasFailure = true;
        this.codec.getCarrier().trackFailure(this.call, e);
    }

    public static /* synthetic */ IOException bodyComplete$default(Exchange exchange, long j, boolean z, boolean z2, boolean z3, IOException iOException, int i, Object obj) {
        if ((i & 1) != 0) {
            j = -1;
        }
        return exchange.bodyComplete(j, z, (i & 4) != 0 ? false : z2, (i & 8) != 0 ? false : z3, iOException);
    }

    public final IOException bodyComplete(long bytesRead, boolean isSocket, boolean responseDone, boolean requestDone, IOException e) {
        boolean z;
        boolean z2;
        boolean z3;
        if (e != null) {
            trackFailure(e);
        }
        if (requestDone) {
            EventListener eventListener = this.eventListener;
            if (e != null) {
                eventListener.requestFailed(this.call, e);
            } else {
                eventListener.requestBodyEnd(this.call, bytesRead);
            }
        }
        if (responseDone) {
            EventListener eventListener2 = this.eventListener;
            if (e != null) {
                eventListener2.responseFailed(this.call, e);
            } else {
                eventListener2.responseBodyEnd(this.call, bytesRead);
            }
        }
        RealCall realCall = this.call;
        boolean z4 = false;
        if (!requestDone || isSocket) {
            z = false;
        } else {
            z = false;
            z4 = true;
        }
        if (!responseDone || isSocket) {
            z2 = isSocket;
            z3 = z;
        } else {
            z2 = isSocket;
            z3 = true;
        }
        return realCall.messageDone$okhttp(this, z4, z3, (responseDone && z2) ? true : z, (requestDone && z2) ? true : z, e);
    }

    public final void noRequestBody() {
        RealCall.messageDone$okhttp$default(this.call, this, true, false, false, false, null, 28, null);
    }

    /* JADX INFO: loaded from: classes5.dex */
    @Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0082\u0004\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0004\b\b\u0010\tJ\u0018\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0005H\u0016J\b\u0010\u0013\u001a\u00020\u000fH\u0016J\b\u0010\u0014\u001a\u00020\u000fH\u0016J\u0014\u0010\u0015\u001a\u0004\u0018\u00010\u00162\b\u0010\u0017\u001a\u0004\u0018\u00010\u0016H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0007X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0005X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\u0007X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0007X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0018"}, d2 = {"Lokhttp3/internal/connection/Exchange$RequestBodySink;", "Lokio/ForwardingSink;", "delegate", "Lokio/Sink;", "contentLength", _UrlKt.FRAGMENT_ENCODE_SET, "isSocket", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "(Lokhttp3/internal/connection/Exchange;Lokio/Sink;JZ)V", "completed", "bytesReceived", "invokeStartEvent", "closed", "write", _UrlKt.FRAGMENT_ENCODE_SET, "source", "Lokio/Buffer;", "byteCount", "flush", "close", "complete", "Ljava/io/IOException;", "e", "okhttp"}, m862k = 1, mv = {2, 2, 0}, xi = 48)
    @SourceDebugExtension({"SMAP\nExchange.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Exchange.kt\nokhttp3/internal/connection/Exchange$RequestBodySink\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,404:1\n1#2:405\n*E\n"})
    public final class RequestBodySink extends ForwardingSink {
        private long bytesReceived;
        private boolean closed;
        private boolean completed;
        private final long contentLength;
        private boolean invokeStartEvent;
        private final boolean isSocket;

        public RequestBodySink(Sink sink, long j, boolean z) {
            super(sink);
            this.contentLength = j;
            this.isSocket = z;
            this.invokeStartEvent = z;
        }

        @Override // okio.ForwardingSink, okio.Sink
        public void write(Buffer source, long byteCount) throws IOException {
            if (this.closed) {
                Segment$$ExternalSyntheticBUOutline1.m925m("closed");
                return;
            }
            long j = this.contentLength;
            if (j != -1 && this.bytesReceived + byteCount > j) {
                throw new ProtocolException("expected " + this.contentLength + " bytes but received " + (this.bytesReceived + byteCount));
            }
            try {
                if (this.invokeStartEvent) {
                    this.invokeStartEvent = false;
                    Exchange.this.getEventListener().requestBodyStart(Exchange.this.getCall());
                }
                super.write(source, byteCount);
                this.bytesReceived += byteCount;
            } catch (IOException e) {
                throw complete(e);
            }
        }

        @Override // okio.ForwardingSink, okio.Sink, java.io.Flushable
        public void flush() throws IOException {
            try {
                super.flush();
            } catch (IOException e) {
                throw complete(e);
            }
        }

        @Override // okio.ForwardingSink, okio.Sink, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            if (this.closed) {
                return;
            }
            this.closed = true;
            long j = this.contentLength;
            if (j != -1 && this.bytesReceived != j) {
                throw new ProtocolException("unexpected end of stream");
            }
            try {
                super.close();
                complete(null);
            } catch (IOException e) {
                throw complete(e);
            }
        }

        private final IOException complete(IOException e) {
            if (this.completed) {
                return e;
            }
            this.completed = true;
            return Exchange.bodyComplete$default(Exchange.this, this.bytesReceived, this.isSocket, false, true, e, 4, null);
        }
    }

    @Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0080\u0004\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0004\b\b\u0010\tJ\u0018\u0010\u000e\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0005H\u0016J\b\u0010\u0012\u001a\u00020\u0013H\u0016J\u0012\u0010\u0014\u001a\u0004\u0018\u00010\u00152\b\u0010\u0016\u001a\u0004\u0018\u00010\u0015R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0005X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0007X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\u0007X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0007X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0017"}, d2 = {"Lokhttp3/internal/connection/Exchange$ResponseBodySource;", "Lokio/ForwardingSource;", "delegate", "Lokio/Source;", "contentLength", _UrlKt.FRAGMENT_ENCODE_SET, "isSocket", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "(Lokhttp3/internal/connection/Exchange;Lokio/Source;JZ)V", "bytesReceived", "invokeStartEvent", "completed", "closed", "read", "sink", "Lokio/Buffer;", "byteCount", "close", _UrlKt.FRAGMENT_ENCODE_SET, "complete", "Ljava/io/IOException;", "e", "okhttp"}, m862k = 1, mv = {2, 2, 0}, xi = 48)
    @SourceDebugExtension({"SMAP\nExchange.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Exchange.kt\nokhttp3/internal/connection/Exchange$ResponseBodySource\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,404:1\n1#2:405\n*E\n"})
    public final class ResponseBodySource extends ForwardingSource {
        private long bytesReceived;
        private boolean closed;
        private boolean completed;
        private final long contentLength;
        private boolean invokeStartEvent;
        private final boolean isSocket;

        public ResponseBodySource(Source source, long j, boolean z) {
            super(source);
            this.contentLength = j;
            this.isSocket = z;
            this.invokeStartEvent = true;
            if (j == 0) {
                complete(null);
            }
        }

        @Override // okio.ForwardingSource, okio.Source
        public long read(Buffer sink, long byteCount) throws IOException {
            if (this.closed) {
                Segment$$ExternalSyntheticBUOutline1.m925m("closed");
                return 0L;
            }
            try {
                long j = delegate().read(sink, byteCount);
                if (this.invokeStartEvent) {
                    this.invokeStartEvent = false;
                    Exchange.this.getEventListener().responseBodyStart(Exchange.this.getCall());
                }
                if (j == -1) {
                    complete(null);
                    return -1L;
                }
                long j2 = this.bytesReceived + j;
                long j3 = this.contentLength;
                if (j3 != -1 && j2 > j3) {
                    throw new ProtocolException("expected " + this.contentLength + " bytes but received " + j2);
                }
                this.bytesReceived = j2;
                if (Exchange.this.codec.isResponseComplete()) {
                    complete(null);
                }
                return j;
            } catch (IOException e) {
                throw complete(e);
            }
        }

        @Override // okio.ForwardingSource, okio.Source, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            if (this.closed) {
                return;
            }
            this.closed = true;
            try {
                super.close();
                complete(null);
            } catch (IOException e) {
                throw complete(e);
            }
        }

        public final IOException complete(IOException e) {
            if (this.completed) {
                return e;
            }
            this.completed = true;
            if (e == null && this.invokeStartEvent) {
                this.invokeStartEvent = false;
                Exchange.this.getEventListener().responseBodyStart(Exchange.this.getCall());
            }
            return Exchange.bodyComplete$default(Exchange.this, this.bytesReceived, this.isSocket, true, false, e, 8, null);
        }
    }
}
