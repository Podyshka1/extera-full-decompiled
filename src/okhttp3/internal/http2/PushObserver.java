package okhttp3.internal.http2;

import com.exteragram.messenger.plugins.PluginsConstants;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.JvmField;
import okhttp3.internal.url._UrlKt;
import okio.BufferedSource;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\bf\u0018\u0000 \u00142\u00020\u0001:\u0001\u0014J\u001e\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007H&J&\u0010\t\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\b0\u00072\u0006\u0010\u000b\u001a\u00020\u0003H&J(\u0010\f\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\u0003H&J\u0018\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0012\u001a\u00020\u0013H&¨\u0006\u0015À\u0006\u0003"}, d2 = {"Lokhttp3/internal/http2/PushObserver;", _UrlKt.FRAGMENT_ENCODE_SET, "onRequest", _UrlKt.FRAGMENT_ENCODE_SET, "streamId", _UrlKt.FRAGMENT_ENCODE_SET, "requestHeaders", _UrlKt.FRAGMENT_ENCODE_SET, "Lokhttp3/internal/http2/Header;", "onHeaders", "responseHeaders", "last", "onData", "source", "Lokio/BufferedSource;", "byteCount", "onReset", _UrlKt.FRAGMENT_ENCODE_SET, "errorCode", "Lokhttp3/internal/http2/ErrorCode;", "Companion", "okhttp"}, m862k = 1, mv = {2, 2, 0}, xi = 48)
public interface PushObserver {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = Companion.$$INSTANCE;

    @JvmField
    public static final PushObserver CANCEL = new Companion.PushObserverCancel();

    boolean onData(int streamId, BufferedSource source, int byteCount, boolean last);

    boolean onHeaders(int streamId, List<Header> responseHeaders, boolean last);

    boolean onRequest(int streamId, List<Header> requestHeaders);

    void onReset(int streamId, ErrorCode errorCode);

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001:\u0001\u0006B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003R\u0013\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0001¨\u0006\u0007"}, d2 = {"Lokhttp3/internal/http2/PushObserver$Companion;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", PluginsConstants.Strategy.CANCEL, "Lokhttp3/internal/http2/PushObserver;", "PushObserverCancel", "okhttp"}, m862k = 1, mv = {2, 2, 0}, xi = 48)
    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();

        private Companion() {
        }

        @Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0002\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u001e\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\tH\u0016J&\u0010\u000b\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\n0\t2\u0006\u0010\r\u001a\u00020\u0005H\u0016J(\u0010\u000e\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\u0005H\u0016J\u0018\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0014\u001a\u00020\u0015H\u0016¨\u0006\u0016"}, d2 = {"Lokhttp3/internal/http2/PushObserver$Companion$PushObserverCancel;", "Lokhttp3/internal/http2/PushObserver;", "<init>", "()V", "onRequest", _UrlKt.FRAGMENT_ENCODE_SET, "streamId", _UrlKt.FRAGMENT_ENCODE_SET, "requestHeaders", _UrlKt.FRAGMENT_ENCODE_SET, "Lokhttp3/internal/http2/Header;", "onHeaders", "responseHeaders", "last", "onData", "source", "Lokio/BufferedSource;", "byteCount", "onReset", _UrlKt.FRAGMENT_ENCODE_SET, "errorCode", "Lokhttp3/internal/http2/ErrorCode;", "okhttp"}, m862k = 1, mv = {2, 2, 0}, xi = 48)
        public static final class PushObserverCancel implements PushObserver {
            @Override // okhttp3.internal.http2.PushObserver
            public boolean onHeaders(int streamId, List<Header> responseHeaders, boolean last) {
                return true;
            }

            @Override // okhttp3.internal.http2.PushObserver
            public boolean onRequest(int streamId, List<Header> requestHeaders) {
                return true;
            }

            @Override // okhttp3.internal.http2.PushObserver
            public void onReset(int streamId, ErrorCode errorCode) {
            }

            @Override // okhttp3.internal.http2.PushObserver
            public boolean onData(int streamId, BufferedSource source, int byteCount, boolean last) {
                source.skip(byteCount);
                return true;
            }
        }
    }
}
