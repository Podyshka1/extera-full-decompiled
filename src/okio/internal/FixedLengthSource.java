package okio.internal;

import java.io.EOFException;
import java.io.IOException;
import kotlin.Metadata;
import okhttp3.internal.url._UrlKt;
import okio.Buffer;
import okio.ForwardingSource;
import okio.Source;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\b\u0000\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0004\b\b\u0010\tJ\u0018\u0010\u000b\u001a\u00020\u00052\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u0005H\u0016J\u0014\u0010\u000f\u001a\u00020\u0010*\u00020\r2\u0006\u0010\u0011\u001a\u00020\u0005H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0005X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0012"}, d2 = {"Lokio/internal/FixedLengthSource;", "Lokio/ForwardingSource;", "delegate", "Lokio/Source;", "size", _UrlKt.FRAGMENT_ENCODE_SET, "truncate", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "(Lokio/Source;JZ)V", "bytesReceived", "read", "sink", "Lokio/Buffer;", "byteCount", "truncateToSize", _UrlKt.FRAGMENT_ENCODE_SET, "newSize", "okio"}, m754k = 1, mv = {2, 2, 0}, xi = 48)
public final class FixedLengthSource extends ForwardingSource {
    private long bytesReceived;
    private final long size;
    private final boolean truncate;

    public FixedLengthSource(Source source, long j, boolean z) {
        super(source);
        this.size = j;
        this.truncate = z;
    }

    @Override // okio.ForwardingSource, okio.Source
    public long read(Buffer sink, long byteCount) throws IOException {
        long j = this.bytesReceived;
        long j2 = this.size;
        if (j > j2) {
            byteCount = 0;
        } else if (this.truncate) {
            long j3 = j2 - j;
            if (j3 == 0) {
                return -1L;
            }
            byteCount = Math.min(byteCount, j3);
        }
        long j4 = super.read(sink, byteCount);
        if (j4 != -1) {
            this.bytesReceived += j4;
        }
        long j5 = this.bytesReceived;
        long j6 = this.size;
        if ((j5 >= j6 || j4 != -1) && j5 <= j6) {
            return j4;
        }
        if (j4 > 0 && j5 > j6) {
            truncateToSize(sink, sink.getSize() - (this.bytesReceived - this.size));
        }
        throw new IOException("expected " + this.size + " bytes but got " + this.bytesReceived);
    }

    private final void truncateToSize(Buffer buffer, long j) throws EOFException {
        Buffer buffer2 = new Buffer();
        buffer2.writeAll(buffer);
        buffer.write(buffer2, j);
        buffer2.clear();
    }
}
