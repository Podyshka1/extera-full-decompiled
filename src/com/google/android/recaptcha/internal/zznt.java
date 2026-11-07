package com.google.android.recaptcha.internal;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.sync.Mutex;

/* JADX INFO: loaded from: classes5.dex */
final class zznt extends SuspendLambda implements Function2 {
    Object zza;
    Object zzb;
    Object zzc;
    int zzd;
    final /* synthetic */ zzoa zze;
    final /* synthetic */ Function1 zzf;
    private /* synthetic */ Object zzg;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zznt(zzoa zzoaVar, Function1 function1, Continuation continuation) {
        super(2, continuation);
        this.zze = zzoaVar;
        this.zzf = function1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        zznt zzntVar = new zznt(this.zze, this.zzf, continuation);
        zzntVar.zzg = obj;
        return zzntVar;
    }

    @Override // kotlin.jvm.functions.Function2
    public final /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        return ((zznt) create((zzlp) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Can't wrap try/catch for region: R(8:0|2|(1:(1:(7:6|48|7|40|41|42|43)(7:11|51|12|23|29|50|(3:37|(5:39|40|41|42|43)|46)(3:36|42|43)))(1:16))(3:17|(1:19)|46)|53|20|(7:22|23|29|50|(1:31)(3:34|37|(0))|42|43)|46|(1:(0))) */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x008e, code lost:
    
        r9 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x008f, code lost:
    
        r10 = r9;
        r9 = r6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0092, code lost:
    
        r2 = r5;
        r5 = r6;
        r6 = r10;
     */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00cb  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object invokeSuspend(Object obj) throws Throwable {
        zzlp zzlpVar;
        Mutex mutexZzd;
        zzoa zzoaVar;
        Function1 function1;
        Throwable th;
        Mutex mutex;
        zzoa zzoaVar2;
        Mutex mutex2;
        zzlp zzlpVar2;
        zzagx zzagxVar;
        zzagx zzagxVar2;
        String strZza;
        Boolean boolBoxBoolean;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.zzd;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            zzlpVar = (zzlp) this.zzg;
            zzoa zzoaVar3 = this.zze;
            Function1 function12 = this.zzf;
            mutexZzd = zzoaVar3.zzd();
            this.zzg = zzlpVar;
            this.zza = mutexZzd;
            this.zzb = zzoaVar3;
            this.zzc = function12;
            this.zzd = 1;
            if (mutexZzd.lock(null, this) != coroutine_suspended) {
                zzoaVar = zzoaVar3;
                function1 = function12;
            }
            return coroutine_suspended;
        }
        if (i != 1) {
            if (i != 2) {
                mutex = (Mutex) this.zzg;
                try {
                    ResultKt.throwOnFailure(obj);
                    mutex2 = mutex;
                    boolBoxBoolean = Boxing.boxBoolean(true);
                    mutex2.unlock(null);
                    return boolBoxBoolean;
                } catch (Throwable th2) {
                    th = th2;
                    mutex.unlock(null);
                    throw th;
                }
            }
            function1 = (Function1) this.zzc;
            zzoaVar2 = (zzoa) this.zzb;
            mutex2 = (Mutex) this.zza;
            zzlpVar2 = (zzlp) this.zzg;
            try {
                ResultKt.throwOnFailure(obj);
                zzagxVar = (zzagx) obj;
            } catch (Exception unused) {
                zzagxVar = null;
            } catch (Throwable th3) {
                th = th3;
                mutex = mutex2;
                mutex.unlock(null);
                throw th;
            }
            try {
                if (zzagxVar != null || (zzagxVar2 = (zzagx) function1.invoke(zzagxVar)) == null) {
                    boolBoxBoolean = Boxing.boxBoolean(false);
                    mutex2.unlock(null);
                    return boolBoxBoolean;
                }
                strZza = zzlpVar2.zza().zza().zza();
                this.zzg = mutex2;
                this.zza = null;
                this.zzb = null;
                this.zzc = null;
                this.zzd = 3;
                if (zzoaVar2.zza(zzagxVar2, strZza, this) != coroutine_suspended) {
                    mutex = mutex2;
                    mutex2 = mutex;
                    boolBoxBoolean = Boxing.boxBoolean(true);
                    mutex2.unlock(null);
                    return boolBoxBoolean;
                }
                return coroutine_suspended;
            } catch (Throwable th4) {
                th = th4;
                mutex = mutex2;
                mutex.unlock(null);
                throw th;
            }
        }
        function1 = (Function1) this.zzc;
        zzoaVar = (zzoa) this.zzb;
        mutexZzd = (Mutex) this.zza;
        zzlp zzlpVar3 = (zzlp) this.zzg;
        ResultKt.throwOnFailure(obj);
        zzlpVar = zzlpVar3;
        String strZza2 = zzlpVar.zza().zza().zza();
        this.zzg = zzlpVar;
        this.zza = mutexZzd;
        this.zzb = zzoaVar;
        this.zzc = function1;
        this.zzd = 2;
        Object objZzb = zzoaVar.zzb(strZza2, this);
        if (objZzb != coroutine_suspended) {
            Mutex mutex3 = mutexZzd;
            zzlpVar2 = zzlpVar;
            obj = objZzb;
            zzoaVar2 = zzoaVar;
            mutex2 = mutex3;
            zzagxVar = (zzagx) obj;
            if (zzagxVar != null) {
                boolBoxBoolean = Boxing.boxBoolean(false);
            } else {
                strZza = zzlpVar2.zza().zza().zza();
                this.zzg = mutex2;
                this.zza = null;
                this.zzb = null;
                this.zzc = null;
                this.zzd = 3;
                if (zzoaVar2.zza(zzagxVar2, strZza, this) != coroutine_suspended) {
                }
            }
            mutex2.unlock(null);
            return boolBoxBoolean;
        }
        return coroutine_suspended;
    }
}
