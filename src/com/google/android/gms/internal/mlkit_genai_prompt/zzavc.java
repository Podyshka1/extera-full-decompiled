package com.google.android.gms.internal.mlkit_genai_prompt;

import android.content.Context;
import android.content.res.Resources;
import androidx.core.os.ConfigurationCompat;
import androidx.core.os.LocaleListCompat;
import com.google.android.gms.common.internal.LibraryVersion;
import com.google.android.gms.dynamite.DynamiteModule;
import com.google.android.gms.tasks.Task;
import com.google.mlkit.common.sdkinternal.CommonUtils;
import com.google.mlkit.common.sdkinternal.MLTaskExecutor;
import com.google.mlkit.common.sdkinternal.SharedPrefManager;
import java.util.HashMap;
import java.util.Objects;
import java.util.concurrent.Callable;

/* JADX INFO: loaded from: classes5.dex */
public final class zzavc {
    private static zzml zza;
    private static final zzmo zzb = zzmo.zzb("optional-module-barcode", "com.google.android.gms.vision.barcode");
    private final String zzc;
    private final String zzd;
    private final zzauv zze;
    private final SharedPrefManager zzf;
    private final Task zzg;
    private final Task zzh;
    private final String zzi;
    private final int zzj;

    public zzavc(Context context, final SharedPrefManager sharedPrefManager, zzauv zzauvVar, String str) {
        new HashMap();
        new HashMap();
        this.zzc = context.getPackageName();
        this.zzd = CommonUtils.getAppVersion(context);
        this.zzf = sharedPrefManager;
        this.zze = zzauvVar;
        zzavl.zza();
        this.zzi = str;
        this.zzg = MLTaskExecutor.getInstance().scheduleCallable(new Callable() { // from class: com.google.android.gms.internal.mlkit_genai_prompt.zzava
            @Override // java.util.concurrent.Callable
            public final /* synthetic */ Object call() {
                return this.zza.zzb();
            }
        });
        MLTaskExecutor mLTaskExecutor = MLTaskExecutor.getInstance();
        Objects.requireNonNull(sharedPrefManager);
        this.zzh = mLTaskExecutor.scheduleCallable(new Callable() { // from class: com.google.android.gms.internal.mlkit_genai_prompt.zzavb
            @Override // java.util.concurrent.Callable
            public final /* synthetic */ Object call() {
                return sharedPrefManager.getMlSdkInstanceId();
            }
        });
        zzmo zzmoVar = zzb;
        this.zzj = zzmoVar.containsKey(str) ? DynamiteModule.getRemoteVersion(context, (String) zzmoVar.get(str)) : -1;
    }

    private static synchronized zzml zzd() {
        try {
            zzml zzmlVar = zza;
            if (zzmlVar != null) {
                return zzmlVar;
            }
            LocaleListCompat locales = ConfigurationCompat.getLocales(Resources.getSystem().getConfiguration());
            zzmh zzmhVar = new zzmh();
            for (int i = 0; i < locales.size(); i++) {
                zzmhVar.zzd(CommonUtils.languageTagFromLocale(locales.get(i)));
            }
            zzml zzmlVarZze = zzmhVar.zze();
            zza = zzmlVarZze;
            return zzmlVarZze;
        } catch (Throwable th) {
            throw th;
        }
    }

    public final void zza(final zzauu zzauuVar, final zzanu zzanuVar) throws Throwable {
        final String version;
        Task task = this.zzg;
        if (task.isSuccessful()) {
            version = (String) task.getResult();
        } else {
            version = LibraryVersion.getInstance().getVersion(this.zzi);
        }
        MLTaskExecutor.workerThreadExecutor().execute(new Runnable() { // from class: com.google.android.gms.internal.mlkit_genai_prompt.zzauz
            @Override // java.lang.Runnable
            public final /* synthetic */ void run() {
                this.zza.zzc(zzauuVar, zzanuVar, version);
            }
        });
    }

    public final /* synthetic */ String zzb() {
        return LibraryVersion.getInstance().getVersion(this.zzi);
    }

    public final /* synthetic */ void zzc(zzauu zzauuVar, zzanu zzanuVar, String str) {
        zzauuVar.zzc(zzanuVar);
        String strZzd = zzauuVar.zzd();
        zzasz zzaszVar = new zzasz();
        zzaszVar.zza(this.zzc);
        zzaszVar.zzb(this.zzd);
        zzaszVar.zze(zzd());
        zzaszVar.zzh(Boolean.TRUE);
        zzaszVar.zzd(strZzd);
        zzaszVar.zzc(str);
        Task task = this.zzh;
        zzaszVar.zzf(task.isSuccessful() ? (String) task.getResult() : this.zzf.getMlSdkInstanceId());
        zzaszVar.zzj(10);
        zzaszVar.zzk(Integer.valueOf(this.zzj));
        zzauuVar.zzb(zzaszVar);
        this.zze.zza(zzauuVar);
    }
}
