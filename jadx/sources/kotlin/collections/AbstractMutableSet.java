package kotlin.collections;

import java.util.AbstractSet;
import java.util.Set;
import kotlin.jvm.internal.markers.KMutableIterable;

/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractMutableSet extends AbstractSet implements Set, KMutableIterable {
    public abstract int getSize();

    protected AbstractMutableSet() {
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final /* bridge */ int size() {
        return getSize();
    }
}
