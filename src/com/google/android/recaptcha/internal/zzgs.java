package com.google.android.recaptcha.internal;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes5.dex */
final class zzgs extends SuspendLambda implements Function2 {
    Object zza;
    int zzb;
    final /* synthetic */ zzmg zzc;
    final /* synthetic */ zzgy zzd;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzgs(zzmg zzmgVar, zzgy zzgyVar, Continuation continuation) {
        super(2, continuation);
        this.zzc = zzmgVar;
        this.zzd = zzgyVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new zzgs(this.zzc, this.zzd, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        return ((zzgs) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        zzmg zzmgVar;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.zzb;
        try {
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                zzmgVar = this.zzc;
                zzgy zzgyVar = this.zzd;
                this.zza = zzmgVar;
                this.zzb = 1;
                obj = new zzmb(49, new zzgx(zzgyVar, null), null);
                if (obj != coroutine_suspended) {
                }
                return coroutine_suspended;
            }
            if (i != 1) {
                ResultKt.throwOnFailure(obj);
                return (String) obj;
            }
            zzmgVar = (zzmg) this.zza;
            ResultKt.throwOnFailure(obj);
            this.zza = null;
            this.zzb = 2;
            obj = ((zzmb) obj).zza(zzmgVar, this);
            if (obj == coroutine_suspended) {
                return coroutine_suspended;
            }
            return (String) obj;
        } catch (Exception unused) {
            return _UrlKt.FRAGMENT_ENCODE_SET;
        }
    }
}
