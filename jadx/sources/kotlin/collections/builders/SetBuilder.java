package kotlin.collections.builders;

import java.io.Serializable;
import java.util.Collection;
import java.util.Iterator;
import java.util.Set;
import kotlin.collections.AbstractMutableSet;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMutableIterable;

/* JADX INFO: loaded from: classes.dex */
public final class SetBuilder extends AbstractMutableSet implements Set, Serializable, KMutableIterable {
    private static final Companion Companion = new Companion(null);
    private static final SetBuilder Empty = new SetBuilder(MapBuilder.Companion.getEmpty$kotlin_stdlib());
    private final MapBuilder backing;

    public SetBuilder(MapBuilder backing) {
        Intrinsics.checkNotNullParameter(backing, "backing");
        this.backing = backing;
    }

    private static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    public SetBuilder() {
        this(new MapBuilder());
    }

    public SetBuilder(int i) {
        this(new MapBuilder(i));
    }

    public final Set build() {
        this.backing.build();
        return size() > 0 ? this : Empty;
    }

    @Override // kotlin.collections.AbstractMutableSet
    public int getSize() {
        return this.backing.size();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean isEmpty() {
        return this.backing.isEmpty();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean contains(Object obj) {
        return this.backing.containsKey(obj);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public void clear() {
        this.backing.clear();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean add(Object obj) {
        return this.backing.addKey$kotlin_stdlib(obj) >= 0;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean remove(Object obj) {
        return this.backing.removeKey$kotlin_stdlib(obj);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public Iterator iterator() {
        return this.backing.keysIterator$kotlin_stdlib();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean addAll(Collection elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        this.backing.checkIsMutable$kotlin_stdlib();
        return super.addAll(elements);
    }

    @Override // java.util.AbstractSet, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean removeAll(Collection elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        this.backing.checkIsMutable$kotlin_stdlib();
        return super.removeAll(elements);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean retainAll(Collection elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        this.backing.checkIsMutable$kotlin_stdlib();
        return super.retainAll(elements);
    }
}
