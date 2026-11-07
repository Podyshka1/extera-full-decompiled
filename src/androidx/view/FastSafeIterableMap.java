package androidx.view;

import androidx.collection.MutableScatterMap;
import com.exteragram.messenger.plugins.PluginsConstants;
import java.util.Map;
import kotlin.Metadata;
import kotlin.UIntArray$Iterator$$ExternalSyntheticBUOutline0;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMappedMarker;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0010&\n\u0002\b\u0005\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0000\u0018\u0000*\b\b\u0000\u0010\u0001*\u00020\u0002*\b\b\u0001\u0010\u0003*\u00020\u00022\u00020\u0002:\u0001!B\u0007¢\u0006\u0004\b\u0004\u0010\u0005J\u0016\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00028\u0000H\u0086\u0002¢\u0006\u0002\u0010\u000eJ\u001d\u0010\u000f\u001a\u0004\u0018\u00018\u00012\u0006\u0010\r\u001a\u00028\u00002\u0006\u0010\u0010\u001a\u00028\u0001¢\u0006\u0002\u0010\u0011J\u0015\u0010\u0012\u001a\u0004\u0018\u00018\u00012\u0006\u0010\r\u001a\u00028\u0000¢\u0006\u0002\u0010\u0013J!\u0010\u0014\u001a\u0010\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u0001\u0018\u00010\u00152\u0006\u0010\r\u001a\u00028\u0000¢\u0006\u0002\u0010\u0016J\u0012\u0010\u0017\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0015J\u0012\u0010\u0018\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0015J\u0014\u0010\u0019\u001a\u0010\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u0001\u0018\u00010\u0015J\u0006\u0010\u001a\u001a\u00020\u001bJ&\u0010\u001c\u001a\u00020\u001d2\u001e\u0010\u001e\u001a\u001a\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0015\u0012\u0004\u0012\u00020\u001d0\u001fJ&\u0010 \u001a\u00020\u001d2\u001e\u0010\u001e\u001a\u001a\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0015\u0012\u0004\u0012\u00020\u001d0\u001fR&\u0010\u0006\u001a\u001a\u0012\u0004\u0012\u00028\u0000\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\b0\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u001c\u0010\t\u001a\u0010\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u0001\u0018\u00010\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u001c\u0010\n\u001a\u0010\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u0001\u0018\u00010\bX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\""}, d2 = {"Landroidx/lifecycle/FastSafeIterableMap;", "K", _UrlKt.FRAGMENT_ENCODE_SET, "V", "<init>", "()V", "map", "Landroidx/collection/MutableScatterMap;", "Landroidx/lifecycle/FastSafeIterableMap$Entry;", "head", "tail", "contains", _UrlKt.FRAGMENT_ENCODE_SET, PluginsConstants.Settings.KEY, "(Ljava/lang/Object;)Z", "putIfAbsent", "value", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "remove", "(Ljava/lang/Object;)Ljava/lang/Object;", "ceil", _UrlKt.FRAGMENT_ENCODE_SET, "(Ljava/lang/Object;)Ljava/util/Map$Entry;", "first", "last", "lastOrNull", "size", _UrlKt.FRAGMENT_ENCODE_SET, "forEachWithAdditions", _UrlKt.FRAGMENT_ENCODE_SET, "action", "Lkotlin/Function1;", "forEachReversed", "Entry", "lifecycle-runtime"}, m910k = 1, mv = {2, 1, 0}, xi = 48)
public final class FastSafeIterableMap<K, V> {
    private Entry<K, V> head;
    private final MutableScatterMap<K, Entry<K, V>> map = new MutableScatterMap<>(0, 1, null);
    private Entry<K, V> tail;

    public final boolean contains(K key) {
        return this.map.containsKey(key);
    }

    public final V putIfAbsent(K key, V value) {
        Entry<K, V> entry = this.map.get(key);
        if (entry != null) {
            return entry.getValue();
        }
        Entry<K, V> entry2 = new Entry<>(key, value);
        this.map.set(key, entry2);
        Entry<K, V> entry3 = this.tail;
        if (entry3 == null) {
            this.head = entry2;
            this.tail = entry2;
            return null;
        }
        if (entry3 != null) {
            entry3.setNext(entry2);
        }
        entry2.setPrev(this.tail);
        this.tail = entry2;
        return null;
    }

    public final V remove(K key) {
        Entry<K, V> entryRemove = this.map.remove(key);
        if (entryRemove == null) {
            return null;
        }
        if (entryRemove.getPrev() == null) {
            this.head = entryRemove.getNext();
        } else {
            Entry<K, V> prev = entryRemove.getPrev();
            if (prev != null) {
                prev.setNext(entryRemove.getNext());
            }
        }
        if (entryRemove.getNext() == null) {
            this.tail = entryRemove.getPrev();
        } else {
            Entry<K, V> next = entryRemove.getNext();
            if (next != null) {
                next.setPrev(entryRemove.getPrev());
            }
        }
        entryRemove.markRemoved();
        return entryRemove.getValue();
    }

    public final Map.Entry<K, V> ceil(K key) {
        Entry<K, V> entry = this.map.get(key);
        if (entry != null) {
            return entry.getPrev();
        }
        return null;
    }

    public final Map.Entry<K, V> first() {
        Entry<K, V> entry = this.head;
        if (entry != null) {
            return entry;
        }
        UIntArray$Iterator$$ExternalSyntheticBUOutline0.m916m("Collection is empty.");
        return null;
    }

    public final Map.Entry<K, V> last() {
        Entry<K, V> entry = this.tail;
        if (entry != null) {
            return entry;
        }
        UIntArray$Iterator$$ExternalSyntheticBUOutline0.m916m("Collection is empty.");
        return null;
    }

