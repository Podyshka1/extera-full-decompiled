package kotlin.collections;

import java.util.List;
import kotlin.jvm.internal.markers.KMutableList;

/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractMutableList extends java.util.AbstractList implements List, KMutableList {
    public abstract int getSize();

    public abstract Object removeAt(int i);

    protected AbstractMutableList() {
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* bridge */ Object remove(int i) {
        return removeAt(i);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ int size() {
        return getSize();
    }
}
