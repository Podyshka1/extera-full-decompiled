package kotlinx.serialization.json.internal;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.text.StringsKt;
import okhttp3.internal.url._UrlKt;
import org.telegram.tgnet.TLObject;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0010\b\n\u0000\"\u000f\u0010\u0000\u001a\u00020\u0001X\u0082\u0084\b¢\u0006\u0002\n\u0000¨\u0006\u0002"}, d2 = {"MAX_CHARS_IN_POOL", _UrlKt.FRAGMENT_ENCODE_SET, "kotlinx-serialization-json"}, m862k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class ArrayPoolsKt {
    private static final int MAX_CHARS_IN_POOL;

    static {
        Object objM3087constructorimpl;
        try {
            Result.Companion companion = Result.INSTANCE;
            String property = System.getProperty("kotlinx.serialization.json.pool.size");
            objM3087constructorimpl = Result.m3087constructorimpl(property != null ? StringsKt.toIntOrNull(property) : null);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM3087constructorimpl = Result.m3087constructorimpl(ResultKt.createFailure(th));
        }
        Integer num = (Integer) (Result.m3093isFailureimpl(objM3087constructorimpl) ? null : objM3087constructorimpl);
        MAX_CHARS_IN_POOL = num != null ? num.intValue() : TLObject.FLAG_21;
    }
}
