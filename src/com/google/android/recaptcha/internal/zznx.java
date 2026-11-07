package com.google.android.recaptcha.internal;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.sync.Mutex;

/* JADX INFO: loaded from: classes5.dex */
final class zznx extends SuspendLambda implements Function2 {
    Object zza;
    Object zzb;
    Object zzc;
    int zzd;
    final /* synthetic */ zzoa zze;
    final /* synthetic */ zzagx zzf;
    private /* synthetic */ Object zzg;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zznx(zzoa zzoaVar, zzagx zzagxVar, Continuation continuation) {
        super(2, continuation);
        this.zze = zzoaVar;
        this.zzf = zzagxVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        zznx zznxVar = new zznx(this.zze, this.zzf, continuation);
        zznxVar.zzg = obj;
        return zznxVar;
    }

    @Override // kotlin.jvm.functions.Function2
    public final /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        return ((zznx) create((zzlp) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Can't wrap try/catch for region: R(8:0|2|(1:(1:(5:6|40|7|32|33)(8:11|46|12|23|42|29|(3:31|32|33)|38))(1:16))(3:17|(1:19)|38)|44|20|(5:22|23|42|29|(0))|38|(1:(0))) */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0092, code lost:
    
        r8 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0093, code lost:
    
        r9 = r8;
        r8 = r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0096, code lost:
    
        r2 = r3;
        r3 = r5;
        r5 = r9;
     */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00b7  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object invokeSuspend(Object obj) throws Throwable {
        zzlp zzlpVar;
        zzoa zzoaVar;
        zzagx zzagxVar;
        Mutex mutex;
        Throwable th;
        Mutex mutex2;
        zzoa zzoaVar2;
        Mutex mutex3;
        zzlp zzlpVar2;
        zzagx zzagxVar2;
        String strZza;
        zzagx zzagxVar3;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.zzd;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            zzlpVar = (zzlp) this.zzg;
            zzoa zzoaVar3 = this.zze;
            zzagx zzagxVar4 = this.zzf;
            Mutex mutexZzd = zzoaVar3.zzd();
            this.zzg = zzlpVar;
            this.zza = mutexZzd;
            this.zzb = zzoaVar3;
            this.zzc = zzagxVar4;
            this.zzd = 1;
            if (mutexZzd.lock(null, this) != coroutine_suspended) {
                zzoaVar = zzoaVar3;
                zzagxVar = zzagxVar4;
                mutex = mutexZzd;
            }
            return coroutine_suspended;
        }
        if (i != 1) {
            if (i != 2) {
                zzagxVar3 = (zzagx) this.zza;
                mutex2 = (Mutex) this.zzg;
                try {
                    ResultKt.throwOnFailure(obj);
                    mutex2.unlock(null);
                    return zzagxVar3;
                } catch (Throwable th2) {
                    th = th2;
                    mutex2.unlock(null);
                    throw th;
                }
            }
            zzagxVar = (zzagx) this.zzc;
            zzoaVar2 = (zzoa) this.zzb;
            mutex3 = (Mutex) this.zza;
            zzlpVar2 = (zzlp) this.zzg;
            try {
                ResultKt.throwOnFailure(obj);
                zzagxVar2 = (zzagx) obj;
            } catch (Exception unused) {
                zzagxVar2 = null;
            } catch (Throwable th3) {
                th = th3;
                mutex2 = mutex3;
                mutex2.unlock(null);
                throw th;
            }
            try {
                strZza = zzlpVar2.zza().zza().zza();
                this.zzg = mutex3;
                this.zza = zzagxVar2;
                this.zzb = null;
                this.zzc = null;
                this.zzd = 3;
                if (zzoaVar2.zza(zzagxVar, strZza, this) != coroutine_suspended) {
                    zzagxVar3 = zzagxVar2;
                    mutex2 = mutex3;
                    mutex2.unlock(null);
                    return zzagxVar3;
                }
                return coroutine_suspended;
            } catch (Throwable th4) {
                th = th4;
                mutex2 = mutex3;
                mutex2.unlock(null);
                throw th;
            }
        }
        zzagxVar = (zzagx) this.zzc;
        zzoaVar = (zzoa) this.zzb;
        mutex = (Mutex) this.zza;
        zzlp zzlpVar3 = (zzlp) this.zzg;
        ResultKt.throwOnFailure(obj);
        zzlpVar = zzlpVar3;
        String strZza2 = zzlpVar.zza().zza().zza();
        this.zzg = zzlpVar;
        this.zza = mutex;
        this.zzb = zzoaVar;
        this.zzc = zzagxVar;
        this.zzd = 2;
        Object objZzb = zzoaVar.zzb(strZza2, this);
        if (objZzb != coroutine_suspended) {
            Mutex mutex4 = mutex;
            zzlpVar2 = zzlpVar;
            obj = objZzb;
            zzoaVar2 = zzoaVar;
            mutex3 = mutex4;
            zzagxVar2 = (zzagx) obj;
            strZza = zzlpVar2.zza().zza().zza();
            this.zzg = mutex3;
            this.zza = zzagxVar2;
            this.zzb = null;
            this.zzc = null;
            this.zzd = 3;
            if (zzoaVar2.zza(zzagxVar, strZza, this) != coroutine_suspended) {
            }
        }
        return coroutine_suspended;
    }
}
