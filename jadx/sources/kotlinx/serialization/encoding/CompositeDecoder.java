package kotlinx.serialization.encoding;

import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.DeserializationStrategy;
import kotlinx.serialization.descriptors.SerialDescriptor;

/* JADX INFO: loaded from: classes.dex */
public interface CompositeDecoder {
    public static final Companion Companion = Companion.$$INSTANCE;

    int decodeCollectionSize(SerialDescriptor serialDescriptor);

    int decodeElementIndex(SerialDescriptor serialDescriptor);

    int decodeIntElement(SerialDescriptor serialDescriptor, int i);

    long decodeLongElement(SerialDescriptor serialDescriptor, int i);

    Object decodeNullableSerializableElement(SerialDescriptor serialDescriptor, int i, DeserializationStrategy deserializationStrategy, Object obj);

    boolean decodeSequentially();

    Object decodeSerializableElement(SerialDescriptor serialDescriptor, int i, DeserializationStrategy deserializationStrategy, Object obj);

    String decodeStringElement(SerialDescriptor serialDescriptor, int i);

    void endStructure(SerialDescriptor serialDescriptor);

    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();

        private Companion() {
        }
    }

    /* JADX INFO: renamed from: kotlinx.serialization.encoding.CompositeDecoder$-CC, reason: invalid class name */
    public abstract /* synthetic */ class CC {
        public static int $default$decodeCollectionSize(CompositeDecoder compositeDecoder, SerialDescriptor descriptor) {
            Intrinsics.checkNotNullParameter(descriptor, "descriptor");
            return -1;
        }

        static {
            Companion companion = CompositeDecoder.Companion;
        }

        public static boolean $default$decodeSequentially(CompositeDecoder compositeDecoder) {
            return false;
        }

        public static /* synthetic */ Object decodeSerializableElement$default(CompositeDecoder compositeDecoder, SerialDescriptor serialDescriptor, int i, DeserializationStrategy deserializationStrategy, Object obj, int i2, Object obj2) {
            if (obj2 != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: decodeSerializableElement");
            }
            if ((i2 & 8) != 0) {
                obj = null;
            }
            return compositeDecoder.decodeSerializableElement(serialDescriptor, i, deserializationStrategy, obj);
        }
    }
}
