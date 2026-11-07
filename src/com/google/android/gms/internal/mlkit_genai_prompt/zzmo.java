package com.google.android.gms.internal.mlkit_genai_prompt;

import java.io.Serializable;
import java.util.Map;
import java.util.Set;
import java.util.SortedMap;
import org.mvel2.asm.signature.SignatureVisitor;

/* JADX INFO: loaded from: classes5.dex */
public abstract class zzmo implements Map, Serializable {
    private transient zzms zza;
    private transient zzms zzb;
    private transient zzmg zzc;

    public static zzmo zza() {
        return zznl.zza;
    }

    public static zzmo zzb(Object obj, Object obj2) {
        zzlu.zza("optional-module-barcode", "com.google.android.gms.vision.barcode");
        return zznl.zzj(1, new Object[]{"optional-module-barcode", "com.google.android.gms.vision.barcode"}, null);
    }

    public static zzmo zzc(Object obj, Object obj2, Object obj3, Object obj4) {
        zzlu.zza(obj, obj2);
        zzlu.zza(obj3, obj4);
        return zznl.zzj(2, new Object[]{obj, obj2, obj3, obj4}, null);
    }

    public static zzmo zzd(Map map) {
        if ((map instanceof zzmo) && !(map instanceof SortedMap)) {
            return (zzmo) map;
        }
        Set setEntrySet = map.entrySet();
        zzmn zzmnVar = new zzmn(setEntrySet != null ? setEntrySet.size() : 4);
        zzmnVar.zzb(setEntrySet);
        return zzmnVar.zzc();
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
        return zzno.zza(entrySet());
    }

    @Override // java.util.Map
    public final boolean isEmpty() {
        return size() == 0;
    }

    @Override // java.util.Map
    public final /* bridge */ /* synthetic */ Set keySet() {
        zzms zzmsVar = this.zzb;
        if (zzmsVar != null) {
            return zzmsVar;
        }
        zzms zzmsVarZzg = zzg();
        this.zzb = zzmsVarZzg;
        return zzmsVarZzg;
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
        zzlu.zzb(size, "size");
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
    /* JADX INFO: renamed from: zze, reason: merged with bridge method [inline-methods] */
    public final zzms entrySet() {
        zzms zzmsVar = this.zza;
        if (zzmsVar != null) {
            return zzmsVar;
        }
        zzms zzmsVarZzf = zzf();
        this.zza = zzmsVarZzf;
        return zzmsVarZzf;
    }

    public abstract zzms zzf();

    public abstract zzms zzg();

    @Override // java.util.Map
    /* JADX INFO: renamed from: zzh, reason: merged with bridge method [inline-methods] */
    public final zzmg values() {
        zzmg zzmgVar = this.zzc;
        if (zzmgVar != null) {
            return zzmgVar;
        }
        zzmg zzmgVarZzi = zzi();
        this.zzc = zzmgVarZzi;
        return zzmgVarZzi;
    }

    public abstract zzmg zzi();
}
