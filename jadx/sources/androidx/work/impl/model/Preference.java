package androidx.work.impl.model;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class Preference {
    private final String key;
    private final Long value;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Preference)) {
            return false;
        }
        Preference preference = (Preference) obj;
        return Intrinsics.areEqual(this.key, preference.key) && Intrinsics.areEqual(this.value, preference.value);
    }

    public int hashCode() {
        int iHashCode = this.key.hashCode() * 31;
        Long l = this.value;
        return iHashCode + (l == null ? 0 : l.hashCode());
    }

    public String toString() {
        return "Preference(key=" + this.key + ", value=" + this.value + ')';
    }

    public Preference(String key, Long l) {
        Intrinsics.checkNotNullParameter(key, "key");
        this.key = key;
        this.value = l;
    }

    public final String getKey() {
        return this.key;
    }

    public final Long getValue() {
        return this.value;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public Preference(String key, boolean z) {
        this(key, Long.valueOf(z ? 1L : 0L));
        Intrinsics.checkNotNullParameter(key, "key");
    }
}
