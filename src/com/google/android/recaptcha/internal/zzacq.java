package com.google.android.recaptcha.internal;

import java.security.GeneralSecurityException;

/* JADX INFO: loaded from: classes5.dex */
public abstract class zzacq {
    public static zzss zza(zzsk zzskVar, zzvt zzvtVar) throws GeneralSecurityException {
        zzss zzssVarZzb;
        int i = zzwc.$r8$clinit;
        for (int i2 = 0; i2 < zzskVar.zzc(); i2++) {
            zzsj zzsjVar = (zzsj) zzskVar;
            zzsi zzsiVarZzd = zzsjVar.zzd(i2);
            if (zzsiVarZzd.zzd() && zzsiVarZzd.zzb().equals(zzsg.zza)) {
                zzskVar.zze(zzul.class);
                zzum zzumVar = zzup.zza;
                zzse zzseVarZza = zzsjVar.zzb().zza();
                if (zzseVarZza instanceof zzxz) {
                    zzssVarZzb = zzabl.zzb((zzxz) zzseVarZza);
                } else if (zzseVarZza instanceof zzaaj) {
                    zzssVarZzb = zzadt.zzb((zzaaj) zzseVarZza);
                } else if (zzseVarZza instanceof zzzx) {
                    zzssVarZzb = zzacd.zzb((zzzx) zzseVarZza);
                } else {
                    if (!(zzseVarZza instanceof zzyi)) {
                        throw new GeneralSecurityException("Unknown key class: ".concat(String.valueOf(zzseVarZza.getClass())));
                    }
                    zzssVarZzb = zzacv.zzb((zzyi) zzseVarZza);
                }
                return new zzaco(new zzacp(zzssVarZzb, zzsjVar.zzb().zzc()), zzumVar);
            }
        }
        zzsj$$ExternalSyntheticBUOutline1.m480m("keyset doesn't contain a valid primary key");
        return null;
    }
}
