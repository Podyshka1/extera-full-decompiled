package com.google.android.recaptcha.internal;

import java.security.GeneralSecurityException;

/* JADX INFO: loaded from: classes5.dex */
public abstract class zzact {
    public static zzst zza(zzsk zzskVar, zzvt zzvtVar) throws GeneralSecurityException {
        zzst zzstVarZzb;
        zzady zzadyVarZzd;
        zzvk zzvkVar = new zzvk();
        for (int i = 0; i < zzskVar.zzc(); i++) {
            zzsi zzsiVarZzd = ((zzsj) zzskVar).zzd(i);
            if (zzsiVarZzd.zzb().equals(zzsg.zza)) {
                zzse zzseVarZza = zzsiVarZzd.zza();
                if (zzseVarZza instanceof zzyb) {
                    zztv zztvVar = zzabm.zza;
                    zzstVarZzb = zzabm.zzb((zzyb) zzseVarZza, zzti.zza());
                } else if (zzseVarZza instanceof zzaal) {
                    zzstVarZzb = zzadv.zzb((zzaal) zzseVarZza);
                } else if (zzseVarZza instanceof zzzz) {
                    zzstVarZzb = zzadr.zzb((zzzz) zzseVarZza);
                } else {
                    if (!(zzseVarZza instanceof zzyo)) {
                        throw new GeneralSecurityException("Unknown key class: ".concat(String.valueOf(zzseVarZza.getClass())));
                    }
                    zzstVarZzb = zzacx.zzb((zzyo) zzseVarZza);
                }
                zzse zzseVarZza2 = zzsiVarZzd.zza();
                if (zzseVarZza2 instanceof zzaax) {
                    zzadyVarZzd = ((zzaax) zzseVarZza2).zze();
                } else {
                    if (!(zzseVarZza2 instanceof zzui)) {
                        String name = zzseVarZza2.getClass().getName();
                        String strValueOf = String.valueOf(zzseVarZza2.zza());
                        StringBuilder sb = new StringBuilder(name.length() + 59 + strValueOf.length());
                        sb.append("Cannot get output prefix for key of class ");
                        sb.append(name);
                        sb.append(" with parameters ");
                        sb.append(strValueOf);
                        throw new GeneralSecurityException(sb.toString());
                    }
                    zzadyVarZzd = ((zzui) zzseVarZza2).zzd();
                }
                zzvkVar.zza(zzadyVarZzd, new zzacs(zzstVarZzb, zzsiVarZzd.zzc()));
            }
        }
        zzskVar.zze(zzul.class);
        return new zzacr(zzvkVar.zzb(), zzup.zza);
    }
}
