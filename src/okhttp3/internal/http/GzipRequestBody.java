package okhttp3.internal.http;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.io.CloseableKt;
import kotlin.jvm.internal.SourceDebugExtension;
import okhttp3.MediaType;
import okhttp3.RequestBody;
import okhttp3.internal.url._UrlKt;
import okio.BufferedSink;
import okio.GzipSink;
import okio.Okio;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\b\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0001¢\u0006\u0004\b\u0003\u0010\u0004J\n\u0010\u0007\u001a\u0004\u0018\u00010\bH\u0016J\b\u0010\t\u001a\u00020\nH\u0016J\u0010\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000eH\u0016J\b\u0010\u000f\u001a\u00020\u0010H\u0016R\u0011\u0010\u0002\u001a\u00020\u0001¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0011"}, d2 = {"Lokhttp3/internal/http/GzipRequestBody;", "Lokhttp3/RequestBody;", "delegate", "<init>", "(Lokhttp3/RequestBody;)V", "getDelegate", "()Lokhttp3/RequestBody;", "contentType", "Lokhttp3/MediaType;", "contentLength", _UrlKt.FRAGMENT_ENCODE_SET, "writeTo", _UrlKt.FRAGMENT_ENCODE_SET, "sink", "Lokio/BufferedSink;", "isOneShot", _UrlKt.FRAGMENT_ENCODE_SET, "okhttp"}, m754k = 1, mv = {2, 2, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nGzipRequestBody.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GzipRequestBody.kt\nokhttp3/internal/http/GzipRequestBody\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,37:1\n1#2:38\n*E\n"})
public final class GzipRequestBody extends RequestBody {
    private final RequestBody delegate;

    @Override // okhttp3.RequestBody
    public long contentLength() {
        return -1L;
    }

    public GzipRequestBody(RequestBody requestBody) {
        this.delegate = requestBody;
    }

    public final RequestBody getDelegate() {
        return this.delegate;
    }

    @Override // okhttp3.RequestBody
    /* JADX INFO: renamed from: contentType */
    public MediaType get$contentType() {
        return this.delegate.get$contentType();
    }

    @Override // okhttp3.RequestBody
    public void writeTo(BufferedSink sink) {
        BufferedSink bufferedSinkBuffer = Okio.buffer(new GzipSink(sink));
        try {
            this.delegate.writeTo(bufferedSinkBuffer);
            Unit unit = Unit.INSTANCE;
            CloseableKt.closeFinally(bufferedSinkBuffer, null);
        } finally {
        }
    }

    @Override // okhttp3.RequestBody
    public boolean isOneShot() {
        return this.delegate.isOneShot();
    }
}
