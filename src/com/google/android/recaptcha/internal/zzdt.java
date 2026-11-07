package com.google.android.recaptcha.internal;

import com.google.android.gms.cast.framework.media.NotificationOptions;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.TimeoutKt;

/* JADX INFO: loaded from: classes5.dex */
final class zzdt extends SuspendLambda implements Function2 {
    Object zza;
    int zzb;
    final /* synthetic */ zzdv zzc;
    final /* synthetic */ zzlp zzd;
    final /* synthetic */ zzalg zze;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzdt(long j, zzdv zzdvVar, zzlp zzlpVar, zzalg zzalgVar, Continuation continuation) {
        super(2, continuation);
        this.zzc = zzdvVar;
        this.zzd = zzlpVar;
        this.zze = zzalgVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new zzdt(NotificationOptions.SKIP_STEP_TEN_SECONDS_IN_MS, this.zzc, this.zzd, this.zze, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        return ((zzdt) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:27:0x005c  */
    /* JADX WARN: Removed duplicated region for block: B:36:? A[RETURN, SYNTHETIC] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object invokeSuspend(Object obj) throws zzhg {
        Ref.ObjectRef objectRef;
        Ref.ObjectRef objectRef2;
        zzds zzdsVar;
        Object objWithTimeout;
        zzhg zzhgVar;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (this.zzb != 0) {
            objectRef2 = (Ref.ObjectRef) this.zza;
            try {
                ResultKt.throwOnFailure(obj);
                objWithTimeout = obj;
            } catch (Exception e) {
                e = e;
                e.getMessage();
                zzhgVar = (zzhg) objectRef2.element;
                if (zzhgVar != null) {
                }
            }
        } else {
            ResultKt.throwOnFailure(obj);
            Ref.ObjectRef objectRef3 = new Ref.ObjectRef();
            try {
                zzhp zzhpVar = zzhp.zza;
                zzdsVar = new zzds(this.zzd, this.zzc, this.zze, objectRef3, null);
                objectRef = objectRef3;
            } catch (Exception e2) {
                e = e2;
                objectRef = objectRef3;
            }
            try {
                this.zza = objectRef;
                this.zzb = 1;
                objWithTimeout = TimeoutKt.withTimeout(NotificationOptions.SKIP_STEP_TEN_SECONDS_IN_MS, new zzho(20, 100L, 1000L, 2.0d, zzdsVar, null), this);
                if (objWithTimeout == coroutine_suspended) {
                    return coroutine_suspended;
                }
                objectRef2 = objectRef;
            } catch (Exception e3) {
                e = e3;
                objectRef2 = objectRef;
                e.getMessage();
                zzhgVar = (zzhg) objectRef2.element;
                if (zzhgVar != null) {
                    throw zzdv.zza(this.zzc, e);
                }
                throw zzhgVar;
            }
        }
        return (zzali) objWithTimeout;
    }
}
