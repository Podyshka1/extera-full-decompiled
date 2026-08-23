package kotlin.collections;

import java.util.Collection;
import kotlin.jvm.internal.markers.KMutableIterable;

/* JADX INFO: loaded from: classes5.dex */
public abstract class AbstractMutableCollection extends java.util.AbstractCollection implements Collection, KMutableIterable {
    public abstract int getSize();

    protected AbstractMutableCollection() {
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final /* bridge */ int size() {
        return getSize();
    }
}
