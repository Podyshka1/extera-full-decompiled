package com.google.android.recaptcha.internal;

import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.TimeoutKt;

/* JADX INFO: loaded from: classes5.dex */
final class zzck extends SuspendLambda implements Function2 {
    int zza;
    final /* synthetic */ long zzb;
    final /* synthetic */ zzcl zzc;
    final /* synthetic */ String zzd;
    final /* synthetic */ zzaka zze;
    private /* synthetic */ Object zzf;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzck(long j, zzcl zzclVar, String str, zzaka zzakaVar, Continuation continuation) {
        super(2, continuation);
        this.zzb = j;
        this.zzc = zzclVar;
        this.zzd = str;
        this.zze = zzakaVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        zzck zzckVar = new zzck(this.zzb, this.zzc, this.zzd, this.zze, continuation);
        zzckVar.zzf = obj;
        return zzckVar;
    }

    @Override // kotlin.jvm.functions.Function2
    public final /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        return ((zzck) create((zzlp) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0036, code lost:
    
        if (r12 != r1) goto L13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0062, code lost:
    
        return r1;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object invokeSuspend(Object obj) throws zzhg {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.zza;
        try {
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                zzlp zzlpVar = (zzlp) this.zzf;
                long j = this.zzb;
                zzcj zzcjVar = new zzcj(zzlpVar, this.zzc, this.zzd, this.zze, null);
                this.zza = 1;
                obj = TimeoutKt.withTimeout(j, zzcjVar, this);
            } else {
                if (i != 1) {
                    zzhg zzhgVar = (zzhg) this.zzf;
                    ResultKt.throwOnFailure(obj);
                    throw zzhgVar;
                }
                ResultKt.throwOnFailure(obj);
            }
            Object value = ((Result) obj).getValue();
            ResultKt.throwOnFailure(value);
            return (zzaku) value;
        } catch (Exception e) {
            zzhg zzhgVarZza = zzcm.zza(e, new zzhg(zzhf.zzb, zzhe.zzt, e.getMessage(), null, 8, null));
            this.zzf = zzhgVarZza;
            this.zza = 2;
            if (Unit.INSTANCE != coroutine_suspended) {
                throw zzhgVarZza;
            }
        }
    }
}
