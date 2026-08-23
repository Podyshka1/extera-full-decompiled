package com.google.android.gms.internal.cast;

import android.os.Bundle;
import com.google.android.gms.cast.internal.Logger;
import com.google.android.gms.common.internal.Preconditions;
import de.robv.android.xposed.callbacks.XCallback;
import java.math.BigInteger;
import java.util.Map;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes4.dex */
public final class zzm {
    private static final Logger zza = new Logger("ApplicationAnalyticsUtils");
    private static final String zzb = "21.4.0";
    private final String zzc;
    private final Map zzd;
    private final Map zze;

    public zzm(Bundle bundle, String str) {
        this.zzc = str;
        this.zzd = zzah.zza(bundle, "com.google.android.gms.cast.DICTIONARY_CAST_STATUS_CODES_TO_APP_SESSION_ERROR");
        this.zze = zzah.zza(bundle, "com.google.android.gms.cast.DICTIONARY_CAST_STATUS_CODES_TO_APP_SESSION_CHANGE_REASON");
    }

    private final zznn zzh(zzl zzlVar) {
        long jLongValue;
        zznn zznnVarZzc = zzno.zzc();
        zznnVarZzc.zzm(zzlVar.zzd);
        int i = zzlVar.zze;
        zzlVar.zze = i + 1;
        zznnVarZzc.zzh(i);
        String str = zzlVar.zzc;
        if (str != null) {
            zznnVarZzc.zzj(str);
        }
        String str2 = zzlVar.zzh;
        if (str2 != null) {
            zznnVarZzc.zzg(str2);
        }
        zznd zzndVarZza = zzne.zza();
        zzndVarZza.zzb(zzb);
        zzndVarZza.zza(this.zzc);
        zznnVarZzc.zzb((zzne) zzndVarZza.zzq());
        zznf zznfVarZza = zzng.zza();
        if (zzlVar.zzb != null) {
            zzoj zzojVarZza = zzok.zza();
            zzojVarZza.zza(zzlVar.zzb);
            zznfVarZza.zza((zzok) zzojVarZza.zzq());
        }
        zznfVarZza.zzf(false);
        String str3 = zzlVar.zzf;
        if (str3 != null) {
            try {
                String strReplace = str3.replace("-", _UrlKt.FRAGMENT_ENCODE_SET);
                jLongValue = new BigInteger(strReplace.substring(0, Math.min(16, strReplace.length())), 16).longValue();
            } catch (NumberFormatException e) {
                zza.m342w(e, "receiverSessionId %s is not valid for hash", str3);
                jLongValue = 0;
            }
            zznfVarZza.zzh(jLongValue);
        }
        zznfVarZza.zzb(zzlVar.zzg);
        zznfVarZza.zzd(zzlVar.zzd());
        zznfVarZza.zze(zzlVar.zzi);
        zznnVarZzc.zzd(zznfVarZza);
        return zznnVarZzc;
    }

    private static void zzi(zznn zznnVar, boolean z) {
        zznf zznfVarZzc = zzng.zzc(zznnVar.zza());
        zznfVarZzc.zzf(z);
        zznnVar.zzd(zznfVarZzc);
    }

    public final zzno zza(zzl zzlVar) {
        return (zzno) zzh(zzlVar).zzq();
    }

    public final zzno zzb(zzl zzlVar, boolean z) {
        zznn zznnVarZzh = zzh(zzlVar);
        zzi(zznnVarZzh, z);
        return (zzno) zznnVarZzh.zzq();
    }

    public final zzno zzc(zzl zzlVar) {
        zznn zznnVarZzh = zzh(zzlVar);
        zznf zznfVarZzc = zzng.zzc(zznnVarZzh.zza());
        zznfVarZzc.zzg(10);
        zznnVarZzh.zze((zzng) zznfVarZzc.zzq());
        zzi(zznnVarZzh, true);
        return (zzno) zznnVarZzh.zzq();
    }

    public final zzno zzd(zzl zzlVar) {
        zznn zznnVarZzh = zzh(zzlVar);
        if (zzlVar.zzj == 1) {
            zznf zznfVarZzc = zzng.zzc(zznnVarZzh.zza());
            zznfVarZzc.zzg(17);
            zznnVarZzh.zze((zzng) zznfVarZzc.zzq());
        }
        return (zzno) zznnVarZzh.zzq();
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0055  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x002e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final zzno zze(zzl zzlVar, int i) {
        int iIntValue;
        int iIntValue2;
        zznn zznnVarZzh = zzh(zzlVar);
        zznf zznfVarZzc = zzng.zzc(zznnVarZzh.zza());
        Map map = this.zze;
        if (map != null) {
            Integer numValueOf = Integer.valueOf(i);
            iIntValue = !map.containsKey(numValueOf) ? i + XCallback.PRIORITY_HIGHEST : ((Integer) Preconditions.checkNotNull((Integer) this.zze.get(numValueOf))).intValue();
        }
        zznfVarZzc.zzg(iIntValue);
        Map map2 = this.zzd;
        if (map2 != null) {
            Integer numValueOf2 = Integer.valueOf(i);
            iIntValue2 = !map2.containsKey(numValueOf2) ? i + XCallback.PRIORITY_HIGHEST : ((Integer) Preconditions.checkNotNull((Integer) this.zzd.get(numValueOf2))).intValue();
        }
        zznfVarZzc.zzc(iIntValue2);
        zznnVarZzh.zze((zzng) zznfVarZzc.zzq());
        return (zzno) zznnVarZzh.zzq();
    }

    public final zzno zzf(zzl zzlVar, int i, int i2) {
        zznn zznnVarZzh = zzh(zzlVar);
        zznf zznfVarZzc = zzng.zzc(zznnVarZzh.zza());
        zznfVarZzc.zzj(i);
        zznfVarZzc.zzi(i2);
        zznnVarZzh.zze((zzng) zznfVarZzc.zzq());
        return (zzno) zznnVarZzh.zzq();
    }

    public final zzno zzg(zzl zzlVar, int i) {
        zznn zznnVarZzh = zzh(zzlVar);
        zznf zznfVarZzc = zzng.zzc(zznnVarZzh.zza());
        zznfVarZzc.zzj(i);
        zznnVarZzh.zze((zzng) zznfVarZzc.zzq());
        return (zzno) zznnVarZzh.zzq();
    }
}
