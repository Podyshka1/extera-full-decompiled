package okhttp3.internal.cache2;

import java.io.IOException;
import java.nio.channels.FileChannel;
import kotlin.Metadata;
import okhttp3.internal.url._UrlKt;
import okio.Buffer;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u001e\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\tJ\u001e\u0010\r\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\u000e\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\tR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u000f"}, d2 = {"Lokhttp3/internal/cache2/FileOperator;", _UrlKt.FRAGMENT_ENCODE_SET, "fileChannel", "Ljava/nio/channels/FileChannel;", "<init>", "(Ljava/nio/channels/FileChannel;)V", "write", _UrlKt.FRAGMENT_ENCODE_SET, "pos", _UrlKt.FRAGMENT_ENCODE_SET, "source", "Lokio/Buffer;", "byteCount", "read", "sink", "okhttp"}, m754k = 1, mv = {2, 2, 0}, xi = 48)
public final class FileOperator {
    private final FileChannel fileChannel;

    public FileOperator(FileChannel fileChannel) {
        this.fileChannel = fileChannel;
    }

    public final void write(long pos, Buffer source, long byteCount) throws IOException {
        if (byteCount < 0 || byteCount > source.getSize()) {
            throw new IndexOutOfBoundsException();
        }
        long j = pos;
        long j2 = byteCount;
        while (j2 > 0) {
            long jTransferFrom = this.fileChannel.transferFrom(source, j, j2);
            j += jTransferFrom;
            j2 -= jTransferFrom;
        }
    }

    public final void read(long pos, Buffer sink, long byteCount) throws IOException {
        if (byteCount < 0) {
            throw new IndexOutOfBoundsException();
        }
        long j = pos;
        long j2 = byteCount;
        while (j2 > 0) {
            long jTransferTo = this.fileChannel.transferTo(j, j2, sink);
            j += jTransferTo;
            j2 -= jTransferTo;
        }
    }
}
