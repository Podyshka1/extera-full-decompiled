package kotlinx.serialization.internal;

import java.util.Iterator;
import java.util.Map;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.IntProgression;
import kotlin.ranges.RangesKt;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.PrimitiveKind;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.encoding.Encoder;

/* JADX INFO: loaded from: classes.dex */
public abstract class MapLikeSerializer extends AbstractCollectionSerializer {
    private final KSerializer keySerializer;
    private final KSerializer valueSerializer;

    public /* synthetic */ MapLikeSerializer(KSerializer kSerializer, KSerializer kSerializer2, DefaultConstructorMarker defaultConstructorMarker) {
        this(kSerializer, kSerializer2);
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    public abstract SerialDescriptor getDescriptor();

    public final KSerializer getKeySerializer() {
        return this.keySerializer;
    }

    public final KSerializer getValueSerializer() {
        return this.valueSerializer;
    }

    private MapLikeSerializer(KSerializer kSerializer, KSerializer kSerializer2) {
        super(null);
        this.keySerializer = kSerializer;
        this.valueSerializer = kSerializer2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.AbstractCollectionSerializer
    public final void readAll(CompositeDecoder decoder, Map builder, int i, int i2) {
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        Intrinsics.checkNotNullParameter(builder, "builder");
        if (i2 < 0) {
            throw new IllegalArgumentException("Size must be known in advance when using READ_ALL");
        }
        IntProgression intProgressionStep = RangesKt.step(RangesKt.until(0, i2 * 2), 2);
        int first = intProgressionStep.getFirst();
        int last = intProgressionStep.getLast();
        int step = intProgressionStep.getStep();
        if ((step <= 0 || first > last) && (step >= 0 || last > first)) {
            return;
        }
        while (true) {
            readElement(decoder, i + first, builder, false);
            if (first == last) {
                return;
            } else {
                first += step;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.AbstractCollectionSerializer
    public final void readElement(CompositeDecoder decoder, int i, Map builder, boolean z) {
        int iDecodeElementIndex;
        Object objDecodeSerializableElement$default;
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        Intrinsics.checkNotNullParameter(builder, "builder");
        Object objDecodeSerializableElement$default2 = CompositeDecoder.CC.decodeSerializableElement$default(decoder, getDescriptor(), i, this.keySerializer, null, 8, null);
        if (z) {
            iDecodeElementIndex = decoder.decodeElementIndex(getDescriptor());
            if (iDecodeElementIndex != i + 1) {
                throw new IllegalArgumentException(("Value must follow key in a map, index for key: " + i + ", returned index for value: " + iDecodeElementIndex).toString());
            }
        } else {
            iDecodeElementIndex = i + 1;
        }
        int i2 = iDecodeElementIndex;
        if (builder.containsKey(objDecodeSerializableElement$default2) && !(this.valueSerializer.getDescriptor().getKind() instanceof PrimitiveKind)) {
            objDecodeSerializableElement$default = decoder.decodeSerializableElement(getDescriptor(), i2, this.valueSerializer, MapsKt.getValue(builder, objDecodeSerializableElement$default2));
        } else {
            objDecodeSerializableElement$default = CompositeDecoder.CC.decodeSerializableElement$default(decoder, getDescriptor(), i2, this.valueSerializer, null, 8, null);
        }
        builder.put(objDecodeSerializableElement$default2, objDecodeSerializableElement$default);
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public void serialize(Encoder encoder, Object obj) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        int iCollectionSize = collectionSize(obj);
        SerialDescriptor descriptor = getDescriptor();
        CompositeEncoder compositeEncoderBeginCollection = encoder.beginCollection(descriptor, iCollectionSize);
        Iterator itCollectionIterator = collectionIterator(obj);
        int i = 0;
        while (itCollectionIterator.hasNext()) {
            Map.Entry entry = (Map.Entry) itCollectionIterator.next();
            Object key = entry.getKey();
            Object value = entry.getValue();
            int i2 = i + 1;
            compositeEncoderBeginCollection.encodeSerializableElement(getDescriptor(), i, getKeySerializer(), key);
            i += 2;
            compositeEncoderBeginCollection.encodeSerializableElement(getDescriptor(), i2, getValueSerializer(), value);
        }
        compositeEncoderBeginCollection.endStructure(descriptor);
    }
}
