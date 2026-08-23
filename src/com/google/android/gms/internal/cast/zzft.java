package com.google.android.gms.internal.cast;

import java.io.Serializable;
import java.util.Collection;
import java.util.Map;
import java.util.Set;
import java.util.function.BiConsumer;
import java.util.function.BiFunction;
import java.util.function.Function;
import org.mvel2.asm.signature.SignatureVisitor;
import p022j$.util.Map;

/* JADX INFO: loaded from: classes.dex */
public abstract class zzft implements Map, Serializable, p022j$.util.Map {
    private transient zzfu zza;
    private transient zzfu zzb;
    private transient zzfm zzc;

    zzft() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static zzft zzc(Iterable iterable) {
        zzfs zzfsVar = new zzfs(iterable instanceof Collection ? iterable.size() : 4);
        zzfsVar.zza(iterable);
        zzfr zzfrVar = zzfsVar.zzc;
        if (zzfrVar != null) {
            throw zzfrVar.zza();
        }
        zzgc zzgcVarZzh = zzgc.zzh(zzfsVar.zzb, zzfsVar.zza, zzfsVar);
        zzfr zzfrVar2 = zzfsVar.zzc;
        if (zzfrVar2 == null) {
            return zzgcVarZzh;
        }
        throw zzfrVar2.zza();
    }

    public static zzft zzd() {
        return zzgc.zza;
    }

    @Override // java.util.Map
    public final void clear() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map, p022j$.util.Map
    public /* synthetic */ Object compute(Object obj, BiFunction biFunction) {
        return Map.CC.$default$compute(this, obj, biFunction);
    }

    @Override // java.util.Map, p022j$.util.Map
    public /* synthetic */ Object computeIfAbsent(Object obj, Function function) {
        return Map.CC.$default$computeIfAbsent(this, obj, function);
    }

    @Override // java.util.Map, p022j$.util.Map
    public /* synthetic */ Object computeIfPresent(Object obj, BiFunction biFunction) {
        return Map.CC.$default$computeIfPresent(this, obj, biFunction);
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
        if (obj instanceof java.util.Map) {
            return entrySet().equals(((java.util.Map) obj).entrySet());
        }
        return false;
    }

    @Override // java.util.Map, p022j$.util.Map
    public /* synthetic */ void forEach(BiConsumer biConsumer) {
        Map.CC.$default$forEach(this, biConsumer);
    }

    @Override // java.util.Map
    public abstract Object get(Object obj);

    @Override // java.util.Map, p022j$.util.Map
    public final Object getOrDefault(Object obj, Object obj2) {
        Object obj3 = get(obj);
        return obj3 != null ? obj3 : obj2;
    }

    @Override // java.util.Map
    public final int hashCode() {
        return zzge.zza(entrySet());
    }

    @Override // java.util.Map
    public final boolean isEmpty() {
        return size() == 0;
    }

    @Override // java.util.Map
    public final /* bridge */ /* synthetic */ Set keySet() {
        zzfu zzfuVar = this.zzb;
        if (zzfuVar != null) {
            return zzfuVar;
        }
        zzfu zzfuVarZzf = zzf();
        this.zzb = zzfuVarZzf;
        return zzfuVarZzf;
    }

    @Override // java.util.Map, p022j$.util.Map
    public /* synthetic */ Object merge(Object obj, Object obj2, BiFunction biFunction) {
        return Map.CC.$default$merge(this, obj, obj2, biFunction);
    }

    @Override // java.util.Map
    public final Object put(Object obj, Object obj2) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map
    public final void putAll(java.util.Map map) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map, p022j$.util.Map
    public /* synthetic */ Object putIfAbsent(Object obj, Object obj2) {
        return Map.CC.$default$putIfAbsent(this, obj, obj2);
    }

    @Override // java.util.Map
    public final Object remove(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map, p022j$.util.Map
    public /* synthetic */ boolean remove(Object obj, Object obj2) {
        return Map.CC.$default$remove(this, obj, obj2);
    }

    @Override // java.util.Map, p022j$.util.Map
    public /* synthetic */ Object replace(Object obj, Object obj2) {
        return Map.CC.$default$replace(this, obj, obj2);
    }

    @Override // java.util.Map, p022j$.util.Map
    public /* synthetic */ boolean replace(Object obj, Object obj2, Object obj3) {
        return Map.CC.$default$replace(this, obj, obj2, obj3);
    }

    @Override // java.util.Map, p022j$.util.Map
    public /* synthetic */ void replaceAll(BiFunction biFunction) {
        Map.CC.$default$replaceAll(this, biFunction);
    }

    public final String toString() {
        int size = size();
        if (size < 0) {
            throw new IllegalArgumentException("size cannot be negative but was: " + size);
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

    abstract zzfm zza();

    @Override // java.util.Map
    /* JADX INFO: renamed from: zzb, reason: merged with bridge method [inline-methods] */
    public final zzfm values() {
        zzfm zzfmVar = this.zzc;
        if (zzfmVar != null) {
            return zzfmVar;
        }
        zzfm zzfmVarZza = zza();
        this.zzc = zzfmVarZza;
        return zzfmVarZza;
    }

    abstract zzfu zze();

    abstract zzfu zzf();

    @Override // java.util.Map
    /* JADX INFO: renamed from: zzg, reason: merged with bridge method [inline-methods] */
    public final zzfu entrySet() {
        zzfu zzfuVar = this.zza;
        if (zzfuVar != null) {
            return zzfuVar;
        }
        zzfu zzfuVarZze = zze();
        this.zza = zzfuVarZze;
        return zzfuVarZze;
    }
}
