package kotlinx.serialization.encoding;

import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.SerializationStrategy;
import kotlinx.serialization.descriptors.SerialDescriptor;

/* JADX INFO: loaded from: classes.dex */
public interface Encoder {
    CompositeEncoder beginCollection(SerialDescriptor serialDescriptor, int i);

    CompositeEncoder beginStructure(SerialDescriptor serialDescriptor);

    void encodeBoolean(boolean z);

    void encodeDouble(double d);

    void encodeInt(int i);

    void encodeLong(long j);

    void encodeNotNullMark();

    void encodeNull();

    void encodeSerializableValue(SerializationStrategy serializationStrategy, Object obj);

    void encodeString(String str);

    /* JADX INFO: renamed from: kotlinx.serialization.encoding.Encoder$-CC, reason: invalid class name */
    public abstract /* synthetic */ class CC {
        public static void $default$encodeNotNullMark(Encoder encoder) {
        }

        public static CompositeEncoder $default$beginCollection(Encoder encoder, SerialDescriptor descriptor, int i) {
            Intrinsics.checkNotNullParameter(descriptor, "descriptor");
            return encoder.beginStructure(descriptor);
        }

        public static void $default$encodeNullableSerializableValue(Encoder encoder, SerializationStrategy serializer, Object obj) {
            Intrinsics.checkNotNullParameter(serializer, "serializer");
            if (serializer.getDescriptor().isNullable()) {
                encoder.encodeSerializableValue(serializer, obj);
            } else if (obj == null) {
                encoder.encodeNull();
            } else {
                encoder.encodeNotNullMark();
                encoder.encodeSerializableValue(serializer, obj);
            }
        }
    }
}
