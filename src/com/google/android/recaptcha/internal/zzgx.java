package com.google.android.recaptcha.internal;

import com.google.android.gms.cast.framework.media.NotificationOptions;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes5.dex */
final class zzgx extends SuspendLambda implements Function2 {
    int zza;
    final /* synthetic */ zzgy zzb;
    private /* synthetic */ Object zzc;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzgx(zzgy zzgyVar, Continuation continuation) {
        super(2, continuation);
        this.zzb = zzgyVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        zzgx zzgxVar = new zzgx(this.zzb, continuation);
        zzgxVar.zzc = obj;
        return zzgxVar;
    }

    @Override // kotlin.jvm.functions.Function2
    public final /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        return ((zzgx) create((zzlp) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Exception {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        try {
            if (this.zza != 0) {
                ResultKt.throwOnFailure(obj);
            } else {
                ResultKt.throwOnFailure(obj);
                zzlp zzlpVar = (zzlp) this.zzc;
                zzhp zzhpVar = zzhp.zza;
                zzgy zzgyVar = this.zzb;
                zzgu zzguVar = new zzgu(zzgyVar);
                zzgw zzgwVar = new zzgw(zzlpVar, zzgyVar, null);
                this.zza = 1;
                obj = zzhpVar.zzc(zzguVar, (10 & 2) != 0 ? 100L : 0L, (10 & 4) != 0 ? 1000L : NotificationOptions.SKIP_STEP_TEN_SECONDS_IN_MS, 2.0d, zzgwVar, this);
                if (obj == coroutine_suspended) {
                    return coroutine_suspended;
                }
            }
            return (String) obj;
        } catch (Exception e) {
            if (e instanceof zzhg) {
                throw e;
            }
            throw new zzhg(zzhf.zzb, zzhe.zzao, e.getMessage(), e);
        }
    }
}
