package com.google.android.recaptcha.internal;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.sync.Mutex;

/* JADX INFO: loaded from: classes5.dex */
final class zznl extends SuspendLambda implements Function2 {
    Object zza;
    Object zzb;
    Object zzc;
    int zzd;
    final /* synthetic */ zznm zze;
    final /* synthetic */ String zzf;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zznl(zznm zznmVar, String str, Continuation continuation) {
        super(2, continuation);
        this.zze = zznmVar;
        this.zzf = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new zznl(this.zze, this.zzf, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        return ((zznl) create((zzmg) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        String str;
        Mutex mutexZzd;
        zznm zznmVar;
        Throwable th;
        Mutex mutex;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.zzd;
        try {
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                zznm zznmVar2 = this.zze;
                str = this.zzf;
                mutexZzd = zznmVar2.zzd();
                this.zza = mutexZzd;
                this.zzb = zznmVar2;
                this.zzc = str;
                this.zzd = 1;
                if (mutexZzd.lock(null, this) != coroutine_suspended) {
                    zznmVar = zznmVar2;
                }
                return coroutine_suspended;
            }
            if (i != 1) {
                mutex = (Mutex) this.zza;
                try {
                    ResultKt.throwOnFailure(obj);
                    Unit unit = Unit.INSTANCE;
                    mutex.unlock(null);
                    return Unit.INSTANCE;
                } catch (Throwable th2) {
                    th = th2;
                    mutex.unlock(null);
                    throw th;
                }
            }
            str = (String) this.zzc;
            zznmVar = (zznm) this.zzb;
            mutexZzd = (Mutex) this.zza;
            ResultKt.throwOnFailure(obj);
            zzne zzneVarZza = zznmVar.zza();
            String strZzc = zznmVar.zzc();
            StringBuilder sb = new StringBuilder(strZzc.length() + String.valueOf(str).length());
            sb.append(strZzc);
            sb.append(str);
            String string = sb.toString();
            this.zza = mutexZzd;
            this.zzb = null;
            this.zzc = null;
            this.zzd = 2;
            if (zzneVarZza.zza(string, this) != coroutine_suspended) {
                mutex = mutexZzd;
                Unit unit2 = Unit.INSTANCE;
                mutex.unlock(null);
                return Unit.INSTANCE;
            }
            return coroutine_suspended;
        } catch (Throwable th3) {
            th = th3;
            mutex = mutexZzd;
            mutex.unlock(null);
            throw th;
        }
    }
}
