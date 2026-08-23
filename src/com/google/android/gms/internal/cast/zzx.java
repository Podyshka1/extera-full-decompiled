package com.google.android.gms.internal.cast;

import android.text.TextUtils;
import com.google.android.gms.cast.CastDevice;
import com.google.android.gms.cast.framework.CastContext;
import com.google.android.gms.cast.framework.CastSession;
import com.google.android.gms.cast.internal.Logger;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.DefaultClock;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import okhttp3.internal.url._UrlKt;
import p022j$.util.DesugarCollections;

/* JADX INFO: loaded from: classes4.dex */
final class zzx {
    public static final /* synthetic */ int $r8$clinit = 0;
    private static final Logger zzd = new Logger("SessionFlowSummary");
    private static final String zze = "21.4.0";
    private static long zzf = System.currentTimeMillis();
    CastSession zza;
    public Integer zzb;
    private final zzg zzl;
    private final String zzm;
    private final long zzo;
    private String zzp;
    private String zzq;
    private String zzr;
    private final zzfc zzg = zzff.zza(new zzfc() { // from class: com.google.android.gms.internal.cast.zzw
        @Override // com.google.android.gms.internal.cast.zzfc
        public final Object zza() {
            int i = zzx.$r8$clinit;
            return ((CastContext) Preconditions.checkNotNull(CastContext.getSharedInstance())).getCastOptions().getReceiverApplicationId();
        }
    });
    private final List zzh = DesugarCollections.synchronizedList(new ArrayList());
    private final List zzi = DesugarCollections.synchronizedList(new ArrayList());
    private final List zzj = DesugarCollections.synchronizedList(new ArrayList());
    private final Map zzk = DesugarCollections.synchronizedMap(new HashMap());
    private final long zzn = DefaultClock.getInstance().currentTimeMillis();

    private zzx(zzg zzgVar, String str) {
        this.zzl = zzgVar;
        this.zzm = str;
        long j = zzf;
        zzf = 1 + j;
        this.zzo = j;
    }

    public static zzx zza(zzg zzgVar, String str) {
        return new zzx(zzgVar, str);
    }

    final void zzb(zzq zzqVar) {
        zzqVar.zzb(this.zzn);
        this.zzj.add(zzqVar);
    }

    final void zzc(zzz zzzVar) {
        zzzVar.zzb(this.zzn);
        this.zzh.add(zzzVar);
    }

    final void zzd(zzab zzabVar) {
        zzabVar.zzb(this.zzn);
        this.zzi.add(zzabVar);
    }

    public final void zze() {
        long jLongValue;
        CastSession castSession = this.zza;
        if (castSession != null) {
            castSession.zzj(null);
            this.zza = null;
        }
        long j = this.zzo;
        zznn zznnVarZzc = zzno.zzc();
        zznnVarZzc.zzm(j);
        String str = this.zzq;
        if (str != null) {
            zznnVarZzc.zzj(str);
        }
        String str2 = this.zzr;
        if (str2 != null) {
            zznnVarZzc.zzg(str2);
        }
        zznd zzndVarZza = zzne.zza();
        zzndVarZza.zzb(zze);
        zzndVarZza.zza(this.zzm);
        zznnVarZzc.zzb((zzne) zzndVarZza.zzq());
        zzfc zzfcVar = this.zzg;
        zznt zzntVarZza = zznu.zza();
        Object objZza = zzfcVar.zza();
        if (objZza != null) {
            zzoj zzojVarZza = zzok.zza();
            zzojVarZza.zza((String) objZza);
            zzntVarZza.zze((zzok) zzojVarZza.zzq());
        }
        String str3 = this.zzp;
        if (str3 != null) {
            try {
                String strReplace = str3.replace("-", _UrlKt.FRAGMENT_ENCODE_SET);
                jLongValue = new BigInteger(strReplace.substring(0, Math.min(16, strReplace.length())), 16).longValue();
            } catch (NumberFormatException e) {
                zzd.m342w(e, "receiverSessionId %s is not valid for hash", str3);
                jLongValue = 0;
            }
            zzntVarZza.zzf(jLongValue);
        }
        if (!this.zzh.isEmpty()) {
            ArrayList arrayList = new ArrayList();
            Iterator it = this.zzh.iterator();
            while (it.hasNext()) {
                arrayList.add(((zzz) it.next()).zza());
            }
            zzntVarZza.zza(arrayList);
        }
        if (!this.zzi.isEmpty()) {
            ArrayList arrayList2 = new ArrayList();
            Iterator it2 = this.zzi.iterator();
            while (it2.hasNext()) {
                arrayList2.add(((zzab) it2.next()).zza());
            }
            zzntVarZza.zzc(arrayList2);
        }
        if (!this.zzj.isEmpty()) {
            ArrayList arrayList3 = new ArrayList();
            Iterator it3 = this.zzj.iterator();
            while (it3.hasNext()) {
                arrayList3.add(((zzq) it3.next()).zza());
            }
            zzntVarZza.zzb(arrayList3);
        }
        if (!this.zzk.isEmpty()) {
            ArrayList arrayList4 = new ArrayList();
            Iterator it4 = this.zzk.values().iterator();
            while (it4.hasNext()) {
                arrayList4.add(((zzad) it4.next()).zza());
            }
            zzntVarZza.zzd(arrayList4);
        }
        zznnVarZzc.zzl((zznu) zzntVarZza.zzq());
        this.zzl.zze((zzno) zznnVarZzc.zzq(), 233);
    }

    final void zzf(CastSession castSession) {
        if (castSession == null) {
            zzh(2);
            return;
        }
        CastDevice castDevice = castSession.getCastDevice();
        if (castDevice == null) {
            zzh(3);
            return;
        }
        this.zza = castSession;
        String str = this.zzq;
        if (str == null) {
            this.zzq = castDevice.zzc();
            this.zzr = castDevice.getModelName();
            this.zzb = Integer.valueOf(castSession.zzm());
        } else {
            if (TextUtils.equals(str, castDevice.zzc())) {
                return;
            }
            zzh(5);
        }
    }

    final void zzg(String str) {
        String str2 = this.zzp;
        if (str2 == null) {
            this.zzp = str;
        } else {
            if (TextUtils.equals(str, str2)) {
                return;
            }
            zzh(4);
        }
    }

    public final void zzh(int i) {
        Map map = this.zzk;
        Integer numValueOf = Integer.valueOf(i - 1);
        zzad zzadVar = (zzad) map.get(numValueOf);
        if (zzadVar != null) {
            zzadVar.zzb();
            return;
        }
        zzad zzadVar2 = new zzad(new zzac(i));
        zzadVar2.zzc(this.zzn);
        this.zzk.put(numValueOf, zzadVar2);
    }
}
