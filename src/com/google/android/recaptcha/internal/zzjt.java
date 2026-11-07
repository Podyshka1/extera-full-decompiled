package com.google.android.recaptcha.internal;

import android.app.Application;
import androidx.core.content.ContextCompat;
import com.google.android.gms.cast.framework.media.NotificationOptions;
import kotlin.coroutines.Continuation;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.sync.Mutex;
import kotlinx.coroutines.sync.MutexKt;

/* JADX INFO: loaded from: classes5.dex */
public final class zzjt {
    private final Application zza;
    private final zzko zzb;
    private final Mutex zzc = MutexKt.Mutex$default(false, 1, null);
    private zzjj zzd;

    public zzjt(Application application, zzko zzkoVar) {
        this.zza = application;
        this.zzb = zzkoVar;
    }

    public static /* synthetic */ Object zza(zzjt zzjtVar, String str, long j, zziw zziwVar, Continuation continuation, int i, Object obj) {
        if ((i & 4) != 0) {
            zziwVar = zziw.zza;
        }
        zziw zziwVar2 = zziwVar;
        if ((i & 2) != 0) {
            j = NotificationOptions.SKIP_STEP_TEN_SECONDS_IN_MS;
        }
        return BuildersKt.withContext(zzjtVar.zzb.zze().zzc().getCoroutineContext(), new zzjq(zzjtVar, zziwVar2, str, j, null), continuation);
    }

    public static final /* synthetic */ void zze(zzjt zzjtVar, long j, String str) throws zzhg {
        if (str.length() == 0) {
            throw new zzhg(zzhf.zzd, zzhe.zze, null, null, 12, null);
        }
        if (j < 5000) {
            throw new zzhg(zzhf.zzj, zzhe.zzm, null, null, 12, null);
        }
        if (ContextCompat.checkSelfPermission(zzjtVar.zza, "android.permission.INTERNET") != 0) {
            throw new zzhg(zzhf.zzc, zzhe.zzy, null, null, 12, null);
        }
    }
}
