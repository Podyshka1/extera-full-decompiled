package kotlinx.serialization.internal;

import java.util.Set;
import kotlin.Metadata;
import kotlinx.serialization.MissingFieldException;
import kotlinx.serialization.descriptors.SerialDescriptor;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0000\n\u0002\u0010\"\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a\u0014\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0003H\u0087\u0080\u0004\u001a\u001a\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u0002H\u0087\u0080\u0004¨\u0006\b"}, d2 = {"jsonCachedSerialNames", _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, "Lkotlinx/serialization/descriptors/SerialDescriptor;", "missingFieldExceptionWithNewMessage", "Lkotlinx/serialization/MissingFieldException;", "exception", "message", "kotlinx-serialization-core"}, m754k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class JsonInternalDependenciesKt {
    public static final Set<String> jsonCachedSerialNames(SerialDescriptor serialDescriptor) {
        return Platform_commonKt.cachedSerialNames(serialDescriptor);
    }

    public static final MissingFieldException missingFieldExceptionWithNewMessage(MissingFieldException missingFieldException, String str) {
        return missingFieldException.withNewMessageInternal$kotlinx_serialization_core(str);
    }
}
