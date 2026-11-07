package okhttp3.internal.http1;

import com.exteragram.messenger.plugins.PluginsConstants;
import java.io.EOFException;
import java.io.IOException;
import java.net.ProtocolException;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import kotlin.text.Typography;
import okhttp3.CookieJar;
import okhttp3.Headers;
import okhttp3.HttpUrl;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.Response;
import okhttp3.Response$Builder$$ExternalSyntheticBUOutline1;
import okhttp3.internal._UtilCommonKt;
import okhttp3.internal._UtilJvmKt;
import okhttp3.internal.connection.BufferedSocket;
import okhttp3.internal.http.ExchangeCodec;
import okhttp3.internal.http.HttpHeaders;
import okhttp3.internal.http.RequestLine;
import okhttp3.internal.http.StatusLine;
import okhttp3.internal.url._UrlKt;
import okio.Buffer;
import okio.Buffer$$ExternalSyntheticBUOutline3;
import okio.BufferedSink;
import okio.ForwardingTimeout;
import okio.Segment$$ExternalSyntheticBUOutline1;
import okio.Sink;
import okio.Source;
import okio.Timeout;
import org.telegram.ui.WearAuthSheet$$ExternalSyntheticBUOutline0;
import org.vosk.Model$$ExternalSyntheticBUOutline0;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\u0080\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\t\u0018\u0000 D2\u00020\u0001:\u0007>?@ABCDB!\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0004\b\b\u0010\tJ\u0018\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u00162\u0006\u0010\u001f\u001a\u00020 H\u0016J\b\u0010!\u001a\u00020\"H\u0016J\u0010\u0010#\u001a\u00020\"2\u0006\u0010\u001e\u001a\u00020\u0016H\u0016J\u0010\u0010$\u001a\u00020 2\u0006\u0010%\u001a\u00020\u0014H\u0016J\u0010\u0010&\u001a\u00020'2\u0006\u0010%\u001a\u00020\u0014H\u0016J\n\u0010(\u001a\u0004\u0018\u00010\u0019H\u0016J\b\u0010)\u001a\u00020\"H\u0016J\b\u0010*\u001a\u00020\"H\u0016J\u0016\u0010+\u001a\u00020\"2\u0006\u0010,\u001a\u00020\u00192\u0006\u0010-\u001a\u00020.J\u0012\u0010/\u001a\u0004\u0018\u0001002\u0006\u00101\u001a\u00020\u0013H\u0016J\b\u00102\u001a\u00020\u001dH\u0002J\b\u00103\u001a\u00020\u001dH\u0002J\u0018\u00104\u001a\u00020'2\u0006\u00105\u001a\u0002062\u0006\u00107\u001a\u00020 H\u0002J\u0010\u00108\u001a\u00020'2\u0006\u00105\u001a\u000206H\u0002J\u0010\u00109\u001a\u00020'2\u0006\u00105\u001a\u000206H\u0002J\u0010\u0010:\u001a\u00020\"2\u0006\u0010;\u001a\u00020<H\u0002J\u000e\u0010=\u001a\u00020\"2\u0006\u0010%\u001a\u00020\u0014R\u0010\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0004\u001a\u00020\u0005X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0014\u0010\u0006\u001a\u00020\u0007X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u0004¢\u0006\u0002\n\u0000R\u0018\u0010\u0012\u001a\u00020\u0013*\u00020\u00148BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0012\u0010\u0015R\u0018\u0010\u0012\u001a\u00020\u0013*\u00020\u00168BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0012\u0010\u0017R\u0010\u0010\u0018\u001a\u0004\u0018\u00010\u0019X\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u001a\u001a\u00020\u00138VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u001a\u0010\u001b¨\u0006E"}, d2 = {"Lokhttp3/internal/http1/Http1ExchangeCodec;", "Lokhttp3/internal/http/ExchangeCodec;", "client", "Lokhttp3/OkHttpClient;", "carrier", "Lokhttp3/internal/http/ExchangeCodec$Carrier;", "socket", "Lokhttp3/internal/connection/BufferedSocket;", "<init>", "(Lokhttp3/OkHttpClient;Lokhttp3/internal/http/ExchangeCodec$Carrier;Lokhttp3/internal/connection/BufferedSocket;)V", "getCarrier", "()Lokhttp3/internal/http/ExchangeCodec$Carrier;", "getSocket", "()Lokhttp3/internal/connection/BufferedSocket;", "state", _UrlKt.FRAGMENT_ENCODE_SET, "headersReader", "Lokhttp3/internal/http1/HeadersReader;", "isChunked", _UrlKt.FRAGMENT_ENCODE_SET, "Lokhttp3/Response;", "(Lokhttp3/Response;)Z", "Lokhttp3/Request;", "(Lokhttp3/Request;)Z", "trailers", "Lokhttp3/Headers;", "isResponseComplete", "()Z", "createRequestBody", "Lokio/Sink;", PluginsConstants.REQUEST, "contentLength", _UrlKt.FRAGMENT_ENCODE_SET, "cancel", _UrlKt.FRAGMENT_ENCODE_SET, "writeRequestHeaders", "reportedContentLength", PluginsConstants.RESPONSE, "openResponseBodySource", "Lokio/Source;", "peekTrailers", "flushRequest", "finishRequest", "writeRequest", "headers", "requestLine", _UrlKt.FRAGMENT_ENCODE_SET, "readResponseHeaders", "Lokhttp3/Response$Builder;", "expectContinue", "newChunkedSink", "newKnownLengthSink", "newFixedLengthSource", "url", "Lokhttp3/HttpUrl;", "length", "newChunkedSource", "newUnknownLengthSource", "detachTimeout", "timeout", "Lokio/ForwardingTimeout;", "skipConnectBody", "KnownLengthSink", "ChunkedSink", "AbstractSource", "FixedLengthSource", "ChunkedSource", "UnknownLengthSource", "Companion", "okhttp"}, m862k = 1, mv = {2, 2, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nHttp1ExchangeCodec.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Http1ExchangeCodec.kt\nokhttp3/internal/http1/Http1ExchangeCodec\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,562:1\n1#2:563\n*E\n"})
public final class Http1ExchangeCodec implements ExchangeCodec {
    private static final long NO_CHUNK_YET = -1;
    private static final int STATE_CLOSED = 6;
    private static final int STATE_IDLE = 0;
    private static final int STATE_OPEN_REQUEST_BODY = 1;
    private static final int STATE_OPEN_RESPONSE_BODY = 4;
    private static final int STATE_READING_RESPONSE_BODY = 5;
    private static final int STATE_READ_RESPONSE_HEADERS = 3;
    private static final int STATE_WRITING_REQUEST_BODY = 2;
    private final ExchangeCodec.Carrier carrier;
    private final OkHttpClient client;
    private final HeadersReader headersReader = new HeadersReader(getSocket().getSource());
    private final BufferedSocket socket;
    private int state;
    private Headers trailers;
    private static final Headers TRAILERS_RESPONSE_BODY_TRUNCATED = Headers.INSTANCE.of("OkHttp-Response-Body", "Truncated");

    public Http1ExchangeCodec(OkHttpClient okHttpClient, ExchangeCodec.Carrier carrier, BufferedSocket bufferedSocket) {
        this.client = okHttpClient;
        this.carrier = carrier;
        this.socket = bufferedSocket;
    }

    @Override // okhttp3.internal.http.ExchangeCodec
    public ExchangeCodec.Carrier getCarrier() {
        return this.carrier;
    }

    @Override // okhttp3.internal.http.ExchangeCodec
    public BufferedSocket getSocket() {
        return this.socket;
    }

    private final boolean isChunked(Response response) {
        return StringsKt.equals("chunked", Response.header$default(response, "Transfer-Encoding", null, 2, null), true);
    }

    private final boolean isChunked(Request request) {
        return StringsKt.equals("chunked", request.header("Transfer-Encoding"), true);
    }

    @Override // okhttp3.internal.http.ExchangeCodec
    public boolean isResponseComplete() {
        return this.state == 6;
    }

    @Override // okhttp3.internal.http.ExchangeCodec
    public Sink createRequestBody(Request request, long contentLength) throws ProtocolException {
        RequestBody requestBodyBody = request.body();
        if (requestBodyBody != null && requestBodyBody.isDuplex()) {
            throw new ProtocolException("Duplex connections are not supported for HTTP/1");
        }
        if (isChunked(request)) {
            return newChunkedSink();
        }
        if (contentLength != -1) {
            return newKnownLengthSink();
        }
        Segment$$ExternalSyntheticBUOutline1.m925m("Cannot stream a request body without chunked encoding or a known content length!");
        return null;
    }

    @Override // okhttp3.internal.http.ExchangeCodec
    public void cancel() {
        getCarrier().mo4815cancel();
    }

    @Override // okhttp3.internal.http.ExchangeCodec
    public void writeRequestHeaders(Request request) {
        writeRequest(request.headers(), RequestLine.INSTANCE.get(request, getCarrier().getRoute().proxy().type()));
    }

    @Override // okhttp3.internal.http.ExchangeCodec
    public long reportedContentLength(Response response) {
        if (!HttpHeaders.promisesBody(response)) {
            return 0L;
        }
        if (isChunked(response)) {
            return -1L;
        }
        return _UtilJvmKt.headersContentLength(response);
    }

    @Override // okhttp3.internal.http.ExchangeCodec
    public Source openResponseBodySource(Response response) {
        if (!HttpHeaders.promisesBody(response)) {
            return newFixedLengthSource(response.request().url(), 0L);
        }
        if (isChunked(response)) {
            return newChunkedSource(response.request().url());
        }
        long jHeadersContentLength = _UtilJvmKt.headersContentLength(response);
        if (jHeadersContentLength != -1) {
            return newFixedLengthSource(response.request().url(), jHeadersContentLength);
        }
        return newUnknownLengthSource(response.request().url());
    }

    @Override // okhttp3.internal.http.ExchangeCodec
    public Headers peekTrailers() throws IOException {
        Headers headers = this.trailers;
        if (headers == TRAILERS_RESPONSE_BODY_TRUNCATED) {
            Model$$ExternalSyntheticBUOutline0.m1054m("Trailers cannot be read because the response body was truncated");
            return null;
        }
        int i = this.state;
        if (i == 5 || i == 6) {
            return headers;
        }
        Response$Builder$$ExternalSyntheticBUOutline1.m906m("Trailers cannot be read because the state is ", this.state);
        return null;
    }

    @Override // okhttp3.internal.http.ExchangeCodec
    public void flushRequest() {
        getSocket().getSink().flush();
    }

    @Override // okhttp3.internal.http.ExchangeCodec
    public void finishRequest() {
        getSocket().getSink().flush();
    }

    public final void writeRequest(Headers headers, String requestLine) {
        if (this.state != 0) {
            Response$Builder$$ExternalSyntheticBUOutline1.m906m("state: ", this.state);
            return;
        }
        getSocket().getSink().writeUtf8(requestLine).writeUtf8("\r\n");
        int size = headers.size();
        for (int i = 0; i < size; i++) {
            getSocket().getSink().writeUtf8(headers.name(i)).writeUtf8(": ").writeUtf8(headers.value(i)).writeUtf8("\r\n");
        }
        getSocket().getSink().writeUtf8("\r\n");
        this.state = 1;
    }

    @Override // okhttp3.internal.http.ExchangeCodec
    public Response.Builder readResponseHeaders(boolean expectContinue) throws IOException {
        int i = this.state;
        if (i != 0 && i != 1 && i != 2 && i != 3) {
            Response$Builder$$ExternalSyntheticBUOutline1.m906m("state: ", this.state);
            return null;
        }
        try {
            StatusLine statusLine = StatusLine.INSTANCE.parse(this.headersReader.readLine());
            Response.Builder builderHeaders = new Response.Builder().protocol(statusLine.protocol).code(statusLine.code).message(statusLine.message).headers(this.headersReader.readHeaders());
            if (expectContinue && statusLine.code == 100) {
                return null;
            }
            int i2 = statusLine.code;
            if (i2 == 100) {
                this.state = 3;
                return builderHeaders;
            }
            if (102 <= i2 && i2 < 200) {
                this.state = 3;
                return builderHeaders;
            }
            this.state = 4;
            return builderHeaders;
        } catch (EOFException e) {
            throw new IOException("unexpected end of stream on " + getCarrier().getRoute().address().url().redact(), e);
        }
    }

    private final Sink newChunkedSink() {
        if (this.state != 1) {
            Response$Builder$$ExternalSyntheticBUOutline1.m906m("state: ", this.state);
            return null;
        }
        this.state = 2;
        return new ChunkedSink();
    }

    private final Sink newKnownLengthSink() {
        if (this.state != 1) {
            Response$Builder$$ExternalSyntheticBUOutline1.m906m("state: ", this.state);
            return null;
        }
        this.state = 2;
        return new KnownLengthSink();
    }

    private final Source newFixedLengthSource(HttpUrl url, long length) {
        if (this.state != 4) {
            Response$Builder$$ExternalSyntheticBUOutline1.m906m("state: ", this.state);
            return null;
        }
        this.state = 5;
        return new FixedLengthSource(url, length);
    }

    private final Source newChunkedSource(HttpUrl url) {
        if (this.state != 4) {
            Response$Builder$$ExternalSyntheticBUOutline1.m906m("state: ", this.state);
            return null;
        }
        this.state = 5;
        return new ChunkedSource(url);
    }

    private final Source newUnknownLengthSource(HttpUrl url) {
        if (this.state != 4) {
            Response$Builder$$ExternalSyntheticBUOutline1.m906m("state: ", this.state);
            return null;
        }
        this.state = 5;
        getCarrier().noNewExchanges();
        return new UnknownLengthSource(url);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void detachTimeout(ForwardingTimeout timeout) {
        Timeout delegate = timeout.getDelegate();
        timeout.setDelegate(Timeout.NONE);
        delegate.clearDeadline();
        delegate.clearTimeout();
    }

    public final void skipConnectBody(Response response) {
        long jHeadersContentLength = _UtilJvmKt.headersContentLength(response);
        if (jHeadersContentLength == -1) {
            return;
        }
        Source sourceNewFixedLengthSource = newFixedLengthSource(response.request().url(), jHeadersContentLength);
        _UtilJvmKt.skipAll(sourceNewFixedLengthSource, Integer.MAX_VALUE, TimeUnit.MILLISECONDS);
        sourceNewFixedLengthSource.close();
    }

    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0003\b\u0082\u0004\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\b\u0010\u0004\u001a\u00020\bH\u0016J\u0018\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000eH\u0016J\b\u0010\u000f\u001a\u00020\nH\u0016J\b\u0010\u0010\u001a\u00020\nH\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0011"}, d2 = {"Lokhttp3/internal/http1/Http1ExchangeCodec$KnownLengthSink;", "Lokio/Sink;", "<init>", "(Lokhttp3/internal/http1/Http1ExchangeCodec;)V", "timeout", "Lokio/ForwardingTimeout;", "closed", _UrlKt.FRAGMENT_ENCODE_SET, "Lokio/Timeout;", "write", _UrlKt.FRAGMENT_ENCODE_SET, "source", "Lokio/Buffer;", "byteCount", _UrlKt.FRAGMENT_ENCODE_SET, "flush", "close", "okhttp"}, m862k = 1, mv = {2, 2, 0}, xi = 48)
    @SourceDebugExtension({"SMAP\nHttp1ExchangeCodec.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Http1ExchangeCodec.kt\nokhttp3/internal/http1/Http1ExchangeCodec$KnownLengthSink\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,562:1\n1#2:563\n*E\n"})
    public final class KnownLengthSink implements Sink {
        private boolean closed;
        private final ForwardingTimeout timeout;

        public KnownLengthSink() {
            this.timeout = new ForwardingTimeout(Http1ExchangeCodec.this.getSocket().getSink().getTimeout());
        }

        @Override // okio.Sink
        /* JADX INFO: renamed from: timeout */
        public Timeout getTimeout() {
            return this.timeout;
        }

        @Override // okio.Sink
        public void write(Buffer source, long byteCount) {
            if (this.closed) {
                Segment$$ExternalSyntheticBUOutline1.m925m("closed");
            } else {
                _UtilCommonKt.checkOffsetAndCount(source.getSize(), 0L, byteCount);
                Http1ExchangeCodec.this.getSocket().getSink().write(source, byteCount);
            }
        }

        @Override // okio.Sink, java.io.Flushable
        public void flush() {
            if (this.closed) {
                return;
            }
            Http1ExchangeCodec.this.getSocket().getSink().flush();
        }

        @Override // okio.Sink, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            if (this.closed) {
                return;
            }
            this.closed = true;
            Http1ExchangeCodec.this.detachTimeout(this.timeout);
            Http1ExchangeCodec.this.state = 3;
        }
    }

    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0003\b\u0082\u0004\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\b\u0010\u0004\u001a\u00020\bH\u0016J\u0018\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000eH\u0016J\b\u0010\u000f\u001a\u00020\nH\u0016J\b\u0010\u0010\u001a\u00020\nH\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0011"}, d2 = {"Lokhttp3/internal/http1/Http1ExchangeCodec$ChunkedSink;", "Lokio/Sink;", "<init>", "(Lokhttp3/internal/http1/Http1ExchangeCodec;)V", "timeout", "Lokio/ForwardingTimeout;", "closed", _UrlKt.FRAGMENT_ENCODE_SET, "Lokio/Timeout;", "write", _UrlKt.FRAGMENT_ENCODE_SET, "source", "Lokio/Buffer;", "byteCount", _UrlKt.FRAGMENT_ENCODE_SET, "flush", "close", "okhttp"}, m862k = 1, mv = {2, 2, 0}, xi = 48)
    @SourceDebugExtension({"SMAP\nHttp1ExchangeCodec.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Http1ExchangeCodec.kt\nokhttp3/internal/http1/Http1ExchangeCodec$ChunkedSink\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,562:1\n1#2:563\n*E\n"})
    public final class ChunkedSink implements Sink {
        private boolean closed;
        private final ForwardingTimeout timeout;

        public ChunkedSink() {
            this.timeout = new ForwardingTimeout(Http1ExchangeCodec.this.getSocket().getSink().getTimeout());
        }

        @Override // okio.Sink
        /* JADX INFO: renamed from: timeout */
        public Timeout getTimeout() {
            return this.timeout;
        }

        @Override // okio.Sink
        public void write(Buffer source, long byteCount) {
            if (this.closed) {
                Segment$$ExternalSyntheticBUOutline1.m925m("closed");
                return;
            }
            if (byteCount == 0) {
                return;
            }
            BufferedSink sink = Http1ExchangeCodec.this.getSocket().getSink();
            sink.writeHexadecimalUnsignedLong(byteCount);
            sink.writeUtf8("\r\n");
            sink.write(source, byteCount);
            sink.writeUtf8("\r\n");
        }

        @Override // okio.Sink, java.io.Flushable
        public synchronized void flush() {
            if (this.closed) {
                return;
            }
            Http1ExchangeCodec.this.getSocket().getSink().flush();
        }

        @Override // okio.Sink, java.io.Closeable, java.lang.AutoCloseable
        public synchronized void close() {
            if (this.closed) {
                return;
            }
            this.closed = true;
            Http1ExchangeCodec.this.getSocket().getSink().writeUtf8("0\r\n\r\n");
            Http1ExchangeCodec.this.detachTimeout(this.timeout);
            Http1ExchangeCodec.this.state = 3;
        }
    }

    @Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b¢\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\b\u0010\b\u001a\u00020\u0012H\u0016J\u0018\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0014H\u0016J\u000e\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001bR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u0014\u0010\b\u001a\u00020\tX\u0084\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u001a\u0010\f\u001a\u00020\rX\u0084\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011¨\u0006\u001c"}, d2 = {"Lokhttp3/internal/http1/Http1ExchangeCodec$AbstractSource;", "Lokio/Source;", "url", "Lokhttp3/HttpUrl;", "<init>", "(Lokhttp3/internal/http1/Http1ExchangeCodec;Lokhttp3/HttpUrl;)V", "getUrl", "()Lokhttp3/HttpUrl;", "timeout", "Lokio/ForwardingTimeout;", "getTimeout", "()Lokio/ForwardingTimeout;", "closed", _UrlKt.FRAGMENT_ENCODE_SET, "getClosed", "()Z", "setClosed", "(Z)V", "Lokio/Timeout;", "read", _UrlKt.FRAGMENT_ENCODE_SET, "sink", "Lokio/Buffer;", "byteCount", "responseBodyComplete", _UrlKt.FRAGMENT_ENCODE_SET, "trailers", "Lokhttp3/Headers;", "okhttp"}, m862k = 1, mv = {2, 2, 0}, xi = 48)
    public abstract class AbstractSource implements Source {
        private boolean closed;
        private final ForwardingTimeout timeout;
        private final HttpUrl url;

        @Override // okio.Source, java.io.Closeable, java.lang.AutoCloseable
        public abstract /* synthetic */ void close();

        public AbstractSource(HttpUrl httpUrl) {
            this.url = httpUrl;
            this.timeout = new ForwardingTimeout(Http1ExchangeCodec.this.getSocket().getSource().getTimeout());
        }

        public final HttpUrl getUrl() {
            return this.url;
        }

        public final ForwardingTimeout getTimeout() {
            return this.timeout;
        }

        public final boolean getClosed() {
            return this.closed;
        }

        public final void setClosed(boolean z) {
            this.closed = z;
        }

        @Override // okio.Source
        /* JADX INFO: renamed from: timeout */
        public Timeout getTimeout() {
            return this.timeout;
        }

        @Override // okio.Source
        public long read(Buffer sink, long byteCount) throws IOException {
            try {
                return Http1ExchangeCodec.this.getSocket().getSource().read(sink, byteCount);
            } catch (IOException e) {
                Http1ExchangeCodec.this.getCarrier().noNewExchanges();
                this.responseBodyComplete(Http1ExchangeCodec.TRAILERS_RESPONSE_BODY_TRUNCATED);
                throw e;
            }
        }

        public final void responseBodyComplete(Headers trailers) {
            OkHttpClient okHttpClient;
            CookieJar cookieJar;
            if (Http1ExchangeCodec.this.state == 6) {
                return;
            }
            int i = Http1ExchangeCodec.this.state;
            Http1ExchangeCodec http1ExchangeCodec = Http1ExchangeCodec.this;
            if (i == 5) {
                http1ExchangeCodec.detachTimeout(this.timeout);
                Http1ExchangeCodec.this.trailers = trailers;
                Http1ExchangeCodec.this.state = 6;
                if (trailers.size() <= 0 || (okHttpClient = Http1ExchangeCodec.this.client) == null || (cookieJar = okHttpClient.cookieJar()) == null) {
                    return;
                }
                HttpHeaders.receiveHeaders(cookieJar, this.url, trailers);
                return;
            }
            WearAuthSheet$$ExternalSyntheticBUOutline0.m1051m("state: ", http1ExchangeCodec.state);
        }
    }

    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\b\u0082\u0004\u0018\u00002\u00060\u0001R\u00020\u0002B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0004\b\u0007\u0010\bJ\u0018\u0010\t\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u0006H\u0016J\b\u0010\r\u001a\u00020\u000eH\u0016R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u000f"}, d2 = {"Lokhttp3/internal/http1/Http1ExchangeCodec$FixedLengthSource;", "Lokhttp3/internal/http1/Http1ExchangeCodec$AbstractSource;", "Lokhttp3/internal/http1/Http1ExchangeCodec;", "url", "Lokhttp3/HttpUrl;", "bytesRemaining", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "(Lokhttp3/internal/http1/Http1ExchangeCodec;Lokhttp3/HttpUrl;J)V", "read", "sink", "Lokio/Buffer;", "byteCount", "close", _UrlKt.FRAGMENT_ENCODE_SET, "okhttp"}, m862k = 1, mv = {2, 2, 0}, xi = 48)
    @SourceDebugExtension({"SMAP\nHttp1ExchangeCodec.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Http1ExchangeCodec.kt\nokhttp3/internal/http1/Http1ExchangeCodec$FixedLengthSource\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,562:1\n1#2:563\n*E\n"})
    public final class FixedLengthSource extends AbstractSource {
        private long bytesRemaining;

        public FixedLengthSource(HttpUrl httpUrl, long j) {
            super(httpUrl);
            this.bytesRemaining = j;
            if (j == 0) {
                responseBodyComplete(Headers.EMPTY);
            }
        }

        @Override // okhttp3.internal.http1.Http1ExchangeCodec.AbstractSource, okio.Source
        public long read(Buffer sink, long byteCount) throws IOException {
            if (byteCount < 0) {
                Buffer$$ExternalSyntheticBUOutline3.m918m("byteCount < 0: ", byteCount);
                return 0L;
            }
            if (getClosed()) {
                Segment$$ExternalSyntheticBUOutline1.m925m("closed");
                return 0L;
            }
            long j = this.bytesRemaining;
            if (j == 0) {
                return -1L;
            }
            long j2 = super.read(sink, Math.min(j, byteCount));
            if (j2 == -1) {
                Http1ExchangeCodec.this.getCarrier().noNewExchanges();
                ProtocolException protocolException = new ProtocolException("unexpected end of stream");
                responseBodyComplete(Http1ExchangeCodec.TRAILERS_RESPONSE_BODY_TRUNCATED);
                throw protocolException;
            }
            long j3 = this.bytesRemaining - j2;
            this.bytesRemaining = j3;
            if (j3 == 0) {
                responseBodyComplete(Headers.EMPTY);
            }
            return j2;
        }

        @Override // okhttp3.internal.http1.Http1ExchangeCodec.AbstractSource, okio.Source, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            if (getClosed()) {
                return;
            }
            if (this.bytesRemaining != 0 && !_UtilJvmKt.discard(this, 100, TimeUnit.MILLISECONDS)) {
                Http1ExchangeCodec.this.getCarrier().noNewExchanges();
                responseBodyComplete(Http1ExchangeCodec.TRAILERS_RESPONSE_BODY_TRUNCATED);
            }
            setClosed(true);
        }
    }

    @Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\b\u0082\u0004\u0018\u00002\u00060\u0001R\u00020\u0002B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0004\b\u0005\u0010\u0006J\u0018\u0010\u000b\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\bH\u0016J\b\u0010\u000f\u001a\u00020\u0010H\u0002J\b\u0010\u0011\u001a\u00020\u0010H\u0016R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0012"}, d2 = {"Lokhttp3/internal/http1/Http1ExchangeCodec$ChunkedSource;", "Lokhttp3/internal/http1/Http1ExchangeCodec$AbstractSource;", "Lokhttp3/internal/http1/Http1ExchangeCodec;", "url", "Lokhttp3/HttpUrl;", "<init>", "(Lokhttp3/internal/http1/Http1ExchangeCodec;Lokhttp3/HttpUrl;)V", "bytesRemainingInChunk", _UrlKt.FRAGMENT_ENCODE_SET, "hasMoreChunks", _UrlKt.FRAGMENT_ENCODE_SET, "read", "sink", "Lokio/Buffer;", "byteCount", "readChunkSize", _UrlKt.FRAGMENT_ENCODE_SET, "close", "okhttp"}, m862k = 1, mv = {2, 2, 0}, xi = 48)
    @SourceDebugExtension({"SMAP\nHttp1ExchangeCodec.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Http1ExchangeCodec.kt\nokhttp3/internal/http1/Http1ExchangeCodec$ChunkedSource\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,562:1\n1#2:563\n*E\n"})
    public final class ChunkedSource extends AbstractSource {
        private long bytesRemainingInChunk;
        private boolean hasMoreChunks;

        public ChunkedSource(HttpUrl httpUrl) {
            super(httpUrl);
            this.bytesRemainingInChunk = -1L;
            this.hasMoreChunks = true;
        }

        @Override // okhttp3.internal.http1.Http1ExchangeCodec.AbstractSource, okio.Source
        public long read(Buffer sink, long byteCount) throws IOException {
            if (byteCount < 0) {
                Buffer$$ExternalSyntheticBUOutline3.m918m("byteCount < 0: ", byteCount);
                return 0L;
            }
            if (getClosed()) {
                Segment$$ExternalSyntheticBUOutline1.m925m("closed");
                return 0L;
            }
            if (!this.hasMoreChunks) {
                return -1L;
            }
            long j = this.bytesRemainingInChunk;
            if (j == 0 || j == -1) {
                readChunkSize();
                if (!this.hasMoreChunks) {
                    return -1L;
                }
            }
            long j2 = super.read(sink, Math.min(byteCount, this.bytesRemainingInChunk));
            if (j2 == -1) {
                Http1ExchangeCodec.this.getCarrier().noNewExchanges();
                ProtocolException protocolException = new ProtocolException("unexpected end of stream");
                responseBodyComplete(Http1ExchangeCodec.TRAILERS_RESPONSE_BODY_TRUNCATED);
                throw protocolException;
            }
            this.bytesRemainingInChunk -= j2;
            return j2;
        }

        private final void readChunkSize() throws ProtocolException {
            if (this.bytesRemainingInChunk != -1) {
                Http1ExchangeCodec.this.getSocket().getSource().readUtf8LineStrict();
            }
            try {
                this.bytesRemainingInChunk = Http1ExchangeCodec.this.getSocket().getSource().readHexadecimalUnsignedLong();
                String string = StringsKt.trim((CharSequence) Http1ExchangeCodec.this.getSocket().getSource().readUtf8LineStrict()).toString();
                if (this.bytesRemainingInChunk < 0 || (string.length() > 0 && !StringsKt.startsWith$default(string, ";", false, 2, (Object) null))) {
                    throw new ProtocolException("expected chunk size and optional extensions but was \"" + this.bytesRemainingInChunk + string + Typography.quote);
                }
                if (this.bytesRemainingInChunk == 0) {
                    this.hasMoreChunks = false;
                    responseBodyComplete(Http1ExchangeCodec.this.headersReader.readHeaders());
                }
            } catch (NumberFormatException e) {
                throw new ProtocolException(e.getMessage());
            }
        }

        @Override // okhttp3.internal.http1.Http1ExchangeCodec.AbstractSource, okio.Source, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            if (getClosed()) {
                return;
            }
            if (this.hasMoreChunks && !_UtilJvmKt.discard(this, 100, TimeUnit.MILLISECONDS)) {
                Http1ExchangeCodec.this.getCarrier().noNewExchanges();
                responseBodyComplete(Http1ExchangeCodec.TRAILERS_RESPONSE_BODY_TRUNCATED);
            }
            setClosed(true);
        }
    }

    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\b\u0082\u0004\u0018\u00002\u00060\u0001R\u00020\u0002B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0004\b\u0005\u0010\u0006J\u0018\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\nH\u0016J\b\u0010\u000e\u001a\u00020\u000fH\u0016R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0010"}, d2 = {"Lokhttp3/internal/http1/Http1ExchangeCodec$UnknownLengthSource;", "Lokhttp3/internal/http1/Http1ExchangeCodec$AbstractSource;", "Lokhttp3/internal/http1/Http1ExchangeCodec;", "url", "Lokhttp3/HttpUrl;", "<init>", "(Lokhttp3/internal/http1/Http1ExchangeCodec;Lokhttp3/HttpUrl;)V", "inputExhausted", _UrlKt.FRAGMENT_ENCODE_SET, "read", _UrlKt.FRAGMENT_ENCODE_SET, "sink", "Lokio/Buffer;", "byteCount", "close", _UrlKt.FRAGMENT_ENCODE_SET, "okhttp"}, m862k = 1, mv = {2, 2, 0}, xi = 48)
    @SourceDebugExtension({"SMAP\nHttp1ExchangeCodec.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Http1ExchangeCodec.kt\nokhttp3/internal/http1/Http1ExchangeCodec$UnknownLengthSource\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,562:1\n1#2:563\n*E\n"})
    public final class UnknownLengthSource extends AbstractSource {
        private boolean inputExhausted;

        public UnknownLengthSource(HttpUrl httpUrl) {
            super(httpUrl);
        }

        @Override // okhttp3.internal.http1.Http1ExchangeCodec.AbstractSource, okio.Source
        public long read(Buffer sink, long byteCount) throws IOException {
            if (byteCount < 0) {
                Buffer$$ExternalSyntheticBUOutline3.m918m("byteCount < 0: ", byteCount);
                return 0L;
            }
            if (getClosed()) {
                Segment$$ExternalSyntheticBUOutline1.m925m("closed");
                return 0L;
            }
            if (this.inputExhausted) {
                return -1L;
            }
            long j = super.read(sink, byteCount);
            if (j != -1) {
                return j;
            }
            this.inputExhausted = true;
            responseBodyComplete(Headers.EMPTY);
            return -1L;
        }

        @Override // okhttp3.internal.http1.Http1ExchangeCodec.AbstractSource, okio.Source, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            if (getClosed()) {
                return;
            }
            if (!this.inputExhausted) {
                responseBodyComplete(Http1ExchangeCodec.TRAILERS_RESPONSE_BODY_TRUNCATED);
            }
            setClosed(true);
        }
    }
}
