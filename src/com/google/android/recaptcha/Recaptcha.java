package com.google.android.recaptcha;

import android.app.Application;
import com.google.android.gms.tasks.Task;
import com.google.android.recaptcha.internal.zzam;
import com.google.android.recaptcha.internal.zzaw;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.JvmStatic;
import okhttp3.internal.url._UrlKt;
import okio.Segment$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J6\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\b\b\u0002\u0010\n\u001a\u00020\u000bH\u0086@ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\f\u0010\rJ\u001e\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00100\u000f2\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tH\u0007J&\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00100\u000f2\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0007\u0082\u0002\u000b\n\u0002\b!\n\u0005\b¡\u001e0\u0001¨\u0006\u0011"}, d2 = {"Lcom/google/android/recaptcha/Recaptcha;", _UrlKt.FRAGMENT_ENCODE_SET, "()V", "getClient", "Lkotlin/Result;", "Lcom/google/android/recaptcha/RecaptchaClient;", "application", "Landroid/app/Application;", "siteKey", _UrlKt.FRAGMENT_ENCODE_SET, "timeout", _UrlKt.FRAGMENT_ENCODE_SET, "getClient-BWLJW6A", "(Landroid/app/Application;Ljava/lang/String;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getTasksClient", "Lcom/google/android/gms/tasks/Task;", "Lcom/google/android/recaptcha/RecaptchaTasksClient;", "java.com.google.android.libraries.abuse.recaptcha.enterprise_enterprise"}, m754k = 1, mv = {1, 9, 0}, xi = 48)
public final class Recaptcha {
    public static final Recaptcha INSTANCE = new Recaptcha();

    private Recaptcha() {
    }

    /* JADX INFO: renamed from: getClient-BWLJW6A$default, reason: not valid java name */
    public static /* synthetic */ Object m3195getClientBWLJW6A$default(Recaptcha recaptcha, Application application, String str, long j, Continuation continuation, int i, Object obj) {
        if ((i & 4) != 0) {
            j = 10000;
        }
        return recaptcha.m3196getClientBWLJW6A(application, str, j, continuation);
    }

    @JvmStatic
    public static final Task<RecaptchaTasksClient> getTasksClient(Application application, String siteKey) {
        return zzam.zzd(application, siteKey, 10000L);
    }

    @JvmStatic
    public static final Task<RecaptchaTasksClient> getTasksClient(Application application, String siteKey, long timeout) {
        return zzam.zzd(application, siteKey, timeout);
    }

    /* JADX WARN: Removed duplicated region for block: B:8:0x0014  */
    /* JADX INFO: renamed from: getClient-BWLJW6A, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object m3196getClientBWLJW6A(Application application, String str, long j, Continuation<? super Result<? extends RecaptchaClient>> continuation) {
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
                Result.Companion companion = Result.INSTANCE;
                zzam zzamVar = zzam.zza;
                recaptcha$getClient$12.zzc = 1;
                objZzc = zzam.zzc(application, str, j, null, recaptcha$getClient$12);
                if (objZzc == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i2 != 1) {
                    Segment$$ExternalSyntheticBUOutline1.m848m("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.throwOnFailure(objZzc);
            }
            return Result.m3291constructorimpl((zzaw) objZzc);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            return Result.m3291constructorimpl(ResultKt.createFailure(th));
        }
    }
}
