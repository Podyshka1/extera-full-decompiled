package kotlinx.serialization;

import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.encoding.Encoder;
import kotlinx.serialization.internal.AbstractPolymorphicSerializer;

/* JADX INFO: loaded from: classes5.dex */
public abstract class PolymorphicSerializerKt {
    public static final SerializationStrategy findPolymorphicSerializer(AbstractPolymorphicSerializer abstractPolymorphicSerializer, Encoder encoder, Object value) {
        Intrinsics.checkNotNullParameter(abstractPolymorphicSerializer, "<this>");
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        Intrinsics.checkNotNullParameter(value, "value");
        throw null;
    }
}
