package kotlinx.serialization.encoding;

import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.SerializationStrategy;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.Encoder;

/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractEncoder implements Encoder, CompositeEncoder {
    public abstract boolean encodeElement(SerialDescriptor serialDescriptor, int i);

    @Override // kotlinx.serialization.encoding.Encoder
    public abstract void encodeInt(int i);

    @Override // kotlinx.serialization.encoding.Encoder
    public abstract void encodeLong(long j);

    @Override // kotlinx.serialization.encoding.Encoder
    public abstract void encodeSerializableValue(SerializationStrategy serializationStrategy, Object obj);

    @Override // kotlinx.serialization.encoding.Encoder
    public abstract void encodeString(String str);

    @Override // kotlinx.serialization.encoding.Encoder
    public CompositeEncoder beginCollection(SerialDescriptor serialDescriptor, int i) {
        return Encoder.CC.$default$beginCollection(this, serialDescriptor, i);
    }

    @Override // kotlinx.serialization.encoding.Encoder
    public void encodeNotNullMark() {
        Encoder.CC.$default$encodeNotNullMark(this);
    }

    public void encodeNullableSerializableValue(SerializationStrategy serializationStrategy, Object obj) {
        Encoder.CC.$default$encodeNullableSerializableValue(this, serializationStrategy, obj);
    }

    @Override // kotlinx.serialization.encoding.CompositeEncoder
    public final void encodeIntElement(SerialDescriptor descriptor, int i, int i2) {
        Intrinsics.checkNotNullParameter(descriptor, "descriptor");
        if (encodeElement(descriptor, i)) {
            encodeInt(i2);
        }
    }

    @Override // kotlinx.serialization.encoding.CompositeEncoder
    public final void encodeLongElement(SerialDescriptor descriptor, int i, long j) {
        Intrinsics.checkNotNullParameter(descriptor, "descriptor");
        if (encodeElement(descriptor, i)) {
            encodeLong(j);
        }
    }

    @Override // kotlinx.serialization.encoding.CompositeEncoder
    public final void encodeStringElement(SerialDescriptor descriptor, int i, String value) {
        Intrinsics.checkNotNullParameter(descriptor, "descriptor");
        Intrinsics.checkNotNullParameter(value, "value");
        if (encodeElement(descriptor, i)) {
            encodeString(value);
        }
    }

    @Override // kotlinx.serialization.encoding.CompositeEncoder
    public void encodeSerializableElement(SerialDescriptor descriptor, int i, SerializationStrategy serializer, Object obj) {
        Intrinsics.checkNotNullParameter(descriptor, "descriptor");
        Intrinsics.checkNotNullParameter(serializer, "serializer");
        if (encodeElement(descriptor, i)) {
            encodeSerializableValue(serializer, obj);
        }
    }

    @Override // kotlinx.serialization.encoding.CompositeEncoder
    public void encodeNullableSerializableElement(SerialDescriptor descriptor, int i, SerializationStrategy serializer, Object obj) {
        Intrinsics.checkNotNullParameter(descriptor, "descriptor");
        Intrinsics.checkNotNullParameter(serializer, "serializer");
        if (encodeElement(descriptor, i)) {
            encodeNullableSerializableValue(serializer, obj);
        }
    }
}
