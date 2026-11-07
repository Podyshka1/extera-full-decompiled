package com.google.android.gms.internal.cast;

import android.os.Bundle;
import android.text.TextUtils;
import com.google.android.gms.cast.internal.Logger;
import com.google.android.gms.common.internal.Preconditions;
import java.math.BigInteger;
import java.util.Map;
import okhttp3.internal.url._UrlKt;
import org.checkerframework.dataflow.qual.Pure;

/* JADX INFO: loaded from: classes4.dex */
public final class zzp {
    private static final Logger zza = new Logger("ApplicationAnalyticsUtils");
    private static final String zzb = "22.3.1";
    private final String zzc;
    private final Map zzd;
    private final Map zze;

    public zzp(Bundle bundle, String str) {
        this.zzc = str;
        this.zzd = zzaz.zza(bundle, "com.google.android.gms.cast.DICTIONARY_CAST_STATUS_CODES_TO_APP_SESSION_ERROR");
        this.zze = zzaz.zza(bundle, "com.google.android.gms.cast.DICTIONARY_CAST_STATUS_CODES_TO_APP_SESSION_CHANGE_REASON");
    }

    private final zzqq zzh(zzo zzoVar) {
        long jLongValue;
        zzqq zzqqVarZzc = zzqr.zzc();
        zzqqVarZzc.zza(zzoVar.zzd);
        int i = zzoVar.zze;
        zzoVar.zze = i + 1;
        zzqqVarZzc.zzg(i);
        String str = zzoVar.zzc;
        if (str != null) {
            zzqqVarZzc.zzf(str);
        }
        zzur zzurVarZza = zzus.zza();
        if (!TextUtils.isEmpty(zzoVar.zzh)) {
            zzqqVarZzc.zzb(zzoVar.zzh);
            zzurVarZza.zza(zzoVar.zzh);
        }
        if (!TextUtils.isEmpty(zzoVar.zzi)) {
            zzurVarZza.zzb(zzoVar.zzi);
        }
        if (!TextUtils.isEmpty(zzoVar.zzj)) {
            zzurVarZza.zzc(zzoVar.zzj);
        }
        if (!TextUtils.isEmpty(zzoVar.zzk)) {
            zzurVarZza.zzd(zzoVar.zzk);
        }
        if (!TextUtils.isEmpty(zzoVar.zzl)) {
            zzurVarZza.zze(zzoVar.zzl);
        }
        if (!TextUtils.isEmpty(zzoVar.zzm)) {
            zzurVarZza.zzf(zzoVar.zzm);
        }
        zzurVarZza.zzg(zzco.zza(zzoVar.zzn));
        zzqqVarZzc.zzn((zzus) zzurVarZza.zzu());
        zzqb zzqbVarZza = zzqc.zza();
        zzqbVarZza.zzb(zzb);
        zzqbVarZza.zza(this.zzc);
        zzqqVarZzc.zzl((zzqc) zzqbVarZza.zzu());
        zzqf zzqfVarZza = zzqg.zza();
        if (zzoVar.zzb != null) {
            zzro zzroVarZza = zzrp.zza();
            zzroVarZza.zza(zzoVar.zzb);
            zzqfVarZza.zza((zzrp) zzroVarZza.zzu());
        }
        zzqfVarZza.zzb(false);
        String str2 = zzoVar.zzf;
        if (str2 != null) {
            try {
                String strReplace = str2.replace("-", _UrlKt.FRAGMENT_ENCODE_SET);
                jLongValue = new BigInteger(strReplace.substring(0, Math.min(16, strReplace.length())), 16).longValue();
            } catch (NumberFormatException e) {
                zza.m295w(e, "receiverSessionId %s is not valid for hash", str2);
                jLongValue = 0;
            }
            zzqfVarZza.zzc(jLongValue);
        }
        zzqfVarZza.zzf(zzoVar.zzg);
        zzqfVarZza.zzg(zzoVar.zzb());
        zzqfVarZza.zzj(zzoVar.zzo);
        zzqqVarZzc.zzj(zzqfVarZza);
        return zzqqVarZzc;
    }

