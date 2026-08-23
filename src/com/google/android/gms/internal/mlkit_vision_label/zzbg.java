package com.google.android.gms.internal.mlkit_vision_label;

import java.io.Serializable;
import java.util.Map;
import java.util.Set;
import javax.annotation.CheckForNull;
import org.mvel2.asm.signature.SignatureVisitor;

/* JADX INFO: loaded from: classes4.dex */
public abstract class zzbg implements Map, Serializable {

    @CheckForNull
    private transient zzbh zza;

    @CheckForNull
    private transient zzbh zzb;

    @CheckForNull
    private transient zzaz zzc;

    public static zzbg zzc(Object obj, Object obj2) {
        zzal.zzb("optional-module-barcode", "com.google.android.gms.vision.barcode");
        return zzbz.zzg(1, new Object[]{"optional-module-barcode", "com.google.android.gms.vision.barcode"}, null);
    }

    @Override // java.util.Map
    @Deprecated
    public final void clear() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map
    public final boolean containsKey(@CheckForNull Object obj) {
        return get(obj) != null;
    }

    @Override // java.util.Map
    public final boolean containsValue(@CheckForNull Object obj) {
        return values().contains(obj);
    }

    @Override // java.util.Map
    public final boolean equals(@CheckForNull Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof Map) {
            return entrySet().equals(((Map) obj).entrySet());
        }
        return false;
    }

    @Override // java.util.Map
    @CheckForNull
    public abstract Object get(@CheckForNull Object obj);

    @Override // java.util.Map
    @CheckForNull
    public final Object getOrDefault(@CheckForNull Object obj, @CheckForNull Object obj2) {
        Object obj3 = get(obj);
        return obj3 != null ? obj3 : obj2;
    }

    @Override // java.util.Map
    public final int hashCode() {
        return zzcb.zza(entrySet());
    }

    @Override // java.util.Map
    public final boolean isEmpty() {
        return size() == 0;
    }

    @Override // java.util.Map
    public final /* bridge */ /* synthetic */ Set keySet() {
        zzbh zzbhVar = this.zzb;
        if (zzbhVar != null) {
            return zzbhVar;
        }
        zzbh zzbhVarZze = zze();
        this.zzb = zzbhVarZze;
        return zzbhVarZze;
    }

    @Override // java.util.Map
    @CheckForNull
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
    @CheckForNull
    @Deprecated
    public final Object remove(@CheckForNull Object obj) {
        throw new UnsupportedOperationException();
    }

    public final String toString() {
        int size = size();
        zzal.zza(size, "size");
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

    public abstract zzaz zza();

    @Override // java.util.Map
    /* JADX INFO: renamed from: zzb, reason: merged with bridge method [inline-methods] */
    public final zzaz values() {
        zzaz zzazVar = this.zzc;
        if (zzazVar != null) {
            return zzazVar;
        }
        zzaz zzazVarZza = zza();
        this.zzc = zzazVarZza;
        return zzazVarZza;
    }

    public abstract zzbh zzd();

    public abstract zzbh zze();

    @Override // java.util.Map
    /* JADX INFO: renamed from: zzf, reason: merged with bridge method [inline-methods] */
    public final zzbh entrySet() {
        zzbh zzbhVar = this.zza;
        if (zzbhVar != null) {
            return zzbhVar;
        }
        zzbh zzbhVarZzd = zzd();
        this.zza = zzbhVarZzd;
        return zzbhVarZzd;
    }
}
