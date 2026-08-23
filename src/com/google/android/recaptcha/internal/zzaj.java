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
    public zzaj(Application application, zzab zzabVar, String str, zzbq zzbqVar, zzbd zzbdVar, zzt zztVar, WebView webView, zzbg zzbgVar, long j, Continuation continuation) {
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

    /* JADX WARN: Code restructure failed: missing block: B:20:0x00dd, code lost:
    
        if (kotlinx.coroutines.AwaitKt.joinAll(r2, r17) == r1) goto L24;
     */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0093  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x00b5  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objWithContext;
        zzoe zzoeVar;
        Object value;
        Throwable thM3294exceptionOrNullimpl;
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
            Object obj2 = this.zza;
            if (i != 2) {
                thM3294exceptionOrNullimpl = (Throwable) obj2;
                ResultKt.throwOnFailure(obj);
                zzam zzamVar2 = zzam.zza;
                zzam.zzf(new zzg(null, 1, null));
                throw thM3294exceptionOrNullimpl;
            }
            ResultKt.throwOnFailure(obj);
            value = ((Result) obj).getValue();
            zzoeVar = (zzoe) obj2;
            zzt zztVar2 = this.zzj;
            thM3294exceptionOrNullimpl = Result.m3294exceptionOrNullimpl(value);
            if (thM3294exceptionOrNullimpl != null) {
                Application application2 = this.zzc;
                zzam zzamVar3 = zzam.zza;
                return new zzaw(application2, zzam.zze(), this.zze, this.zzj, this.zzd, zzoeVar, this.zzg, this.zzh, new zzq(application2), new zzbs());
            }
            JobKt__JobKt.cancelChildren$default(zztVar2.zzc().getCoroutineContext(), null, 1, null);
            List list = SequencesKt.toList(JobKt.getJob(zztVar2.zzc().getCoroutineContext()).getChildren());
            this.zza = thM3294exceptionOrNullimpl;
            this.zzb = 3;
        } else {
            ResultKt.throwOnFailure(obj);
            objWithContext = obj;
        }
        zzoe zzoeVar2 = (zzoe) objWithContext;
        zzam.zze().zzd(new zzez(new WebView(this.zzc), this.zze, this.zzc, this.zzd, this.zzg, this.zzj, this.zzh, this.zzf));
        long j = this.zzi;
        zzg zzgVarZze = zzam.zze();
        this.zza = zzoeVar2;
        this.zzb = 2;
        Object objZzb = zzgVarZze.zzb(j, zzoeVar2, this);
        if (objZzb != coroutine_suspended) {
            zzoeVar = zzoeVar2;
            value = objZzb;
            zzt zztVar22 = this.zzj;
            thM3294exceptionOrNullimpl = Result.m3294exceptionOrNullimpl(value);
            if (thM3294exceptionOrNullimpl != null) {
            }
        }
        return coroutine_suspended;
    }
}
