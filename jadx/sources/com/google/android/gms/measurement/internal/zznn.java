package com.google.android.gms.measurement.internal;

import android.content.pm.PackageManager;
import android.util.Pair;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import okhttp3.internal.url._UrlKt;
import p022j$.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
public final class zznn extends zzos {
    public final zzhe zza;
    public final zzhe zzb;
    public final zzhe zzc;
    public final zzhe zzd;
    public final zzhe zze;
    public final zzhe zzf;
    private final Map zzh;

    zznn(zzpg zzpgVar) {
        super(zzpgVar);
        this.zzh = new HashMap();
        zzhh zzhhVarZzd = this.zzu.zzd();
        Objects.requireNonNull(zzhhVarZzd);
        this.zza = new zzhe(zzhhVarZzd, "last_delete_stale", 0L);
        zzhh zzhhVarZzd2 = this.zzu.zzd();
        Objects.requireNonNull(zzhhVarZzd2);
        this.zzb = new zzhe(zzhhVarZzd2, "last_delete_stale_batch", 0L);
        zzhh zzhhVarZzd3 = this.zzu.zzd();
        Objects.requireNonNull(zzhhVarZzd3);
        this.zzc = new zzhe(zzhhVarZzd3, "backoff", 0L);
        zzhh zzhhVarZzd4 = this.zzu.zzd();
        Objects.requireNonNull(zzhhVarZzd4);
        this.zzd = new zzhe(zzhhVarZzd4, "last_upload", 0L);
        zzhh zzhhVarZzd5 = this.zzu.zzd();
        Objects.requireNonNull(zzhhVarZzd5);
        this.zze = new zzhe(zzhhVarZzd5, "last_upload_attempt", 0L);
        zzhh zzhhVarZzd6 = this.zzu.zzd();
        Objects.requireNonNull(zzhhVarZzd6);
        this.zzf = new zzhe(zzhhVarZzd6, "midnight_offset", 0L);
    }

    @Override // com.google.android.gms.measurement.internal.zzos
    protected final boolean zzbb() {
        return false;
    }

    final Pair zzc(String str, zzjl zzjlVar) {
        return zzjlVar.zzo(zzjk.AD_STORAGE) ? zzd(str) : new Pair(_UrlKt.FRAGMENT_ENCODE_SET, Boolean.FALSE);
    }

    final Pair zzd(String str) {
        zznm zznmVar;
        AdvertisingIdClient.Info advertisingIdInfo;
        zzg();
        zzic zzicVar = this.zzu;
        long jElapsedRealtime = zzicVar.zzaZ().elapsedRealtime();
        zznm zznmVar2 = (zznm) this.zzh.get(str);
        if (zznmVar2 != null && jElapsedRealtime < zznmVar2.zzc) {
            return new Pair(zznmVar2.zza, Boolean.valueOf(zznmVar2.zzb));
        }
        AdvertisingIdClient.setShouldSkipGmsCoreVersionCheck(true);
        long jZzl = zzicVar.zzc().zzl(str, zzfy.zza) + jElapsedRealtime;
        try {
            try {
                advertisingIdInfo = AdvertisingIdClient.getAdvertisingIdInfo(zzicVar.zzaY());
            } catch (PackageManager.NameNotFoundException unused) {
                advertisingIdInfo = null;
                if (zznmVar2 != null && jElapsedRealtime < zznmVar2.zzc + this.zzu.zzc().zzl(str, zzfy.zzb)) {
                    return new Pair(zznmVar2.zza, Boolean.valueOf(zznmVar2.zzb));
                }
            }
        } catch (Exception e) {
            this.zzu.zzaV().zzj().zzb("Unable to get advertising id", e);
            zznmVar = new zznm(_UrlKt.FRAGMENT_ENCODE_SET, false, jZzl);
        }
        if (advertisingIdInfo == null) {
            return new Pair("00000000-0000-0000-0000-000000000000", Boolean.FALSE);
        }
        String id = advertisingIdInfo.getId();
        zznmVar = id != null ? new zznm(id, advertisingIdInfo.isLimitAdTrackingEnabled(), jZzl) : new zznm(_UrlKt.FRAGMENT_ENCODE_SET, advertisingIdInfo.isLimitAdTrackingEnabled(), jZzl);
        this.zzh.put(str, zznmVar);
        AdvertisingIdClient.setShouldSkipGmsCoreVersionCheck(false);
        return new Pair(zznmVar.zza, Boolean.valueOf(zznmVar.zzb));
    }

    final String zzf(String str, boolean z) {
        zzg();
        String str2 = z ? (String) zzd(str).first : "00000000-0000-0000-0000-000000000000";
        MessageDigest messageDigestZzO = zzpp.zzO();
        if (messageDigestZzO == null) {
            return null;
        }
        return String.format(Locale.US, "%032X", new BigInteger(1, messageDigestZzO.digest(str2.getBytes())));
    }
}