    public final Map.Entry<K, V> lastOrNull() {
        return this.tail;
    }

    public final int size() {
        return this.map.get_size();
    }

    public final void forEachWithAdditions(Function1<? super Map.Entry<? extends K, ? extends V>, Unit> action) {
        for (Entry<K, V> next = this.head; next != null; next = next.getNext()) {
            if (!next.getIsRemoved()) {
                action.invoke(next);
            }
        }
    }

    public final void forEachReversed(Function1<? super Map.Entry<? extends K, ? extends V>, Unit> action) {
        for (Entry<K, V> prev = this.tail; prev != null; prev = prev.getPrev()) {
            if (!prev.getIsRemoved()) {
                action.invoke(prev);
            }
        }
    }

    @Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010&\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0013\b\u0082\b\u0018\u0000*\u0004\b\u0002\u0010\u0001*\u0004\b\u0003\u0010\u00022\u000e\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u00030\u0003B\u0017\u0012\u0006\u0010\u0004\u001a\u00028\u0002\u0012\u0006\u0010\u0005\u001a\u00028\u0003¢\u0006\u0004\b\u0006\u0010\u0007J\r\u0010\t\u001a\u00020\b¢\u0006\u0004\b\t\u0010\nJ\u0010\u0010\f\u001a\u00020\u000bHÖ\u0001¢\u0006\u0004\b\f\u0010\rJ\u0010\u0010\u000f\u001a\u00020\u000eHÖ\u0001¢\u0006\u0004\b\u000f\u0010\u0010J\u001a\u0010\u0014\u001a\u00020\u00132\b\u0010\u0012\u001a\u0004\u0018\u00010\u0011HÖ\u0003¢\u0006\u0004\b\u0014\u0010\u0015R\u001a\u0010\u0004\u001a\u00028\u00028\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u0004\u0010\u0016\u001a\u0004\b\u0017\u0010\u0018R\u001a\u0010\u0005\u001a\u00028\u00038\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u0005\u0010\u0016\u001a\u0004\b\u0019\u0010\u0018R0\u0010\u001a\u001a\u0010\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u0003\u0018\u00010\u00008\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001a\u0010\u001b\u001a\u0004\b\u001c\u0010\u001d\"\u0004\b\u001e\u0010\u001fR0\u0010 \u001a\u0010\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u0003\u0018\u00010\u00008\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b \u0010\u001b\u001a\u0004\b!\u0010\u001d\"\u0004\b\"\u0010\u001fR$\u0010#\u001a\u00020\u00132\u0006\u0010\u0005\u001a\u00020\u00138\u0006@BX\u0086\u000e¢\u0006\f\n\u0004\b#\u0010$\u001a\u0004\b#\u0010%¨\u0006&"}, d2 = {"Landroidx/lifecycle/FastSafeIterableMap$Entry;", "K", "V", _UrlKt.FRAGMENT_ENCODE_SET, PluginsConstants.Settings.KEY, "value", "<init>", "(Ljava/lang/Object;Ljava/lang/Object;)V", _UrlKt.FRAGMENT_ENCODE_SET, "markRemoved", "()V", _UrlKt.FRAGMENT_ENCODE_SET, "toString", "()Ljava/lang/String;", _UrlKt.FRAGMENT_ENCODE_SET, "hashCode", "()I", _UrlKt.FRAGMENT_ENCODE_SET, "other", _UrlKt.FRAGMENT_ENCODE_SET, "equals", "(Ljava/lang/Object;)Z", "Ljava/lang/Object;", "getKey", "()Ljava/lang/Object;", "getValue", "next", "Landroidx/lifecycle/FastSafeIterableMap$Entry;", "getNext", "()Landroidx/lifecycle/FastSafeIterableMap$Entry;", "setNext", "(Landroidx/lifecycle/FastSafeIterableMap$Entry;)V", "prev", "getPrev", "setPrev", "isRemoved", "Z", "()Z", "lifecycle-runtime"}, m910k = 1, mv = {2, 1, 0}, xi = 48)
    public static final /* data */ class Entry<K, V> implements Map.Entry<K, V>, KMappedMarker {
        private boolean isRemoved;
        private final K key;
        private Entry<K, V> next;
        private Entry<K, V> prev;
        private final V value;

        @Override // java.util.Map.Entry
        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof Entry)) {
                return false;
            }
            Entry entry = (Entry) other;
            return Intrinsics.areEqual(this.key, entry.key) && Intrinsics.areEqual(this.value, entry.value);
        }

        @Override // java.util.Map.Entry
        public int hashCode() {
            K k = this.key;
            int iHashCode = (k == null ? 0 : k.hashCode()) * 31;
            V v = this.value;
            return iHashCode + (v != null ? v.hashCode() : 0);
        }

        @Override // java.util.Map.Entry
        public V setValue(V v) {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }

        public String toString() {
            return "Entry(key=" + this.key + ", value=" + this.value + ")";
        }

        public Entry(K k, V v) {
            this.key = k;
            this.value = v;
        }

        @Override // java.util.Map.Entry
        public K getKey() {
            return this.key;
        }

        @Override // java.util.Map.Entry
        public V getValue() {
            return this.value;
        }

        public final Entry<K, V> getNext() {
            return this.next;
        }

        public final void setNext(Entry<K, V> entry) {
            this.next = entry;
        }

        public final Entry<K, V> getPrev() {
            return this.prev;
        }

        public final void setPrev(Entry<K, V> entry) {
            this.prev = entry;
        }

        /* JADX INFO: renamed from: isRemoved, reason: from getter */
        public final boolean getIsRemoved() {
            return this.isRemoved;
        }

        public final void markRemoved() {
            this.isRemoved = true;
        }
    }
}
