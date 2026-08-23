package kotlinx.serialization.internal;

import java.util.Collection;
import java.util.Iterator;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;

/* JADX INFO: loaded from: classes.dex */
public abstract class CollectionSerializer extends CollectionLikeSerializer {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CollectionSerializer(KSerializer element) {
        super(element, null);
        Intrinsics.checkNotNullParameter(element, "element");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.AbstractCollectionSerializer
    public int collectionSize(Collection collection) {
        Intrinsics.checkNotNullParameter(collection, "<this>");
        return collection.size();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.AbstractCollectionSerializer
    public Iterator collectionIterator(Collection collection) {
        Intrinsics.checkNotNullParameter(collection, "<this>");
        return collection.iterator();
    }
}
