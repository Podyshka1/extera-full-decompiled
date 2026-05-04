package kotlin.collections;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public final class IndexedValue {
    private final int index;
    private final Object value;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof IndexedValue)) {
            return false;
        }
        IndexedValue indexedValue = (IndexedValue) obj;
        return this.index == indexedValue.index && Intrinsics.areEqual(this.value, indexedValue.value);
    }

    public int hashCode() {
        int i = this.index * 31;
        Object obj = this.value;
        return i + (obj == null ? 0 : obj.hashCode());
    }

    public String toString() {
        return "IndexedValue(index=" + this.index + ", value=" + this.value + ')';
    }

    public IndexedValue(int i, Object obj) {
        this.index = i;
        this.value = obj;
    }

    public final int getIndex() {
        return this.index;
    }

    public final Object getValue() {
        return this.value;
    }
}
