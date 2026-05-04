package kotlinx.serialization.internal;

import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.PrimitiveKind;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;

/* JADX INFO: loaded from: classes.dex */
public final class IntSerializer implements KSerializer {
    public static final IntSerializer INSTANCE = new IntSerializer();
    private static final SerialDescriptor descriptor = new PrimitiveSerialDescriptor("kotlin.Int", PrimitiveKind.INT.INSTANCE);

    private IntSerializer() {
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public /* bridge */ /* synthetic */ void serialize(Encoder encoder, Object obj) {
        serialize(encoder, ((Number) obj).intValue());
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    public SerialDescriptor getDescriptor() {
        return descriptor;
    }

    public void serialize(Encoder encoder, int i) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        encoder.encodeInt(i);
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public Integer deserialize(Decoder decoder) {
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        return Integer.valueOf(decoder.decodeInt());
    }
}
