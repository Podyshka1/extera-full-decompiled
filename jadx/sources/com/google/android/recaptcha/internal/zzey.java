package com.google.android.recaptcha.internal;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes5.dex */
final class zzey extends SuspendLambda implements Function2 {
    final /* synthetic */ zzez zza;
    final /* synthetic */ zzoe zzb;
    final /* synthetic */ zzbb zzc;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzey(zzez zzezVar, zzoe zzoeVar, zzbb zzbbVar, Continuation continuation) {
        super(2, continuation);
        this.zza = zzezVar;
        this.zzb = zzoeVar;
        this.zzc = zzbbVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new zzey(this.zza, this.zzb, this.zzc, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        return ((zzey) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Exception {
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        ResultKt.throwOnFailure(obj);
        try {
            zzez zzezVar = this.zza;
            BuildersKt__Builders_commonKt.launch$default(this.zza.zzq.zzb(), null, null, new zzex(this.zza, zzezVar.zzf().zzb(this.zzb, zzezVar.zzp), null), 3, null);
        } catch (zzp e) {
            zzez zzezVar2 = this.zza;
            zzezVar2.zzi.zzb(this.zzc, e, null);
            this.zza.zzk().completeExceptionally(e);
        }
        return Unit.INSTANCE;
    }
}
