package com.google.android.recaptcha.internal;

import android.content.Context;
import java.util.HashMap;

/* JADX INFO: loaded from: classes5.dex */
public final class zzbg {
    private final String zza;
    private final Context zzb;
    private final zzab zzc;
    private final zzbh zzd;
    private final HashMap zze = new HashMap();
    private final zzt zzf;

    public zzbg(String str, Context context, zzab zzabVar, zzt zztVar, zzbh zzbhVar) {
        this.zza = str;
        this.zzb = context;
        this.zzc = zzabVar;
        this.zzf = zztVar;
        this.zzd = zzbhVar;
    }

    public final void zza(zzbb zzbbVar) {
        zze(zzbbVar, 3, null);
    }

    public final void zzb(zzbb zzbbVar, zzp zzpVar, String str) {
        String strValueOf = String.valueOf(zzpVar.zzb().zza());
        int iZza = zzpVar.zza().zza();
        String strZzd = zzpVar.zzd();
        zzmq zzmqVarZzg = zzmr.zzg();
        zzmqVarZzg.zzp(strValueOf);
        zzmqVarZzg.zzd(iZza);
        if (strZzd != null) {
            zzmqVarZzg.zze(strZzd);
        }
        zze(zzbbVar, 4, (zzmr) zzmqVarZzg.zzj());
    }

    public final void zzd(zzpd zzpdVar) {
        this.zzd.zza(zzpdVar);
    }

    protected final void zze(zzbb zzbbVar, int i, zzmr zzmrVar) {
        zzx zzxVar;
        zzbf zzbfVar = (zzbf) this.zze.get(zzbbVar);
        if (zzbfVar != null) {
            zznf zznfVarZza = zzbfVar.zza(i, zzmrVar, this.zzb);
            zzpc zzpcVarZzi = zzpd.zzi();
            zzpcVarZzi.zzd(zznfVarZza);
            zzpd zzpdVar = (zzpd) zzpcVarZzi.zzj();
            zzv zzvVar = zzv.zza;
            zzne zzneVarZza = zzbbVar.zza();
            long jZzf = zznfVarZza.zzf() * 1000;
            zzne zzneVar = zzne.UNKNOWN;
            int iOrdinal = zzneVarZza.ordinal();
            if (iOrdinal == 1) {
                zzxVar = zzx.zzd;
            } else if (iOrdinal == 2) {
                zzxVar = zzx.zze;
            } else if (iOrdinal == 5) {
                zzxVar = zzx.zzf;
            } else if (iOrdinal == 6) {
                zzxVar = zzx.zzg;
            } else if (iOrdinal != 24) {
                switch (iOrdinal) {
                    case 12:
                        zzxVar = zzx.zzh;
                        break;
                    case 13:
                        zzxVar = zzx.zzi;
                        break;
                    case 14:
                        zzxVar = zzx.zzj;
                        break;
                    default:
                        zzxVar = zzx.zzb;
                        break;
                }
            } else {
                zzxVar = zzx.zzk;
            }
            zzv.zza(zzxVar.zza(), jZzf);
            this.zzd.zza(zzpdVar);
        }
    }
}
