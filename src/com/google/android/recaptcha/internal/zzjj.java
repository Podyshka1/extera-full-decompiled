package com.google.android.recaptcha.internal;

import com.google.android.gms.cast.framework.media.NotificationOptions;
import com.google.android.gms.tasks.Task;
import com.google.android.recaptcha.RecaptchaAction;
import com.google.android.recaptcha.RecaptchaTasksClient;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.sync.Mutex;
import kotlinx.coroutines.sync.MutexKt;
import okio.Segment$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
public final class zzjj implements RecaptchaTasksClient {
    private final zzkn zza;
    private final String zzb;
    private final zzmd zzc;
    private final Mutex zzd = MutexKt.Mutex$default(false, 1, null);
    private final zzhu zze;

    public zzjj(zzkn zzknVar, String str, zzmd zzmdVar, zzhu zzhuVar) {
        this.zza = zzknVar;
        this.zzb = str;
        this.zzc = zzmdVar;
        this.zze = zzhuVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object zzf(RecaptchaAction recaptchaAction, long j, Continuation continuation) {
        zzjd zzjdVar;
        if (continuation instanceof zzjd) {
            zzjdVar = (zzjd) continuation;
            int i = zzjdVar.zzc;
            if ((i & Integer.MIN_VALUE) != 0) {
                zzjdVar.zzc = i - Integer.MIN_VALUE;
            } else {
                zzjdVar = new zzjd(this, continuation);
            }
        }
        Object objWithContext = zzjdVar.zza;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = zzjdVar.zzc;
        if (i2 == 0) {
            ResultKt.throwOnFailure(objWithContext);
            CoroutineContext coroutineContext = this.zze.zzc().getCoroutineContext();
            zzjg zzjgVar = new zzjg(this, j, recaptchaAction, null);
            zzjdVar.zzc = 1;
            objWithContext = BuildersKt.withContext(coroutineContext, zzjgVar, zzjdVar);
            if (objWithContext == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i2 != 1) {
                Segment$$ExternalSyntheticBUOutline1.m925m("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.throwOnFailure(objWithContext);
        }
        return ((Result) objWithContext).getValue();
    }

    @Override // com.google.android.recaptcha.RecaptchaTasksClient
    public final Task<String> executeTask(RecaptchaAction recaptchaAction) {
        return executeTask(recaptchaAction, NotificationOptions.SKIP_STEP_TEN_SECONDS_IN_MS);
    }

    public final zzkn zza() {
        return this.zza;
    }

    public final String zzb() {
        return this.zzb;
    }

    public final Task<String> executeTask(RecaptchaAction recaptchaAction, long j) {
        return zzhz.zza(BuildersKt__Builders_commonKt.async$default(this.zze.zza(), null, null, new zzjh(this, recaptchaAction, j, null), 3, null));
    }
}
