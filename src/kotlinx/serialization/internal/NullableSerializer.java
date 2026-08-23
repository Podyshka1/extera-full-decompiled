package kotlinx.serialization.internal;

import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;

/* JADX INFO: loaded from: classes.dex */
public final class NullableSerializer implements KSerializer {
    private final SerialDescriptor descriptor;
    private final KSerializer serializer;

    public NullableSerializer(KSerializer serializer) {
        Intrinsics.checkNotNullParameter(serializer, "serializer");
        this.serializer = serializer;
        this.descriptor = new SerialDescriptorForNullable(serializer.getDescriptor());
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    public SerialDescriptor getDescriptor() {
        return this.descriptor;
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public void serialize(Encoder encoder, Object obj) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        if (obj != null) {
            encoder.encodeNotNullMark();
            encoder.encodeSerializableValue(this.serializer, obj);
        } else {
            encoder.encodeNull();
        }
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public Object deserialize(Decoder decoder) {
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        return decoder.decodeNotNullMark() ? decoder.decodeSerializableValue(this.serializer) : decoder.decodeNull();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && NullableSerializer.class == obj.getClass() && Intrinsics.areEqual(this.serializer, ((NullableSerializer) obj).serializer);
    }

    public int hashCode() {
        return this.serializer.hashCode();
    }
}
