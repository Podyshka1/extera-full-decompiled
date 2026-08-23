package com.google.android.gms.internal.mlkit_language_id_common;

import javax.annotation.CheckForNull;

/* JADX INFO: loaded from: classes4.dex */
final class zzad extends zzw {
    static final zzw zza = new zzad(null, new Object[0], 0);
    final transient Object[] zzb;
    private final transient int zzc;

    private zzad(@CheckForNull Object obj, Object[] objArr, int i) {
        this.zzb = objArr;
        this.zzc = i;
    }

    public static zzad zzg(int i, Object[] objArr, zzv zzvVar) {
        Object obj = objArr[0];
        obj.getClass();
        Object obj2 = objArr[1];
        obj2.getClass();
        zzn.zza(obj, obj2);
        return new zzad(null, objArr, 1);
    }

    /* JADX WARN: Removed duplicated region for block: B:4:0x0007  */
    @Override // com.google.android.gms.internal.mlkit_language_id_common.zzw, java.util.Map
    @CheckForNull
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object get(@CheckForNull Object obj) {
        Object obj2;
        Object[] objArr = this.zzb;
        int i = this.zzc;
        if (obj != null && i == 1) {
            Object obj3 = objArr[0];
            obj3.getClass();
            if (obj3.equals(obj)) {
                obj2 = objArr[1];
                obj2.getClass();
            } else {
                obj2 = null;
            }
        }
        if (obj2 == null) {
            return null;
        }
        return obj2;
    }

    @Override // java.util.Map
    public final int size() {
        return this.zzc;
    }

    @Override // com.google.android.gms.internal.mlkit_language_id_common.zzw
    public final zzq zza() {
        return new zzac(this.zzb, 1, this.zzc);
    }

    @Override // com.google.android.gms.internal.mlkit_language_id_common.zzw
    public final zzx zzd() {
        return new zzaa(this, this.zzb, 0, this.zzc);
    }

    @Override // com.google.android.gms.internal.mlkit_language_id_common.zzw
    public final zzx zze() {
        return new zzab(this, new zzac(this.zzb, 0, this.zzc));
    }
}
