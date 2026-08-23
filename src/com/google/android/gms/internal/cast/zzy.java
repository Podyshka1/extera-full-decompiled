package com.google.android.gms.internal.cast;

import com.google.android.gms.common.internal.Preconditions;
import org.checkerframework.checker.nullness.qual.EnsuresNonNull;

/* JADX INFO: loaded from: classes4.dex */
public final class zzy {
    private final zzj zza;
    private final zzax zzb;
    private final String zzc;
    private zzaa zzd;
    private final zzv zze = new zzv(this, null);

    public zzy(zzj zzjVar, zzax zzaxVar, String str) {
        this.zza = zzjVar;
        this.zzb = zzaxVar;
        this.zzc = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @EnsuresNonNull({"SessionFlowSummary"})
    /* JADX INFO: renamed from: zzg, reason: merged with bridge method [inline-methods] */
    public final zzaa zzb() {
        if (this.zzd == null) {
            zzaa zzaaVarZza = zzaa.zza(this.zza, this.zzc);
            this.zzd = zzaaVarZza;
            zzaaVarZza.zzj(1);
        }
        return this.zzd;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: zzh, reason: merged with bridge method [inline-methods] */
    public final void zzc() {
        zzaa zzaaVar = this.zzd;
        if (zzaaVar != null) {
            zzaaVar.zzi();
            this.zzd = null;
        }
    }

    public final /* synthetic */ void zza(zzcs zzcsVar) {
        if (zzcsVar.zzc() == 2 && this.zzd != null) {
            zzc();
        }
        if (zzcsVar.zzc() == 2) {
            this.zzd = zzaa.zza(this.zza, this.zzc);
        } else {
            this.zzd = zzb();
        }
        ((zzaa) Preconditions.checkNotNull(this.zzd)).zzb(zzcsVar);
    }

    public final /* synthetic */ zzax zzd() {
        return this.zzb;
    }

    public final /* synthetic */ zzaa zze() {
        return this.zzd;
    }

    public final /* synthetic */ zzv zzf() {
        return this.zze;
    }
}
