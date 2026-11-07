package com.google.android.gms.internal.vision;

import android.support.v4.media.session.MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
final class zzkg implements zzkh {
    @Override // com.google.android.gms.internal.vision.zzkh
    public final Map<?, ?> zza(Object obj) {
        return (zzke) obj;
    }

    @Override // com.google.android.gms.internal.vision.zzkh
    public final zzkf<?, ?> zzb(Object obj) {
        MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0.m2m(obj);
        throw new NoSuchMethodError();
    }

    @Override // com.google.android.gms.internal.vision.zzkh
    public final Map<?, ?> zzc(Object obj) {
        return (zzke) obj;
    }

    @Override // com.google.android.gms.internal.vision.zzkh
    public final boolean zzd(Object obj) {
        return !((zzke) obj).zzd();
    }

    @Override // com.google.android.gms.internal.vision.zzkh
    public final Object zze(Object obj) {
        ((zzke) obj).zzc();
        return obj;
    }

    @Override // com.google.android.gms.internal.vision.zzkh
    public final Object zzf(Object obj) {
        return zzke.zza().zzb();
    }

    @Override // com.google.android.gms.internal.vision.zzkh
    public final Object zza(Object obj, Object obj2) {
        zzke zzkeVarZzb = (zzke) obj;
        zzke zzkeVar = (zzke) obj2;
        if (!zzkeVar.isEmpty()) {
            if (!zzkeVarZzb.zzd()) {
                zzkeVarZzb = zzkeVarZzb.zzb();
            }
            zzkeVarZzb.zza(zzkeVar);
        }
        return zzkeVarZzb;
    }

    @Override // com.google.android.gms.internal.vision.zzkh
    public final int zza(int i, Object obj, Object obj2) {
        zzke zzkeVar = (zzke) obj;
        MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0.m2m(obj2);
        if (zzkeVar.isEmpty()) {
            return 0;
        }
        Iterator it = zzkeVar.entrySet().iterator();
        if (!it.hasNext()) {
            return 0;
        }
        Map.Entry entry = (Map.Entry) it.next();
        entry.getKey();
        entry.getValue();
        throw new NoSuchMethodError();
    }
}
