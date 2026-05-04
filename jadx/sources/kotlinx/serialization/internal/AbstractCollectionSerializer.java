package kotlinx.serialization.internal;

import java.util.Iterator;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.Decoder;

/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractCollectionSerializer implements KSerializer {
    public /* synthetic */ AbstractCollectionSerializer(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    protected abstract Object builder();

    protected abstract int builderSize(Object obj);

    protected abstract void checkCapacity(Object obj, int i);

    protected abstract Iterator collectionIterator(Object obj);

    protected abstract int collectionSize(Object obj);

    protected abstract void readAll(CompositeDecoder compositeDecoder, Object obj, int i, int i2);

    protected abstract void readElement(CompositeDecoder compositeDecoder, int i, Object obj, boolean z);

    protected abstract Object toBuilder(Object obj);

    protected abstract Object toResult(Object obj);

    private AbstractCollectionSerializer() {
    }

    public final Object merge(Decoder decoder, Object obj) {
        Object objBuilder;
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        if (obj == null || (objBuilder = toBuilder(obj)) == null) {
            objBuilder = builder();
        }
        Object obj2 = objBuilder;
        int iBuilderSize = builderSize(obj2);
        CompositeDecoder compositeDecoderBeginStructure = decoder.beginStructure(getDescriptor());
        if (!compositeDecoderBeginStructure.decodeSequentially()) {
            while (true) {
                int iDecodeElementIndex = compositeDecoderBeginStructure.decodeElementIndex(getDescriptor());
                if (iDecodeElementIndex == -1) {
                    break;
                }
                readElement$default(this, compositeDecoderBeginStructure, iBuilderSize + iDecodeElementIndex, obj2, false, 8, null);
            }
        } else {
            readAll(compositeDecoderBeginStructure, obj2, iBuilderSize, readSize(compositeDecoderBeginStructure, obj2));
        }
        compositeDecoderBeginStructure.endStructure(getDescriptor());
        return toResult(obj2);
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public Object deserialize(Decoder decoder) {
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        return merge(decoder, null);
    }

    private final int readSize(CompositeDecoder compositeDecoder, Object obj) {
        int iDecodeCollectionSize = compositeDecoder.decodeCollectionSize(getDescriptor());
        checkCapacity(obj, iDecodeCollectionSize);
        return iDecodeCollectionSize;
    }

    public static /* synthetic */ void readElement$default(AbstractCollectionSerializer abstractCollectionSerializer, CompositeDecoder compositeDecoder, int i, Object obj, boolean z, int i2, Object obj2) {
        if (obj2 != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: readElement");
        }
        if ((i2 & 8) != 0) {
            z = true;
        }
        abstractCollectionSerializer.readElement(compositeDecoder, i, obj, z);
    }
}
