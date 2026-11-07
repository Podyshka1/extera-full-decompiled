package com.google.android.recaptcha.internal;

import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Deferred;

/* JADX INFO: loaded from: classes5.dex */
final class zzdd extends SuspendLambda implements Function2 {
    Object zza;
    Object zzb;
    int zzc;
    final /* synthetic */ zzdo zzd;
    final /* synthetic */ String zze;
    final /* synthetic */ String zzf;
    final /* synthetic */ zzaka zzg;
    final /* synthetic */ long zzh;
    private /* synthetic */ Object zzi;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzdd(zzdo zzdoVar, String str, String str2, zzaka zzakaVar, long j, Continuation continuation) {
        super(2, continuation);
        this.zzd = zzdoVar;
        this.zze = str;
        this.zzf = str2;
        this.zzg = zzakaVar;
        this.zzh = j;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        zzdd zzddVar = new zzdd(this.zzd, this.zze, this.zzf, this.zzg, this.zzh, continuation);
        zzddVar.zzi = obj;
        return zzddVar;
    }

    @Override // kotlin.jvm.functions.Function2
    public final /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        return ((zzdd) create((zzlp) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x00ac, code lost:
    
        if (r1 != r7) goto L19;
     */
    /* JADX WARN: Removed duplicated region for block: B:17:0x00a1  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x00cc  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object invokeSuspend(Object obj) {
        zzlp zzlpVar;
        Object objZzb;
        Deferred deferred;
        zzlp zzlpVar2;
        Object objZza;
        zzlp zzlpVar3;
        zzaku zzakuVar;
        Object objAwait;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.zzc;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            zzlpVar = (zzlp) this.zzi;
            zzdo zzdoVar = this.zzd;
            CoroutineScope coroutineScopeZzc = zzdoVar.zzf.zzc();
            String str = this.zze;
            zzaka zzakaVar = this.zzg;
            Deferred deferredAsync$default = BuildersKt__Builders_commonKt.async$default(coroutineScopeZzc, null, null, new zzdc(zzlpVar, zzdoVar, str, zzakaVar, null), 3, null);
            String str2 = this.zzf;
            long j = this.zzh;
            zzcx zzcxVar = zzdoVar.zza;
            this.zzi = zzlpVar;
            this.zza = deferredAsync$default;
            this.zzb = zzlpVar;
            this.zzc = 1;
            objZzb = zzcxVar.zzb(str, str2, zzakaVar, j, this);
            if (objZzb != coroutine_suspended) {
                deferred = deferredAsync$default;
                zzlpVar2 = zzlpVar;
            }
            return coroutine_suspended;
        }
        if (i == 1) {
            zzlp zzlpVar4 = (zzlp) this.zzb;
            deferred = (Deferred) this.zza;
            zzlpVar2 = (zzlp) this.zzi;
            ResultKt.throwOnFailure(obj);
            zzlpVar = zzlpVar4;
            objZzb = obj;
        } else {
            if (i != 2) {
                zzakuVar = (zzaku) this.zzi;
                ResultKt.throwOnFailure(obj);
                objAwait = obj;
                Object value = ((Result) objAwait).getValue();
                if (Result.m3611exceptionOrNullimpl(value) != null) {
                    return zzakuVar;
                }
                zzakt zzaktVar = (zzakt) zzakuVar.zzG();
                zzaktVar.zzq((zzaku) value);
                return (zzaku) zzaktVar.zzp();
            }
            Deferred deferred2 = (Deferred) this.zza;
            zzlp zzlpVar5 = (zzlp) this.zzi;
            ResultKt.throwOnFailure(obj);
            zzlpVar3 = zzlpVar5;
            deferred = deferred2;
            objZza = obj;
            zzakuVar = (zzaku) objZza;
            if (deferred.isCompleted()) {
                zzdo zzdoVar2 = this.zzd;
                String str3 = this.zze;
                BuildersKt__Builders_commonKt.launch$default(zzdoVar2.zzf.zzc(), null, null, new zzdb(zzlpVar3, zzdoVar2, str3, this.zzf, new zzcz(zzdoVar2, str3, deferred, this.zzg), null), 3, null);
                return zzakuVar;
            }
            this.zzi = zzakuVar;
            this.zza = null;
            this.zzc = 3;
            objAwait = deferred.await(this);
        }
        this.zzi = zzlpVar2;
        this.zza = deferred;
        this.zzb = null;
        this.zzc = 2;
        objZza = ((zzmb) objZzb).zza(zzlpVar.zza(), this);
        if (objZza != coroutine_suspended) {
            zzlpVar3 = zzlpVar2;
            zzakuVar = (zzaku) objZza;
            if (deferred.isCompleted()) {
            }
        }
        return coroutine_suspended;
    }
}
