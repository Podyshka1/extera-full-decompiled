package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.internal.Preconditions;
import java.util.ArrayList;
import java.util.List;
import p022j$.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
final class zzpc {
    com.google.android.gms.internal.measurement.zzid zza;
    List zzb;
    List zzc;
    long zzd;
    final /* synthetic */ zzpg zze;

    /* synthetic */ zzpc(zzpg zzpgVar, byte[] bArr) {
        Objects.requireNonNull(zzpgVar);
        this.zze = zzpgVar;
    }

    private static final long zzb(com.google.android.gms.internal.measurement.zzhs zzhsVar) {
        return ((zzhsVar.zzf() / 1000) / 60) / 60;
    }

    public final boolean zza(long j, com.google.android.gms.internal.measurement.zzhs zzhsVar) {
        Preconditions.checkNotNull(zzhsVar);
        if (this.zzc == null) {
            this.zzc = new ArrayList();
        }
        if (this.zzb == null) {
            this.zzb = new ArrayList();
        }
        if (!this.zzc.isEmpty() && zzb((com.google.android.gms.internal.measurement.zzhs) this.zzc.get(0)) != zzb(zzhsVar)) {
            return false;
        }
        long jZzcn = this.zzd + ((long) zzhsVar.zzcn());
        zzpg zzpgVar = this.zze;
        if (!zzpgVar.zzd().zzp(null, zzfy.zzbd)) {
            zzpgVar.zzd();
            if (jZzcn >= zzal.zzG()) {
                return false;
            }
        } else if (!this.zzc.isEmpty()) {
            zzpgVar.zzd();
            if (jZzcn >= zzal.zzG()) {
                return false;
            }
        }
        this.zzd = jZzcn;
        this.zzc.add(zzhsVar);
        this.zzb.add(Long.valueOf(j));
        int size = this.zzc.size();
        zzpgVar.zzd();
        return size < Math.max(1, ((Integer) zzfy.zzj.zzb(null)).intValue());
    }
}
