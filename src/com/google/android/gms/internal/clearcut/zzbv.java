package com.google.android.gms.internal.clearcut;

import androidx.appcompat.app.WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
final class zzbv extends zzbu {
    zzbv() {
    }

    @Override // com.google.android.gms.internal.clearcut.zzbu
    final int zza(Map.Entry entry) {
        WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m4m(entry.getKey());
        throw null;
    }

    @Override // com.google.android.gms.internal.clearcut.zzbu
    final zzby zza(Object obj) {
        WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m4m(obj);
        throw null;
    }

    @Override // com.google.android.gms.internal.clearcut.zzbu
    final void zza(zzfr zzfrVar, Map.Entry entry) {
        WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m4m(entry.getKey());
        int[] iArr = zzbw.zzgq;
        throw null;
    }

    @Override // com.google.android.gms.internal.clearcut.zzbu
    final void zza(Object obj, zzby zzbyVar) {
        WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m4m(obj);
        throw null;
    }

    @Override // com.google.android.gms.internal.clearcut.zzbu
    final zzby zzb(Object obj) {
        zzby zzbyVarZza = zza(obj);
        if (!zzbyVarZza.isImmutable()) {
            return zzbyVarZza;
        }
        zzby zzbyVar = (zzby) zzbyVarZza.clone();
        zza(obj, zzbyVar);
        return zzbyVar;
    }

    @Override // com.google.android.gms.internal.clearcut.zzbu
    final void zzc(Object obj) {
        zza(obj).zzv();
    }

    @Override // com.google.android.gms.internal.clearcut.zzbu
    final boolean zze(zzdo zzdoVar) {
        return false;
    }
}
