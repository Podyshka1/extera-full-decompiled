package com.google.android.recaptcha.internal;

import android.app.Application;
import android.webkit.WebView;
import java.util.List;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.sequences.SequencesKt;
import kotlinx.coroutines.AwaitKt;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.JobKt;
import kotlinx.coroutines.JobKt__JobKt;

/* JADX INFO: loaded from: classes5.dex */
final class zzaj extends SuspendLambda implements Function2 {
    Object zza;
    int zzb;
    final /* synthetic */ Application zzc;
    final /* synthetic */ zzab zzd;
    final /* synthetic */ String zze;
    final /* synthetic */ zzbq zzf;
    final /* synthetic */ zzbd zzg;
    final /* synthetic */ zzbg zzh;
    final /* synthetic */ long zzi;
    final /* synthetic */ zzt zzj;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzaj(Application application, zzab zzabVar, String str, zzbq zzbqVar, zzbd zzbdVar, zzt zztVar, WebView webView, zzbg zzbgVar, long j, Continuation continuation) {
        super(2, continuation);
        this.zzc = application;
        this.zzd = zzabVar;
        this.zze = str;
        this.zzf = zzbqVar;
        this.zzg = zzbdVar;
        this.zzj = zztVar;
        this.zzh = zzbgVar;
        this.zzi = j;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new zzaj(this.zzc, this.zzd, this.zze, this.zzf, this.zzg, this.zzj, null, this.zzh, this.zzi, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        return ((zzaj) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0094  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x00b6  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objWithContext;
        zzoe zzoeVar;
        Object objZzb;
        Throwable th;
        Throwable thM3606exceptionOrNullimpl;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.zzb;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            zzam zzamVar = zzam.zza;
            Application application = this.zzc;
            zzab zzabVar = this.zzd;
            String str = this.zze;
            zzbq zzbqVar = this.zzf;
            zzbd zzbdVar = this.zzg;
            zzt zztVar = this.zzj;
            this.zzb = 1;
            objWithContext = BuildersKt.withContext(zztVar.zza().getCoroutineContext(), new zzal(application, str, zzbdVar, zzbqVar, zzabVar, null), this);
            if (objWithContext != coroutine_suspended) {
            }
            return coroutine_suspended;
        }
        if (i != 1) {
            if (i != 2) {
                th = (Throwable) this.zza;
                ResultKt.throwOnFailure(obj);
                zzam zzamVar2 = zzam.zza;
                zzam.zzf(new zzg(null, 1, null));
                throw th;
            }
            zzoeVar = (zzoe) this.zza;
            ResultKt.throwOnFailure(obj);
            objZzb = ((Result) obj).m3611unboximpl();
            zzoe zzoeVar2 = zzoeVar;
            zzt zztVar2 = this.zzj;
            thM3606exceptionOrNullimpl = Result.m3606exceptionOrNullimpl(objZzb);
            if (thM3606exceptionOrNullimpl != null) {
                Application application2 = this.zzc;
                zzam zzamVar3 = zzam.zza;
                return new zzaw(application2, zzam.zze(), this.zze, this.zzj, this.zzd, zzoeVar2, this.zzg, this.zzh, new zzq(application2), new zzbs());
            }
            JobKt__JobKt.cancelChildren$default(zztVar2.zzc().getCoroutineContext(), null, 1, null);
            List list = SequencesKt.toList(JobKt.getJob(zztVar2.zzc().getCoroutineContext()).getChildren());
            this.zza = thM3606exceptionOrNullimpl;
            this.zzb = 3;
            if (AwaitKt.joinAll(list, this) != coroutine_suspended) {
                th = thM3606exceptionOrNullimpl;
                zzam zzamVar22 = zzam.zza;
                zzam.zzf(new zzg(null, 1, null));
                throw th;
            }
            return coroutine_suspended;
        }
        ResultKt.throwOnFailure(obj);
        objWithContext = obj;
        zzoeVar = (zzoe) objWithContext;
        zzam.zze().zzd(new zzez(new WebView(this.zzc), this.zze, this.zzc, this.zzd, this.zzg, this.zzj, this.zzh, this.zzf));
        long j = this.zzi;
        zzg zzgVarZze = zzam.zze();
        this.zza = zzoeVar;
        this.zzb = 2;
        objZzb = zzgVarZze.zzb(j, zzoeVar, this);
        if (objZzb != coroutine_suspended) {
            zzoe zzoeVar22 = zzoeVar;
            zzt zztVar22 = this.zzj;
            thM3606exceptionOrNullimpl = Result.m3606exceptionOrNullimpl(objZzb);
            if (thM3606exceptionOrNullimpl != null) {
            }
        }
        return coroutine_suspended;
    }
}
