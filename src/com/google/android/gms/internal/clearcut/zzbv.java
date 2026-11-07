package com.google.android.gms.internal.clearcut;

import android.support.v4.media.session.MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
final class zzbv extends zzbu<Object> {
    @Override // com.google.android.gms.internal.clearcut.zzbu
    public final int zza(Map.Entry<?, ?> entry) {
        MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0.m2m(entry.getKey());
        throw null;
    }

    @Override // com.google.android.gms.internal.clearcut.zzbu
    public final zzby<Object> zza(Object obj) {
        MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0.m2m(obj);
        throw null;
    }

    @Override // com.google.android.gms.internal.clearcut.zzbu
    public final void zza(zzfr zzfrVar, Map.Entry<?, ?> entry) {
        MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0.m2m(entry.getKey());
        int[] iArr = zzbw.zzgq;
        throw null;
    }

    @Override // com.google.android.gms.internal.clearcut.zzbu
    public final void zza(Object obj, zzby<Object> zzbyVar) {
        MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0.m2m(obj);
        throw null;
    }

    @Override // com.google.android.gms.internal.clearcut.zzbu
    public final zzby<Object> zzb(Object obj) {
        zzby<Object> zzbyVarZza = zza(obj);
        if (!zzbyVarZza.isImmutable()) {
            return zzbyVarZza;
        }
        zzby<Object> zzbyVar = (zzby) zzbyVarZza.clone();
        zza(obj, zzbyVar);
        return zzbyVar;
    }

    @Override // com.google.android.gms.internal.clearcut.zzbu
    public final void zzc(Object obj) {
        zza(obj).zzv();
    }

    @Override // com.google.android.gms.internal.clearcut.zzbu
    public final boolean zze(zzdo zzdoVar) {
        return false;
    }
}
