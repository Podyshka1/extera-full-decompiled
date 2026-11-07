package com.google.android.recaptcha.internal;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.sync.Mutex;

/* JADX INFO: loaded from: classes5.dex */
final class zzjq extends SuspendLambda implements Function2 {
    Object zza;
    Object zzb;
    Object zzc;
    Object zzd;
    long zze;
    int zzf;
    final /* synthetic */ zzjt zzg;
    final /* synthetic */ zziw zzh;
    final /* synthetic */ String zzi;
    final /* synthetic */ long zzj;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzjq(zzjt zzjtVar, zziw zziwVar, String str, long j, Continuation continuation) {
        super(2, continuation);
        this.zzg = zzjtVar;
        this.zzh = zziwVar;
        this.zzi = str;
        this.zzj = j;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new zzjq(this.zzg, this.zzh, this.zzi, this.zzj, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        return ((zzjq) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        zzjt zzjtVar;
        zziw zziwVar;
        String str;
        long j;
        Mutex mutex;
        zziw zziwVar2;
        String str2;
        Throwable th;
        Mutex mutex2;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.zzf;
        try {
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                zzjtVar = this.zzg;
                zziwVar = this.zzh;
                str = this.zzi;
                j = this.zzj;
                mutex = zzjtVar.zzc;
                this.zza = mutex;
                this.zzb = zziwVar;
                this.zzc = zzjtVar;
                this.zzd = str;
                this.zze = j;
                this.zzf = 1;
                if (mutex.lock(null, this) != coroutine_suspended) {
                }
                return coroutine_suspended;
            }
            if (i != 1) {
                mutex2 = (Mutex) this.zza;
                try {
                    ResultKt.throwOnFailure(obj);
                    zzjj zzjjVar = (zzjj) obj;
                    mutex2.unlock(null);
                    return zzjjVar;
                } catch (Throwable th2) {
                    th = th2;
                    mutex2.unlock(null);
                    throw th;
                }
            }
            long j2 = this.zze;
            str = (String) this.zzd;
            zzjtVar = (zzjt) this.zzc;
            zziwVar = (zziw) this.zzb;
            Mutex mutex3 = (Mutex) this.zza;
            ResultKt.throwOnFailure(obj);
            mutex = mutex3;
            j = j2;
            int i2 = Intrinsics.areEqual(zziwVar2, zziw.zza) ? 3 : Intrinsics.areEqual(zziwVar2, zziw.zzb) ? 4 : 2;
            zzlj zzljVarZza = zzjtVar.zzb.zza();
            zzht zzhtVarZzb = zzjtVar.zzb.zzb();
            zzjp zzjpVar = new zzjp(zzjtVar, str2, j, zziwVar2, null);
            this.zza = mutex;
            this.zzb = null;
            this.zzc = null;
            this.zzd = null;
            this.zzf = 2;
            Object objInvoke = zzjpVar.invoke(new zzmd(zzljVarZza, zzhtVarZzb, str2, i2), this);
            if (objInvoke != coroutine_suspended) {
                Mutex mutex4 = mutex;
                obj = objInvoke;
                mutex2 = mutex4;
                zzjj zzjjVar2 = (zzjj) obj;
                mutex2.unlock(null);
                return zzjjVar2;
            }
            return coroutine_suspended;
        } catch (Throwable th3) {
            Mutex mutex5 = mutex;
            th = th3;
            mutex2 = mutex5;
            mutex2.unlock(null);
            throw th;
        }
        zziwVar2 = zziwVar;
        str2 = str;
    }
}
