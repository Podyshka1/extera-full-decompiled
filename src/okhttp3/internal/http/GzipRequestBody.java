package okhttp3.internal.http;

import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import kotlin.p024io.CloseableKt;
import okhttp3.MediaType;
import okhttp3.RequestBody;
import okio.BufferedSink;
import okio.GzipSink;
import okio.Okio;

/* JADX INFO: loaded from: classes5.dex */
public final class GzipRequestBody extends RequestBody {
    private final RequestBody delegate;

    @Override // okhttp3.RequestBody
    public long contentLength() {
        return -1L;
    }

    public GzipRequestBody(RequestBody delegate) {
        Intrinsics.checkNotNullParameter(delegate, "delegate");
        this.delegate = delegate;
    }

    public final RequestBody getDelegate() {
        return this.delegate;
    }

    @Override // okhttp3.RequestBody
    public MediaType contentType() {
        return this.delegate.contentType();
    }

    @Override // okhttp3.RequestBody
    public void writeTo(BufferedSink sink) {
        Intrinsics.checkNotNullParameter(sink, "sink");
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