    private static void zzi(zzqq zzqqVar, boolean z) {
        zzqf zzqfVarZzc = zzqg.zzc(zzqqVar.zzh());
        zzqfVarZzc.zzb(z);
        zzqqVar.zzj(zzqfVarZzc);
    }

    public final zzqr zza(zzo zzoVar) {
        return (zzqr) zzh(zzoVar).zzu();
    }

    public final zzqr zzb(zzo zzoVar) {
        zzqq zzqqVarZzh = zzh(zzoVar);
        if (zzoVar.zzp == 1) {
            zzqf zzqfVarZzc = zzqg.zzc(zzqqVarZzh.zzh());
            zzqfVarZzc.zzd(17);
            zzqqVarZzh.zzi((zzqg) zzqfVarZzc.zzu());
        }
        return (zzqr) zzqqVarZzh.zzu();
    }

    public final zzqr zzc(zzo zzoVar) {
        zzqq zzqqVarZzh = zzh(zzoVar);
        zzqf zzqfVarZzc = zzqg.zzc(zzqqVarZzh.zzh());
        zzqfVarZzc.zzd(10);
        zzqqVarZzh.zzi((zzqg) zzqfVarZzc.zzu());
        zzi(zzqqVarZzh, true);
        return (zzqr) zzqqVarZzh.zzu();
    }

    public final zzqr zzd(zzo zzoVar, boolean z) {
        zzqq zzqqVarZzh = zzh(zzoVar);
        zzi(zzqqVarZzh, z);
        return (zzqr) zzqqVarZzh.zzu();
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0051  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x002c  */
    @Pure
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final zzqr zze(zzo zzoVar, int i) {
        int iIntValue;
        int iIntValue2;
        zzqq zzqqVarZzh = zzh(zzoVar);
        zzqf zzqfVarZzc = zzqg.zzc(zzqqVarZzh.zzh());
        Map map = this.zze;
        if (map != null) {
            Integer numValueOf = Integer.valueOf(i);
            iIntValue = !map.containsKey(numValueOf) ? i + 10000 : ((Integer) Preconditions.checkNotNull((Integer) map.get(numValueOf))).intValue();
        }
        zzqfVarZzc.zzd(iIntValue);
        Map map2 = this.zzd;
        if (map2 != null) {
            Integer numValueOf2 = Integer.valueOf(i);
            iIntValue2 = !map2.containsKey(numValueOf2) ? i + 10000 : ((Integer) Preconditions.checkNotNull((Integer) map2.get(numValueOf2))).intValue();
        }
        zzqfVarZzc.zze(iIntValue2);
        zzqqVarZzh.zzi((zzqg) zzqfVarZzc.zzu());
        return (zzqr) zzqqVarZzh.zzu();
    }

    public final zzqr zzf(zzo zzoVar, int i) {
        zzqq zzqqVarZzh = zzh(zzoVar);
        zzqf zzqfVarZzc = zzqg.zzc(zzqqVarZzh.zzh());
        zzqfVarZzc.zzh(i);
        zzqqVarZzh.zzi((zzqg) zzqfVarZzc.zzu());
        return (zzqr) zzqqVarZzh.zzu();
    }

    public final zzqr zzg(zzo zzoVar, int i, int i2) {
        zzqq zzqqVarZzh = zzh(zzoVar);
        zzqf zzqfVarZzc = zzqg.zzc(zzqqVarZzh.zzh());
        zzqfVarZzc.zzh(i);
        zzqfVarZzc.zzi(i2);
        zzqqVarZzh.zzi((zzqg) zzqfVarZzc.zzu());
        return (zzqr) zzqqVarZzh.zzu();
    }
}
