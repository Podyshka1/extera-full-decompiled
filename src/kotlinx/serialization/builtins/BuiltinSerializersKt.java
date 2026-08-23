package kotlinx.serialization.builtins;

import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.internal.NullableSerializer;

/* JADX INFO: loaded from: classes.dex */
public abstract class BuiltinSerializersKt {
    public static final KSerializer getNullable(KSerializer kSerializer) {
        Intrinsics.checkNotNullParameter(kSerializer, "<this>");
        return kSerializer.getDescriptor().isNullable() ? kSerializer : new NullableSerializer(kSerializer);
    }
}
