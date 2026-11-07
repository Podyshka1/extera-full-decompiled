package kotlin.internal;

import java.io.InvalidObjectException;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0000\n\u0002\u0010\u0001\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\n\u0010\u0000\u001a\u00020\u0001H\u0081\u0088\u0004\u001a\u001b\u0010\u0002\u001a\u00020\u00032\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0005H\u0081\u0088\u0004ø\u0001\u0000*\f\b\u0000\u0010\u0006\"\u00020\u00072\u00020\u0007\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\b"}, d2 = {"throwReadObjectNotSupported", _UrlKt.FRAGMENT_ENCODE_SET, "wrapAsDeserializationException", _UrlKt.FRAGMENT_ENCODE_SET, "action", "Lkotlin/Function0;", "ReadObjectParameterType", "Ljava/io/ObjectInputStream;", "kotlin-stdlib"}, m862k = 2, mv = {2, 3, 0}, xi = 48)
public final class SerializationUtilKt {
    @InlineOnly
    private static final Void throwReadObjectNotSupported() throws InvalidObjectException {
        throw new InvalidObjectException("Deserialization is supported via proxy only");
    }

    @InlineOnly
    private static final void wrapAsDeserializationException(Function0<Unit> function0) throws Throwable {
        try {
            function0.invoke();
        } catch (Throwable th) {
            throw new InvalidObjectException(th.getMessage()).initCause(th);
        }
    }
}
