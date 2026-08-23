package com.google.android.gms.internal.mlkit_language_id_common;

import android.content.Context;
import android.content.res.Resources;
import android.os.SystemClock;
import androidx.core.os.ConfigurationCompat;
import androidx.core.os.LocaleListCompat;
import com.google.android.gms.common.internal.LibraryVersion;
import com.google.android.gms.dynamite.DynamiteModule;
import com.google.android.gms.tasks.Task;
import com.google.mlkit.common.sdkinternal.CommonUtils;
import com.google.mlkit.common.sdkinternal.MLTaskExecutor;
import com.google.mlkit.common.sdkinternal.SharedPrefManager;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
public final class zzli {
    private static zzu zza;
    private static final zzw zzb = zzw.zzc("optional-module-barcode", "com.google.android.gms.vision.barcode");
    private final String zzc;
    private final String zzd;
    private final zzlh zze;
    private final SharedPrefManager zzf;
    private final Task zzg;
    private final Task zzh;
    private final String zzi;
    private final int zzj;
    private final Map zzk = new HashMap();
    private final Map zzl = new HashMap();

    public zzli(Context context, final SharedPrefManager sharedPrefManager, zzlh zzlhVar, String str) {
        this.zzc = context.getPackageName();
        this.zzd = CommonUtils.getAppVersion(context);
        this.zzf = sharedPrefManager;
        this.zze = zzlhVar;
        zzlu.zza();
        this.zzi = str;
        this.zzg = MLTaskExecutor.getInstance().scheduleCallable(new Callable() { // from class: com.google.android.gms.internal.mlkit_language_id_common.zzle
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.zza.zza();
            }
        });
        MLTaskExecutor mLTaskExecutor = MLTaskExecutor.getInstance();
        sharedPrefManager.getClass();
        this.zzh = mLTaskExecutor.scheduleCallable(new Callable() { // from class: com.google.android.gms.internal.mlkit_language_id_common.zzlf
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return sharedPrefManager.getMlSdkInstanceId();
            }
        });
        zzw zzwVar = zzb;
        this.zzj = zzwVar.containsKey(str) ? DynamiteModule.getRemoteVersion(context, (String) zzwVar.get(str)) : -1;
    }

    private static synchronized zzu zzf() {
        try {
            zzu zzuVar = zza;
            if (zzuVar != null) {
                return zzuVar;
            }
            LocaleListCompat locales = ConfigurationCompat.getLocales(Resources.getSystem().getConfiguration());
            zzr zzrVar = new zzr();
            for (int i = 0; i < locales.size(); i++) {
                zzrVar.zzb(CommonUtils.languageTagFromLocale(locales.get(i)));
            }
            zzu zzuVarZzc = zzrVar.zzc();
            zza = zzuVarZzc;
            return zzuVarZzc;
        } catch (Throwable th) {
            throw th;
        }
    }

    private final String zzg() {
        return this.zzg.isSuccessful() ? (String) this.zzg.getResult() : LibraryVersion.getInstance().getVersion(this.zzi);
    }

    final /* synthetic */ String zza() {
        return LibraryVersion.getInstance().getVersion(this.zzi);
    }

    final /* synthetic */ void zzb(zzla zzlaVar, zzhy zzhyVar, String str) {
        zzlaVar.zzb(zzhyVar);
        String strZzd = zzlaVar.zzd();
        zzkc zzkcVar = new zzkc();
        zzkcVar.zzb(this.zzc);
        zzkcVar.zzc(this.zzd);
        zzkcVar.zzh(zzf());
        zzkcVar.zzg(Boolean.TRUE);
        zzkcVar.zzl(strZzd);
        zzkcVar.zzj(str);
        zzkcVar.zzi(this.zzh.isSuccessful() ? (String) this.zzh.getResult() : this.zzf.getMlSdkInstanceId());
        zzkcVar.zzd(10);
        zzkcVar.zzk(Integer.valueOf(this.zzj));
        zzlaVar.zzc(zzkcVar);
        this.zze.zza(zzlaVar);
    }

    public final void zzc(zzla zzlaVar, zzhy zzhyVar) {
        zzd(zzlaVar, zzhyVar, zzg());
    }

    public final void zzd(final zzla zzlaVar, final zzhy zzhyVar, final String str) {
        MLTaskExecutor.workerThreadExecutor().execute(new Runnable() { // from class: com.google.android.gms.internal.mlkit_language_id_common.zzlg
            @Override // java.lang.Runnable
            public final void run() {
                this.zza.zzb(zzlaVar, zzhyVar, str);
            }
        });
    }

    public final void zze(com.google.mlkit.p020nl.languageid.internal.zzf zzfVar, zzhy zzhyVar) {
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        if (this.zzk.get(zzhyVar) != null && jElapsedRealtime - ((Long) this.zzk.get(zzhyVar)).longValue() <= TimeUnit.SECONDS.toMillis(30L)) {
            return;
        }
        this.zzk.put(zzhyVar, Long.valueOf(jElapsedRealtime));
        zzd(zzfVar.zza(), zzhyVar, zzg());
    }
}
