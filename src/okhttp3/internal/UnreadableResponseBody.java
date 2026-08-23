package okhttp3.internal;

import kotlin.Metadata;
import okhttp3.MediaType;
import okhttp3.ResponseBody;
import okhttp3.internal.url._UrlKt;
import okio.Buffer;
import okio.BufferedSource;
import okio.Okio;
import okio.Source;
import okio.Timeout;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\b\u0000\u0018\u00002\u00020\u00012\u00020\u0002B\u0019\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0004\b\u0007\u0010\bJ\n\u0010\t\u001a\u0004\u0018\u00010\u0004H\u0016J\b\u0010\u0005\u001a\u00020\u0006H\u0016J\b\u0010\n\u001a\u00020\u000bH\u0016J\u0018\u0010\f\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0006H\u0016J\b\u0010\u0010\u001a\u00020\u0011H\u0016J\b\u0010\u0012\u001a\u00020\u0013H\u0016R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0014"}, d2 = {"Lokhttp3/internal/UnreadableResponseBody;", "Lokhttp3/ResponseBody;", "Lokio/Source;", "mediaType", "Lokhttp3/MediaType;", "contentLength", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "(Lokhttp3/MediaType;J)V", "contentType", "source", "Lokio/BufferedSource;", "read", "sink", "Lokio/Buffer;", "byteCount", "timeout", "Lokio/Timeout;", "close", _UrlKt.FRAGMENT_ENCODE_SET, "okhttp"}, m754k = 1, mv = {2, 2, 0}, xi = 48)
public final class UnreadableResponseBody extends ResponseBody implements Source {
    private final long contentLength;
    private final MediaType mediaType;

    @Override // okhttp3.ResponseBody, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
    }

    public UnreadableResponseBody(MediaType mediaType, long j) {
        this.mediaType = mediaType;
        this.contentLength = j;
    }

    @Override // okhttp3.ResponseBody
    /* JADX INFO: renamed from: contentType, reason: from getter */
    public MediaType getMediaType() {
        return this.mediaType;
    }

    @Override // okhttp3.ResponseBody
    /* JADX INFO: renamed from: contentLength, reason: from getter */
    public long getContentLength() {
        return this.contentLength;
    }

    @Override // okhttp3.ResponseBody
    /* JADX INFO: renamed from: source */
    public BufferedSource getBodySource() {
        return Okio.buffer(this);
    }

    @Override // okio.Source
    public long read(Buffer sink, long byteCount) {
        throw new IllegalStateException("Unreadable ResponseBody! These Response objects have bodies that are stripped:\n * Response.cacheResponse\n * Response.networkResponse\n * Response.priorResponse\n * EventSourceListener\n * WebSocketListener\n(It is safe to call contentType() and contentLength() on these response bodies.)");
    }

    @Override // okio.Source
    /* JADX INFO: renamed from: timeout */
    public Timeout getTimeout() {
        return Timeout.NONE;
    }
}
