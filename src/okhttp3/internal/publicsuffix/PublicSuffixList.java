package okhttp3.internal.publicsuffix;

import kotlin.Metadata;
import okhttp3.internal.url._UrlKt;
import okio.ByteString;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\b`\u0018\u0000 \n2\u00020\u0001:\u0001\nJ\b\u0010\u0002\u001a\u00020\u0003H&R\u0012\u0010\u0004\u001a\u00020\u0005X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0006\u0010\u0007R\u0012\u0010\b\u001a\u00020\u0005X¦\u0004¢\u0006\u0006\u001a\u0004\b\t\u0010\u0007¨\u0006\u000bÀ\u0006\u0003"}, d2 = {"Lokhttp3/internal/publicsuffix/PublicSuffixList;", _UrlKt.FRAGMENT_ENCODE_SET, "ensureLoaded", _UrlKt.FRAGMENT_ENCODE_SET, "bytes", "Lokio/ByteString;", "getBytes", "()Lokio/ByteString;", "exceptionBytes", "getExceptionBytes", "Companion", "okhttp"}, m862k = 1, mv = {2, 2, 0}, xi = 48)
public interface PublicSuffixList {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = Companion.$$INSTANCE;

    void ensureLoaded();

    ByteString getBytes();

    ByteString getExceptionBytes();

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lokhttp3/internal/publicsuffix/PublicSuffixList$Companion;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "okhttp"}, m862k = 1, mv = {2, 2, 0}, xi = 48)
    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();

        private Companion() {
        }
    }
}
