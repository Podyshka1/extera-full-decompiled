package com.google.android.gms.measurement.internal;

import com.google.android.gms.internal.measurement.zzpu;
import p022j$.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
final class zzac extends zzab {
    final /* synthetic */ zzad zza;
    private final com.google.android.gms.internal.measurement.zzfn zzh;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzac(zzad zzadVar, String str, int i, com.google.android.gms.internal.measurement.zzfn zzfnVar) {
        super(str, i);
        Objects.requireNonNull(zzadVar);
        this.zza = zzadVar;
        this.zzh = zzfnVar;
    }

    @Override // com.google.android.gms.measurement.internal.zzab
    final int zza() {
        return this.zzh.zzb();
    }

    @Override // com.google.android.gms.measurement.internal.zzab
    final boolean zzb() {
        return true;
    }

    @Override // com.google.android.gms.measurement.internal.zzab
    final boolean zzc() {
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    final boolean zzd(Long l, Long l2, com.google.android.gms.internal.measurement.zziu zziuVar, boolean z) {
        zzpu.zza();
        zzic zzicVar = this.zza.zzu;
        boolean zZzp = zzicVar.zzc().zzp(this.zzb, zzfy.zzaD);
        com.google.android.gms.internal.measurement.zzfn zzfnVar = this.zzh;
        boolean zZze = zzfnVar.zze();
        boolean zZzf = zzfnVar.zzf();
        boolean zZzh = zzfnVar.zzh();
        Object[] objArr = zZze || zZzf || zZzh;
        Boolean boolZze = null;
        boolZze = null;
        boolZze = null;
        boolZze = null;
        boolZze = null;
        if (z && objArr != true) {
            zzicVar.zzaV().zzk().zzc("Property filter already evaluated true and it is not associated with an enhanced audience. audience ID, filter ID", Integer.valueOf(this.zzc), zzfnVar.zza() ? Integer.valueOf(zzfnVar.zzb()) : null);
            return true;
        }
        com.google.android.gms.internal.measurement.zzfh zzfhVarZzd = zzfnVar.zzd();
        boolean zZzf2 = zzfhVarZzd.zzf();
        if (zziuVar.zzf()) {
            if (zzfhVarZzd.zzc()) {
                boolZze = zzab.zze(zzab.zzg(zziuVar.zzg(), zzfhVarZzd.zzd()), zZzf2);
            } else {
                zzicVar.zzaV().zze().zzb("No number filter for long property. property", zzicVar.zzl().zzc(zziuVar.zzc()));
            }
        } else if (zziuVar.zzj()) {
            if (zzfhVarZzd.zzc()) {
                boolZze = zzab.zze(zzab.zzh(zziuVar.zzk(), zzfhVarZzd.zzd()), zZzf2);
            } else {
                zzicVar.zzaV().zze().zzb("No number filter for double property. property", zzicVar.zzl().zzc(zziuVar.zzc()));
            }
        } else if (!zziuVar.zzd()) {
            zzicVar.zzaV().zze().zzb("User property has no value, property", zzicVar.zzl().zzc(zziuVar.zzc()));
        } else if (zzfhVarZzd.zza()) {
            boolZze = zzab.zze(zzab.zzf(zziuVar.zze(), zzfhVarZzd.zzb(), zzicVar.zzaV()), zZzf2);
        } else if (!zzfhVarZzd.zzc()) {
            zzicVar.zzaV().zze().zzb("No string or number filter defined. property", zzicVar.zzl().zzc(zziuVar.zzc()));
        } else if (zzpk.zzm(zziuVar.zze())) {
            boolZze = zzab.zze(zzab.zzi(zziuVar.zze(), zzfhVarZzd.zzd()), zZzf2);
        } else {
            zzicVar.zzaV().zze().zzc("Invalid user property value for Numeric number filter. property, value", zzicVar.zzl().zzc(zziuVar.zzc()), zziuVar.zze());
        }
        zzicVar.zzaV().zzk().zzb("Property filter result", boolZze == null ? "null" : boolZze);
        if (boolZze == null) {
            return false;
        }
        this.zzd = Boolean.TRUE;
        if (zZzh && !boolZze.booleanValue()) {
            return true;
        }
        if (!z || zzfnVar.zze()) {
            this.zze = boolZze;
        }
        if (boolZze.booleanValue() && objArr != false && zziuVar.zza()) {
            long jZzb = zziuVar.zzb();
            if (l != null) {
                jZzb = l.longValue();
            }
            if (zZzp && zzfnVar.zze() && !zzfnVar.zzf() && l2 != null) {
                jZzb = l2.longValue();
            }
            if (zzfnVar.zzf()) {
                this.zzg = Long.valueOf(jZzb);
            } else {
                this.zzf = Long.valueOf(jZzb);
            }
        }
        return true;
    }
}
