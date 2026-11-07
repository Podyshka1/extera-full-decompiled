package com.google.android.gms.internal.mlkit_genai_prompt;

import com.google.android.gms.cast.internal.zzar$$ExternalSyntheticBUOutline1;
import java.util.Objects;

/* JADX INFO: loaded from: classes5.dex */
public abstract class zziw {
    public static zziw zzh(zzcy zzcyVar) {
        int iZza = zzcyVar.zza();
        if (iZza == 0) {
            String strZzb = zzcyVar.zzb();
            Objects.requireNonNull(strZzb);
            return new zziq(strZzb);
        }
        if (iZza == 1) {
            return new zzil(zzcyVar.zzc());
        }
        if (iZza == 2) {
            return new zzin(zzcyVar.zzd());
        }
        if (iZza == 3) {
            return new zzim(zzcyVar.zze());
        }
        if (iZza != 4) {
            if (iZza == 5) {
                return new zzip(zzcyVar.zzg());
            }
            int iZza2 = zzcyVar.zza();
            zzar$$ExternalSyntheticBUOutline1.m321m(String.valueOf(iZza2).length() + 24, "Unsupported value kind: ", iZza2);
            return null;
        }
        int i = zzml.$r8$clinit;
        zzmh zzmhVar = new zzmh();
        zzml zzmlVarZzf = zzcyVar.zzf();
        int size = zzmlVarZzf.size();
        for (int i2 = 0; i2 < size; i2++) {
            zzmhVar.zzd(zzh((zzcy) zzmlVarZzf.get(i2)));
        }
        zzml zzmlVarZzq = zzml.zzq(zzmhVar.zze());
        Objects.requireNonNull(zzmlVarZzq);
        return new zzio(zzmlVarZzq);
    }

    public abstract boolean zza();

    public abstract int zzb();

    public abstract double zzc();

    public abstract int zzd();

    public abstract zzml zze();

    public abstract long zzf();

    public abstract String zzg();
}
