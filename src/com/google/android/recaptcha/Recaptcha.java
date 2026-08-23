package com.google.android.recaptcha;

import android.app.Application;
import com.google.android.gms.tasks.Task;
import com.google.android.recaptcha.internal.zzam;
import com.google.android.recaptcha.internal.zzaw;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;

/* JADX INFO: loaded from: classes5.dex */
public final class Recaptcha {
    public static final Recaptcha INSTANCE = new Recaptcha();

    private Recaptcha() {
    }

    /* JADX INFO: renamed from: getClient-BWLJW6A$default, reason: not valid java name */
    public static /* synthetic */ Object m3505getClientBWLJW6A$default(Recaptcha recaptcha, Application application, String str, long j, Continuation continuation, int i, Object obj) {
        if ((i & 4) != 0) {
            j = 10000;
        }
        return recaptcha.m3506getClientBWLJW6A(application, str, j, continuation);
    }

    public static final Task<RecaptchaTasksClient> getTasksClient(Application application, String str) {
        return zzam.zzd(application, str, 10000L);
    }

    public static final Task<RecaptchaTasksClient> getTasksClient(Application application, String str, long j) {
        return zzam.zzd(application, str, j);
    }

    /* JADX WARN: Removed duplicated region for block: B:8:0x0014  */
    /* JADX INFO: renamed from: getClient-BWLJW6A, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object m3506getClientBWLJW6A(Application application, String str, long j, Continuation<? super Result> continuation) {
        Recaptcha$getClient$1 recaptcha$getClient$1;
        if (continuation instanceof Recaptcha$getClient$1) {
            recaptcha$getClient$1 = (Recaptcha$getClient$1) continuation;
            int i = recaptcha$getClient$1.zzc;
            if ((i & Integer.MIN_VALUE) != 0) {
                recaptcha$getClient$1.zzc = i - Integer.MIN_VALUE;
            } else {
                recaptcha$getClient$1 = new Recaptcha$getClient$1(this, continuation);
            }
        }
        Recaptcha$getClient$1 recaptcha$getClient$12 = recaptcha$getClient$1;
        Object objZzc = recaptcha$getClient$12.zza;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = recaptcha$getClient$12.zzc;
        try {
            if (i2 == 0) {
                ResultKt.throwOnFailure(objZzc);
                Result.Companion companion = Result.Companion;
                zzam zzamVar = zzam.zza;
                recaptcha$getClient$12.zzc = 1;
                objZzc = zzam.zzc(application, str, j, null, recaptcha$getClient$12);
                if (objZzc == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i2 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(objZzc);
            }
            return Result.m3604constructorimpl((zzaw) objZzc);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.Companion;
            return Result.m3604constructorimpl(ResultKt.createFailure(th));
        }
    }
}
