package com.google.android.gms.measurement.internal;

import java.util.List;
import p022j$.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
final class zzhn implements com.google.android.gms.internal.measurement.zzr {
    final /* synthetic */ zzht zza;

    zzhn(zzht zzhtVar) {
        Objects.requireNonNull(zzhtVar);
        this.zza = zzhtVar;
    }

    @Override // com.google.android.gms.internal.measurement.zzr
    public final void zza(int i, String str, List list, boolean z, boolean z2) {
        int i2 = i - 1;
        zzgs zzgsVarZzi = i2 != 0 ? i2 != 1 ? i2 != 3 ? i2 != 4 ? this.zza.zzu.zzaV().zzi() : z ? this.zza.zzu.zzaV().zzf() : !z2 ? this.zza.zzu.zzaV().zzh() : this.zza.zzu.zzaV().zze() : this.zza.zzu.zzaV().zzk() : z ? this.zza.zzu.zzaV().zzc() : !z2 ? this.zza.zzu.zzaV().zzd() : this.zza.zzu.zzaV().zzb() : this.zza.zzu.zzaV().zzj();
        int size = list.size();
        if (size == 1) {
            zzgsVarZzi.zzb(str, list.get(0));
            return;
        }
        if (size == 2) {
            zzgsVarZzi.zzc(str, list.get(0), list.get(1));
        } else if (size != 3) {
            zzgsVarZzi.zza(str);
        } else {
            zzgsVarZzi.zzd(str, list.get(0), list.get(1), list.get(2));
        }
    }
}
