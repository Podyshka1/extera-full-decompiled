package com.google.android.recaptcha.internal;

import android.app.Application;
import com.google.android.gms.tasks.Task;
import kotlin.coroutines.Continuation;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;

/* JADX INFO: loaded from: classes5.dex */
public final class zzjm {
    public static final zzjm zza = new zzjm();
    private static zzjt zzb;

    private zzjm() {
    }

    public static final Task zze(Application application, String str, long j) {
        return zzhz.zza(BuildersKt__Builders_commonKt.async$default(zzik.zza(zzik.zza, application, null, 2, null).zze().zzc(), null, null, new zzjl(application, str, j, null), 3, null));
    }

    public final zzjt zza(Application application, zzko zzkoVar) {
        zzjt zzjtVar;
        synchronized (this) {
            try {
                zzjtVar = zzb;
                if (zzjtVar == null) {
                    zzjtVar = new zzjt(application, zzkoVar);
                }
                if (zzb == null) {
                    zzb = zzjtVar;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return zzjtVar;
    }

    public final Object zzc(Application application, String str, long j, Continuation continuation) {
        return zzjt.zza(zza(application, zzik.zza(zzik.zza, application, null, 2, null)), str, j, null, continuation, 4, null);
    }
}
