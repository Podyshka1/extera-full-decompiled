package com.google.android.gms.internal.cast;

import com.google.android.gms.cast.internal.zzar$$ExternalSyntheticBUOutline1;
import java.io.Serializable;
import java.util.Collection;
import java.util.Map;
import java.util.Set;
import org.mvel2.asm.signature.SignatureVisitor;

/* JADX INFO: loaded from: classes4.dex */
public abstract class zzhy implements Map, Serializable {
    private transient zzhz zza;
    private transient zzhz zzb;
    private transient zzhr zzc;

    public static zzhy zza() {
        return zzih.zza;
    }

    public static zzhy zzb(Iterable iterable) {
        zzhx zzhxVar = new zzhx(iterable instanceof Collection ? ((Collection) iterable).size() : 4);
        zzhxVar.zza(iterable);
        zzhw zzhwVar = zzhxVar.zzc;
        if (zzhwVar != null) {
            throw zzhwVar.zza();
        }
        zzih zzihVarZzh = zzih.zzh(zzhxVar.zzb, zzhxVar.zza, zzhxVar);
        zzhw zzhwVar2 = zzhxVar.zzc;
        if (zzhwVar2 == null) {
            return zzihVarZzh;
        }
        throw zzhwVar2.zza();
    }

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
        return zzij.zza(entrySet());
    }

    @Override // java.util.Map
    public final boolean isEmpty() {
        return size() == 0;
    }

    @Override // java.util.Map
    public final /* bridge */ /* synthetic */ Set keySet() {
        zzhz zzhzVar = this.zzb;
        if (zzhzVar != null) {
            return zzhzVar;
        }
        zzhz zzhzVarZze = zze();
        this.zzb = zzhzVarZze;
        return zzhzVarZze;
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
        if (size < 0) {
            zzar$$ExternalSyntheticBUOutline1.m292m(String.valueOf(size).length() + 33, "size cannot be negative but was: ", size);
            return null;
        }
        StringBuilder sb = new StringBuilder((int) Math.min(((long) size) * 8, 1073741824L));
        sb.append('{');
        boolean z = true;
        for (Map.Entry entry : entrySet()) {
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
    /* JADX INFO: renamed from: zzc, reason: merged with bridge method [inline-methods] */
    public final zzhz entrySet() {
        zzhz zzhzVar = this.zza;
        if (zzhzVar != null) {
            return zzhzVar;
        }
        zzhz zzhzVarZzd = zzd();
        this.zza = zzhzVarZzd;
        return zzhzVarZzd;
    }

    public abstract zzhz zzd();

    public abstract zzhz zze();

    @Override // java.util.Map
    /* JADX INFO: renamed from: zzf, reason: merged with bridge method [inline-methods] */
    public final zzhr values() {
        zzhr zzhrVar = this.zzc;
        if (zzhrVar != null) {
            return zzhrVar;
        }
        zzhr zzhrVarZzg = zzg();
        this.zzc = zzhrVarZzg;
        return zzhrVarZzg;
    }

    public abstract zzhr zzg();
}
