package okio;

import kotlin.Metadata;
import kotlin.jvm.internal.SourceDebugExtension;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\b\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u0018\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\u00072\u0006\u0010\u0012\u001a\u00020\u000fH\u0016J\b\u0010\u0013\u001a\u00020\u0014H\u0016J\b\u0010\u0015\u001a\u00020\u0016H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\b\u001a\u0004\u0018\u00010\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\rX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0017"}, d2 = {"Lokio/PeekSource;", "Lokio/Source;", "upstream", "Lokio/BufferedSource;", "<init>", "(Lokio/BufferedSource;)V", "buffer", "Lokio/Buffer;", "expectedSegment", "Lokio/Segment;", "expectedPos", _UrlKt.FRAGMENT_ENCODE_SET, "closed", _UrlKt.FRAGMENT_ENCODE_SET, "pos", _UrlKt.FRAGMENT_ENCODE_SET, "read", "sink", "byteCount", "timeout", "Lokio/Timeout;", "close", _UrlKt.FRAGMENT_ENCODE_SET, "okio"}, m754k = 1, mv = {2, 2, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nPeekSource.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PeekSource.kt\nokio/PeekSource\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,74:1\n1#2:75\n*E\n"})
public final class PeekSource implements Source {
    private final Buffer buffer;
    private boolean closed;
    private int expectedPos;
    private Segment expectedSegment;
    private long pos;
    private final BufferedSource upstream;

    public PeekSource(BufferedSource bufferedSource) {
        this.upstream = bufferedSource;
        Buffer buffer = bufferedSource.getBufferField();
        this.buffer = buffer;
        Segment segment = buffer.head;
        this.expectedSegment = segment;
        this.expectedPos = segment != null ? segment.pos : -1;
    }

    @Override // okio.Source
    public long read(Buffer sink, long byteCount) {
        Segment segment;
        Segment segment2;
        if (byteCount < 0) {
            Buffer$$ExternalSyntheticBUOutline3.m836m("byteCount < 0: ", byteCount);
            return 0L;
        }
        if (this.closed) {
            Segment$$ExternalSyntheticBUOutline1.m848m("closed");
            return 0L;
        }
        Segment segment3 = this.expectedSegment;
        if (segment3 != null && (segment3 != (segment2 = this.buffer.head) || this.expectedPos != segment2.pos)) {
            Segment$$ExternalSyntheticBUOutline1.m848m("Peek source is invalid because upstream source was used");
            return 0L;
        }
        if (byteCount == 0) {
            return 0L;
        }
        if (!this.upstream.request(this.pos + 1)) {
            return -1L;
        }
        if (this.expectedSegment == null && (segment = this.buffer.head) != null) {
            this.expectedSegment = segment;
            this.expectedPos = segment.pos;
        }
        long jMin = Math.min(byteCount, this.buffer.getSize() - this.pos);
        this.buffer.copyTo(sink, this.pos, jMin);
        this.pos += jMin;
        return jMin;
    }

    @Override // okio.Source
    /* JADX INFO: renamed from: timeout */
    public Timeout getTimeout() {
        return this.upstream.getTimeout();
    }

    @Override // okio.Source, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.closed = true;
    }
}
