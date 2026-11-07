package com.google.android.recaptcha.internal;

import android.view.MotionEvent;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes5.dex */
final class zzba extends SuspendLambda implements Function2 {
    final /* synthetic */ zzbb zza;
    final /* synthetic */ String zzb;
    final /* synthetic */ MotionEvent zzc;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzba(zzbb zzbbVar, String str, MotionEvent motionEvent, Continuation continuation) {
        super(2, continuation);
        this.zza = zzbbVar;
        this.zzb = str;
        this.zzc = motionEvent;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new zzba(this.zza, this.zzb, this.zzc, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        return ((zzba) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        zzay zzayVarZza;
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        ResultKt.throwOnFailure(obj);
        try {
            zzbb zzbbVar = this.zza;
            if (zzbbVar.zzb() && (zzayVarZza = zzbbVar.zza()) != null) {
                zzayVarZza.zza(this.zzb, this.zzc);
            }
            this.zzc.recycle();
            return Unit.INSTANCE;
        } catch (Throwable th) {
            this.zzc.recycle();
            throw th;
        }
    }
}
