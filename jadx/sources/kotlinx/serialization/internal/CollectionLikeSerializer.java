package kotlinx.serialization.internal;

import java.util.Iterator;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.encoding.Encoder;

/* JADX INFO: loaded from: classes.dex */
public abstract class CollectionLikeSerializer extends AbstractCollectionSerializer {
    private final KSerializer elementSerializer;

    public /* synthetic */ CollectionLikeSerializer(KSerializer kSerializer, DefaultConstructorMarker defaultConstructorMarker) {
        this(kSerializer);
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    public abstract SerialDescriptor getDescriptor();

    protected abstract void insert(Object obj, int i, Object obj2);

    private CollectionLikeSerializer(KSerializer kSerializer) {
        super(null);
        this.elementSerializer = kSerializer;
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public void serialize(Encoder encoder, Object obj) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        int iCollectionSize = collectionSize(obj);
        SerialDescriptor descriptor = getDescriptor();
        CompositeEncoder compositeEncoderBeginCollection = encoder.beginCollection(descriptor, iCollectionSize);
        Iterator itCollectionIterator = collectionIterator(obj);
        for (int i = 0; i < iCollectionSize; i++) {
            compositeEncoderBeginCollection.encodeSerializableElement(getDescriptor(), i, this.elementSerializer, itCollectionIterator.next());
        }
        compositeEncoderBeginCollection.endStructure(descriptor);
    }

    @Override // kotlinx.serialization.internal.AbstractCollectionSerializer
    protected final void readAll(CompositeDecoder decoder, Object obj, int i, int i2) {
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        if (i2 < 0) {
            throw new IllegalArgumentException("Size must be known in advance when using READ_ALL");
        }
        for (int i3 = 0; i3 < i2; i3++) {
            readElement(decoder, i + i3, obj, false);
        }
    }

    @Override // kotlinx.serialization.internal.AbstractCollectionSerializer
    protected void readElement(CompositeDecoder decoder, int i, Object obj, boolean z) {
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        insert(obj, i, CompositeDecoder.CC.decodeSerializableElement$default(decoder, getDescriptor(), i, this.elementSerializer, null, 8, null));
    }
}
