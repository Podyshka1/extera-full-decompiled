package kotlin.collections.builders;

import java.util.Map;
import kotlin.collections.AbstractMutableSet;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public abstract class AbstractMapBuilderEntrySet extends AbstractMutableSet {
    public abstract boolean containsEntry(Map.Entry entry);

    public abstract /* bridge */ boolean remove(Map.Entry entry);

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final /* bridge */ boolean contains(Object obj) {
        if (obj instanceof Map.Entry) {
            return contains((Map.Entry) obj);
        }
        return false;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final /* bridge */ boolean remove(Object obj) {
        if (obj instanceof Map.Entry) {
            return remove((Map.Entry) obj);
        }
        return false;
    }

    public final boolean contains(Map.Entry element) {
        Intrinsics.checkNotNullParameter(element, "element");
        return containsEntry(element);
    }
}
