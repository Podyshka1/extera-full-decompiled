package kotlinx.serialization.encoding;

import kotlinx.serialization.SerializationStrategy;
import kotlinx.serialization.descriptors.SerialDescriptor;

/* JADX INFO: loaded from: classes.dex */
public interface CompositeEncoder {
    void encodeIntElement(SerialDescriptor serialDescriptor, int i, int i2);

    void encodeLongElement(SerialDescriptor serialDescriptor, int i, long j);

    void encodeNullableSerializableElement(SerialDescriptor serialDescriptor, int i, SerializationStrategy serializationStrategy, Object obj);

    void encodeSerializableElement(SerialDescriptor serialDescriptor, int i, SerializationStrategy serializationStrategy, Object obj);

    void encodeStringElement(SerialDescriptor serialDescriptor, int i, String str);

    void endStructure(SerialDescriptor serialDescriptor);

    boolean shouldEncodeElementDefault(SerialDescriptor serialDescriptor, int i);
}
