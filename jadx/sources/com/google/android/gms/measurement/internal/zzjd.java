package com.google.android.gms.measurement.internal;

import android.content.ContentValues;
import android.database.sqlite.SQLiteException;
import android.os.Binder;
import android.os.Bundle;
import android.os.RemoteException;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.common.GooglePlayServicesUtilLight;
import com.google.android.gms.common.GoogleSignatureVerifier;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.UidVerifier;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes4.dex */
public final class zzjd extends zzga {
    private final zzpg zza;
    private Boolean zzb;
    private String zzc;

    public zzjd(zzpg zzpgVar, String str) {
        Preconditions.checkNotNull(zzpgVar);
        this.zza = zzpgVar;
        this.zzc = null;
    }

    private final void zzM(zzbg zzbgVar, zzr zzrVar) {
        zzpg zzpgVar = this.zza;
        zzpgVar.zzZ();
        zzpgVar.zzF(zzbgVar, zzrVar);
    }

    private final void zzN(zzr zzrVar, boolean z) {
        Preconditions.checkNotNull(zzrVar);
        String str = zzrVar.zza;
        Preconditions.checkNotEmpty(str);
        zzO(str, false);
        this.zza.zzt().zzA(zzrVar.zzb);
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x003a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private final void zzO(String str, boolean z) {
        if (TextUtils.isEmpty(str)) {
            this.zza.zzaV().zzb().zza("Measurement Service called without app package");
            throw new SecurityException("Measurement Service called without app package");
        }
        if (z) {
            try {
                if (this.zzb == null) {
                    if (!"com.google.android.gms".equals(this.zzc)) {
                        zzpg zzpgVar = this.zza;
                        boolean z2 = UidVerifier.isGooglePlayServicesUid(zzpgVar.zzaY(), Binder.getCallingUid()) || GoogleSignatureVerifier.getInstance(zzpgVar.zzaY()).isUidGoogleSigned(Binder.getCallingUid());
                        this.zzb = Boolean.valueOf(z2);
                    }
                }
                if (this.zzb.booleanValue()) {
                    return;
                }
            } catch (SecurityException e) {
                this.zza.zzaV().zzb().zzb("Measurement Service called with invalid calling package. appId", zzgu.zzl(str));
                throw e;
            }
        }
        if (this.zzc == null && GooglePlayServicesUtilLight.uidHasPackageName(this.zza.zzaY(), Binder.getCallingUid(), str)) {
            this.zzc = str;
        }
        if (str.equals(this.zzc)) {
        } else {
            throw new SecurityException(String.format("Unknown calling package name '%s'.", str));
        }
    }

    @Override // com.google.android.gms.measurement.internal.zzgb
    public final void zzA(zzr zzrVar) {
        zzN(zzrVar, false);
        zzd(new zzif(this, zzrVar));
    }

    @Override // com.google.android.gms.measurement.internal.zzgb
    public final void zzB(zzr zzrVar, final zzoo zzooVar, final zzgh zzghVar) {
        zzN(zzrVar, false);
        final String str = (String) Preconditions.checkNotNull(zzrVar.zza);
        this.zza.zzaW().zzj(new Runnable() { // from class: com.google.android.gms.measurement.internal.zziz
            @Override // java.lang.Runnable
            public final /* synthetic */ void run() {
                this.zza.zzI(str, zzooVar, zzghVar);
            }
        });
    }

    @Override // com.google.android.gms.measurement.internal.zzgb
    public final void zzC(final zzr zzrVar, final zzaf zzafVar) {
        zzN(zzrVar, false);
        zzd(new Runnable() { // from class: com.google.android.gms.measurement.internal.zzja
            @Override // java.lang.Runnable
            public final /* synthetic */ void run() {
                this.zza.zzJ(zzrVar, zzafVar);
            }
        });
    }

    @Override // com.google.android.gms.measurement.internal.zzgb
    public final void zzD(final zzr zzrVar, final Bundle bundle, final zzge zzgeVar) {
        zzN(zzrVar, false);
        final String str = (String) Preconditions.checkNotNull(zzrVar.zza);
        this.zza.zzaW().zzj(new Runnable() { // from class: com.google.android.gms.measurement.internal.zziy
            @Override // java.lang.Runnable
            public final /* synthetic */ void run() {
                this.zza.zzH(zzrVar, bundle, zzgeVar, str);
            }
        });
    }

    final void zzE(Runnable runnable) {
        Preconditions.checkNotNull(runnable);
        zzpg zzpgVar = this.zza;
        if (zzpgVar.zzaW().zze()) {
            runnable.run();
        } else {
            zzpgVar.zzaW().zzl(runnable);
        }
    }

    final /* synthetic */ void zzF(zzr zzrVar) {
        zzpg zzpgVar = this.zza;
        zzpgVar.zzZ();
        zzpgVar.zzv(zzrVar);
    }

    final /* synthetic */ void zzG(zzr zzrVar) {
        zzpg zzpgVar = this.zza;
        zzpgVar.zzZ();
        zzpgVar.zzw(zzrVar);
    }

    final /* synthetic */ void zzH(zzr zzrVar, Bundle bundle, zzge zzgeVar, String str) {
        zzpg zzpgVar = this.zza;
        zzpgVar.zzZ();
        try {
            zzgeVar.zze(zzpgVar.zzaq(zzrVar, bundle));
        } catch (RemoteException e) {
            this.zza.zzaV().zzb().zzc("Failed to return trigger URIs for app", str, e);
        }
    }

    final /* synthetic */ void zzI(String str, zzoo zzooVar, zzgh zzghVar) {
        zzpg zzpgVar = this.zza;
        zzpgVar.zzZ();
        zzpgVar.zzaW().zzg();
        zzpgVar.zzu();
        List<zzpj> listZzC = zzpgVar.zzj().zzC(str, zzooVar, ((Integer) zzfy.zzA.zzb(null)).intValue());
        ArrayList arrayList = new ArrayList();
        for (zzpj zzpjVar : listZzC) {
            if (zzpgVar.zzO(str, zzpjVar.zze())) {
                int iZzi = zzpjVar.zzi();
                if (iZzi > 0) {
                    if (iZzi <= ((Integer) zzfy.zzy.zzb(null)).intValue()) {
                        if (zzpgVar.zzaZ().currentTimeMillis() >= zzpjVar.zzh() + Math.min(((Long) zzfy.zzw.zzb(null)).longValue() * (1 << (iZzi - 1)), ((Long) zzfy.zzx.zzb(null)).longValue())) {
                        }
                    }
                    zzpgVar.zzaV().zzk().zzd("[sgtm] batch skipped waiting for next retry. appId, rowId, lastUploadMillis", str, Long.valueOf(zzpjVar.zzc()), Long.valueOf(zzpjVar.zzh()));
                }
                zzom zzomVarZzb = zzpjVar.zzb();
                try {
                    com.google.android.gms.internal.measurement.zzhz zzhzVar = (com.google.android.gms.internal.measurement.zzhz) zzpk.zzw(com.google.android.gms.internal.measurement.zzib.zzh(), zzomVarZzb.zzb);
                    for (int i = 0; i < zzhzVar.zzb(); i++) {
                        com.google.android.gms.internal.measurement.zzic zzicVar = (com.google.android.gms.internal.measurement.zzic) zzhzVar.zzc(i).zzcl();
                        zzicVar.zzs(zzpgVar.zzaZ().currentTimeMillis());
                        zzhzVar.zzd(i, zzicVar);
                    }
                    zzomVarZzb.zzb = ((com.google.android.gms.internal.measurement.zzib) zzhzVar.zzbc()).zzcc();
                    if (Log.isLoggable(zzpgVar.zzaV().zzn(), 2)) {
                        zzomVarZzb.zzg = zzpgVar.zzp().zzi((com.google.android.gms.internal.measurement.zzib) zzhzVar.zzbc());
                    }
                    arrayList.add(zzomVarZzb);
                } catch (com.google.android.gms.internal.measurement.zzmr unused) {
                    zzpgVar.zzaV().zze().zzb("Failed to parse queued batch. appId", str);
                }
            } else {
                zzpgVar.zzaV().zzk().zzd("[sgtm] batch skipped due to destination in backoff. appId, rowId, url", str, Long.valueOf(zzpjVar.zzc()), zzpjVar.zze());
            }
        }
        zzoq zzoqVar = new zzoq(arrayList);
        try {
            zzghVar.zze(zzoqVar);
            this.zza.zzaV().zzk().zzc("[sgtm] Sending queued upload batches to client. appId, count", str, Integer.valueOf(zzoqVar.zza.size()));
        } catch (RemoteException e) {
            this.zza.zzaV().zzb().zzc("[sgtm] Failed to return upload batches for app", str, e);
        }
    }

    final /* synthetic */ void zzJ(zzr zzrVar, zzaf zzafVar) {
        zzpg zzpgVar = this.zza;
        zzpgVar.zzZ();
        zzpgVar.zzar((String) Preconditions.checkNotNull(zzrVar.zza), zzafVar);
    }

    final /* synthetic */ void zzK(Bundle bundle, String str, zzr zzrVar) {
        zzpg zzpgVar = this.zza;
        boolean zZzp = zzpgVar.zzd().zzp(null, zzfy.zzaV);
        if (bundle.isEmpty() && zZzp) {
            zzav zzavVarZzj = this.zza.zzj();
            zzavVarZzj.zzg();
            zzavVarZzj.zzaw();
            try {
                zzavVarZzj.zze().execSQL("delete from default_event_params where app_id=?", new String[]{str});
                return;
            } catch (SQLiteException e) {
                zzavVarZzj.zzu.zzaV().zzb().zzb("Error clearing default event params", e);
                return;
            }
        }
        zzav zzavVarZzj2 = zzpgVar.zzj();
        zzavVarZzj2.zzg();
        zzavVarZzj2.zzaw();
        byte[] bArrZzcc = zzavVarZzj2.zzg.zzp().zzh(new zzbb(zzavVarZzj2.zzu, _UrlKt.FRAGMENT_ENCODE_SET, str, "dep", 0L, 0L, bundle)).zzcc();
        zzic zzicVar = zzavVarZzj2.zzu;
        zzicVar.zzaV().zzk().zzc("Saving default event parameters, appId, data size", str, Integer.valueOf(bArrZzcc.length));
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", str);
        contentValues.put("parameters", bArrZzcc);
        try {
            if (zzavVarZzj2.zze().insertWithOnConflict("default_event_params", null, contentValues, 5) == -1) {
                zzicVar.zzaV().zzb().zzb("Failed to insert default event parameters (got -1). appId", zzgu.zzl(str));
            }
        } catch (SQLiteException e2) {
            zzavVarZzj2.zzu.zzaV().zzb().zzc("Error storing default event parameters. appId", zzgu.zzl(str), e2);
        }
        zzpg zzpgVar2 = this.zza;
        zzav zzavVarZzj3 = zzpgVar2.zzj();
        long j = zzrVar.zzD;
        if (zzavVarZzj3.zzV(str, j)) {
            zzpgVar2.zzj().zzW(str, Long.valueOf(j), null, bundle);
        }
    }

    final /* synthetic */ zzpg zzL() {
        return this.zza;
    }

    final void zzb(zzbg zzbgVar, zzr zzrVar) {
        zzpg zzpgVar = this.zza;
        zzht zzhtVarZzh = zzpgVar.zzh();
        String str = zzrVar.zza;
        com.google.android.gms.internal.measurement.zzc zzcVar = TextUtils.isEmpty(str) ? null : (com.google.android.gms.internal.measurement.zzc) zzhtVarZzh.zzd.get(str);
        if (zzcVar == null) {
            this.zza.zzaV().zzk().zzb("EES not loaded for", zzrVar.zza);
            zzM(zzbgVar, zzrVar);
            return;
        }
        try {
            Map mapZzz = zzpgVar.zzp().zzz(zzbgVar.zzb.zzf(), true);
            String str2 = zzbgVar.zza;
            String strZza = zzjm.zza(str2);
            if (strZza != null) {
                str2 = strZza;
            }
            if (zzcVar.zzb(new com.google.android.gms.internal.measurement.zzaa(str2, zzbgVar.zzd, mapZzz))) {
                if (zzcVar.zzc()) {
                    zzpg zzpgVar2 = this.zza;
                    zzpgVar2.zzaV().zzk().zzb("EES edited event", zzbgVar.zza);
                    zzM(zzpgVar2.zzp().zzA(zzcVar.zze().zzc()), zzrVar);
                } else {
                    zzM(zzbgVar, zzrVar);
                }
                if (zzcVar.zzd()) {
                    for (com.google.android.gms.internal.measurement.zzaa zzaaVar : zzcVar.zze().zzf()) {
                        zzpg zzpgVar3 = this.zza;
                        zzpgVar3.zzaV().zzk().zzb("EES logging created event", zzaaVar.zzb());
                        zzM(zzpgVar3.zzp().zzA(zzaaVar), zzrVar);
                    }
                    return;
                }
                return;
            }
        } catch (com.google.android.gms.internal.measurement.zzd unused) {
            this.zza.zzaV().zzb().zzc("EES error. appId, eventName", zzrVar.zzb, zzbgVar.zza);
        }
        this.zza.zzaV().zzk().zzb("EES was not applied to event", zzbgVar.zza);
        zzM(zzbgVar, zzrVar);
    }

    final zzbg zzc(zzbg zzbgVar, zzr zzrVar) {
        zzbe zzbeVar;
        if ("_cmp".equals(zzbgVar.zza) && (zzbeVar = zzbgVar.zzb) != null && zzbeVar.zze() != 0) {
            String strZzd = zzbeVar.zzd("_cis");
            if ("referrer broadcast".equals(strZzd) || "referrer API".equals(strZzd)) {
                this.zza.zzaV().zzi().zzb("Event has been filtered ", zzbgVar.toString());
                return new zzbg("_cmpx", zzbeVar, zzbgVar.zzc, zzbgVar.zzd);
            }
        }
        return zzbgVar;
    }

    final void zzd(Runnable runnable) {
        Preconditions.checkNotNull(runnable);
        zzpg zzpgVar = this.zza;
        if (zzpgVar.zzaW().zze()) {
            runnable.run();
        } else {
            zzpgVar.zzaW().zzj(runnable);
        }
    }

    @Override // com.google.android.gms.measurement.internal.zzgb
    public final void zze(zzbg zzbgVar, zzr zzrVar) {
        Preconditions.checkNotNull(zzbgVar);
        zzN(zzrVar, false);
        zzd(new zzir(this, zzbgVar, zzrVar));
    }

    @Override // com.google.android.gms.measurement.internal.zzgb
    public final void zzf(zzpl zzplVar, zzr zzrVar) {
        Preconditions.checkNotNull(zzplVar);
        zzN(zzrVar, false);
        zzd(new zziu(this, zzplVar, zzrVar));
    }

    @Override // com.google.android.gms.measurement.internal.zzgb
    public final void zzg(zzr zzrVar) {
        zzN(zzrVar, false);
        zzd(new zzie(this, zzrVar));
    }

    @Override // com.google.android.gms.measurement.internal.zzgb
    public final void zzh(zzbg zzbgVar, String str, String str2) {
        Preconditions.checkNotNull(zzbgVar);
        Preconditions.checkNotEmpty(str);
        zzO(str, true);
        zzd(new zzis(this, zzbgVar, str));
    }

    @Override // com.google.android.gms.measurement.internal.zzgb
    public final void zzi(zzr zzrVar) {
        zzN(zzrVar, false);
        zzd(new zzin(this, zzrVar));
    }

    @Override // com.google.android.gms.measurement.internal.zzgb
    public final List zzj(zzr zzrVar, boolean z) {
        zzN(zzrVar, false);
        String str = zzrVar.zza;
        Preconditions.checkNotNull(str);
        try {
            List<zzpn> list = (List) this.zza.zzaW().zzh(new zzid(this, str)).get();
            ArrayList arrayList = new ArrayList(list.size());
            for (zzpn zzpnVar : list) {
                if (z || !zzpp.zzZ(zzpnVar.zzc)) {
                    arrayList.add(new zzpl(zzpnVar));
                }
            }
            return arrayList;
        } catch (InterruptedException e) {
            e = e;
            this.zza.zzaV().zzb().zzc("Failed to get user properties. appId", zzgu.zzl(zzrVar.zza), e);
            return null;
        } catch (ExecutionException e2) {
            e = e2;
            this.zza.zzaV().zzb().zzc("Failed to get user properties. appId", zzgu.zzl(zzrVar.zza), e);
            return null;
        }
    }

    @Override // com.google.android.gms.measurement.internal.zzgb
    public final byte[] zzk(zzbg zzbgVar, String str) {
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotNull(zzbgVar);
        zzO(str, true);
        zzpg zzpgVar = this.zza;
        zzgs zzgsVarZzj = zzpgVar.zzaV().zzj();
        zzgn zzgnVarZzs = zzpgVar.zzs();
        String str2 = zzbgVar.zza;
        zzgsVarZzj.zzb("Log and bundle. event", zzgnVarZzs.zza(str2));
        long jNanoTime = zzpgVar.zzaZ().nanoTime() / 1000000;
        try {
            byte[] bArr = (byte[]) zzpgVar.zzaW().zzi(new zzit(this, zzbgVar, str)).get();
            if (bArr == null) {
                zzpgVar.zzaV().zzb().zzb("Log and bundle returned null. appId", zzgu.zzl(str));
                bArr = new byte[0];
            }
            zzpgVar.zzaV().zzj().zzd("Log and bundle processed. event, size, time_ms", zzpgVar.zzs().zza(str2), Integer.valueOf(bArr.length), Long.valueOf((zzpgVar.zzaZ().nanoTime() / 1000000) - jNanoTime));
            return bArr;
        } catch (InterruptedException e) {
            e = e;
            zzpg zzpgVar2 = this.zza;
            zzpgVar2.zzaV().zzb().zzd("Failed to log and bundle. appId, event, error", zzgu.zzl(str), zzpgVar2.zzs().zza(zzbgVar.zza), e);
            return null;
        } catch (ExecutionException e2) {
            e = e2;
            zzpg zzpgVar22 = this.zza;
            zzpgVar22.zzaV().zzb().zzd("Failed to log and bundle. appId, event, error", zzgu.zzl(str), zzpgVar22.zzs().zza(zzbgVar.zza), e);
            return null;
        }
    }

    @Override // com.google.android.gms.measurement.internal.zzgb
    public final void zzl(long j, String str, String str2, String str3) {
        zzd(new zzig(this, str2, str3, str, j));
    }

    @Override // com.google.android.gms.measurement.internal.zzgb
    public final String zzm(zzr zzrVar) {
        zzN(zzrVar, false);
        return this.zza.zzap(zzrVar);
    }

    @Override // com.google.android.gms.measurement.internal.zzgb
    public final void zzn(zzah zzahVar, zzr zzrVar) {
        Preconditions.checkNotNull(zzahVar);
        Preconditions.checkNotNull(zzahVar.zzc);
        zzN(zzrVar, false);
        zzah zzahVar2 = new zzah(zzahVar);
        zzahVar2.zza = zzrVar.zza;
        zzd(new zzih(this, zzahVar2, zzrVar));
    }

    @Override // com.google.android.gms.measurement.internal.zzgb
    public final void zzo(zzah zzahVar) {
        Preconditions.checkNotNull(zzahVar);
        Preconditions.checkNotNull(zzahVar.zzc);
        Preconditions.checkNotEmpty(zzahVar.zza);
        zzO(zzahVar.zza, true);
        zzd(new zzii(this, new zzah(zzahVar)));
    }

    @Override // com.google.android.gms.measurement.internal.zzgb
    public final List zzp(String str, String str2, boolean z, zzr zzrVar) {
        zzN(zzrVar, false);
        String str3 = zzrVar.zza;
        Preconditions.checkNotNull(str3);
        try {
            List<zzpn> list = (List) this.zza.zzaW().zzh(new zzij(this, str3, str, str2)).get();
            ArrayList arrayList = new ArrayList(list.size());
            for (zzpn zzpnVar : list) {
                if (z || !zzpp.zzZ(zzpnVar.zzc)) {
                    arrayList.add(new zzpl(zzpnVar));
                }
            }
            return arrayList;
        } catch (InterruptedException e) {
            e = e;
            this.zza.zzaV().zzb().zzc("Failed to query user properties. appId", zzgu.zzl(zzrVar.zza), e);
            return Collections.EMPTY_LIST;
        } catch (ExecutionException e2) {
            e = e2;
            this.zza.zzaV().zzb().zzc("Failed to query user properties. appId", zzgu.zzl(zzrVar.zza), e);
            return Collections.EMPTY_LIST;
        }
    }

    @Override // com.google.android.gms.measurement.internal.zzgb
    public final List zzq(String str, String str2, String str3, boolean z) {
        zzO(str, true);
        try {
            List<zzpn> list = (List) this.zza.zzaW().zzh(new zzik(this, str, str2, str3)).get();
            ArrayList arrayList = new ArrayList(list.size());
            for (zzpn zzpnVar : list) {
                if (z || !zzpp.zzZ(zzpnVar.zzc)) {
                    arrayList.add(new zzpl(zzpnVar));
                }
            }
            return arrayList;
        } catch (InterruptedException e) {
            e = e;
            this.zza.zzaV().zzb().zzc("Failed to get user properties as. appId", zzgu.zzl(str), e);
            return Collections.EMPTY_LIST;
        } catch (ExecutionException e2) {
            e = e2;
            this.zza.zzaV().zzb().zzc("Failed to get user properties as. appId", zzgu.zzl(str), e);
            return Collections.EMPTY_LIST;
        }
    }

    @Override // com.google.android.gms.measurement.internal.zzgb
    public final List zzr(String str, String str2, zzr zzrVar) {
        zzN(zzrVar, false);
        String str3 = zzrVar.zza;
        Preconditions.checkNotNull(str3);
        try {
            return (List) this.zza.zzaW().zzh(new zzil(this, str3, str, str2)).get();
        } catch (InterruptedException | ExecutionException e) {
            this.zza.zzaV().zzb().zzb("Failed to get conditional user properties", e);
            return Collections.EMPTY_LIST;
        }
    }

    @Override // com.google.android.gms.measurement.internal.zzgb
    public final List zzs(String str, String str2, String str3) {
        zzO(str, true);
        try {
            return (List) this.zza.zzaW().zzh(new zzim(this, str, str2, str3)).get();
        } catch (InterruptedException | ExecutionException e) {
            this.zza.zzaV().zzb().zzb("Failed to get conditional user properties as", e);
            return Collections.EMPTY_LIST;
        }
    }

    @Override // com.google.android.gms.measurement.internal.zzgb
    public final void zzt(zzr zzrVar) {
        String str = zzrVar.zza;
        Preconditions.checkNotEmpty(str);
        zzO(str, false);
        zzd(new zzio(this, zzrVar));
    }

    @Override // com.google.android.gms.measurement.internal.zzgb
    public final void zzu(final Bundle bundle, final zzr zzrVar) {
        zzN(zzrVar, false);
        final String str = zzrVar.zza;
        Preconditions.checkNotNull(str);
        zzd(new Runnable() { // from class: com.google.android.gms.measurement.internal.zzjb
            @Override // java.lang.Runnable
            public final /* synthetic */ void run() {
                this.zza.zzK(bundle, str, zzrVar);
            }
        });
    }

    @Override // com.google.android.gms.measurement.internal.zzgb
    public final void zzv(zzr zzrVar) {
        Preconditions.checkNotEmpty(zzrVar.zza);
        Preconditions.checkNotNull(zzrVar.zzs);
        zzE(new zzip(this, zzrVar));
    }

    @Override // com.google.android.gms.measurement.internal.zzgb
    public final zzao zzw(zzr zzrVar) {
        zzN(zzrVar, false);
        Preconditions.checkNotEmpty(zzrVar.zza);
        try {
            return (zzao) this.zza.zzaW().zzi(new zziq(this, zzrVar)).get(10000L, TimeUnit.MILLISECONDS);
        } catch (InterruptedException | ExecutionException | TimeoutException e) {
            this.zza.zzaV().zzb().zzc("Failed to get consent. appId", zzgu.zzl(zzrVar.zza), e);
            return new zzao(null);
        }
    }

    @Override // com.google.android.gms.measurement.internal.zzgb
    public final List zzx(zzr zzrVar, Bundle bundle) {
        zzN(zzrVar, false);
        Preconditions.checkNotNull(zzrVar.zza);
        zzpg zzpgVar = this.zza;
        if (!zzpgVar.zzd().zzp(null, zzfy.zzaY)) {
            try {
                return (List) this.zza.zzaW().zzh(new zziw(this, zzrVar, bundle)).get();
            } catch (InterruptedException | ExecutionException e) {
                this.zza.zzaV().zzb().zzc("Failed to get trigger URIs. appId", zzgu.zzl(zzrVar.zza), e);
                return Collections.EMPTY_LIST;
            }
        }
        try {
            return (List) zzpgVar.zzaW().zzi(new zziv(this, zzrVar, bundle)).get(10000L, TimeUnit.MILLISECONDS);
        } catch (InterruptedException | ExecutionException | TimeoutException e2) {
            this.zza.zzaV().zzb().zzc("Failed to get trigger URIs. appId", zzgu.zzl(zzrVar.zza), e2);
            return Collections.EMPTY_LIST;
        }
    }

    @Override // com.google.android.gms.measurement.internal.zzgb
    public final void zzy(final zzr zzrVar) {
        Preconditions.checkNotEmpty(zzrVar.zza);
        Preconditions.checkNotNull(zzrVar.zzs);
        zzE(new Runnable() { // from class: com.google.android.gms.measurement.internal.zzjc
            @Override // java.lang.Runnable
            public final /* synthetic */ void run() {
                this.zza.zzF(zzrVar);
            }
        });
    }

    @Override // com.google.android.gms.measurement.internal.zzgb
    public final void zzz(final zzr zzrVar) {
        Preconditions.checkNotEmpty(zzrVar.zza);
        Preconditions.checkNotNull(zzrVar.zzs);
        zzE(new Runnable() { // from class: com.google.android.gms.measurement.internal.zzix
            @Override // java.lang.Runnable
            public final /* synthetic */ void run() {
                this.zza.zzG(zzrVar);
            }
        });
    }
}
