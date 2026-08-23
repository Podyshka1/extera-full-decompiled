package kotlinx.serialization.internal;

import java.util.Set;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.descriptors.SerialDescriptor;

/* JADX INFO: loaded from: classes5.dex */
public abstract class JsonInternalDependenciesKt {
    public static final Set jsonCachedSerialNames(SerialDescriptor serialDescriptor) {
        Intrinsics.checkNotNullParameter(serialDescriptor, "<this>");
        return Platform_commonKt.cachedSerialNames(serialDescriptor);
    }
}
