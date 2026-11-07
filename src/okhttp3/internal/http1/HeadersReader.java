package okhttp3.internal.http1;

import com.google.android.gms.cast.MediaStatus;
import kotlin.Metadata;
import okhttp3.Headers;
import okhttp3.internal.url._UrlKt;
import okio.BufferedSource;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u0000 \u000e2\u00020\u0001:\u0001\u000eB\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u0006\u0010\n\u001a\u00020\u000bJ\u0006\u0010\f\u001a\u00020\rR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u000e\u0010\b\u001a\u00020\tX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u000f"}, d2 = {"Lokhttp3/internal/http1/HeadersReader;", _UrlKt.FRAGMENT_ENCODE_SET, "source", "Lokio/BufferedSource;", "<init>", "(Lokio/BufferedSource;)V", "getSource", "()Lokio/BufferedSource;", "headerLimit", _UrlKt.FRAGMENT_ENCODE_SET, "readLine", _UrlKt.FRAGMENT_ENCODE_SET, "readHeaders", "Lokhttp3/Headers;", "Companion", "okhttp"}, m862k = 1, mv = {2, 2, 0}, xi = 48)
public final class HeadersReader {
    private static final int HEADER_LIMIT = 262144;
    private long headerLimit = MediaStatus.COMMAND_STREAM_TRANSFER;
    private final BufferedSource source;

    public HeadersReader(BufferedSource bufferedSource) {
        this.source = bufferedSource;
    }

    public final BufferedSource getSource() {
        return this.source;
    }

    public final String readLine() {
        String utf8LineStrict = this.source.readUtf8LineStrict(this.headerLimit);
        this.headerLimit -= (long) utf8LineStrict.length();
        return utf8LineStrict;
    }

    public final Headers readHeaders() {
        Headers.Builder builder = new Headers.Builder();
        while (true) {
            String line = readLine();
            if (line.length() != 0) {
                builder.addLenient$okhttp(line);
            } else {
                return builder.build();
            }
        }
    }
}
