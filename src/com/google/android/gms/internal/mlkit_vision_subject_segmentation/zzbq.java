package com.google.android.gms.internal.mlkit_vision_subject_segmentation;

/* JADX INFO: loaded from: classes4.dex */
final class zzbq extends zzax {
    static final zzax zza = new zzbq(null, new Object[0], 0);
    final transient Object[] zzb;
    private final transient int zzc;

    private zzbq(Object obj, Object[] objArr, int i) {
        this.zzb = objArr;
        this.zzc = i;
    }

    public static zzbq zzg(int i, Object[] objArr, zzaw zzawVar) {
        Object obj = objArr[0];
        obj.getClass();
        Object obj2 = objArr[1];
        obj2.getClass();
        zzab.zzb(obj, obj2);
        return new zzbq(null, objArr, 1);
    }

    /* JADX WARN: Removed duplicated region for block: B:4:0x0003  */
    @Override // com.google.android.gms.internal.mlkit_vision_subject_segmentation.zzax, java.util.Map
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object get(Object obj) {
        Object obj2;
        if (obj == null) {
            obj2 = null;
        } else {
            int i = this.zzc;
            Object[] objArr = this.zzb;
            if (i == 1) {
                Object obj3 = objArr[0];
                obj3.getClass();
                if (obj3.equals(obj)) {
                    obj2 = objArr[1];
                    obj2.getClass();
                }
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

    @Override // com.google.android.gms.internal.mlkit_vision_subject_segmentation.zzax
    public final zzaq zza() {
        return new zzbp(this.zzb, 1, this.zzc);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_subject_segmentation.zzax
    public final zzay zzd() {
        return new zzbn(this, this.zzb, 0, this.zzc);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_subject_segmentation.zzax
    public final zzay zze() {
        return new zzbo(this, new zzbp(this.zzb, 0, this.zzc));
    }
}
