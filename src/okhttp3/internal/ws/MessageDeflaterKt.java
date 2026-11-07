package okhttp3.internal.ws;

import kotlin.Metadata;
import okhttp3.internal.url._UrlKt;
import okio.ByteString;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082\u0004¢\u0006\u0002\n\u0000\"\u000e\u0010\u0002\u001a\u00020\u0003X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u0004"}, d2 = {"EMPTY_DEFLATE_BLOCK", "Lokio/ByteString;", "LAST_OCTETS_COUNT_TO_REMOVE_AFTER_DEFLATION", _UrlKt.FRAGMENT_ENCODE_SET, "okhttp"}, m862k = 2, mv = {2, 2, 0}, xi = 48)
public final class MessageDeflaterKt {
    private static final ByteString EMPTY_DEFLATE_BLOCK = ByteString.INSTANCE.decodeHex("000000ffff");
    private static final int LAST_OCTETS_COUNT_TO_REMOVE_AFTER_DEFLATION = 4;
}
