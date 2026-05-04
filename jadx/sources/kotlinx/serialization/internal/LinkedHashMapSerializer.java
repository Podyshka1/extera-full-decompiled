package kotlinx.serialization.internal;

import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;

/* JADX INFO: loaded from: classes.dex */
public final class LinkedHashMapSerializer extends MapLikeSerializer {
    private final SerialDescriptor descriptor;

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.AbstractCollectionSerializer
    public void checkCapacity(LinkedHashMap linkedHashMap, int i) {
        Intrinsics.checkNotNullParameter(linkedHashMap, "<this>");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.AbstractCollectionSerializer
    public Map toResult(LinkedHashMap linkedHashMap) {
        Intrinsics.checkNotNullParameter(linkedHashMap, "<this>");
        return linkedHashMap;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LinkedHashMapSerializer(KSerializer kSerializer, KSerializer vSerializer) {
        super(kSerializer, vSerializer, null);
        Intrinsics.checkNotNullParameter(kSerializer, "kSerializer");
        Intrinsics.checkNotNullParameter(vSerializer, "vSerializer");
        this.descriptor = new LinkedHashMapClassDesc(kSerializer.getDescriptor(), vSerializer.getDescriptor());
    }

    @Override // kotlinx.serialization.internal.MapLikeSerializer, kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    public SerialDescriptor getDescriptor() {
        return this.descriptor;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.AbstractCollectionSerializer
    public int collectionSize(Map map) {
        Intrinsics.checkNotNullParameter(map, "<this>");
        return map.size();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.AbstractCollectionSerializer
    public Iterator collectionIterator(Map map) {
        Intrinsics.checkNotNullParameter(map, "<this>");
        return map.entrySet().iterator();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.AbstractCollectionSerializer
    public LinkedHashMap builder() {
        return new LinkedHashMap();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.AbstractCollectionSerializer
    public int builderSize(LinkedHashMap linkedHashMap) {
        Intrinsics.checkNotNullParameter(linkedHashMap, "<this>");
        return linkedHashMap.size() * 2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.AbstractCollectionSerializer
    public LinkedHashMap toBuilder(Map map) {
        Intrinsics.checkNotNullParameter(map, "<this>");
        LinkedHashMap linkedHashMap = map instanceof LinkedHashMap ? (LinkedHashMap) map : null;
        return linkedHashMap == null ? new LinkedHashMap(map) : linkedHashMap;
    }
}
