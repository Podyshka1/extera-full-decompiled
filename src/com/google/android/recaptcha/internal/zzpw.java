package com.google.android.recaptcha.internal;

import java.io.Serializable;
import java.util.Map;
import java.util.Set;
import org.mvel2.asm.signature.SignatureVisitor;

/* JADX INFO: loaded from: classes5.dex */
public abstract class zzpw<K, V> implements Map<K, V>, Serializable {
    private transient zzqb zza;
    private transient zzqb zzb;
    private transient zzpq zzc;

    @Override // java.util.Map
    @Deprecated
    public final void clear() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map
    public final boolean containsKey(Object obj) {
        return get(obj) != null;
    }

    @Override // java.util.Map
    public final boolean containsValue(Object obj) {
        return values().contains(obj);
    }

    @Override // java.util.Map
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof Map) {
            return entrySet().equals(((Map) obj).entrySet());
        }
        return false;
    }

    @Override // java.util.Map
    public abstract Object get(Object obj);

    @Override // java.util.Map
    public final Object getOrDefault(Object obj, Object obj2) {
        Object obj3 = get(obj);
        return obj3 != null ? obj3 : obj2;
    }

    @Override // java.util.Map
    public final int hashCode() {
        return zzqs.zza(entrySet());
    }

    @Override // java.util.Map
    public final boolean isEmpty() {
        return size() == 0;
    }

    @Override // java.util.Map
    public final /* bridge */ /* synthetic */ Set keySet() {
        zzqb zzqbVar = this.zzb;
        if (zzqbVar != null) {
            return zzqbVar;
        }
        zzqb zzqbVarZzc = zzc();
        this.zzb = zzqbVarZzc;
        return zzqbVarZzc;
    }

    @Override // java.util.Map
    @Deprecated
    public final Object put(Object obj, Object obj2) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map
    @Deprecated
    public final void putAll(Map map) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map
    @Deprecated
    public final Object remove(Object obj) {
        throw new UnsupportedOperationException();
    }

    public final String toString() {
        int size = size();
        zzpa.zzb(size, "size");
        StringBuilder sb = new StringBuilder((int) Math.min(((long) size) * 8, 1073741824L));
        sb.append('{');
        boolean z = true;
        for (Map.Entry<K, V> entry : entrySet()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append(entry.getKey());
            sb.append(SignatureVisitor.INSTANCEOF);
            sb.append(entry.getValue());
            z = false;
        }
        sb.append('}');
        return sb.toString();
    }

    @Override // java.util.Map
    /* JADX INFO: renamed from: zza, reason: merged with bridge method [inline-methods] */
    public final zzqb entrySet() {
        zzqb zzqbVar = this.zza;
        if (zzqbVar != null) {
            return zzqbVar;
        }
        zzqb zzqbVarZzb = zzb();
        this.zza = zzqbVarZzb;
        return zzqbVarZzb;
    }

    public abstract zzqb zzb();

    public abstract zzqb zzc();

    @Override // java.util.Map
    /* JADX INFO: renamed from: zzd, reason: merged with bridge method [inline-methods] */
    public final zzpq values() {
        zzpq zzpqVar = this.zzc;
        if (zzpqVar != null) {
            return zzpqVar;
        }
        zzpq zzpqVarZze = zze();
        this.zzc = zzpqVarZze;
        return zzpqVarZze;
    }

    public abstract zzpq zze();
}
